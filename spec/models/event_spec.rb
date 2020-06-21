require 'rails_helper'

RSpec.describe Event, type: :model do
  it 'creates an Event' do
    create :event
    expect(Event.count).to eq(1)
  end

  it 'raises error if no start_time provided' do
    event = Event.new(name: "New Event", start_time: nil)
    event.save
    expect(event.errors.messages[:start_time]).to include("can't be blank")
  end

  it 'sets a default duration if no end_time provided' do
    event = create :event
    expect(event.duration).to eq(Event::DEFAULT_DURATION)
  end

  it 'raises error if start_time is before end_time' do
    event = create :event
    event.start_time = event.end_time + 1
    event.save
    expect(event.errors.messages[:start_time]).to include("start_time must be BEFORE end_time")
  end
end
