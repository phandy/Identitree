class TreesController < ApplicationController
	def index
		@trees = Tree.all
	end
	def new
		@tree = Tree.new
		
		respond_to do |format|
			format.html
			format.xml {render :xml => @tree }
		end
	end
  
  def create
	  @tree = Tree.new(params[:tree])
	 
	  respond_to do |format|
		if @tree.save
		  format.html { redirect_to(:action=>'new') }
		  flash[:notice] = "The tree " + @tree.common_name + " was successfully saved!"
		  format.xml  { render :xml => @tree,
						:status => :created, :location => @tree }
		else
		  format.html { render :action => "new" }
		  format.xml  { render :xml => @tree.errors,
						:status => :unprocessable_entity }
		end
	  end
  end
end
