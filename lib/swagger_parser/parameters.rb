require "swagger_parser/enumerable_object"
require "swagger_parser/parameter"

module SwaggerParser
  class Parameters < EnumerableObject
    private

    # @note Implementation for SwaggerParser::EnumerableObject
    def element_class
      SwaggerParser::Parameter
    end
  end
end
