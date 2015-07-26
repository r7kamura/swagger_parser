require "swagger_parser/scopes"
require "swagger_parser/source_based_object"

module SwaggerParser
  class SecurityScheme < SourceBasedObject
    # @return [Object]
    def authorization_url
      source["authorizationUrl"]
    end

    # @return [Object]
    def description
      source["description"]
    end

    # @return [Object]
    def flow
      source["flow"]
    end

    # @return [Object]
    def in
      source["in"]
    end

    # @return [Object]
    def name
      source["name"]
    end

    # @return [SwaggerParser::Scopes, nil]
    def scopes
      if source["scopes"]
        SwaggerParser::Scopes.new(source["scopes"])
      end
    end

    # @return [Object]
    def token_url
      source["tokenUrl"]
    end

    # @return [Object]
    def type
      source["type"]
    end
  end
end
