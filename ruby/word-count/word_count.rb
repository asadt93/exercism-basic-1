class Phrase
  def initialize(phrase)
    @words = phrase.downcase.scan(/\b[\w']+\b/)
  end
  def word_count
    @words.group_by(&:itself).map{ |w| [w[0], w[1].count] }.to_h
  end
end