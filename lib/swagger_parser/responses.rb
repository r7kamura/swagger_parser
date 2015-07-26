require "swagger_parser/enumerable_object"
require "swagger_parser/response"

module SwaggerParser
  class Responses < EnumerableObject
    private

    # @note Implementation for SwaggerParser::EnumerableObject
    def build_element(value)
      SwaggerParser::Response.new(value)
    end
  end
end
