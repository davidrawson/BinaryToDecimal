class Binary

  def self.to_decimal(binary_string)

    # if binary_string.includes
    # binary_number = binary_string.to_i
    binary_number_array = binary_string.split(//)
    binary_number_array.reverse!

    counter = 0
    decimal_total = 0

    p binary_number_array

    while counter < binary_number_array.size
      if (binary_number_array[counter] != "1" || "0")
        raise(ArgumentError)
      end
      decimal_total += binary_number_array[counter].to_i*2**counter
      counter += 1
    end

    return decimal_total

  end

end
