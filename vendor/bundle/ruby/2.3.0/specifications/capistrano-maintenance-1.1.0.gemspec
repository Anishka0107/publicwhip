# -*- encoding: utf-8 -*-
# stub: capistrano-maintenance 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-maintenance"
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Kir Shatrov"]
  s.date = "2017-01-26"
  s.description = "Maintenance Support for Capistrano 3"
  s.email = ["shatrov@me.com"]
  s.homepage = "https://github.com/capistrano/capistrano-maintenance"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Enable and disabled tasks to show when your project is on maintenance"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, [">= 3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<capistrano>, [">= 3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>, [">= 3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
