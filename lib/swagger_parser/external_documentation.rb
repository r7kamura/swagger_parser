require "swagger_parser/source_based_object"

module SwaggerParser
  class ExternalDocumentation < SourceBasedObject
    # @return [Object]
    def description
      source["description"]
    end

    # @return [Object]
    def url
      source["url"]
    end
  end
end
