require "erb"

class Configurator
  RESOURCE_PATH = File.expand_path(File.dirname(File.dirname(__FILE__)))
  OUTPUT_PATH = ENV["HOME"]

  protected

  def write_configuration(options)
    from = options.fetch(:from)
    to = options.fetch(:to, ".#{from.gsub(/\.erb$/, '')}")
    content = File.read(File.join(RESOURCE_PATH, from))
    content = ERB.new(content).result(binding) if File.extname(from) == ".erb"
    File.write(File.join(OUTPUT_PATH, to), content)
  end
end
