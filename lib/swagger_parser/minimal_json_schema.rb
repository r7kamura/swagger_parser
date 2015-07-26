require "swagger_parser/source_based_object"

module SwaggerParser
  # JSON Schema without $ref and properties for object definition.
  class MinimalJsonSchema < SourceBasedObject
    # @return [Object]
    def default
      source["default"]
    end

    # @return [Object]
    def description
      source["description"]
    end

    # @return [Object]
    def enum
      source["enum"]
    end

    # @return [false, true]
    def exclusive_maximum
      !!source["exclusiveMaximum"]
    end

    # @return [false, true]
    def exclusive_minimum
      !!source["exclusiveMinimum"]
    end

    # @return [Object]
    def format
      source["format"]
    end

    # @return [Object]
    def maximum
      source["maximum"]
    end

    # @return [Object]
    def maxItems
      source["maxItems"]
    end

    # @return [Object]
    def max_length
      source["maxLength"]
    end

    # @return [Object]
    def minimum
      source["minimum"]
    end

    # @return [Object]
    def min_items
      source["minItems"]
    end

    # @return [Object]
    def min_length
      source["minLength"]
    end

    # @return [Object]
    def multiple_of
      source["multipleOf"]
    end

    # @return [Object]
    def pattern
      source["pattern"]
    end

    # @return [Object]
    def title
      source["title"]
    end

    # @return [Object]
    def type
      source["type"]
    end

    # @return [false, true]
    def unique_items
      !!source["uniqueItems"]
    end
  end
end
