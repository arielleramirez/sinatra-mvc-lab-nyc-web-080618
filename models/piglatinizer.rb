class PigLatinizer
attr_accessor :input
  def piglatinize(phrase)
    result = []
    vowels = ["a","e","i","o","u"]
    phrase.split(" ").each do |word|
     if vowels.include? word[0].downcase
       result << (word + "way")
     else
       vowel_index = 0
       word.split("").each_with_index do |letter, i|
         if vowels.include? letter
          vowel_index = i
          break
        end #if statement
      end #each_with_index
      characters = word[0...vowel_index]
      word[0...vowel_index] = ""
      result << (word + characters +  "ay")
    end #if vowels
  end #phrase_each
  result.join(" ")
end #piglatinize
end #PigLatinizer class
