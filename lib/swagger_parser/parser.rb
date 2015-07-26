require "json"
require "swagger_parser/errors/file_parsing_error"
require "swagger_parser/errors/source_type_error"
require "yaml"

module SwaggerParser
  class Parser
    YAML_EXTNAMES = %w(.yaml .yml)

    class << self
      # @param [String] path
      # @return [Object]
      def parse(path)
        new(path).parse
      end
    end

    # @param [String] path
    def initialize(path)
      @path = path
    end

    # @return [SwaggerParser::Schema]
    # @raise [SwaggerParser::Errors::FileParsingError, SwaggerParser::Errors::SourceTypeError]
    def parse
      object = parse_file
      raise SwaggerParser::Errors::SourceTypeError unless object.is_a?(Hash)
      object
    end

    private

    # @return [String]
    def content
      File.read(path)
    end

    # @return [Object]
    # @raise [SwaggerParser::Errors::FileParsingError]
    def parse_file
      if yaml?
        YAML.load(content)
      else
        JSON.parse(content)
      end
    rescue => exception
      raise SwaggerParser::Errors::FileParsingError, exception
    end

    # @return [String]
    def path
      @path
    end

    # @return [false, true]
    def yaml?
      YAML_EXTNAMES.include?(File.extname(path))
    end
  end
end
