require 'test_helper'

class ImporterTest < ActiveSupport::TestCase

  test "retrieves conferences" do
    Conference.destroy_all
    assert_equal 0, Conference.all.count
    Importer.new.import(:current)
    assert Conference.all.count > 1

    Conference.destroy_all
    assert_equal 0, Conference.all.count
    Importer.new.import(:past)
    assert Conference.all.count > 1
  end

end

