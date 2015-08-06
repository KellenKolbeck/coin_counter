require('rspec')
require('coin_counter')

describe('Fixnumb#coin_counter') do
  it("return the correct amount of quarters") do
    expect((72).coin_counter()).to(include("2 quarters"))
  end

  it("returns the correct amount of dimes") do
    expect((72).coin_counter()).to(include("2 dimes"))
  end
end
