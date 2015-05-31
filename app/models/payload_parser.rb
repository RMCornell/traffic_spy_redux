require 'digest/sha1'

class PayloadParser

  def initialize(params)
    @params = params

  end

  def validate
    if @params.nil?
      @status = 400
      @body = "Payload cannot be empty"
    else
      parsed = JSON.parse(@params)
      @payload = TrafficSpy::Payload.create({
        url: TrafficSpy::Url.create(url: parsed["url"]),
        requested_at: TrafficSpy::RequestedAt.create(requested_at: parsed["requestedAt"]),
        responded_in: TrafficSpy::RespondedIn.create(responded_in: parsed["respondedIn"]),
        referred_by: TrafficSpy::ReferredBy.create(referred_by: parsed["referredBy"]),
        request_type: TrafficSpy::RequestType.create(request_type: parsed["requestType"]),
        parameters: TrafficSpy::Parameters.create(parameters: parsed["parameters"]),
        event_name: TrafficSpy::EventName.create(event_name: parsed["eventName"]),
        user_agent: TrafficSpy::UserAgent.create(user_agent: parsed["userAgent"]),
        resolution_width: TrafficSpy::ResolutionWidth.create(resolution_width: parsed["resolutionWidth"]),
        resolution_height: TrafficSpy::ResolutionHeight.create(resolution_height: parsed["resolutionHeight"]),
        ip: TrafficSpy::Ip.create(ip: parsed["ip"]),
        sha: Digest::SHA1.hexdigest(@params)})

        if @payload.save
          @status = 200
        else
          @status = 403
          @body = "This payload has already been taken"
        end
      self
    end
  end
end