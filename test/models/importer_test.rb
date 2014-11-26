require 'test_helper'

class ImporterTest < ActiveSupport::TestCase

  test "gets conferences" do
    Conference.destroy_all
    assert_equal 0, Conference.all.count
    Importer.new.run
    assert Conference.all.count > 1
  end

end

