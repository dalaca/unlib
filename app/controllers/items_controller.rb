class ItemsController < ApplicationController


def index
	@item = Item.all
end

def new
	@item = Item.new
end

def create
	@item = Item.new(post_params)
	if @item.save
    		flash[:notice] = "You created a new post"
        redirect_to root_path
		else
			render 'new'
 		end
end

def show
	@item = Item.find(params[:id])
end

def edit
	@item = Item.find(params[:id])
end

def update
	@item = Item.find(params[:id])

end

def destroy

end


private
	def post_params
		params.require(:item).permit!
	end

end