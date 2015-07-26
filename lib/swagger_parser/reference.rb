require "swagger_parser/referable"
require "swagger_parser/source_based_object"

module SwaggerParser
  class Reference < SourceBasedObject
    include SwaggerParser::Referable
  end
end
