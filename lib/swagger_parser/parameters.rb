require "swagger_parser/enumerable_object"
require "swagger_parser/parameter"

module SwaggerParser
  class Parameters < EnumerableObject
    private

    # @note Implementation for SwaggerParser::EnumerableObject
    def build_element(value)
      SwaggerParser::Parameter.new(value)
    end
  end
end
