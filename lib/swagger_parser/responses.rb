require "swagger_parser/enumerable_object"
require "swagger_parser/reference"
require "swagger_parser/response"

module SwaggerParser
  class Responses < EnumerableObject
    private

    # @note Implementation for SwaggerParser::EnumerableObject
    def build_element(value)
      if value["$ref"]
        SwaggerParser::Reference.new(value)
      else
        SwaggerParser::Response.new(value)
      end
    end
  end
end
