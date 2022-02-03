# typed: ignore
class CreateExternalServices < ActiveRecord::Migration[7.0]
  def change
    create_table :external_services do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
