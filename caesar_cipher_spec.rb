require "caesar_cipher"

describe caesar do
it 'works with single letters'  do
    expect(caesar('A', 1)).to eq "B"
  end
  it 'works with words' do
    expect(caesar('Aaa', 1)).to eq "Bbb"
  end
  it 'works with phrases" do
    expect(caesar('Hello, World!', 5)).to eq "Mjqqt, Btwqi!"
  end
  it 'works with negative shift' do
    expect(caesar('Mjqqt, Btwqi!', -5)).to eq "Hello, World!"
  end
  it 'wraps' do
    expect(caesar('Z', 1)).to eq "A"
  end
  it 'works with large shift factors' do
    expect(caesar('Hello, World!', 75)).to eq "Ebiil, Tloia!"
 end
end
