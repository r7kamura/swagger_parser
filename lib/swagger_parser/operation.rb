require "swagger_parser/external_docs_attributable"
require "swagger_parser/source_based_object"

module SwaggerParser
  class Operation < SourceBasedObject
    include SwaggerParser::ExternalDocsAttributable

    # @return [Object]
    def consumes
      source["consumes"] || []
    end

    # @return [Object]
    def deprecated
      source["deprecated"]
    end

    # @return [Object]
    def description
      source["description"]
    end

    # @return [Object]
    def operation_id
      source["operationId"]
    end

    # @return [SwaggerParser::Parameters]
    def parameters
      SwaggerParser::Parameters.new(source["parameters"] || {})
    end

    # @return [Object]
    def produces
      source["produces"]
    end

    # @return [SwaggerParser::Responses]
    def responses
      # TODO
    end

    # @return [Object]
    def schemes
      source["schemes"]
    end

    # @return [Object]
    def security
      source["security"]
    end

    # @return [Object]
    def summary
      source["summary"]
    end

    # @return [Array<String>]
    def tags
      source["tags"] || []
    end
  end
end
