class ProjectsController < ApplicationController


def index
    @projects = Project.order(id: :desc)

    # @company = Company.find(params[:id])
    # @company = current_user

    # # current user???!?!!?!?
    # @current_user = current_user
    # binding.pry
    # new instance of cookbook for the form helper

    # render json: @cookbooks
  end

  def show

    @project = Project.find(params[:id])
      @response = Response.new
      @responses = Response.all

      @cname = Company.find(params[:company_id]).cname



  end

  def new
    @project = Project.new


  end

  def create
    # add .create soon..

    # old way...
    # cookbook_attributes = params[:cookbook]

    # new way... *but requires private_method
    Project.create(project_attributes)

    # render json: {
    #   strong_params: cookbook_attributes
    # }


    # when done...
    # redirect_to projects_path

    redirect_to "/companies/#{current_company.id}/myprojects"

  end

  def edit
    @project = Project.find(params[:id])
    # render json: @cookbook
    end

   def update

    @project = Project.find(params[:id])

    @project.update_attributes(project_attributes)

    # render json: cookbook
    redirect_to
  end

  def all

    @projects = Project.all

  end

 def destroy
    @project = Project.find(params[:id])
    @project.destroy

    redirect_to "/companies/#{current_company.id}/myprojects"
  end



#   def response
#    Project.find(params[:id]).responses.create(params[:response])
#    flash[:notice] = "Added your comment"
#    redirect_to :action => "show", :id => params[:id]
# end



  private

  # strong params
  def project_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:project).permit(:name, :company_id, :country_id, :minefield_id, :description)
  end








end
