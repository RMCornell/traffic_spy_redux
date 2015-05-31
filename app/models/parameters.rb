module TrafficSpy
  class Parameters < ActiveRecord::Base
    has_many :payloads
  end
end