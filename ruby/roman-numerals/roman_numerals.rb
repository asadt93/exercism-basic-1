class Fixnum
  ROMAN = {
            1000 => 'M',
            900 => 'CM',
            500 => 'D',
            400 => 'CD',
            100 => 'C',
            90 => 'XC',
            50 => 'L',
            40 => 'XL',
            10 => 'X',
            9 => 'IX',
            5 => 'V',
            4 => 'IV',
            1 => 'I',
          }
    
  def to_roman
    x = self
    
    result = []
    while x > 0
      value = ROMAN.keys.find{ |e| e == x }
      closets_value = ROMAN.keys.find{ |v| v < x }
      v = value.nil? ? closets_value : value
    
      result << ROMAN[v]
      x = x - v
    end
    result.join
  end
end