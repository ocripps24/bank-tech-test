require 'spec_helper'
require 'account'

describe 'Account' do
  context 'User transactions - Deposit' do
    it 'Enables a user to put money into their account' do
      account = Account.new
      expect { account.deposit(1) }.not_to raise_error
    end
  end
end
