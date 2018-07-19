require './cipher'


RSpec.describe 'Boost Test' do
  context 'descrypt msg with cipher' do
    it 'decrypts test' do
      cipher         = 'oephjizkxdawubnytvfglqsrcm'
      random_alfa = cipher.split('')
      cipher = Cipher.new random_alfa

      msg = 'knlfgnb, sj koqj o yvnewju'
      cipher.decrypt(msg) == 'houstonwehaveaproblem'
    end
  end
end
