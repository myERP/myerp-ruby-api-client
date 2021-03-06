# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: myerp_api 0.1.4 ruby lib

Gem::Specification.new do |s|
  s.name = "myerp_api"
  s.version = "0.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Didier Baquier"]
  s.date = "2014-04-10"
  s.description = "The myERP API gem is a lightweight gem for accessing the myERP REST web services"
  s.email = "didier.baquier@myerp.com"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".travis.yml",
    "Gemfile",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/ext/array.rb",
    "lib/ext/date.rb",
    "lib/ext/hash.rb",
    "lib/ext/time.rb",
    "lib/myerp/account.rb",
    "lib/myerp/api/accounts.rb",
    "lib/myerp/api/base.rb",
    "lib/myerp/api/currencies.rb",
    "lib/myerp/api/customers.rb",
    "lib/myerp/api/item_families.rb",
    "lib/myerp/api/items.rb",
    "lib/myerp/api/payment_terms.rb",
    "lib/myerp/api/projects.rb",
    "lib/myerp/api/sales_orders.rb",
    "lib/myerp/api/transactions.rb",
    "lib/myerp/api/vendors.rb",
    "lib/myerp/base.rb",
    "lib/myerp/contact.rb",
    "lib/myerp/credentials.rb",
    "lib/myerp/crud.rb",
    "lib/myerp/currency.rb",
    "lib/myerp/customer.rb",
    "lib/myerp/errors.rb",
    "lib/myerp/item.rb",
    "lib/myerp/item_family.rb",
    "lib/myerp/model.rb",
    "lib/myerp/payment_term.rb",
    "lib/myerp/project.rb",
    "lib/myerp/sales_order.rb",
    "lib/myerp/transaction.rb",
    "lib/myerp/vendor.rb",
    "lib/myerp_api.rb",
    "myerp_api.gemspec",
    "spec/myerp/base_spec.rb",
    "spec/myerp/credentials_spec.rb",
    "spec/spec_helper.rb",
    "spec/test_rubies"
  ]
  s.homepage = "http://www.myerp.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "The myERP API gem is a lightweight gem for accessing the myERP REST web services"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0"])
      s.add_runtime_dependency(%q<hashie>, ["~> 1"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2"])
      s.add_development_dependency(%q<jruby-openssl>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<vcr>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<debugger>, [">= 0"])
      s.add_development_dependency(%q<factory_girl>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_development_dependency(%q<redcarpet>, [">= 0"])
    else
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<hashie>, ["~> 1"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2"])
      s.add_dependency(%q<jruby-openssl>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<vcr>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<debugger>, [">= 0"])
      s.add_dependency(%q<factory_girl>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<redcarpet>, [">= 0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<hashie>, ["~> 1"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2"])
    s.add_dependency(%q<jruby-openssl>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<vcr>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<debugger>, [">= 0"])
    s.add_dependency(%q<factory_girl>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<redcarpet>, [">= 0"])
  end
end

