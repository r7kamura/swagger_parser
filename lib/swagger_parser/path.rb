require "swagger_parser/extendable"
require "swagger_parser/operation"
require "swagger_parser/referable"
require "swagger_parser/source_based_object"

module SwaggerParser
  class Path < SourceBasedObject
    OPERATION_NAMES = %w(
      delete
      get
      head
      options
      patch
      post
      put
    )

    include SwaggerParser::Extendable
    include SwaggerParser::Referable

    # @return [SwaggerParser::Operation, nil]
    def delete
      if source["delete"]
        SwaggerParser::Operation.new(source["delete"], http_method: "DELETE")
      end
    end

    # @return [SwaggerParser::Operation, nil]
    def get
      if source["get"]
        SwaggerParser::Operation.new(source["get"], http_method: "GET")
      end
    end

    # @return [SwaggerParser::Operation, nil]
    def head
      if source["head"]
        SwaggerParser::Operation.new(source["head"], http_method: "HEAD")
      end
    end

    # @return [Array<SwaggerParser::Operation>]
    def operations
      OPERATION_NAMES.map do |operation_name|
        send(operation_name)
      end.compact
    end

    # @return [SwaggerParser::Operation, nil]
    def options
      if source["options"]
        SwaggerParser::Operation.new(source["options"], http_method: "OPTIONS")
      end
    end

    # @return [Object]
    def parameters
      source["parameters"]
    end

    # @return [SwaggerParser::Operation, nil]
    def patch
      if source["patch"]
        SwaggerParser::Operation.new(source["patch"], http_method: "PATCH")
      end
    end

    # @return [SwaggerParser::Operation, nil]
    def post
      if source["post"]
        SwaggerParser::Operation.new(source["post"], http_method: "POST")
      end
    end

    # @return [SwaggerParser::Operation, nil]
    def put
      if source["put"]
        SwaggerParser::Operation.new(source["put"], http_method: "PUT")
      end
    end
  end
end
