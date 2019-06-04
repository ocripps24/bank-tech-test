require 'spec_helper'
require 'account'

describe Account do
  describe '#deposit' do
    it 'Adds the argument value to the balance' do
      account = Account.new
      expect { account.deposit(1) }.to change { account.balance }.by(1)
    end
  end

  describe '#withdraw' do
    context 'With sufficient balance' do
      it 'Subtracts the argument value from the balance' do
        account = Account.new
        account.deposit(1)
        expect { account.withdraw(1) }.to change { account.balance }.by(-1)
      end
    end

    context 'With insufficient balance' do
      it 'Raises an error' do
        account = Account.new
        account.deposit(1)
        expect { account.withdraw(2) }.to raise_error('Error: Insufficient funds')
      end
    end
  end
end
