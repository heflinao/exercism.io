class Bob
  def hey(saying)  
    while true
      puts "Say something to Bob."
      #end multi-line user input with "/" + Enter
      $/ = ?\/
      phrase = gets.chomp
      puts conversation(phrase)
    end
   end
  
  def conversation(phrase)
    #allCaps = (phrase =~ /[A-Z]{2,}+!|[A-Z]{3,}+\?|[A-Z]{4,}/)
    #question = (phrase =~ /([\S.*+\s+]+\?+\z)/)
    #nothing = (phrase =~ /\A\s*\z/)
    
    allCaps = (phrase === phrase.upcase)
    question = (phrase == phrase.ends_with('?'))

    if allCaps
      return 'Woah, chill out!'
    elsif question
      return 'Sure.' 
    elsif nothing
      return 'Fine. Be that way!'
    else
      return 'Whatever.'
    end
  end
end


  