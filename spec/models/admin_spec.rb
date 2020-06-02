require 'rails_helper'

RSpec.describe Admin, type: :model do
  let(:admin) { Admin.new({email: 'john@doe.com', password: 'azerty'}) }
  let(:user) { User.new({firstname: 'Alex', lastname: 'Bart', email: 'alex.bart@gmail.com', password: 'azerty'}) }

  let(:event) { Event.new({title: 'Climate Summit 2020', date: 'Tue, 9 June 2020', description: 'a coordinated national response is more important than ever to protect from the escalating impacts of climate change.', location: 'Online Event', owner: subject, full: false}) }

  describe 'Validation' do
    it 'is valid with valid attributes' do
      expect(admin).to be_valid
    end

    it 'is not valid without a password' do
      admin.password = nil
      expect(admin).to_not be_valid
    end

    it 'is not valid without an email' do
      admin.email = nil
      expect(admin).to_not be_valid
    end
  end

  describe 'Manage' do
    it 'changes the password' do
      expect(admin.change_user(user, 'password', 'querty')).to_not eq('azerty')
    end

    it 'changes the title' do
      expect(admin.change_event(event, 'title', 'Act for Climate 2020')).to_not eq('Climate Summit 2020')
    end
  end

  describe 'Read' do
    it 'reads an Event attribute' do
      expect(admin.read_event(event, 'title')).to eq('Climate Summit 2020')
    end
  end

  describe 'Option' do
    it 'makes a custom attribute optional' do
      expect(admin.change_user(user, 'optional', 'required')).not_to eq('optional')
      expect(admin.change_event(event, 'optional', 'required')).not_to eq('optional')
    end
  end
end
