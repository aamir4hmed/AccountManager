class HomeController < ApplicationController
	@@amount = 0
 	require 'httparty'
  include HTTParty
  def index
  end

  def account_balance
  	@url = "https://zcldrzy3bxoerecsf-mock.stoplight-proxy.io/accounts" 
	  @result = HTTParty.get(@url.to_str, 
    :body => "{}",
    :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'  } )
  end

  def new_internal_transfer_debit

  end
  def internal_transfer_debit
    @amount = @@amount
  	@url = "https://zcldrzy3bxoerecsf-mock.stoplight-proxy.io/internal_transfers/fidor_payout" 
	  @result = HTTParty.post(@url.to_str, 
    :body => {
  						"account_id": "71616244",
  						"receiver": params[:receiver],
  						"external_uid": params[:external_uid],
  						"amount": params[:amount],
  						"subject": params[:subject]
							}.to_json,
    :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'  } )
	  puts JSON.parse(@result.body)
    respond_to do |format|
      format.js { render :internal_transfer }
    end
  end	
  
  def new_internal_transfer_credit

  end	

  def internal_transfer_credit
    @amount = @@amount
    @url = "https://zcldrzy3bxoerecsf-mock.stoplight-proxy.io/internal_transfers/fidor_payin" 
    @result = HTTParty.post(@url.to_str, 
    :body => {
              "account_id": "71616244",
              "receiver": params[:receiver],
              "external_uid": params[:external_uid],
              "amount": params[:amount],
              "subject": params[:subject]
              }.to_json,
    :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'  } )
    respond_to do |format|
      format.js { render :internal_transfer }
    end
  end
end
