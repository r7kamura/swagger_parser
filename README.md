# SwaggerParser
[Swagger](http://swagger.io/) schema parser.

## Usage
```rb
require "swagger_parser"

schema = SwaggerParser::FileParser.parse("examples/swagger.yml")
schema.swagger #=> "2.0"
```
