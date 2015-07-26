require "swagger_parser/operation"
require "swagger_parser/referable"
require "swagger_parser/source_based_object"

module SwaggerParser
  class Path < SourceBasedObject
    include SwaggerParser::Referable

    # @return [SwaggerParser::Operation, nil]
    def delete
      if source["delete"]
        SwaggerParser::Operation.new(source["delete"])
      end
    end

    # @return [SwaggerParser::Operation, nil]
    def get
      if source["get"]
        SwaggerParser::Operation.new(source["get"])
      end
    end

    # @return [SwaggerParser::Operation, nil]
    def head
      if source["head"]
        SwaggerParser::Operation.new(source["head"])
      end
    end

    # @return [SwaggerParser::Operation, nil]
    def options
      if source["options"]
        SwaggerParser::Operation.new(source["options"])
      end
    end

    # @return [Object]
    def parameters
      source["parameters"]
    end

    # @return [SwaggerParser::Operation, nil]
    def patch
      if source["patch"]
        SwaggerParser::Operation.new(source["patch"])
      end
    end

    # @return [SwaggerParser::Operation, nil]
    def post
      if source["post"]
        SwaggerParser::Operation.new(source["post"])
      end
    end

    # @return [SwaggerParser::Operation, nil]
    def put
      if source["put"]
        SwaggerParser::Operation.new(source["put"])
      end
    end
  end
end
