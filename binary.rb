class Binary

  def self.to_decimal(binary_string)

    binary_number_array = binary_string.split(//)
    binary_number_array.reverse!

    counter = 0
    decimal_total = 0

    while counter < binary_number_array.size

      if (binary_number_array[counter] != "0" && binary_number_array[counter] != "1")
        raise(ArgumentError)
      end

      decimal_total += binary_number_array[counter].to_i*2**counter
      counter += 1
    end

    return decimal_total

  end

end
