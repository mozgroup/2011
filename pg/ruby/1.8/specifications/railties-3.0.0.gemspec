# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{railties}
  s.version = "3.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Heinemeier Hansson"]
  s.date = %q{2010-08-29}
  s.description = %q{Rails internals: application bootup, plugins, generators, and rake tasks.}
  s.email = %q{david@loudthinking.com}
  s.files = ["CHANGELOG", "README.rdoc", "guides/assets/images/belongs_to.png", "guides/assets/images/book_icon.gif", "guides/assets/images/bullet.gif", "guides/assets/images/challenge.png", "guides/assets/images/chapters_icon.gif", "guides/assets/images/check_bullet.gif", "guides/assets/images/credits_pic_blank.gif", "guides/assets/images/csrf.png", "guides/assets/images/customized_error_messages.png", "guides/assets/images/edge_badge.png", "guides/assets/images/error_messages.png", "guides/assets/images/feature_tile.gif", "guides/assets/images/footer_tile.gif", "guides/assets/images/fxn.png", "guides/assets/images/grey_bullet.gif", "guides/assets/images/habtm.png", "guides/assets/images/has_many.png", "guides/assets/images/has_many_through.png", "guides/assets/images/has_one.png", "guides/assets/images/has_one_through.png", "guides/assets/images/header_backdrop.png", "guides/assets/images/header_tile.gif", "guides/assets/images/i18n/demo_localized_pirate.png", "guides/assets/images/i18n/demo_translated_en.png", "guides/assets/images/i18n/demo_translated_pirate.png", "guides/assets/images/i18n/demo_translation_missing.png", "guides/assets/images/i18n/demo_untranslated.png", "guides/assets/images/icons/callouts/1.png", "guides/assets/images/icons/callouts/10.png", "guides/assets/images/icons/callouts/11.png", "guides/assets/images/icons/callouts/12.png", "guides/assets/images/icons/callouts/13.png", "guides/assets/images/icons/callouts/14.png", "guides/assets/images/icons/callouts/15.png", "guides/assets/images/icons/callouts/2.png", "guides/assets/images/icons/callouts/3.png", "guides/assets/images/icons/callouts/4.png", "guides/assets/images/icons/callouts/5.png", "guides/assets/images/icons/callouts/6.png", "guides/assets/images/icons/callouts/7.png", "guides/assets/images/icons/callouts/8.png", "guides/assets/images/icons/callouts/9.png", "guides/assets/images/icons/caution.png", "guides/assets/images/icons/example.png", "guides/assets/images/icons/home.png", "guides/assets/images/icons/important.png", "guides/assets/images/icons/next.png", "guides/assets/images/icons/note.png", "guides/assets/images/icons/prev.png", "guides/assets/images/icons/README", "guides/assets/images/icons/tip.png", "guides/assets/images/icons/up.png", "guides/assets/images/icons/warning.png", "guides/assets/images/jaimeiniesta.jpg", "guides/assets/images/nav_arrow.gif", "guides/assets/images/polymorphic.png", "guides/assets/images/posts_index.png", "guides/assets/images/rails_guides_logo.gif", "guides/assets/images/rails_logo_remix.gif", "guides/assets/images/rails_welcome.png", "guides/assets/images/session_fixation.png", "guides/assets/images/tab_grey.gif", "guides/assets/images/tab_info.gif", "guides/assets/images/tab_note.gif", "guides/assets/images/tab_red.gif", "guides/assets/images/tab_yellow.gif", "guides/assets/images/tab_yellow.png", "guides/assets/images/validation_error_messages.png", "guides/assets/javascripts/code_highlighter.js", "guides/assets/javascripts/guides.js", "guides/assets/javascripts/highlighters.js", "guides/assets/stylesheets/main.css", "guides/assets/stylesheets/print.css", "guides/assets/stylesheets/reset.css", "guides/assets/stylesheets/style.css", "guides/assets/stylesheets/syntax.css", "guides/rails_guides/generator.rb", "guides/rails_guides/helpers.rb", "guides/rails_guides/indexer.rb", "guides/rails_guides/levenshtein.rb", "guides/rails_guides/textile_extensions.rb", "guides/rails_guides.rb", "guides/source/2_2_release_notes.textile", "guides/source/2_3_release_notes.textile", "guides/source/3_0_release_notes.textile", "guides/source/action_controller_overview.textile", "guides/source/action_mailer_basics.textile", "guides/source/action_view_overview.textile", "guides/source/active_record_basics.textile", "guides/source/active_record_querying.textile", "guides/source/active_record_validations_callbacks.textile", "guides/source/active_support_core_extensions.textile", "guides/source/ajax_on_rails.textile", "guides/source/api_documentation_guidelines.textile", "guides/source/association_basics.textile", "guides/source/caching_with_rails.textile", "guides/source/command_line.textile", "guides/source/configuring.textile", "guides/source/contribute.textile", "guides/source/contributing_to_rails.textile", "guides/source/credits.html.erb", "guides/source/debugging_rails_applications.textile", "guides/source/form_helpers.textile", "guides/source/generators.textile", "guides/source/getting_started.textile", "guides/source/i18n.textile", "guides/source/index.html.erb", "guides/source/initialization.textile", "guides/source/layout.html.erb", "guides/source/layouts_and_rendering.textile", "guides/source/migrations.textile", "guides/source/nested_model_forms.textile", "guides/source/performance_testing.textile", "guides/source/plugins.textile", "guides/source/rails_application_templates.textile", "guides/source/rails_on_rack.textile", "guides/source/routing.textile", "guides/source/security.textile", "guides/source/testing.textile", "guides/w3c_validator.rb", "lib/rails/all.rb", "lib/rails/application/bootstrap.rb", "lib/rails/application/configurable.rb", "lib/rails/application/configuration.rb", "lib/rails/application/finisher.rb", "lib/rails/application/railties.rb", "lib/rails/application.rb", "lib/rails/backtrace_cleaner.rb", "lib/rails/cli.rb", "lib/rails/code_statistics.rb", "lib/rails/commands/application.rb", "lib/rails/commands/benchmarker.rb", "lib/rails/commands/console.rb", "lib/rails/commands/dbconsole.rb", "lib/rails/commands/destroy.rb", "lib/rails/commands/generate.rb", "lib/rails/commands/plugin.rb", "lib/rails/commands/profiler.rb", "lib/rails/commands/runner.rb", "lib/rails/commands/server.rb", "lib/rails/commands/update.rb", "lib/rails/commands.rb", "lib/rails/configuration.rb", "lib/rails/console/app.rb", "lib/rails/console/helpers.rb", "lib/rails/console/sandbox.rb", "lib/rails/deprecation.rb", "lib/rails/engine/configurable.rb", "lib/rails/engine/configuration.rb", "lib/rails/engine.rb", "lib/rails/generators/actions.rb", "lib/rails/generators/active_model.rb", "lib/rails/generators/base.rb", "lib/rails/generators/erb/controller/controller_generator.rb", "lib/rails/generators/erb/controller/templates/view.html.erb", "lib/rails/generators/erb/mailer/mailer_generator.rb", "lib/rails/generators/erb/mailer/templates/view.text.erb", "lib/rails/generators/erb/scaffold/scaffold_generator.rb", "lib/rails/generators/erb/scaffold/templates/_form.html.erb", "lib/rails/generators/erb/scaffold/templates/edit.html.erb", "lib/rails/generators/erb/scaffold/templates/index.html.erb", "lib/rails/generators/erb/scaffold/templates/new.html.erb", "lib/rails/generators/erb/scaffold/templates/show.html.erb", "lib/rails/generators/erb.rb", "lib/rails/generators/generated_attribute.rb", "lib/rails/generators/migration.rb", "lib/rails/generators/named_base.rb", "lib/rails/generators/rails/app/app_generator.rb", "lib/rails/generators/rails/app/templates/app/controllers/application_controller.rb", "lib/rails/generators/rails/app/templates/app/helpers/application_helper.rb", "lib/rails/generators/rails/app/templates/app/views/layouts/application.html.erb.tt", "lib/rails/generators/rails/app/templates/config/application.rb", "lib/rails/generators/rails/app/templates/config/boot.rb", "lib/rails/generators/rails/app/templates/config/databases/frontbase.yml", "lib/rails/generators/rails/app/templates/config/databases/ibm_db.yml", "lib/rails/generators/rails/app/templates/config/databases/mysql.yml", "lib/rails/generators/rails/app/templates/config/databases/oracle.yml", "lib/rails/generators/rails/app/templates/config/databases/postgresql.yml", "lib/rails/generators/rails/app/templates/config/databases/sqlite3.yml", "lib/rails/generators/rails/app/templates/config/environment.rb", "lib/rails/generators/rails/app/templates/config/environments/development.rb.tt", "lib/rails/generators/rails/app/templates/config/environments/production.rb.tt", "lib/rails/generators/rails/app/templates/config/environments/test.rb.tt", "lib/rails/generators/rails/app/templates/config/initializers/backtrace_silencers.rb", "lib/rails/generators/rails/app/templates/config/initializers/inflections.rb", "lib/rails/generators/rails/app/templates/config/initializers/mime_types.rb", "lib/rails/generators/rails/app/templates/config/initializers/secret_token.rb.tt", "lib/rails/generators/rails/app/templates/config/initializers/session_store.rb.tt", "lib/rails/generators/rails/app/templates/config/locales/en.yml", "lib/rails/generators/rails/app/templates/config/routes.rb", "lib/rails/generators/rails/app/templates/config.ru", "lib/rails/generators/rails/app/templates/db/seeds.rb", "lib/rails/generators/rails/app/templates/doc/README_FOR_APP", "lib/rails/generators/rails/app/templates/Gemfile", "lib/rails/generators/rails/app/templates/gitignore", "lib/rails/generators/rails/app/templates/public/404.html", "lib/rails/generators/rails/app/templates/public/422.html", "lib/rails/generators/rails/app/templates/public/500.html", "lib/rails/generators/rails/app/templates/public/favicon.ico", "lib/rails/generators/rails/app/templates/public/images/rails.png", "lib/rails/generators/rails/app/templates/public/index.html", "lib/rails/generators/rails/app/templates/public/javascripts/application.js", "lib/rails/generators/rails/app/templates/public/javascripts/controls.js", "lib/rails/generators/rails/app/templates/public/javascripts/dragdrop.js", "lib/rails/generators/rails/app/templates/public/javascripts/effects.js", "lib/rails/generators/rails/app/templates/public/javascripts/prototype.js", "lib/rails/generators/rails/app/templates/public/javascripts/rails.js", "lib/rails/generators/rails/app/templates/public/robots.txt", "lib/rails/generators/rails/app/templates/Rakefile", "lib/rails/generators/rails/app/templates/README", "lib/rails/generators/rails/app/templates/script/rails", "lib/rails/generators/rails/app/templates/test/performance/browsing_test.rb", "lib/rails/generators/rails/app/templates/test/test_helper.rb.tt", "lib/rails/generators/rails/app/USAGE", "lib/rails/generators/rails/controller/controller_generator.rb", "lib/rails/generators/rails/controller/templates/controller.rb", "lib/rails/generators/rails/controller/USAGE", "lib/rails/generators/rails/generator/generator_generator.rb", "lib/rails/generators/rails/generator/templates/%file_name%_generator.rb.tt", "lib/rails/generators/rails/generator/templates/USAGE.tt", "lib/rails/generators/rails/generator/USAGE", "lib/rails/generators/rails/helper/helper_generator.rb", "lib/rails/generators/rails/helper/templates/helper.rb", "lib/rails/generators/rails/helper/USAGE", "lib/rails/generators/rails/integration_test/integration_test_generator.rb", "lib/rails/generators/rails/integration_test/USAGE", "lib/rails/generators/rails/migration/migration_generator.rb", "lib/rails/generators/rails/migration/USAGE", "lib/rails/generators/rails/model/model_generator.rb", "lib/rails/generators/rails/model/USAGE", "lib/rails/generators/rails/observer/observer_generator.rb", "lib/rails/generators/rails/observer/USAGE", "lib/rails/generators/rails/performance_test/performance_test_generator.rb", "lib/rails/generators/rails/performance_test/USAGE", "lib/rails/generators/rails/plugin/plugin_generator.rb", "lib/rails/generators/rails/plugin/templates/init.rb", "lib/rails/generators/rails/plugin/templates/install.rb", "lib/rails/generators/rails/plugin/templates/lib/%file_name%.rb.tt", "lib/rails/generators/rails/plugin/templates/lib/tasks/%file_name%_tasks.rake.tt", "lib/rails/generators/rails/plugin/templates/MIT-LICENSE.tt", "lib/rails/generators/rails/plugin/templates/Rakefile.tt", "lib/rails/generators/rails/plugin/templates/README.tt", "lib/rails/generators/rails/plugin/templates/uninstall.rb", "lib/rails/generators/rails/plugin/USAGE", "lib/rails/generators/rails/resource/resource_generator.rb", "lib/rails/generators/rails/resource/USAGE", "lib/rails/generators/rails/scaffold/scaffold_generator.rb", "lib/rails/generators/rails/scaffold/USAGE", "lib/rails/generators/rails/scaffold_controller/scaffold_controller_generator.rb", "lib/rails/generators/rails/scaffold_controller/templates/controller.rb", "lib/rails/generators/rails/scaffold_controller/USAGE", "lib/rails/generators/rails/session_migration/session_migration_generator.rb", "lib/rails/generators/rails/session_migration/USAGE", "lib/rails/generators/rails/stylesheets/stylesheets_generator.rb", "lib/rails/generators/rails/stylesheets/templates/scaffold.css", "lib/rails/generators/rails/stylesheets/USAGE", "lib/rails/generators/resource_helpers.rb", "lib/rails/generators/test_case.rb", "lib/rails/generators/test_unit/controller/controller_generator.rb", "lib/rails/generators/test_unit/controller/templates/functional_test.rb", "lib/rails/generators/test_unit/helper/helper_generator.rb", "lib/rails/generators/test_unit/helper/templates/helper_test.rb", "lib/rails/generators/test_unit/integration/integration_generator.rb", "lib/rails/generators/test_unit/integration/templates/integration_test.rb", "lib/rails/generators/test_unit/mailer/mailer_generator.rb", "lib/rails/generators/test_unit/mailer/templates/functional_test.rb", "lib/rails/generators/test_unit/model/model_generator.rb", "lib/rails/generators/test_unit/model/templates/fixtures.yml", "lib/rails/generators/test_unit/model/templates/unit_test.rb", "lib/rails/generators/test_unit/observer/observer_generator.rb", "lib/rails/generators/test_unit/observer/templates/unit_test.rb", "lib/rails/generators/test_unit/performance/performance_generator.rb", "lib/rails/generators/test_unit/performance/templates/performance_test.rb", "lib/rails/generators/test_unit/plugin/plugin_generator.rb", "lib/rails/generators/test_unit/plugin/templates/%file_name%_test.rb.tt", "lib/rails/generators/test_unit/plugin/templates/test_helper.rb", "lib/rails/generators/test_unit/scaffold/scaffold_generator.rb", "lib/rails/generators/test_unit/scaffold/templates/functional_test.rb", "lib/rails/generators/test_unit.rb", "lib/rails/generators.rb", "lib/rails/info.rb", "lib/rails/info_controller.rb", "lib/rails/info_routes.rb", "lib/rails/initializable.rb", "lib/rails/paths.rb", "lib/rails/performance_test_help.rb", "lib/rails/plugin.rb", "lib/rails/rack/debugger.rb", "lib/rails/rack/log_tailer.rb", "lib/rails/rack/logger.rb", "lib/rails/rack/static.rb", "lib/rails/rack.rb", "lib/rails/railtie/configurable.rb", "lib/rails/railtie/configuration.rb", "lib/rails/railtie.rb", "lib/rails/ruby_version_check.rb", "lib/rails/rubyprof_ext.rb", "lib/rails/script_rails_loader.rb", "lib/rails/source_annotation_extractor.rb", "lib/rails/tasks/annotations.rake", "lib/rails/tasks/documentation.rake", "lib/rails/tasks/framework.rake", "lib/rails/tasks/log.rake", "lib/rails/tasks/middleware.rake", "lib/rails/tasks/misc.rake", "lib/rails/tasks/routes.rake", "lib/rails/tasks/statistics.rake", "lib/rails/tasks/tmp.rake", "lib/rails/tasks.rb", "lib/rails/test_help.rb", "lib/rails/test_unit/railtie.rb", "lib/rails/test_unit/testing.rake", "lib/rails/version.rb", "lib/rails.rb", "lib/rails/generators/rails/app/templates/app/mailers/.empty_directory", "lib/rails/generators/rails/app/templates/app/models/.empty_directory", "lib/rails/generators/rails/app/templates/public/stylesheets/.empty_directory", "lib/rails/generators/rails/app/templates/test/fixtures/.empty_directory", "lib/rails/generators/rails/app/templates/test/functional/.empty_directory", "lib/rails/generators/rails/app/templates/test/integration/.empty_directory", "lib/rails/generators/rails/app/templates/test/unit/.empty_directory", "lib/rails/generators/rails/generator/templates/templates/.empty_directory"]
  s.homepage = %q{http://www.rubyonrails.org}
  s.rdoc_options = ["--exclude", "."]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubyforge_project = %q{rails}
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Tools for creating, working with, and running Rails applications.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rake>, [">= 0.8.4"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.14.0"])
      s.add_runtime_dependency(%q<activesupport>, ["= 3.0.0"])
      s.add_runtime_dependency(%q<actionpack>, ["= 3.0.0"])
    else
      s.add_dependency(%q<rake>, [">= 0.8.4"])
      s.add_dependency(%q<thor>, ["~> 0.14.0"])
      s.add_dependency(%q<activesupport>, ["= 3.0.0"])
      s.add_dependency(%q<actionpack>, ["= 3.0.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0.8.4"])
    s.add_dependency(%q<thor>, ["~> 0.14.0"])
    s.add_dependency(%q<activesupport>, ["= 3.0.0"])
    s.add_dependency(%q<actionpack>, ["= 3.0.0"])
  end
end
