Gem::Specification.new do |s|
  s.name = %q{tags4free}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thorben Schr\303\266der"]
  s.cert_chain = ["/Users/walski/.gem/gem-public_cert.pem"]
  s.date = %q{2008-10-10}
  s.description = %q{Free tag extraction from content using Yahoo! search API.}
  s.email = %q{thorben@fetmab.net}
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "lib/tags_4_free.rb", "spec/spec_helper.rb", "spec/tags_4_free_spec.rb"]
  s.has_rdoc = true
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{kickassrb}
  s.rubygems_version = %q{1.2.0}
  s.signing_key = %q{/Users/walski/.gem/gem-private_key.pem}
  s.summary = %q{Free tag extraction from content using Yahoo! search API.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
      s.add_runtime_dependency(%q<httparty>, [">= 0.1.3"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<httparty>, [">= 0.1.3"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.1.3"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
