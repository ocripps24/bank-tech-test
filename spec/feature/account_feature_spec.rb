require 'spec_helper'
require 'account'

describe 'Account' do
  context 'Deposit' do
    it 'Enables a user to put money into their account' do
      account = Account.new
      expect { account.deposit(1) }.not_to raise_error
    end

    it 'Records the transaction on the ledger' do
      account = Account.new
      account.deposit(1)
      expect(account.ledger.length).to eq(1)
    end
  end

  context 'Withdrawal with sufficient balance' do
    it 'Enables a user to remove money from their account' do
      account = Account.new
      account.deposit(1)
      expect { account.withdraw(1) }.not_to raise_error
    end

    it 'Records the transaction on the ledger' do
      account = Account.new
      account.deposit(1)
      account.withdraw(1)
      expect(account.ledger.length).to eq(2)
    end
  end

  context 'Withdrawal with insufficient balance' do
    it 'Prevents a user from removing money from their account' do
      account = Account.new
      account.deposit(1)
      expect { account.withdraw(2) }.to raise_error
    end
  end

end
