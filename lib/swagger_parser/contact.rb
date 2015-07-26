require "swagger_parser/source_based_object"

module SwaggerParser
  class Contact < SourceBasedObject
    # @return [Object]
    def email
      source["email"]
    end

    # @return [Object]
    def name
      source["name"]
    end

    # @return [Object]
    def url
      source["url"]
    end
  end
end
