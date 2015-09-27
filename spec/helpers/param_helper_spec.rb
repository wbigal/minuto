describe ParamHelper do
  describe '.value_of' do
    it "non null value" do
      id = 1910
      hash = { id: id }
      result = ParamHelper.value_of(hash, 'id')

      expect(result).to eq(id)
    end

    it "nil value" do
      id = nil
      hash = { id: id }
      result = ParamHelper.value_of(hash, 'id')

      expect(result).to be_nil
    end

    it "nil hash" do
      result = ParamHelper.value_of(nil, 'id')

      expect(result).to be_nil
    end
  end
end
