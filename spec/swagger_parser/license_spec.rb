RSpec.describe SwaggerParser::License do
  let(:example_schema_path) do
    "examples/swagger.yml"
  end

  let(:info) do
    schema.info
  end

  let(:license) do
    info.license
  end

  let(:schema) do
    SwaggerParser::FileParser.parse(example_schema_path)
  end

  describe "#name" do
    subject do
      license.name
    end

    it { is_expected.to be_a String }
  end

  describe "#url" do
    subject do
      license.url
    end

    it { is_expected.to be_a String }
  end
end
