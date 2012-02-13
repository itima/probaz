require 'test_helper'

class UsermailerTest < ActionMailer::TestCase
  test "contact" do
    @expected.subject = 'Test'
    @expected.body    = read_fixture('contact')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Usermailer.create_contact(@expected.date).encoded
  end

end
