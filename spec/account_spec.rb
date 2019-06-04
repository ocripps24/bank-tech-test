require 'spec_helper'
require 'account'

describe Account do
  describe '#deposit' do
    it 'adds the argument value to the balance' do
      account = Account.new
      expect { account.deposit(1) }.to change { account.balance }.by(1)
    end
  end
end