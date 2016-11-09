require "swagger_parser/external_documentation"

module SwaggerParser
  module ExternalDocsAttributable
    # @return [SwaggerParser::ExternalDocumentation, nil]
    def external_docs
      if source["externalDocs"]
        SwaggerParser::ExternalDocumentation.new(source["externalDocs"])
      end
    end
  end
end
