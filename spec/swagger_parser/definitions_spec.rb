RSpec.describe SwaggerParser::Definitions do
  let(:definitions) do
    swagger.definitions
  end

  let(:example_schema_path) do
    "examples/swagger.yml"
  end

  let(:swagger) do
    SwaggerParser::FileParser.parse(example_schema_path)
  end

  describe "#[]" do
    subject do
      definitions[key]
    end

    let(:key) do
      "User"
    end

    it { is_expected.to be_a SwaggerParser::Schema }
  end
end
