class Fixnum
  define_method(:coin_counter) do
    coin_array = [0, 0, 0, 0]
    remainder = self
    if remainder > 25
      coin_array[0] = (remainder/25).floor()
      remainder = remainder - coin_array[0]*25
    end
    if remainder > 10
      coin_array[1] = (remainder/10).floor()
      remainder = remainder - coin_array[1]*10
    end
    if remainder > 5
      coin_array[2] = (remainder/5).floor()
      remainder= remainder - coin_array[2]*5
    end
    if remainder > 1
      coin_array[3] = (remainder/1).floor()
      remainder= remainder - coin_array[3]
    end
    "Your change is: " + coin_array[0].to_s + " quarters " + coin_array[1].to_s + " dimes " + coin_array[2].to_s + " nickels " + coin_array[3].to_s + " pennies."
  end
end
