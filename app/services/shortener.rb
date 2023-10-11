require 'digest'

class Shortener

  def self.short input
    Digest::SHA2.hexdigest(input)[0...32]
  end

end
