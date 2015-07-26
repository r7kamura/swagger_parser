RSpec.describe SwaggerParser::FileParser do
  describe ".parse" do
    subject do
      described_class.parse(path)
    end

    let(:path) do
      fail NotImplementedError
    end

    context "with YAML" do
      let(:path) do
        "examples/swagger.yml"
      end

      it { is_expected.to be_a SwaggerParser::Schema }
    end

    context "with JSON" do
      let(:path) do
        "examples/swagger.json"
      end

      it { is_expected.to be_a SwaggerParser::Schema }
    end
  end
end
