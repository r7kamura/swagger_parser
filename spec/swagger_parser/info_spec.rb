RSpec.describe SwaggerParser::Info do
  let(:example_swagger_path) do
    "examples/swagger.yml"
  end

  let(:info) do
    swagger.info
  end

  let(:swagger) do
    SwaggerParser::FileParser.parse(example_swagger_path)
  end

  describe "#contact" do
    subject do
      info.contact
    end

    it { is_expected.to be_a SwaggerParser::Contact }
  end

  describe "#description" do
    subject do
      info.description
    end

    it { is_expected.to be_a String }
  end

  describe "#license" do
    subject do
      info.license
    end

    it { is_expected.to be_a SwaggerParser::License }
  end

  describe "#terms_of_service" do
    subject do
      info.terms_of_service
    end

    it { is_expected.to be_a String }
  end

  describe "#title" do
    subject do
      info.title
    end

    it { is_expected.to be_a String }
  end

  describe "#version" do
    subject do
      info.version
    end

    it { is_expected.to be_a String }
  end
end
