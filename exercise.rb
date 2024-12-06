class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    return_str = ""
    for word in str.split()   
       if word.length > 4
           if word[0] == word[0].capitalize
               word = word.gsub(/[A-Za-z]+/, "Marklar")
           else
               word = word.gsub(/[A-Za-z]+/, "marklar")
           end
       end
       return_str += word + " "
    end
    return_str.strip
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # next two lines from:
    #    https://stackoverflow.com/questions/12178642/fibonacci-sequence-in-ruby-recursion#:~:text=2)%20Example%2C%20where%2010%20elements
    fib = [0, 1]
    (2..nth-1).each { fib << fib[-1] + fib[-2] }

    sum = 0
    for n in fib
       if n % 2 == 0
          sum += n
       end 
    end
    return sum
  end
end
