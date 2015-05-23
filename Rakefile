# TODO: Make a gem from this code.
# TODO: Install the minitest-reporters gem.

require "rake/testtask"

require_relative "lib/git_configurator"
require_relative "lib/zsh_configurator"

Rake::TestTask.new(:spec) do |task|
  task.libs << "spec"
  task.pattern = "spec/**/*_spec.rb"
end

namespace :config do
  task :git do
    GitConfigurator.new.config
  end

  task :zsh do
    ZshConfigurator.new.config
  end
end

task config: ["config:git", "config:zsh"]
task default: :config
