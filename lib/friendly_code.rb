class FriendlyCode
  VERSION = '1.0.0'

  CHARACTER_SET = %w{ 3 6 7 C D F G H J K M N P R T W X }
  DEFAULT_SIZE = 6

  def self.generate(size = DEFAULT_SIZE)
    size.times.map{|_| CHARACTER_SET.sample }.join
  end
end