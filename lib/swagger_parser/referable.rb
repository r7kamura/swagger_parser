module SwaggerParser
  module Referable
    # @return [Object]
    def ref
      source["$ref"]
    end
  end
end
