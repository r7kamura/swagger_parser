require "swagger_parser/item"
require "swagger_parser/json_schema"

module SwaggerParser
  class Parameter < JsonSchema
    # @return [Object]
    def allow_empty_value
      source["allowEmptyValue"]
    end

    # @return [Object]
    def boolean
      source["boolean"]
    end

    # @return [Object]
    def collection_format
      source["collectionFormat"]
    end

    # @return [Object]
    def in
      source["in"]
    end

    # @return [Array<SwaggerParser::Item>, nil]
    def items
      value = source["items"]
      if value.respond_to?(:map)
        value.map do |element|
          SwaggerParser::Item.new(element)
        end
      end
    end

    # @return [Object]
    def name
      source["name"]
    end

    # @note Override because this "required" is different from JSON Schema's "required"
    # @return [false, true]
    def required
      !!source["required"]
    end

    # @return [Object]
    def schema
      value = source["schema"]
      SwaggerParser::Schema.new(value) if in_body?
    end

    private

    def in_body?
      self.in == "body"
    end
  end
end
