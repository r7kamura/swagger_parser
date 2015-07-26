require "swagger_parser/contact"
require "swagger_parser/license"

module SwaggerParser
  class Info
    # @param [Object] source
    def initialize(source)
      @source = source
    end

    # @return [Object]
    def contact
      SwaggerParser::Contact.new(@source["contact"])
    end

    # @return [Object]
    def description
      @source["description"]
    end

    # @return [Object]
    def license
      SwaggerParser::License.new(@source["license"])
    end

    # @return [Object]
    def terms_of_service
      @source["termsOfService"]
    end

    # @return [Object]
    def title
      @source["title"]
    end

    # @return [Object]
    def version
      @source["version"]
    end
  end
end
