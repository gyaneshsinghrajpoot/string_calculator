require_relative '../../app/services/string_calculator'

RSpec.describe StringCalculator do
  it 'returns 0 when input is empty string' do
    expect(StringCalculator.add("")).to eq(0)
  end

  it 'returns sum of two numbers' do
    expect(StringCalculator.add("1,5")).to eq(6)
  end

  it 'returns sum of any number of numbers' do
    expect(StringCalculator.add("1,2,5")).to eq(8)
  end

  it 'returns sum even if new line is present between numbers' do
    expect(StringCalculator.add("1\n2,5")).to eq(8)
  end

  it 'should supports delimiter "//;\\n1;2"' do
    expect(StringCalculator.add("//;\n1;2")).to eq(3)
  end
end