require "test_helper"

class WelcomeMailerTest < ActionMailer::TestCase
  test "user_created" do
    mail = WelcomeMailer.user_created
    assert_equal "User created", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
