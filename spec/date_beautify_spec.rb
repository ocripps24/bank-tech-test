require 'spec_helper'
require 'date_beautify'

describe DateBeautify do
  describe '#retrieve_date' do
    it 'Applies the date format dd/mm/yyyy' do
      date = double(:date)
      transaction_date = DateBeautify.new(date)
      allow(date).to receive(:today).and_return(date)
      allow(date).to receive(:strftime).and_return('04/06/2019')
      expect(transaction_date.retrieve_date).to eq('04/06/2019')
    end
  end
end
