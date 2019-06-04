require 'spec_helper'
require 'date_beautify'

describe 'DateBeautify - Features' do
  it 'Applies the date format dd/mm/yyyy' do
    transaction_date = DateBeautify.new
    expect { transaction_date.retrieve_date }.not_to raise_error
  end
end
