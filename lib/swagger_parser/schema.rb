require "swagger_parser/external_documentation"
require "swagger_parser/json_schema"
require "swagger_parser/xml"

module SwaggerParser
  class Schema < JsonSchema
    # @return [Object]
    def discriminator
      source["discriminator"]
    end

    # @return [Object]
    def example
      source["example"]
    end

    # @return [SwaggerParser::ExternalDocumentation, nil]
    def external_docs
      if source["external_docs"]
        SwaggerParser::ExternalDocumentation.new(source["external_docs"])
      end
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
