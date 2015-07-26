RSpec.describe SwaggerParser::Xml do
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

  let(:xml) do
    schema.xml
  end

  describe "#attribute" do
    subject do
      xml.attribute
    end

    it { is_expected.to be false }
  end

  describe "#name" do
    subject do
      xml.name
    end

    it { is_expected.to be_a String }
  end

  describe "#namespace" do
    subject do
      xml.namespace
    end

    it { is_expected.to be_nil }
  end

  describe "#prefix" do
    subject do
      xml.prefix
    end

    it { is_expected.to be_nil }
  end

  describe "#wrapped" do
    subject do
      xml.wrapped
    end

    it { is_expected.to be false }
  end
end
