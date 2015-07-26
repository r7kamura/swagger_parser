require "swagger_parser/extendable"
require "swagger_parser/external_docs_attributable"
require "swagger_parser/source_based_object"

module SwaggerParser
  class Tag < SourceBasedObject
    include SwaggerParser::Extendable
    include SwaggerParser::ExternalDocsAttributable

    # @return [Object]
    def description
      source["description"]
    end

    # @return [Object]
    def name
      source["name"]
    end
  end
end
