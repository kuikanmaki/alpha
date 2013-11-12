# -*- encoding: utf-8 -*-
# stub: opentok 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "opentok"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stijn Mathysen", "Karmen Blake", "Song Zheng"]
  s.date = "2013-09-25"
  s.description = "OpenTok is an API from TokBox that enables websites to weave live group video communication into their online experience. With OpenTok you have the freedom and flexibility to create the most engaging web experience for your users. OpenTok is currently available as a JavaScript and ActionScript 3.0 library. This gem allows you to connect to the API from within Ruby (and Rails)"
  s.email = ["stijn@skylight.be", "karmenblake@gmail.com", "song@tokbox.com"]
  s.homepage = "https://github.com/opentok/Opentok-Ruby-SDK"
  s.require_paths = ["lib"]
  s.rubyforge_project = "opentok"
  s.rubygems_version = "2.1.10"
  s.summary = "OpenTok gem"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<addressable>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
    else
      s.add_dependency(%q<addressable>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<vcr>, [">= 0"])
    end
  else
    s.add_dependency(%q<addressable>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<vcr>, [">= 0"])
  end
end
