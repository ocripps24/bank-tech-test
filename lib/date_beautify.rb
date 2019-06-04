class DateBeautify
  def initialize(date = Date)
    @date = date
  end

  def retrieve_date
    @date.today.strftime('%d/%m/%Y')
  end
end
