require 'rails_helper'

describe EventRegistrationService do
  let(:user) { User.new firstname: 'AlEx',
                        lastname: 'Bart',
                        email: 'alex.bart@gmail.com',
                        password: 'azerty',
                        role: 1 }

  before do
    @event1 = Event.new title: 'Climate Summit 2020',
                        date: 'Tue, 9 June 2020',
                        description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.',
                        location: 'Online Event',
                        owner: user,
                        full: false

    @event2 = Event.new date: 'Tue, 9 June 2020',
                        description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.',
                        location: 'Online Event',
                        owner: user,
                        full: false

    @event3 = Event.new title: 'Climate Summit 2020',
                        description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.',
                        location: 'Online Event',
                        owner: user,
                        full: false

    @event4 = Event.new title: 'Climate Summit 2020',
                        date: 'Tue, 9 June 2020',
                        location: 'Online Event',
                        owner: user,
                        full: false

    @event5 = Event.new title: 'Climate Summit 2020',
                        date: 'Tue, 9 June 2020',
                        description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.',
                        owner: user,
                        full: false

    @event6 = Event.new title: 'Climate Summit 2020',
                        date: 'Tue, 9 June 2020',
                        description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.',
                        location: 'Online Event',
                        full: false

    @event7 = Event.new title: 'Climate Summit 2020',
                        date: 'Tue, 9 June 2020',
                        description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.',
                        location: 'Online Event',
                        owner: user

    @valid_params = { user: user, event: @event1 }
    @invalid_params = { user: user, event: @event2 } ||
                      { user: user, event: @event3 } ||
                      { user: user, event: @event4 } ||
                      { user: user, event: @event5 } ||
                      { user: user, event: @event6 } ||
                      { user: user, event: @event7 }
  end

  it 'creates an event in the database if the user is an admin' do
    expect { EventRegistrationService.new(@valid_params).call }
      .to change { Registration.count }.by(1)
  end

  it 'does not create a user in the database without a title' do
    expect { EventRegistrationService.new(@invalid_params).call }
      .to change { Registration.count }.by(0)
  end

  it 'does not create a user in the database without a date' do
    expect { EventRegistrationService.new(@invalid_params).call }
      .to change { Registration.count }.by(0)
  end

  it 'does not create a user in the database without a description' do
    expect { EventRegistrationService.new(@invalid_params).call }
      .to change { Registration.count }.by(0)
  end

  it 'does not create a user in the database without a location' do
    expect { EventRegistrationService.new(@invalid_params).call }
      .to change { Registration.count }.by(0)
  end

  it 'does not create a user in the database without an owner' do
    expect { EventRegistrationService.new(@invalid_params).call }
      .to change { Registration.count }.by(0)
  end

  it 'does not create a user in the database without a full value' do
    expect { EventRegistrationService.new(@invalid_params).call }
      .to change { Registration.count }.by(0)
  end
end
