require "swagger_parser/source_based_object"

module SwaggerParser
  class License < SourceBasedObject
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
