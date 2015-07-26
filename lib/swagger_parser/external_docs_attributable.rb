require "swagger_parser/external_documentation"

module SwaggerParser
  module ExternalDocsAttributable
    # @return [SwaggerParser::ExternalDocumentation, nil]
    def external_docs
      if source["external_docs"]
        SwaggerParser::ExternalDocumentation.new(source["external_docs"])
      end
    end
  end
end
