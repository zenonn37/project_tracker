class ProjectsController < ApplicationController
  def index
  	@project = Project.sort
      @active = Project.active
    @checkActive = Check.new
    @check = @checkActive.checkProject(@active)
  end

  def new
  	@project = Project.new
  end
  def create
  	@project = Project.new(params[:project])

  		if @project.save
  			redirect_to(projects_path)
  		else
  			redirect_to(new_path)
  		end
  	end

  	def show
  		@project = Project.find(params[:id])
  	end

  	def edit
  		@project = Project.find(params[:id])
  	end

  	def destroy
       @project = Project.find(params[:id])
       @project.destroy

       redirect_to(projects_path)
  	end

  	def update
  		@project = Project.find(params[:id])

  		if @project.update_attributes(params[:project])
  			redirect_to(projects_path)
  		else
  			redirect_to(edit_project_path)
  		end
  	end

end
