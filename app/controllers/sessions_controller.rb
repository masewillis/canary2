class SessionsController < ApplicationController


def new

end

def create
  company = Company.authenticate(params[:email], params[:password])
  if company
    session[:company_id] = company.id
    # redirect_to root_url, :notice => "Logged in!"
    redirect_to "/companies/#{current_company.id}/main"

  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

def destroy
  session[:company_id] = nil
  redirect_to "/", :notice => "Logged out!"
end

end
