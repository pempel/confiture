require_relative "configurator"

class ZshConfigurator < Configurator
  def config
    write_configuration(from: "zshrc")
  end
end
