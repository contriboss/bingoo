require 'spec_helper'

describe Bingoo do
  describe '.configuration' do
    it 'Sets global configuration attributes' do
      described_class.configuration do |config|
        config.username = 'test username'
        config.password = '123456'
        config.developer_token = '98765432'
      end

      expect(described_class.config.username).to eq('test username')
      expect(described_class.config.password).to eq('123456')
      expect(described_class.config.developer_token).to eq('98765432')
    end
  end
end
