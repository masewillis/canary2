class CompaniesController < ApplicationController



def new
  @company = Company.new
end

def create
  @company = Company.new(company_params)
  if @company.save
    redirect_to "/log_in", :notice => "Signed up!"
  else
    render "new"
  end

end


def index
  @worldfeeds = Feedjira::Feed.fetch_and_parse("http://feeds.bbci.co.uk/news/world/rss.xml#")
  @worldarticles = @worldfeeds.entries.first(15)

  @oilfeeds = Feedjira::Feed.fetch_and_parse("http://www.worldoil.com/Rss_Feed.aspx?PLink=WODN")
  @articles = @oilfeeds.entries.first(15)

  @minefeeds = Feedjira::Feed.fetch_and_parse("http://www.miningweekly.com/page/breaking-news/feed")
  @minearticles = @minefeeds.entries.first(15)
end

def all
  @companies = Company.all
end

def myprojects

end


private
    def company_params
      params.require(:company).permit(:cname, :name, :title, :email, :password, :password_confirmation)
    end






  # # before filter :name_of_some_method
  # # before_action :authenticate_with_basic_auth


  # def index
  #   # show me all the chefs
  #   @companies = Company.all
  #   # render :index
  # end

  # def show
  #   # show me one chef
  #   @company = Company.find(params[:id])
  #   # render json: @chef
  # end

  # def new
  #   @company = Company.new
  # end

  # def create
  #   company_hash = params[:company]
  #   if company_hash[:password] == company_hash[:password_confirmation]
  #     company = Company.new
  #     company.password = company_hash[:password]
  #     company.cname = company_hash[:cname]
  #     company.name = company_hash[:name]
  #     company.email = company_hash[:email]
  #     company.title = company_hash[:title]
  #     company.save

  #     if company.valid?
  #       # log the chef in when they register
  #       @current_user = company
  #       redirect_to "/company/login"
  #     else
  #       render text: "Email is already taken!"
  #     end
  #   else
  #     render text: "Passwords Did Not Match!"
  #   end
  #   # render json: params
  # end

  # # not a restful route, really...
  # def login
  #   # show LOGIN form

  # end

  # def process_login
  #   # process login form

  #   email = params[:email]
  #   password = params[:password]

  #   @current_user = Company.authenticated?(email, password)

  #   if @current_user
  #     redirect_to "/companies/#{@current_user.id}/index"
  #   else
  #     render text: "Login Failed! Invalid email or password!"
  #   end

  # end

end









