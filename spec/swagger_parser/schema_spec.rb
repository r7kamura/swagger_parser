RSpec.describe SwaggerParser::Schema do
  let(:definitions) do
    swagger.definitions
  end

  let(:example_schema_path) do
    "examples/swagger.yml"
  end

  let(:schema) do
    definitions.first[1]
  end

  let(:swagger) do
    SwaggerParser::FileParser.parse(example_schema_path)
  end

  describe "#external_docs" do
    subject do
      schema.external_docs
    end

    it { is_expected.to be_a SwaggerParser::ExternalDocumentation }
  end

  describe "#xml" do
    subject do
      schema.xml
    end

    it { is_expected.to be_a SwaggerParser::Xml }
  end
end
