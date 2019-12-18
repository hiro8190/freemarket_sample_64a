class CardController < ApplicationController
  def index
  end

  def new
  end

  def pay
    Payjp.api_key = 'sk_test_f11178b5365a163734f1d128'
    if params['payjp-token'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create(card: params['payjp-token'] )
      @card = Card.new(customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "show"
      else
        redirect_to action: "pay"
      end
    end
  end

  def show
    def index #CardのデータをPayjpに送って情報を取り出す
      if @card.present?
        Payjp.api_key = "sk_test_f11178b5365a163734f1d128"
        customer = Payjp::Customer.retrieve(@card.customer_id)
        @card_information = customer.cards.retrieve(@card.card_id)
      end
    end
  end
end