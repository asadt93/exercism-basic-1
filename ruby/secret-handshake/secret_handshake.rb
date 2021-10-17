class SecretHandshake
  SECRET = {
    0 => 'wink',
    1 => 'double blink',
    2 => 'close your eyes',
    3 => 'jump'
  }
  def initialize(code)
    @code = code.to_s(2).reverse
  rescue ArgumentError
    @code = ''
  end

  def commands
    result = []
    SECRET.each do |index, value|
      result << value if @code[index] == '1'
    end

    return result.reverse! if @code.length == 5
    result
  end
end
