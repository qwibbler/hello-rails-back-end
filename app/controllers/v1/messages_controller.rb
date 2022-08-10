# frozen_string_literal: true

module V1
  class MessagesController < ApplicationController
    def index
      greeting = Message.order(Arel.sql('RANDOM()')).first
      render json: { message: greeting.text }
    end
  end
end
