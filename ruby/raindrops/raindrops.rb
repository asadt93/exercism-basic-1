class Raindrops
  RAINDROPS = { 
                3 => "Pling",
                5 => "Plang",
                7 => "Plong" 
              }
  def self.convert(number)
    result = []
    RAINDROPS.each do |factor, sound|
      result << sound if number % factor == 0
    end

    return number.to_s if result.empty?
    result.join
  end
end

