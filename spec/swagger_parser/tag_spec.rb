RSpec.describe SwaggerParser::Swagger do
  let(:example_swagger_path) do
    "examples/swagger.yml"
  end

  let(:swagger) do
    SwaggerParser::FileParser.parse(example_swagger_path)
  end

  let(:tag) do
    swagger.tags.first
  end

  describe "#description" do
    subject do
      tag.description
    end

    it { is_expected.to be_a String }
  end

  describe "#external_docs" do
    subject do
      tag.external_docs
    end

    it { is_expected.to be_nil }
  end

  describe "#name" do
    subject do
      tag.name
    end

    it { is_expected.to be_a String }
  end
end
