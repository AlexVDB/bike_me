class AddMotorToBikes < ActiveRecord::Migration[5.2]
  def change
    remove_column :bikes, :motor
    add_column :bikes, :motor, :boolean, default: false
  end
end
