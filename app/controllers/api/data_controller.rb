class Api::DataController < ApplicationController
  def steps
    respond_to do |format|
      format.html do
        render :json => summary.merge(user_info)
      end
    end
  end

  private

  def client
    User.first.fitbit_data
  end

  def summary
    client.activities_on_date(Date.current)
  end

  def user_info
    client.user_info['user']
  end
end


