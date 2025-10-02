class CoreRecord < ApplicationRecord
  #
  #
  # Settings
  # ---------------------------------------------------------------------------------------
  #
  #
  #
  #

  self.abstract_class = true

  #
  #
  # Database Connection
  # ---------------------------------------------------------------------------------------
  #
  #
  #
  #

  connects_to database: { writing: :primary }
end
