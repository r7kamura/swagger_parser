require "swagger_parser/minimal_json_schema"
require "swagger_parser/referable"

module SwaggerParser
  class JsonSchema < MinimalJsonSchema
    include SwaggerParser::Referable

    # @return [Object]
    def max_properties
      source["maxProperties"]
    end

    # @return [Object]
    def min_properties
      source["minProperties"]
    end

    # @return [Object]
    def required
      source["required"]
    end
  end
end
