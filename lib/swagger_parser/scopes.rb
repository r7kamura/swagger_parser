require "swagger_parser/enumerable_object"

module SwaggerParser
  class Scopes < EnumerableObject
    private

    # @note Implementation for SwaggerParser::EnumerableObject
    def build_element(value)
      value
    end
  end
end
