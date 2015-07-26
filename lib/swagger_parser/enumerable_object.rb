require "swagger_parser/source_based_object"

module SwaggerParser
  class EnumerableObject < SourceBasedObject
    include Enumerable

    # @note Implementation for Enumerable
    def each(&block)
      source.each do |key, value|
        block.call([key, build_element(value)])
      end
    end

    # @param [String]
    # @return [SwaggerParser::SourceBasedObject, nil]
    def [](key)
      value = source[key]
      build_element(value) if value
    end

    private

    # @note Override me
    # @param [Object] value
    # @return [Class]
    def build_element(value)
      raise NotImplementedError
    end
  end
end
