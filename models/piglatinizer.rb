class PigLatinizer

  def pighelper(phrase)
    pig_index = phrase.index(/[aeiouAEIOU]/)
    if pig_index == 0
      return phrase << "way"
    else
      return phrase[pig_index..-1] << phrase[0..pig_index-1] << "ay"
    end
  end

  def piglatinize(pig_phrase)
    pig_phrase.split(' ').map {|word| pighelper(word)}.join(' ')
  end

end
