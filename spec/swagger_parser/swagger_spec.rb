RSpec.describe SwaggerParser::Swagger do
  let(:example_swagger_path) do
    "examples/swagger.yml"
  end

  let(:swagger) do
    SwaggerParser::FileParser.parse(example_swagger_path)
  end

  describe "#base_path" do
    subject do
      swagger.base_path
    end

    it { is_expected.to be_a String }
  end

  describe "#consumes" do
    subject do
      swagger.consumes
    end

    it { is_expected.to be_a Array }
  end

  describe "#definitions" do
    subject do
      swagger.definitions
    end

    it { is_expected.to be_a SwaggerParser::Definitions }
  end

  describe "#external_docs" do
    subject do
      swagger.external_docs
    end

    it { is_expected.to be_nil }
  end

  describe "#host" do
    subject do
      swagger.host
    end

    it { is_expected.to be_a String }
  end

  describe "#info" do
    subject do
      swagger.info
    end

    it { is_expected.to be_a SwaggerParser::Info }
  end

  describe "#parameters" do
    subject do
      swagger.parameters
    end

    it { is_expected.to be_a SwaggerParser::Parameters }
  end

  describe "#paths" do
    subject do
      swagger.paths
    end

    it { is_expected.to be_a SwaggerParser::Paths }
  end

  describe "#produces" do
    subject do
      swagger.produces
    end

    it { is_expected.to be_a Array }
  end

  describe "#responses" do
    subject do
      swagger.responses
    end

    it { is_expected.to be_a SwaggerParser::ResponseDefinitions }
  end

  describe "#schemes" do
    subject do
      swagger.schemes
    end

    it { is_expected.to be_a Array }
  end

  describe "#security" do
    subject do
      swagger.security
    end

    it { is_expected.to be_a SwaggerParser::Security }
  end

  describe "#security_definitions" do
    subject do
      swagger.security_definitions
    end

    it { is_expected.to be_a SwaggerParser::SecurityDefinitions }
  end

  describe "#swagger" do
    subject do
      swagger.swagger
    end

    it { is_expected.to be_a String }
  end

  describe "#tags" do
    subject do
      swagger.tags
    end

    it { is_expected.to be_a Array }
  end
end
