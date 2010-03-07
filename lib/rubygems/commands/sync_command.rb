# Much of this is stolen from the `open_gem` RubyGem's "read"
# command - thanks Adam!
#
# http://github.com/adamsanderson/open_gem/blob/dfddaa286e/lib/rubygems/commands/read_command.rb
class Gem::Commands::SyncCommand < Gem::Command
  include Gem::VersionOption

  def initialize
    super 'sync', "synchronize/install multiple gems",
      :command => nil,
      :version => Gem::Requirement.default,
      :latest  => false,
      :all     => false
  end

  def usage
    "#{program_name} [GEMS_SPEC_FILE]"
  end

  def arguments
    "GEMS_SPEC_FILE  list of gems to be installed"
  end

  def defaults_str
    '.gems'
  end

  def description
    %q[
      installs gems specified as list of gem install argumensts
    ]
  end

  def execute
    gems = File.readlines('.gems').map {|n| n.chomp }
    gems.each do |args|
      begin
        Gem::GemRunner.new.run(args.to_s.split(' ').unshift('install'))
      rescue Gem::SystemExitException => e
        #exit e.exit_code
      end
    end
  end

end
