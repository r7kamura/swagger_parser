require "swagger_parser/contact"
require "swagger_parser/extendable"
require "swagger_parser/license"
require "swagger_parser/source_based_object"

module SwaggerParser
  class Info < SourceBasedObject
    include SwaggerParser::Extendable

    # @return [Object]
    def contact
      SwaggerParser::Contact.new(source["contact"])
    end

    # @return [Object]
    def description
      source["description"]
    end

    # @return [Object]
    def license
      SwaggerParser::License.new(source["license"])
    end

    # @return [Object]
    def terms_of_service
      source["termsOfService"]
    end

    # @return [Object]
    def title
      source["title"]
    end

    # @return [Object]
    def version
      source["version"]
    end
  end
end
