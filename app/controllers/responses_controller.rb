class ResponsesController < ApplicationController


def show
  @response = Response.find(params[:id])

# @cname = Company.find(response.company_id).cname
end


 def create


    Response.create(response_attributes)



      redirect_to

  end

  def edit
      # if current_user.id = Response.company_id


    @response_id = Response.id
    @response = Response.find(@response_id)



  end


    # def edit
    # @response = Response.find(:company_id)
    # # render json: @cookbook
    # end

  def destroy
    # @response = Response.find(params[:id])
    # @response.destroy

    # redirect_to

     @response = Response.find(params[:id])
    @response.destroy

    redirect_to "/companies/#{current_company.id}/myprojects"

  end


private

def response_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:response).permit(:title, :company_id, :project_id, :description)
  end




end
