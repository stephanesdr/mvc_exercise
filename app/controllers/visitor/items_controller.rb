# frozen_string_literal: true

module Visitor
  class ItemsController < VisitorController
    def index
      @items = Item.all
    end
  end
end
