class Cipher

  def initialize(shuffled)
    normal = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + [' ']
    @map = normal.zip(shuffled).inject(:encrypt => {} , :decrypt => {}) do |hash,(a,b)|
      hash[:encrypt][a] = b
      hash[:decrypt][b] = a
      hash
    end
  end

  def encrypt(str)
    str.split(//).map { |char| @map[:encrypt][char] }.join
  end

  def decrypt(str)
    str.split(//).map { |char| @map[:decrypt][char] }.join
  end

end

# pass the shuffled version to the cipher
CONSTANT       = 'abcdefghijklmnopqrstuvwxyz'

cipher         = 'oephjizkxdawubnytvfglqsrcm'

# random_alfa = CONSTANT.split('').shuffle

random_alfa = cipher.split('')
cipher = Cipher.new random_alfa

msg = "knlfgnb, sj koqj o yvnewju"

crypted = cipher.encrypt msg
p crypted

decrypted = cipher.decrypt msg
p decrypted # "houston, we have a problem"
