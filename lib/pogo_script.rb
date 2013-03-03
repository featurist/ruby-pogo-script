require 'execjs'
require 'pogo_script/source'

module PogoScript
  EngineError      = ExecJS::RuntimeError
  CompilationError = ExecJS::ProgramError

  module Source
    def self.path
      @path ||= ENV['POGOSCRIPT_SOURCE_PATH'] || bundled_path
    end

    def self.path=(path)
      @contents = @version = @bare_option = @context = nil
      @path = path
    end

    def self.contents
      @contents ||= File.read(path)
    end

    def self.version
      @version ||= contents[/PogoScript Compiler v([\d.]+)/, 1]
    end

    def self.bare_option
      @bare_option ||= contents.match(/noWrap/) ? 'noWrap' : 'bare'
    end

    def self.context
      @context ||= ExecJS.compile(contents)
    end
  end

  class << self
    def engine
    end

    def engine=(engine)
    end

    def version
      Source.version
    end

    # Compile a script (String or IO) to JavaScript.
    def compile(script, options = {})
      script = script.read if script.respond_to?(:read)

      Source.context.call("pogoscript.compile", script, { :ugly => true })
    end
  end
end
