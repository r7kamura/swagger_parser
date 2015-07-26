RSpec.describe SwaggerParser::Schema do
  let(:example_schema_path) do
    "examples/swagger.yml"
  end

  let(:schema) do
    SwaggerParser::Parser.parse(example_schema_path)
  end

  describe "#info" do
    subject do
      schema.info
    end

    it { is_expected.to be_a SwaggerParser::Info }
  end

  describe "#swagger" do
    subject do
      schema.swagger
    end

    it { is_expected.to be_a String }
  end
end
