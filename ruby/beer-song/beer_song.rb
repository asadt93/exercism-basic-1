class BeerSong
  def initialize(from, to)
    @from   = from
    @to     = to
    @song = []
  end

  def self.recite(from, to)
    song = self.new(from, to)
    song.send(:lyrics)
  end

  def lyrics
    number = @from
    @to.to_i.times do
      @song << <<~TEXT
                    #{first_lyric(number)}\n#{second_lyric(number)}
                  TEXT

      number -= 1
    end
    new_line = <<~TEXT
                  
                  TEXT
    @song.join(new_line)
  end

  def first_lyric(number)
    "#{bottle_lyric(number).capitalize} of beer on the wall, #{bottle_lyric(number)} of beer."
  end

  def second_lyric(number)
    number -= 1
    
    if number.negative?
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    elsif number.zero?
      "Take it down and pass it around, #{bottle_lyric(number)} of beer on the wall."
    else
      "Take one down and pass it around, #{bottle_lyric(number)} of beer on the wall."
    end
  end
  
  def bottle_lyric(number)
    case number
    when 0
      "no more bottles"
    when 1
      "1 bottle"
    else
      "#{number} bottles"
    end
  end
end