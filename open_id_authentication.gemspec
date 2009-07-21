# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{open_id_authentication}
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Heinemeier Hansson"]
  s.date = %q{2009-07-21}
  s.description = %q{Provides a thin wrapper around the excellent ruby-openid gem from JanRan. gem version is unofficial, github fork of rails's by moro}
  s.email = %q{}
  s.extra_rdoc_files = ["README", "CHANGELOG"]
  s.files = ["README", "CHANGELOG", "Rakefile", "test/mem_cache_store_test.rb", "test/normalize_test.rb", "test/open_id_authentication_test.rb", "test/status_test.rb", "test/test_helper.rb", "lib/open_id_authentication", "lib/open_id_authentication/association.rb", "lib/open_id_authentication/db_store.rb", "lib/open_id_authentication/mem_cache_store.rb", "lib/open_id_authentication/nonce.rb", "lib/open_id_authentication/request.rb", "lib/open_id_authentication/timeout_fixes.rb", "lib/open_id_authentication.rb", "generators/open_id_authentication_tables", "generators/open_id_authentication_tables/open_id_authentication_tables_generator.rb", "generators/open_id_authentication_tables/templates", "generators/open_id_authentication_tables/templates/migration.rb", "generators/upgrade_open_id_authentication_tables", "generators/upgrade_open_id_authentication_tables/templates", "generators/upgrade_open_id_authentication_tables/templates/migration.rb", "generators/upgrade_open_id_authentication_tables/upgrade_open_id_authentication_tables_generator.rb", "rails/init.rb"]
  s.homepage = %q{http://github.com/rails/open_id_authentication}
  s.rdoc_options = ["--title", "open_id_authentication documentation", "--charset", "utf-8", "--opname", "index.html", "--line-numbers", "--main", "README", "--inline-source", "--exclude", "^(examples|extras)/"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Provides a thin wrapper around the excellent ruby-openid gem from JanRan. gem version is unofficial, github fork of rails's by moro}
  s.test_files = ["test/mem_cache_store_test.rb", "test/normalize_test.rb", "test/open_id_authentication_test.rb", "test/status_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ruby-openid>, [">= 2.0.4"])
    else
      s.add_dependency(%q<ruby-openid>, [">= 2.0.4"])
    end
  else
    s.add_dependency(%q<ruby-openid>, [">= 2.0.4"])
  end
end
