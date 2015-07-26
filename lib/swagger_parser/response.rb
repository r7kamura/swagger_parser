require "swagger_parser/examples"
require "swagger_parser/headers"
require "swagger_parser/schema"
require "swagger_parser/source_based_object"

module SwaggerParser
  class Response < SourceBasedObject
    # @return [Object]
    def description
      source["description"]
    end

    # @return [SwaggerParser::Examples]
    def examples
      SwaggerParser::Examples.new(source["examples"] || {})
    end

    # @return [SwaggerParser::Headers]
    # @return [Object]
    def headers
      SwaggerParser::Headers.new(source["headers"] || {})
    end

    # @return [SwaggerParser::Schema, nil]
    def schema
      if source["schema"]
        SwaggerParser::Schema.new(source["schema"])
      end
    end
  end
end
