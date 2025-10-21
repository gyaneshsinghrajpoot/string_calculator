require_relative '../../app/services/string_calculator'

RSpec.describe StringCalculator do
  it 'returns 0 when input is empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end
end