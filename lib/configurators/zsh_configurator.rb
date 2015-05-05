require_relative "configurator"

class ZshConfigurator < Configurator
  def config
    write_configuration(".zshrc", parse_template("zshrc"))
  end
end
