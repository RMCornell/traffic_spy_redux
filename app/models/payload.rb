module TrafficSpy
  class Payload < ActiveRecord::Base
    validates :sha, uniqueness: true
    validates_presence_of :sha

    belongs_to :url
    belongs_to :requested_at
    belongs_to :responded_in
    belongs_to :referred_by
    belongs_to :request_type
    belongs_to :parameters
    belongs_to :event_name
    belongs_to :user_agent
    belongs_to :resolution_width
    belongs_to :resolution_height
    belongs_to :ip

  end
end