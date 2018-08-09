require 'rails_helper'

RSpec.describe User do
  let(:user) { User.new(
    id: 1,
    username: 'Sample User',
    email: 'sample@user.com',
    password: 'password',
    age: 38,
    gender: 'F',
    height: 68,
    weight: 150
  ) }

  describe 'validations' do
    describe 'username' do
      it 'must be present' do
        expect(user).to be_valid
        user.username = nil
        expect(user).to_not be_valid
      end
    end

    describe 'email' do
      it 'must be present' do
        expect(user).to be_valid
        user.email = nil
        expect(user).to_not be_valid
      end
    end

    describe 'password' do
      it 'must be present' do
        expect(user).to be_valid
        user.password = nil
        expect(user).to_not be_valid
      end

      it 'must have six or more characters' do
        expect(user).to be_valid
        user.password = 'cat'
        expect(user).to_not be_valid
      end
    end

    describe 'age' do
      it 'must be present' do
        expect(user).to be_valid
        user.age = nil
        expect(user).to_not be_valid
      end
    end

    describe 'gender' do
      it 'must be present' do
        expect(user).to be_valid
        user.gender = nil
        expect(user).to_not be_valid
      end

      it 'must be "M" or "F"' do
        expect(user).to be_valid
        user.gender = 'L'
        expect(user).to_not be_valid
      end
    end

    describe 'height' do
      it 'must be present' do
        expect(user).to be_valid
        user.height = nil
        expect(user).to_not be_valid
      end

      it 'must be an integer' do
        expect(user).to be_valid
        user.height = 'L'
        expect(user).to_not be_valid
      end
    end

    describe 'weight' do
      it 'must be present' do
        expect(user).to be_valid
        user.weight = nil
        expect(user).to_not be_valid
      end

      it 'must be an integer' do
        expect(user).to be_valid
        user.weight = 'L'
        expect(user).to_not be_valid
      end
    end
  end
end
