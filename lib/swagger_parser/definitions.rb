require "swagger_parser/enumerable_object"
require "swagger_parser/schema"

module SwaggerParser
  class Definitions < EnumerableObject
    private

    # @note Implementation for SwaggerParser::EnumerableObject
    def element_class
      SwaggerParser::Schema
    end
  end
end
