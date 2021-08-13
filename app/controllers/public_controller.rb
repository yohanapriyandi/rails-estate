class PublicController < ApplicationController
  def main
    if account_signed_in?
      redirect_to dashboard_path, flash: {success: "Successsfully Signed In. Welcome to Rails Estate"} and return
    end
    @properties = Property.latest
  end
end
