require "swagger_parser/external_documentation"
require "swagger_parser/source_based_object"
require "swagger_parser/xml"

module SwaggerParser
  class Schema < SourceBasedObject
    # @return [Object]
    def discriminator
      source["discriminator"]
    end

    # @return [Object]
    def example
      source["example"]
    end

    # @return [Object]
    def external_docs
      SwaggerParser::ExternalDocumentation.new(source["externalDocs"])
    end

    # @return [Object]
    def read_only
      source["readOnly"]
    end

    # @return [Object]
    def xml
      SwaggerParser::Xml.new(source["xml"])
    end
  end
end
