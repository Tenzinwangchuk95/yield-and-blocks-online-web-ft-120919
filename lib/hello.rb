#def hello_t(array)
 # i = 0
 
 # while i < array.length
 #   yield array[i]
 #   i = i + 1
 # end
 # array
#end

def hello_t(array)
  if block_given?
    i = 0
 
    while i < array.length
      yield(array[i])
      i = i + 1
    end
 
    array
  else
    puts "Hey! No block was given!"
  end
end

hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end

