class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    #split string into loopable array
    arr = str.split
    for i in arr
      #checks that word is greater than 4 characters
      if i.length > 4
        #checks if word has punctuation at the end
        if i.match(/[A-Za-z]*[$&+,:;=?@#|'<>.^*()%!-]/)
          punctuation = i[-1]
          # checks if word is capitalized then replaces word with Marklar or marklar accordingly with correct punctuation
          str.gsub!(i, i.capitalize == i ? "Marklar" + punctuation : "marklar" + punctuation)
        
        else
          # checks if word is capitalized then replaces word with Marklar or marklar accordingly
          str.gsub!(i, i.capitalize == i ? "Marklar" : "marklar")
        end
      end
    end
    return str
  end
  
  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    # count the number of fibonacci terms
    fib_count = 1
    #initialize the first two terms of the fibonacci sequence
    ft = 0
    ct = 1
    #initialize the array to store even fibonacci numbers
    even_fibonacci = []
    #loop through the fibonacci sequence and store even numbers in the array
    while fib_count < nth
      next_term = ft + ct
      even_fibonacci << next_term if next_term.even?
      ft = ct
      ct = next_term
      fib_count += 1
    end
    #return the sum of the even fibonacci numbers array
    return even_fibonacci.sum
  end

  
end
