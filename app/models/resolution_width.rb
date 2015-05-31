module TrafficSpy
  class ResolutionWidth < ActiveRecord::Base
    has_many :payloads
  end
end