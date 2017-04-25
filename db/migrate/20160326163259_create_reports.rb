class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|

      t.float :heart_rate, null: false #心拍数
      # t.float :blood_pressure, null: false #血圧
      # t.float :body_temperature, null: false #体温
      # t.float :amount_perspiration, null: false #発汗量

      t.timestamps null: false
    end
  end
end
