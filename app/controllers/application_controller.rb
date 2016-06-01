class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout false
  
  # Define the variables to be used on the view
  def index
    @message = "User List"
    @users = [{name: "Nitesh", age: 12},
              {name: "Nilesh", age: 14},
              {name: "Anil", age: 14}]
  end

  def ticket
    @trip_ref = "15071077838"
    @trip_details = "New Delhi Patna One Way details"
    @boarding_airport = "Flight 1: From Indira Gandhi Airport to Lok Nayak Jayaprakash on Sat, 07 Nov 2015"
    @phone = "912241300300"
    @mobile = "8892168104"
    @name = "Mr. Nitesh Kumar"
    @email = "nitesh.kumar@cleartrip.com"
    @address = "Cleartrip, Unit No 001, Ground Floor, DTC Bldg, Sitaram Mills Compound, N.M. Joshi Marg, Delisle Road, Lower Parel (E)
    , Mumbai
    , 400011
    , Maharashtra
    , India
"
    @segments = [{from: "Indira Gandhi Airport (DEL)", to: "Lok Nayak Jayaprakash (PAT)", dep: "18:35", arr: "20:05", airline: "Air India", aircode: "AI-415"}]
    @paxes = [{name: "Mr. Vinay Kumar(Adult)", pnr: "Y2TM1", total_price: "Rs. 1,249.0"},
              {name: "Mr. Anil Kumar(Adult)", pnr: "Y2TM2", total_price: "Rs. 1,249.0"}]
    @adult_price = "Rs. 194.0"
    @cash_back = "Rs. 800.0"
    @other_charges = "Rs. 3,104.0"
    @total = "Rs. 2,498"
  end

  def postman

  end

  def postit
    render text: Mustache.render(File.read(params[:template]), File.read(params[:json]))
  end
end
