require "swagger_parser/source_based_object"

module SwaggerParser
  class EnumerableObject < SourceBasedObject
    include Enumerable

    # @note Implementation for Enumerable
    def each(&block)
      source.each do |key, value|
        block.call([key, element_class.new(value)])
      end
    end

    # @param [String]
    # @return [SwaggerParser::SourceBasedObject, nil]
    def [](key)
      value = source[key]
      element_class.new(value) if value
    end

    private

    # @note Override me
    # @return [Class]
    def element_class
      raise NotImplementedError
    end
  end
end
