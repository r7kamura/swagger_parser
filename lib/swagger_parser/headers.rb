require "swagger_parser/enumerable_object"
require "swagger_parser/header"

module SwaggerParser
  class Headers < EnumerableObject
    private

    # @note Implementation for SwaggerParser::EnumerableObject
    def build_element(value)
      SwaggerParser::Header.new(value)
    end
  end
end
