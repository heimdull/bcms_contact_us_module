require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "new_question" do
    @expected.subject = 'Notifications#new_question'
    @expected.body    = read_fixture('new_question')
    @expected.date    = Time.now

    assert_equal @expected.encoded, Notifications.create_new_question(@expected.date).encoded
  end

end
