require_relative '../lib/caesar_cipher'
describe "the test method in caesar_cipher	it " do
  it "should return TRUE when the message has more than two words" do
  	expect(is_string("Bonjours a tous")).to eq(true)
  	expect(is_string("Hello!")).to eq(false)
  end
	it "should return the lettre encrypt" do
		expect(decripte_a_letter("A",5)).to eq("F")
		expect(decripte_a_letter("a",3)).to eq("d")
		expect(decripte_a_letter(".",10)).to eq(".")
		expect(decripte_a_letter("5",3)).to eq("5")
	end
  it "should return the message encrypt" do
    expect(caesar_cipher("What a string!",5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("Bonjours à tous",10)).to eq("Lyxtyebc à dyec")
  end
end