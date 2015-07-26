RSpec.describe SwaggerParser::Contact do
  let(:example_swagger_path) do
    "examples/swagger.yml"
  end

  let(:contact) do
    info.contact
  end

  let(:info) do
    swagger.info
  end

  let(:swagger) do
    SwaggerParser::FileParser.parse(example_swagger_path)
  end

  describe "#email" do
    subject do
      contact.email
    end

    it { is_expected.to be_a String }
  end

  describe "#name" do
    subject do
      contact.name
    end

    it { is_expected.to be_nil }
  end

  describe "#url" do
    subject do
      contact.url
    end

    it { is_expected.to be_nil }
  end
end
