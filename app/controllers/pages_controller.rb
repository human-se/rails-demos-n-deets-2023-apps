# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    render :home
  end

  def about
    render :about
  end
end
