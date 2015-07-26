require "swagger_parser/minimal_json_schema"

module SwaggerParser
  class JsonSchema < MinimalJsonSchema
    # @return [Object]
    def max_properties
      source["maxProperties"]
    end

    # @return [Object]
    def min_properties
      source["minProperties"]
    end

    # @return [Object]
    def ref
      source["$ref"]
    end

    # @return [Object]
    def required
      source["required"]
    end
  end
end
