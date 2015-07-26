require "swagger_parser/source_based_object"

module SwaggerParser
  class Tag < SourceBasedObject
    # @return [Object]
    def description
      source["description"]
    end

    # @return [SwaggerParser::ExternalDocumentation, nil]
    def external_docs
      if source["external_docs"]
        SwaggerParser::ExternalDocumentation.new(source["external_docs"])
      end
    end

    # @return [Object]
    def name
      source["name"]
    end
  end
end
