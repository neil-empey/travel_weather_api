require "test_helper"

class WeathersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weather = weathers(:one)
  end

  test "should get index" do
    get weathers_url, as: :json
    assert_response :success
  end

  test "should create weather" do
    assert_difference('Weather.count') do
      post weathers_url, params: { weather: { alert1: @weather.alert1, alert2: @weather.alert2, dew_point1: @weather.dew_point1, dew_point2: @weather.dew_point2, dt: @weather.dt, event1: @weather.event1, event2: @weather.event2, event_level1: @weather.event_level1, event_level2: @weather.event_level2, precip_intensity1: @weather.precip_intensity1, precip_intensity2: @weather.precip_intensity2, road_state1: @weather.road_state1, road_state2: @weather.road_state2, road_temp1: @weather.road_temp1, road_temp2: @weather.road_temp2, temp1: @weather.temp1, temp2: @weather.temp2, wind_deg1: @weather.wind_deg1, wind_deg2: @weather.wind_deg2, wind_speed1: @weather.wind_speed1, wind_speed2: @weather.wind_speed2 } }, as: :json
    end

    assert_response 201
  end

  test "should show weather" do
    get weather_url(@weather), as: :json
    assert_response :success
  end

  test "should update weather" do
    patch weather_url(@weather), params: { weather: { alert1: @weather.alert1, alert2: @weather.alert2, dew_point1: @weather.dew_point1, dew_point2: @weather.dew_point2, dt: @weather.dt, event1: @weather.event1, event2: @weather.event2, event_level1: @weather.event_level1, event_level2: @weather.event_level2, precip_intensity1: @weather.precip_intensity1, precip_intensity2: @weather.precip_intensity2, road_state1: @weather.road_state1, road_state2: @weather.road_state2, road_temp1: @weather.road_temp1, road_temp2: @weather.road_temp2, temp1: @weather.temp1, temp2: @weather.temp2, wind_deg1: @weather.wind_deg1, wind_deg2: @weather.wind_deg2, wind_speed1: @weather.wind_speed1, wind_speed2: @weather.wind_speed2 } }, as: :json
    assert_response 200
  end

  test "should destroy weather" do
    assert_difference('Weather.count', -1) do
      delete weather_url(@weather), as: :json
    end

    assert_response 204
  end
end
