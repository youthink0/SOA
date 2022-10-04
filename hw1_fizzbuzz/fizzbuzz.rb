# indicate what number indicate to

def fizzbuzz(size)
  keys = {
    "Fizz": 3,
    "Buzz": 5
  }
  (1..size).map do |i|
    tmp = ''
    keys.each do |key, value|
      tmp << key.to_s if (i % value).zero?
    end
    tmp << i.to_s if tmp.empty?
    block_given? ? yield(tmp) : tmp
  end
end
