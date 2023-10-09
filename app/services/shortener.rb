require 'digest'

class Shortener

  def self.short input
    short_url = Digest::SHA2.hexdigest input
    short_url[0...32]
  end

end
