# frozen_string_literal: true

require 'aspisec/module'

module Aspisec
  module Modules
    # FileZilla module.
    # Inherits {Aspisec::Module}.
    # For more examples of methods, see {Aspisec::Modules::Sqlmap}.
    # @see https://filezilla-project.org
    # @example
    #   # Get the global config
    #   conf = Aspisec::Config.new.conf
    #   # Create a Filezilla module instance
    #   fzl = Aspisec::Modules::Filezilla.new(conf)
    #   # Locations available
    #   fzl.locations_list # => ["connexions", "config", "queue"]
    class Filezilla < Aspisec::Module
      # see {Aspisec::Config::DEFAULT_CONFIG} or call {Aspisec::Module::Location#description}.
      # @return [Location]
      attr_reader :connexions

      # see {Aspisec::Config::DEFAULT_CONFIG} or call {Aspisec::Module::Location#description}.
      # @return [Location]
      attr_reader :config

      # see {Aspisec::Config::DEFAULT_CONFIG} or call {Aspisec::Module::Location#description}.
      # @return [Location]
      attr_reader :queue

      # Inherits from {Aspisec::Module} but has only the `conf` argument,
      # `tool_name` is hardcoded for each module.
      # @param conf [Aspisec::Config] an instance of the global configuration
      def initialize(conf, logger: nil)
        super(conf, 'filezilla', logger:)
        @connexions = Location.new(@conf, 'connexions')
        @config = Location.new(@conf, 'config')
        @queue = Location.new(@conf, 'queue')
        @locations_list = %w[connexions config queue]
      end
    end
  end
end
