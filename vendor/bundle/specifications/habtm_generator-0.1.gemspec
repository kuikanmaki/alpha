# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "habtm_generator"
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stefan Wienert"]
  s.date = "2012-08-10"
  s.description = "Generates has-and-belongs-to-many migrations. Use rails generate habtm model1 model2"
  s.email = ["stefan.wienert@pludoni.de"]
  s.homepage = "https://github.com/zealot128/ruby-habtm-generator"
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.6"
  s.summary = "Generates has-and-belongs-to-many migrations. Use rails generate habtm model1 model2"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, ["> 3.1"])
    else
      s.add_dependency(%q<activerecord>, ["> 3.1"])
    end
  else
    s.add_dependency(%q<activerecord>, ["> 3.1"])
  end
end
