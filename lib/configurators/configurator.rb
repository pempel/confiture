require "erb"

class Configurator
  LIB_PATH = File.expand_path(File.dirname(File.dirname(__FILE__)))
  TEMPLATE_PATH = File.join(LIB_PATH, "templates")
  CONFIGURATION_PATH = ENV["HOME"]

  protected

  def parse_template(name)
    ERB.new(File.read(File.join(TEMPLATE_PATH, "#{name}.erb"))).result(binding)
  end

  def write_configuration(name, content)
    File.write(File.join(CONFIGURATION_PATH, name), content)
  end
end
