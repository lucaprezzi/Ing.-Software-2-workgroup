class StaticPagesController < ApplicationController
  include ApplicationHelper

  attr_accessor :id

  def home
  end

  def impostazioni
    @id = params[:id]

  end

  def change
    value = []
    value[0] = params[:Our_Nominative]
    value[1] = params[:Our_Email]
    value[2] = params[:Our_Address]
    value[3] = params[:Our_Cap]
    value[4] = params[:Our_City]
    value[5] = params[:Our_State]
    value[6] = params[:Our_Telephone]
    value[7] = params[:Our_Tax]

    respond_to do |format|
      if store_multiple_data(value)
        format.html { redirect_to "/settings", notice: 'Settings page was successfully updated' }

      end
    end
  end

  def store_multiple_data(values)
    store_data("Our_Nominative", values[0])
    store_data("Our_Email", values[1])
    store_data("Our_Address", values[2])
    store_data("Our_Cap", values[3])
    store_data("Our_City", values[4])
    store_data("Our_State", values[5])
    store_data("Our_Telephone", values[6])
    store_data("Our_Tax", values[7])
  end
end
