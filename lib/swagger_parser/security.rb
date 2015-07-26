require "swagger_parser/enumerable_object"

module SwaggerParser
  class Security < EnumerableObject
    private

    # @note Implementation for SwaggerParser::EnumerableObject
    def build_element(value)
      value
    end
  end
end
