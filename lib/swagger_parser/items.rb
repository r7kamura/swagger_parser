require "swagger_parser/extendable"
require "swagger_parser/source_based_object"

module SwaggerParser
  class Items < SourceBasedObject
    include SwaggerParser::Extendable
  end
end
