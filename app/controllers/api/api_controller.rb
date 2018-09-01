# frozen_string_literal: true

class Api::ApiController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken
  protect_from_forgery with: :null_session
end
