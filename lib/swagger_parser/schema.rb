require "swagger_parser/external_docs_attributable"
require "swagger_parser/json_schema"
require "swagger_parser/xml"

module SwaggerParser
  class Schema < JsonSchema
    include SwaggerParser::ExternalDocsAttributable

    # @return [Object]
    def discriminator
      source["discriminator"]
    end

    # @return [Object]
    def example
      source["example"]
    end

    # @return [false, true]
    def read_only
      !!source["readOnly"]
    end

    # @return [Object]
    def xml
      SwaggerParser::Xml.new(source["xml"])
    end
  end
end
