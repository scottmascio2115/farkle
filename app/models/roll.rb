class Roll < ActiveRecord::Base
  # Remember to create a migration!
  after_initialize :roll_if_value_is_nil
  private
  # If the user passes-in a "value", let's use it. Otherwise, we'll generate a random one.
  def roll_if_value_is_nil
    self.value = (rand(6) + 1) if not self.value
  end
end
