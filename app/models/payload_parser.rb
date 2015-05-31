class PayloadParser
  attr_reader :parsed

  def initialize(params, id)
    @params = params
    @id = id
    @parsed = JSON.parse(@params)
  end

  def parse_url
    @url =                TrafficSpy::Url.create(url: parsed["url"])
  end

  def parse_requested_at
    @requested_at =        TrafficSpy::RequestedAt.create(requested_at: parsed["requestedAt"])
  end

  def parse_responded_in
    @responded_in =       TrafficSpy::RespondedIn.create(responded_in: parsed["respondedIn"])
  end

  def parse_referred_by
    @referred_by =        TrafficSpy::ReferredBy.create(referred_by: parsed["referredBy"])
  end

  def parse_request_type
    @request_type =       TrafficSpy::RequestType.create(request_type: parsed["requestType"])
  end

  def parse_parameters
    @parameters =         TrafficSpy::Parameters.create(parameters: parsed["parameters"])
  end

  def parse_event_name
    @event_name =         TrafficSpy::EventName.create(event_name: parsed["eventName"])
  end

  def parse_user_agent
    @user_agent =         TrafficSpy::UserAgent.create(user_agent: parsed["userAgent"])
  end

  def parse_resolution_width
    @resolution_width =   TrafficSpy::ResolutionWidth.create(resolution_width: parsed["resolutionWidth"])
  end

  def parse_resolution_height
    @resolution_height =  TrafficSpy::ResolutionHeight.create(resolution_height: parsed["resolutionHeight"])
  end

  def parse_ip
    @ip =                 TrafficSpy::Ip.create(ip: parsed["ip"])
  end
end