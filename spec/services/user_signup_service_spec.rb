require 'rails_helper'

describe UserSignupService do
  before do
    @user1 = User.new firstname: 'AlEx',
                      lastname: 'Bart',
                      email: 'alex.bart@gmail.com',
                      password: 'azerty',
                      role: 1

    @user2 = User.new lastname: 'Bart',
                      email: 'alex.bart@gmail.com',
                      password: 'azerty',
                      role: 1

    @user3 = User.new firstname: 'AlEx',
                      lastname: 'Bart',
                      password: 'azerty',
                      role: 1

    @user4 = User.new firstname: 'AlEx',
                      lastname: 'Bart',
                      email: 'alex.bart@gmail.com',
                      role: 1

    @user5 = User.new firstname: 'AlEx',
                      lastname: 'Bart',
                      email: 'alex.bart@gmail.com',
                      password: 'azerty'

    @valid_params = { user: @user1 }
    @invalid_params = { user: @user2 } ||
                      { user: @user3 } ||
                      { user: @user4 } ||
                      { user: @user5 }
  end

  it 'creates a user in the database' do
    expect { UserSignupService.new(@valid_params).call }
      .to change { User.count }.by(1)
  end

  it 'does not create a user in the database without a firstname' do
    expect { UserSignupService.new(@invalid_params).call }
      .to change { User.count }.by(0)
  end

  it 'does not create a user in the database without a lastname' do
    expect { UserSignupService.new(@invalid_params).call }
      .to change { User.count }.by(0)
  end

  it 'does not create a user in the database without an email' do
    expect { UserSignupService.new(@invalid_params).call }
      .to change { User.count }.by(0)
  end

  it 'does not create a user in the database without a password' do
    expect { UserSignupService.new(@invalid_params).call }
      .to change { User.count }.by(0)
  end

  it 'does not create a user in the database without a role' do
    expect { UserSignupService.new(@invalid_params).call }
      .to change { User.count }.by(0)
  end
end
