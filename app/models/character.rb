# frozen_string_literal: true

# Represents a Pathfinder character
#
# @author Troy L. Marshall
# @since 1.0.0
class Character < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :user_id, presence: true
end
