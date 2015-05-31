module TrafficSpy
  class ReferredBy < ActiveRecord::Base
    has_many :payloads
  end
end
