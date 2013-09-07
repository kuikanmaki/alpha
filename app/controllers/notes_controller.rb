class NotesController < ApplicationController
   include ActionView::Helpers::TextHelper

before_filter :authorize, :except => [:show, :new, :create]

  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notes }
    end
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @note = Note.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @note }
    end
  end

  # GET /notes/new
  # GET /notes/new.json
  def new
    @note = Note.new
    @page = Page.find(params[:id]) # gets the value of the parent page
    @notetype  = params[:notetype] #checks whether the user is adding an introductory note or a study note

    respond_to do |format|
      flash.now[:notice] = "<span class='glyphicon icon-chevron-left'></span> Back to <a href='#{url_for(@page)}'>#{@page.name}</a>".html_safe      
      format.html # new.html.erb
      format.json { render json: @note }
    end
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
  end

  # POST /notes
  # POST /notes.json
  def create
    #@note = Note.new(params[:note])

    if (params[:parent] && params[:notetype]).present?
    @notetype = params[:notetype]
    @page = Page.find(params[:parent]) # gets the value of the parent page from _form.html.erb
      if (@notetype == "introduction")
        @note = current_user.notes.build(:content => params[:content], :notetype => @notetype)
        @note.page = @page
        @note.save
      end
      if (@notetype == "study")
        @note = current_user.notes.build(:content => params[:content], :notetype => @notetype)
        @note.page = @page
        @note.save
      end      
    end

    respond_to do |format|
      if @note.save
        format.html { redirect_to @page, notice: 'Note was successfully created.' }
        format.json { render json: @page, status: :created, location: @note }
      else
        format.html { render action: "new" }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /notes/1
  # PUT /notes/1.json
  def update
    @note = Note.find(params[:id])

    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    respond_to do |format|
      format.html { redirect_to @note.page }
      format.json { head :no_content }
    end
  end

private

  def authorize
    @note = Note.find(params[:id])
      
    if(@note.user != current_user)
      render text:"NOT authorized"
    end
  end

end
