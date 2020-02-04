require "json"
require "yaml"

module Configset
  class Apply
    def initialize(options={})
      @options = options
      @path = options[:path]
    end

    def run
      check_exist!

      data = YAML.load_file(@path)
      IO.write(tmp_configset_path, JSON.pretty_generate(data))
      cfn_init
    end

    def cfn_init
      sh "/opt/aws/bin/cfn-init -v #{tmp_configset_path}"
    end

    def sh(command)
      puts "=> #{command}"
      # system command
    end

    def tmp_configset_path
      "/tmp/configset.json"
    end

  private
    def check_exist!
      return if File.exist?(@path)
      puts "ERROR: file not found: #{@path}".color(:red)
      puts "Please double check that it exists."
      exit 1
    end
  end
end
