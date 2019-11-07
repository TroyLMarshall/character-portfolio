# frozen_string_literal: true

# Represents an authenticated user
#
# @author Troy L. Marshall
# @since 1.0.0
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :characters
end
