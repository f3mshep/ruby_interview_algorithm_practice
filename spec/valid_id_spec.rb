require "spec_helper"

describe "#is_valid_ip?" do
  it "returns a boolean indicating if the IP is valid" do
    expect(is_valid_ip?('10.0.0.48')).to eq(true)
    expect(is_valid_ip?('256.222.1.3')).to eq(false)
    expect(is_valid_ip?('0.0.0.0')).to eq(true)
    expect(is_valid_ip?('255.255.255.255')).to eq(true)
  end
  it 'returns false if there are an incorrect amount of octets' do
    expect(is_valid_ip?('13.2'))to eq(false)
  end
end