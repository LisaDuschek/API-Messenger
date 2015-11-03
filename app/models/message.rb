class Message < ActiveRecord::Base

  before_create :send_message

  private

  def send_message
      response = RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2015-11-02/Accounts/ACa4398847355e2da0af4722c13e3bbeec/Messages.json',
      :user => 'ACa4398847355e2da0af4722c13e3bbeec',
      :password => '8537a39aadaab8c524f82e1ab9d6446c',
      :payload => { :Body => body,
                    :From => from,
                    :To => to }
      ).execute
  end



end
