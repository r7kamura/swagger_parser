require "swagger_parser/info"

module SwaggerParser
  class Schema
    # @param [Hash] source
    def initialize(source)
      @source = source
    end

    # @return [Array<SwaggerParser::Error>]
    def errors
      @__errors ||= []
    end

    # @return [SwaggerParser::Info]
    def info
      SwaggerParser::Info.new(@source["info"])
    end

    # @return [Object]
    def swagger
      @source["swagger"]
    end

    # @return [false, true]
    def valid?
      collect_errors
      errors.empty?
    end

    private

    def collect_errors
      unless has_hash_source?
        errors |= SwaggerParser::Error.new("Schema source is not a Hash")
      end
    end

    # @return [false, true]
    def has_hash_source?
      @source.is_a?(Hash)
    end
  end
end
