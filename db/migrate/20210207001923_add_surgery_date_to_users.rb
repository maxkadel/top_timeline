# frozen_string_literal: true

class AddSurgeryDateToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :surgery_date, :datetime
  end
end
