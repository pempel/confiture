require_relative "configurator"

class GitConfigurator < Configurator
  def config
    print "Enter your name for git commits: "
    @name = $stdin.gets.chomp

    print "Enter your email for git commits: "
    @email = $stdin.gets.chomp

    write_configuration(from: "gitignore")
    write_configuration(from: "gitconfig.erb")
  end
end
