require_relative "configurator"

class VimConfigurator < Configurator
  def config
    unless executable?("vim")
      puts "First you need to install vim."
    end

    filename = File.join(Dir::home, ".vim", "bundle", "Vundle.vim")
    unless File.exists?(filename)
      unless executable?("git")
        puts "First you need to install git."
      end
      puts "Installing vundle (a vim plugin manager)..."
      run "git clone https://github.com/VundleVim/Vundle.vim.git #{filename}"
    end

    write_configuration(from: "vimrc")

    puts "Installing vim plugins..."
    run "vim +PluginInstall +qall"
  end

  private

  def executable?(command)
    run "which #{command}"
  end

  def run(command)
    system "#{command} > /dev/null 2>&1"
  end
end
