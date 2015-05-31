module TrafficSpy
  class RequestedAt < ActiveRecord::Base
    has_many :payloads
  end
end