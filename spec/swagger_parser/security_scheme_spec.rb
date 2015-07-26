RSpec.describe SwaggerParser::SecurityScheme do
  let(:example_swagger_path) do
    "examples/swagger.yml"
  end

  let(:security_definitions) do
    swagger.security_definitions
  end

  let(:security_scheme) do
    security_definitions.first[1]
  end

  let(:swagger) do
    SwaggerParser::FileParser.parse(example_swagger_path)
  end

  describe "#authorization_url" do
    subject do
      security_scheme.authorization_url
    end

    it { is_expected.to be_a String }
  end

  describe "#description" do
    subject do
      security_scheme.description
    end

    it { is_expected.to be_nil }
  end

  describe "#flow" do
    subject do
      security_scheme.flow
    end

    it { is_expected.to be_a String }
  end

  describe "#in" do
    subject do
      security_scheme.in
    end

    it { is_expected.to be_nil }
  end

  describe "#name" do
    subject do
      security_scheme.name
    end

    it { is_expected.to be_nil }
  end

  describe "#scopes" do
    subject do
      security_scheme.scopes
    end

    it { is_expected.to be_a SwaggerParser::Scopes }
  end

  describe "#token_url" do
    subject do
      security_scheme.token_url
    end

    it { is_expected.to be_nil }
  end

  describe "#type" do
    subject do
      security_scheme.type
    end

    it { is_expected.to be_a String }
  end
end
