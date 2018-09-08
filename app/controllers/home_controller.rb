class HomeController < ApplicationController
  def index
  end

  def account_balance
  	@url = "https://zcldrzy3bxoerecsf-mock.stoplight-proxy.io/accounts" 
	  @result = HTTParty.get(@url.to_str, 
    :body => "{}",
    :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'  } )
  end


end
