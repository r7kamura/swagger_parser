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

  describe "#discriminator" do
    subject do
      schema.discriminator
    end

    it { is_expected.to be_nil }
  end

  describe "#example" do
    subject do
      schema.example
    end

    it { is_expected.to be_nil }
  end

  describe "#external_docs" do
    subject do
      schema.external_docs
    end

    it { is_expected.to be_a SwaggerParser::ExternalDocumentation }
  end

  describe "#read_only" do
    subject do
      schema.read_only
    end

    it { is_expected.to be false }
  end

  describe "#xml" do
    subject do
      schema.xml
    end

    it { is_expected.to be_a SwaggerParser::Xml }
  end
end
