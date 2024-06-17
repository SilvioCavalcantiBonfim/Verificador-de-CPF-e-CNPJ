class CNPJ
  def initialize(cnpj)
    @cnpj = cnpj
  end

  def to_s
    cnpj_chars = @cnpj.to_s.gsub(/[^0-9]/, "").chars
    (cnpj_chars.length != 14) ? @cnpj : "#{cnpj_chars[0..1].join}.#{cnpj_chars[2..4].join}.#{cnpj_chars[5..7].join}/#{cnpj_chars[8..11].join}-#{cnpj_chars[12..13].join}"
  end

  def valid?
    cnpj = @cnpj.to_s.gsub(/[^0-9]/, "")
    return false unless cnpj.match?(/^\d{14}$/)

    return false if cnpj.chars.uniq.length == 1

    weights1 = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]
    weights2 = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2]

    sum = 0
    for i in 0..11
      sum += cnpj[i].to_i * weights1[i]
    end
    first_digit = sum % 11
    first_digit = 0 if first_digit < 2
    first_digit = 11 - first_digit if first_digit >= 2

    return false if first_digit != cnpj[12].to_i

    sum = 0
    for i in 0..12
      sum += cnpj[i].to_i * weights2[i]
    end
    second_digit = sum % 11
    second_digit = 0 if second_digit < 2
    second_digit = 11 - second_digit if second_digit >= 2

    second_digit == cnpj[13].to_i
  end
end
