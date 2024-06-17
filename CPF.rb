class CPF
  def initialize(cpf)
    @cpf = cpf
  end

  def to_s
    numbers = @cpf.to_s.gsub(/[^0-9]/, "").chars
    (numbers.length != 11) ? @cpf : "#{numbers[0..2].join}.#{numbers[3..5].join}.#{numbers[6..8].join}-#{numbers[9..10].join}"
  end

  def valid?
    cpf = @cpf.to_s.gsub(/[^0-9]/, "")
    return false unless cpf.match?(/^\d{11}$/)

    return false if cpf.chars.uniq.length == 1

    sum = 0
    for i in 0..8
      sum += cpf[i].to_i * (10 - i)
    end
    first_digit = sum % 11
    first_digit = 0 if first_digit < 2
    first_digit = 11 - first_digit if first_digit >= 2

    return false if first_digit != cpf[9].to_i

    sum = 0
    for i in 0..9
      sum += cpf[i].to_i * (11 - i)
    end
    second_digit = sum % 11
    second_digit = 0 if second_digit < 2
    second_digit = 11 - second_digit if second_digit >= 2

    second_digit == cpf[10].to_i
  end
end
