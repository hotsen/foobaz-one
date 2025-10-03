# frozen_string_literal: true

require "test_helper"

class Core::DocumentTest < ActiveSupport::TestCase
  #
  #
  # Shared Examples
  # -------------------------------------------------------------------------------
  #
  #
  #
  #

  include Concerns::FixturesTest

  #
  #
  # Setup
  # -------------------------------------------------------------------------------
  #
  #
  #
  #

  def setup
    @record = Core::Document.take
    @record_class = @record.class
  end

  #
  #
  # Settings
  # -------------------------------------------------------------------------------
  #
  #
  #
  #


  #
  #
  # Associations
  # -------------------------------------------------------------------------------
  #
  #
  #
  #


  #
  #
  # Scopes
  # -------------------------------------------------------------------------------
  #
  #
  #
  #

  #
  #
  # Stores
  # -------------------------------------------------------------------------------
  #
  #
  #
  #

  #
  #
  # Validations
  # -------------------------------------------------------------------------------
  #
  #
  #
  #

  def test_should_validate_name
    @record.name = nil
    assert_not @record.valid?
    assert_includes @record.errors[:name], "can't be blank"
  end

  def test_should_validate_code
    @record.code = nil
    assert_not @record.valid?
    assert_includes @record.errors[:code], "can't be blank"
  end

  def test_should_validate_uuid
    @record.uuid = nil
    assert_not @record.valid?
    assert_includes @record.errors[:uuid], "can't be blank"
  end

  def test_should_validate_mood
    @record.mood = nil
    assert_not @record.valid?
    assert_includes @record.errors[:mood], "can't be blank"
  end

  def test_should_validate_mood_inclusion
    @record.mood = "foob"
    assert_not @record.valid?
    assert_includes @record.errors[:mood], "is not included in the list"
  end
end
