class Bob
  def initialize(phrase)
    @phrase = phrase
  end

  def self.hey(phrase)
    bob = self.new(phrase)
    bob.send(:thinking)
    bob.send(:speak)
  end

  private

  def thinking
    @response = if silence?
                  "Fine. Be that way!"
                elsif yelling?
                  "Whoa, chill out!"
                elsif yelling_question?
                  "Calm down, I know what I'm doing!"
                elsif asking? 
                  "Sure."
                else  
                  "Whatever."
                end
  end

  def speak
    @response
  end

  def silence?
    @phrase.to_s.strip.empty?
  end

  def yelling?
    all_uppercase? && !question?
  end

  def yelling_question?
    all_uppercase? && question?
  end

  def asking?
    question?
  end

  def all_uppercase?
    return false if @phrase.to_s.match(/[a-zA-Z]/).nil?

    @phrase.strip.upcase == @phrase.strip
  end

  def question?
    @phrase.strip.end_with?('?')
  end
end

