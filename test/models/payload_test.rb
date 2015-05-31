require_relative '../test_helper'

class PayloadTest < ControllerTest
  def test_it_parses_payload
    payload = '{"url":"http://jumpstartlab.com/blog",
                "requestedAt":"2013-02-16 21:38:28 -0700",
                "respondedIn":37,
                "referredBy":"http://jumpstartlab.com",
                "requestType":"GET",
                "parameters":[],
                "eventName": "socialLogin",
                "userAgent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                "resolutionWidth":"1920",
                "resolutionHeight":"1280",
                "ip":"63.29.38.211"}'

    parsed_payload = PayloadParser.new(payload)

    assert_equal "http://jumpstartlab.com/blog", parsed_payload.parse_all
    assert_equal "2013-02-16 21:38:28 -0700", parsed_payload.parse_requested_at.requested_at
    assert_equal "37", parsed_payload.parse_responded_in.responded_in
    assert_equal "http://jumpstartlab.com", parsed_payload.parse_referred_by.referred_by
    assert_equal "GET", parsed_payload.parse_request_type.request_type
    assert_equal "[]", parsed_payload.parse_parameters.parameters
    assert_equal "socialLogin", parsed_payload.parse_event_name.event_name
    assert_equal "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17", parsed_payload.parse_user_agent.user_agent
    assert_equal "1920", parsed_payload.parse_resolution_width.resolution_width
    assert_equal "1280", parsed_payload.parse_resolution_height.resolution_height
    assert_equal "63.29.38.211", parsed_payload.parse_ip.ip
  end
end