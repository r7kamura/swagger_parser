RSpec.describe SwaggerParser::Schema do
  let(:example_schema_path) do
    "examples/swagger.yml"
  end

  let(:schema) do
    SwaggerParser::FileParser.parse(example_schema_path)
  end

  describe "#base_path" do
    subject do
      schema.base_path
    end

    it { is_expected.to be_a String }
  end

  describe "#consumes" do
    subject do
      schema.consumes
    end

    it { is_expected.to be_nil }
  end

  describe "#definitions" do
    subject do
      schema.definitions
    end

    it { is_expected.to be_a SwaggerParser::Definitions }
  end

  describe "#external_docs" do
    subject do
      schema.external_docs
    end

    it { is_expected.to be_a SwaggerParser::ExternalDocumentation }
  end

  describe "#host" do
    subject do
      schema.host
    end

    it { is_expected.to be_a String }
  end

  describe "#info" do
    subject do
      schema.info
    end

    it { is_expected.to be_a SwaggerParser::Info }
  end

  describe "#parameters" do
    subject do
      schema.parameters
    end

    it { is_expected.to be_a SwaggerParser::Parameters }
  end

  describe "#paths" do
    subject do
      schema.paths
    end

    it { is_expected.to be_a SwaggerParser::Paths }
  end

  describe "#produces" do
    subject do
      schema.produces
    end

    it { is_expected.to be_nil }
  end

  describe "#responses" do
    subject do
      schema.responses
    end

    it { is_expected.to be_a SwaggerParser::Responses }
  end

  describe "#schemes" do
    subject do
      schema.schemes
    end

    it { is_expected.to be_a Array }
  end

  describe "#security" do
    subject do
      schema.security
    end

    it { is_expected.to be_a SwaggerParser::Security }
  end

  describe "#security_definitions" do
    subject do
      schema.security_definitions
    end

    it { is_expected.to be_a SwaggerParser::SecurityDefinitions }
  end

  describe "#swagger" do
    subject do
      schema.swagger
    end

    it { is_expected.to be_a String }
  end

  describe "#tags" do
    subject do
      schema.tags
    end

    it { is_expected.to be_a Array }
  end
end
