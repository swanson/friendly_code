require 'securerandom'

class FriendlyCode
  VERSION = '2.0.1'

  CHARACTER_SET = %w{ 3 6 7 C D F G H J K M N P R T W X }
  DEFAULT_SIZE = 6

  def self.generate(size = DEFAULT_SIZE)
    size.times.map{ CHARACTER_SET[SecureRandom.random_number(CHARACTER_SET.length)] }.join
  end
end
