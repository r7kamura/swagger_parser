require "swagger_parser/definitions"
require "swagger_parser/external_documentation"
require "swagger_parser/info"
require "swagger_parser/parameters"
require "swagger_parser/paths"
require "swagger_parser/responses"
require "swagger_parser/security"
require "swagger_parser/security_definitions"
require "swagger_parser/source_based_object"
require "swagger_parser/tag"

module SwaggerParser
  class Swagger < SourceBasedObject
    # @return [Object]
    def base_path
      source["basePath"]
    end

    # @return [Object]
    def consumes
      source["consumes"]
    end

    # @return [SwaggerParser::Definitions]
    def definitions
      SwaggerParser::Definitions.new(source["definitions"])
    end

    # @return [Array<SwaggerParser::Error>]
    def errors
      @__errors ||= []
    end

    # @return [SwaggerParser::ExternalDocumentation, nil]
    def external_docs
      if source["external_docs"]
        SwaggerParser::ExternalDocumentation.new(source["external_docs"])
      end
    end

    # @return [Object]
    def host
      source["host"]
    end

    # @return [SwaggerParser::Info]
    def info
      SwaggerParser::Info.new(source["info"])
    end

    # @return [Object]
    def parameters
      SwaggerParser::Parameters.new(source["parameters"])
    end

    # @return [Object]
    def paths
      SwaggerParser::Paths.new(source["paths"])
    end

    # @return [Object]
    def produces
      source["produces"]
    end

    # @return [Object]
    def responses
      SwaggerParser::Responses.new(source["responses"])
    end

    # @return [Object]
    def schemes
      source["schemes"]
    end

    # @return [Object]
    def security
      SwaggerParser::Security.new(source["security"])
    end

    # @return [Object]
    def security_definitions
      SwaggerParser::SecurityDefinitions.new(source["security_definitions"])
    end

    # @return [Object]
    def swagger
      source["swagger"]
    end

    # @return [Array<SwaggerParser::Tag>]
    def tags
      (source["tags"] || []).map do |element|
        SwaggerParser::Tag.new(element)
      end
    end

    # @return [false, true]
    def valid?
      collect_errors
      errors.empty?
    end

    private

    def collect_errors
      unless has_hash_source?
        errors |= SwaggerParser::Error.new("Swagger source is not a Hash")
      end
    end

    # @return [false, true]
    def has_hash_source?
      source.is_a?(Hash)
    end
  end
end
