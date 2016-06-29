class PigLatinizer

  def piglatinize(text)
    new_text = text
    if text[0].index(/[bcdfghjklmnpqrstvwxyz]/i)
      ic = text.scan(/[bcdfghjklmnpqrstvwxyz]+/i)[0]
      new_text = text.slice(ic.length, text.length-ic.length)
      new_text << ic+"ay"
    else
      new_text << "way"
    end
  end

  def to_pig_latin(text)
    text_array = text.split(" ")
    new_text = text_array.map do |word|
      piglatinize(word)
    end.join(" ")
  end
end