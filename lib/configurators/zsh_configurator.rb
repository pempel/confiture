require_relative "configurator"

class ZshConfigurator < Configurator
  def config
    write_configuration(".zshrc-n", parse_template("zshrc"))
  end
end
