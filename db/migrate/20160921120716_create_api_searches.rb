class CreateApiSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :api_searches do |t|

      t.timestamps
    end
  end
end
