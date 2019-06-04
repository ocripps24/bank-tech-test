require 'spec_helper'
require 'account'

describe 'Account' do
  context 'User transactions - Deposit' do
    it 'Enables a user to put money into their account' do
      account = Account.new
      expect { account.deposit(1) }.not_to raise_error
    end
  end

  context 'User transactions - Withdrawal with sufficient balance' do
    it 'Enables a user to remove money from their account' do
      account = Account.new
      account.deposit(1)
      expect { account.withdraw(1) }.not_to raise_error
    end
  end

  context 'User transactions - Withdrawal with insufficient balance' do
    it 'Enables a user to remove money from their account' do
      account = Account.new
      account.deposit(1)
      expect { account.withdraw(2) }.to raise_error
    end
  end
end
