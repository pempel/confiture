require "minitest/autorun"
require "rake"

describe "config:git" do
  before do
    Rake.application.init
    Rake.application.load_rakefile

    @task = Rake::Task["config:git"]
    @task.reenable
  end

  # TODO: Add specs for the "config:git" rake task.
end
