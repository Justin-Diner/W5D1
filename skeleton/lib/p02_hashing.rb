class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
	res = []

	self.each_with_index do |ele, idx|
		res << ((ele.hash).to_s + (self.length % (idx + 1)).to_s).to_i
	end
	res.sum
	end
end

class String
  def hash
	res = ""
	alphabet = ("a".."z").to_a

	self.each_char.with_index do |letter, idx|
		#res << ((letter.to_i.hash).to_s + (self.length % (idx + 1)).to_s).to_i
		res = res + (alphabet.index(letter).hash).to_s + (self.length % (idx + 1)).to_s
	end
	res.to_i
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    
  end
end
