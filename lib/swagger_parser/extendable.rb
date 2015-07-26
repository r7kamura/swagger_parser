module SwaggerParser
  module Extendable
    # @return [Hash{String => Object}]
    def extensions
      source.select do |key, value|
        key.start_with?("x-")
      end
    end
  end
end
