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
    coin_array[0].to_s + " quarters " + coin_array[1].to_s + " dimes "
  end
end
