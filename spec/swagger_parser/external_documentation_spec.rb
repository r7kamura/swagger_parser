RSpec.describe SwaggerParser::ExternalDocumentation do
  let(:example_swagger_path) do
    "examples/swagger.yml"
  end

  let(:external_documentation) do
    swagger.external_docs
  end

  let(:swagger) do
    SwaggerParser::FileParser.parse(example_swagger_path)
  end

  describe "#description" do
    subject do
      external_documentation.description
    end

    it { is_expected.to be_a String }
  end

  describe "#url" do
    subject do
      external_documentation.url
    end

    it { is_expected.to be_a String }
  end
end
