require 'minitest/autorun'

describe FriendlyCode do
  describe '#generate' do 
    it 'generates UPPER_CASE codes' do
      code = FriendlyCode.generate
      assert_equal code, code.upcase
    end

    it 'defaults codes to six characters in length' do
      code = FriendlyCode.generate
      assert_equal code.length, 6
    end

    it 'accepts a size parameter to change the default' do
      code = FriendlyCode.generate(18)
      assert_equal code.length, 18

      code = FriendlyCode.generate(4)
      assert_equal code.length, 4
    end
  end

  describe '::CHARACTER_SET' do
    it 'only contains unambiguous characters' do
      %w{ 3 6 7 C D F G H J K M N P R T W X }.each do |valid_char|
        assert_includes FriendlyCode::CHARACTER_SET, valid_char
      end
    end

    it 'does not contain any ambiguous characters' do
      %w{ 0 1 2 4 5 8 9 A B E I L O Q S U V Y Z }.each do |invalid_char|
        refute_includes FriendlyCode::CHARACTER_SET, invalid_char
      end
    end
  end
end