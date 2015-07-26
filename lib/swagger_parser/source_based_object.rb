module SwaggerParser
  class SourceBasedObject
    attr_reader :source

    # @param [Object] source
    def initialize(source)
      @source = source
    end
  end
end
