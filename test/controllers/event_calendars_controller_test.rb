require 'test_helper'

class EventCalendarsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get event_calendars_index_url
    assert_response :success
  end

end
