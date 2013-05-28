class RecordsController < ApplicationController
  def index
  	@post=Record.all
  end
  def add
  	Record.create(:name => params[:q])
  	redirect_to :action => 'index'
  end
  def delete
  	Record.last.delete
  	redirect_to :action => 'index'
  end
end
