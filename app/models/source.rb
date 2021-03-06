module TrafficSpy
  class Source < ActiveRecord::Base
    validates_presence_of :identifier, :root_url
    validates :identifier, uniqueness: true
    has_many :payloads
  end
end