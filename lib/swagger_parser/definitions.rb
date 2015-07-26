require "swagger_parser/schema"
require "swagger_parser/source_based_object"
require "swagger_parser/swagger"

module SwaggerParser
  class Definitions < SourceBasedObject
    include Enumerable

    # @note Implementation for Enumerable
    def each(&block)
      source.each do |key, value|
        block.call([key, SwaggerParser::Schema.new(value)])
      end
    end

    # @param [String]
    # @return [SwaggerParser::Schema, nil]
    def [](key)
      value = source[key]
      SwaggerParser::Schema.new(value) if value
    end
  end
end
