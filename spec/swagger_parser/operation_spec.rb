RSpec.describe SwaggerParser::Operation do
  let(:example_swagger_path) do
    "examples/swagger.yml"
  end

  let(:operation) do
    path.post
  end

  let(:path) do
    swagger.paths.first[1]
  end

  let(:swagger) do
    SwaggerParser::FileParser.parse(example_swagger_path)
  end

  describe "#consumes" do
    subject do
      operation.consumes
    end

    it { is_expected.to be_a Array }
  end

  describe "#deprecated" do
    subject do
      operation.deprecated
    end

    it { is_expected.to be false }
  end

  describe "#description" do
    subject do
      operation.description
    end

    it { is_expected.to be_a String }
  end

  describe "#external_docs" do
    subject do
      operation.external_docs
    end

    it { is_expected.to be_nil }
  end

  describe "#http_method" do
    subject do
      operation.http_method
    end

    it { is_expected.to be_a String }
  end

  describe "#operation_id" do
    subject do
      operation.operation_id
    end

    it { is_expected.to be_a String }
  end

  describe "#parameters" do
    subject do
      operation.parameters
    end

    it { is_expected.to be_a SwaggerParser::Parameters }
  end

  describe "#produces" do
    subject do
      operation.produces
    end

    it { is_expected.to be_a Array }
  end

  describe "#responses" do
    subject do
      operation.responses
    end

    it { is_expected.to be_a SwaggerParser::Responses }
  end

  describe "#schemes" do
    subject do
      operation.schemes
    end

    it { is_expected.to be_nil }
  end

  describe "#security" do
    subject do
      operation.security
    end

    it { is_expected.to be_a SwaggerParser::Security }
  end

  describe "#summary" do
    subject do
      operation.summary
    end

    it { is_expected.to be_a String }
  end

  describe "#tags" do
    subject do
      operation.tags
    end

    it { is_expected.to be_a Array }
  end
end
