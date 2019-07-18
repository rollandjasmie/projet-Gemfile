

require_relative '../lib/multiples'

describe "the is_multiple_of_3_or_5? method" do

  it "should return TRUE when an integer is a multiple of 3 or 5" do

    expect(is_multiple_of_3_or_5?(3)).to eq(true)

    expect(is_multiple_of_3_or_5?(5)).to eq(true)

    expect(is_multiple_of_3_or_5?(51)).to eq(true)

    expect(is_multiple_of_3_or_5?(45)).to eq(true)

  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do

    expect(sum_of_3_or_5_multiples(90)).to eq(1845)

    expect(sum_of_3_or_5_multiples(30)).to eq(195)

    expect(sum_of_3_or_5_multiples(-12)).to eq("Yo ! Je ne prends que les entiers naturels. TG")

    expect(sum_of_3_or_5_multiples(3.5)).to eq("Yo ! Je ne prends que les entiers naturels. TG")

  end

end

