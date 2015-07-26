RSpec.describe SwaggerParser::Contact do
  let(:example_schema_path) do
    "examples/swagger.yml"
  end

  let(:contact) do
    info.contact
  end

  let(:info) do
    schema.info
  end

  let(:schema) do
    SwaggerParser::FileParser.parse(example_schema_path)
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
