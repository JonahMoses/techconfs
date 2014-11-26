require 'test_helper'

class ConferenceTest < ActiveSupport::TestCase

  test "a conference has a name" do
    conf_1 = Conference.new(name: "RubyConf")
    conf_2 = Conference.new(name: "")
    assert conf_1.save
    refute conf_2.save, "No name provided"
  end

end
