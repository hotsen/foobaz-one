class Core::Document < CoreRecord
  #
  #
  # Concerns
  # --------------------------------------------------------------
  #
  #
  #   

  #
  #
  # Dependencies
  # --------------------------------------------------------------
  #
  #
  #   

  #
  #
  # Associations
  # --------------------------------------------------------------
  #
  #
  #   

  #
  #
  # Features
  # --------------------------------------------------------------
  #
  #
  #   


  #
  #
  # Callbacks
  # --------------------------------------------------------------
  #
  #
  #   


  #
  #
  # Validations
  # --------------------------------------------------------------
  #
  #
  #   

  validates :name, presence: true
  validates :code, presence: true, uniqueness: true
  validates :uuid, presence: true, uniqueness: true
  validates :mood, presence: true, inclusion: { in: %w[ none noop nooo nope ] }  
  
  #
  #
  # Instance Methods
  # --------------------------------------------------------------
  #
  #
  #   


  #
  #
  # Class Methods
  # --------------------------------------------------------------
  #
  #
  #   


  #
  #
  # Private Methods
  # --------------------------------------------------------------
  #
  #
  #   
end
