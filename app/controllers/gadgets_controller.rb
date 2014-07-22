class GadgetsController < ApplicationController


def index
  @search = Gadget.search(params[:q])
  @gadgets = @search.result
end




end
