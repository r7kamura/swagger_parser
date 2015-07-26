require "swagger_parser/source_based_object"

module SwaggerParser
  class Xml < SourceBasedObject
    # @return [false, true]
    def attribute
      !!source["attribute"]
    end

    # @return [Object]
    def name
      source["name"]
    end

    # @return [Object]
    def namespace
      source["namespace"]
    end

    # @return [Object]
    def prefix
      source["prefix"]
    end

    # @return [false, true]
    def wrapped
      !!source["wrapped"]
    end
  end
end
