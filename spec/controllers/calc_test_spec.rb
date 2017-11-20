require 'rails_helper'

FSpec.describe CalcController, :type=> :controller do
  describe "POST calculate" do
    it "calc minus" do
      post :calculate, params: { a:1, b:2, op:'-'}
      expect(response).to have_http_status (:ok)
    end
  end

  describe "calculate" do
    it "calc plus" do
      @calc = CalcController.new
      expect(@calc.instance_eval{ calc(1,2,'+')}).to eq 3
    end
  end
end
