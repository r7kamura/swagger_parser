require "swagger_parser/errors/base_error"

module SwaggerParser
  module Errors
    class SourceTypeError < BaseError
      def initialize
        super("The source type is not Hash")
      end
    end
  end
end
