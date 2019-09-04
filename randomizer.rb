require 'rspec'

class Hash
  def randomizer
    random_keys = self.keys.shuffle
    random_values = self.values.shuffle
    random_keys.each_with_object(Hash.new) do |key, hash|
      hash[key] = random_values.pop
    end
  end
end
