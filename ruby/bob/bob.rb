class Bob
  def run
    while true
      puts "Say something to Bob."
      #end multi-line user input with "/" + Enter
      $/ = ?\/
      phrase = gets.chomp
      puts hey(phrase)
    end
   end

  def hey(phrase)
    allCaps = /[A-Z]{2,}+!|[A-Z]{3,}+\?|[A-Z]{4,}/
    question = lambda { |phrase| phrase.end_with?('?') }
    nothing = lambda { |phrase| phrase.strip.empty? }

    case phrase
    when allCaps
      'Woah, chill out!'
    when nothing
      'Fine. Be that way!'
    when question
      'Sure.' 
    else
      'Whatever.'
    end
  end
end

if $0 == __FILE__
  Bob.new.run
end
  