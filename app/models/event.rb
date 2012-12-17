class Event < ActiveRecord::Base
  attr_accessible :date, :location, :name, :time, :group, :group_id, :description
  belongs_to :group
  scope :completed_event, where('date < ?', Date.today)
  scope :upcoming_event, where('date > ?', Date.today)
  validates :location, presence: true
  validates :name, presence: true
  def start_time
    date
  end
end
