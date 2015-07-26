require "swagger_parser/enumerable_object"
require "swagger_parser/path"

module SwaggerParser
  class Paths < EnumerableObject
    private

    # @note Implementation for SwaggerParser::EnumerableObject
    def build_element(value)
      SwaggerParser::Path.new(value)
    end
  end
end
