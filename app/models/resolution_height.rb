module TrafficSpy
  class ResolutionHeight < ActiveRecord::Base
    has_many :payloads
  end
end