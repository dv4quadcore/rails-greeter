class CreateVisitors < ActiveRecord::Migration[5.1]
  def self.up
    create_table :visitors do |t|
      #t.column :id, :integer, :limit => 10, :auto_increment => true
      t.column :name, :string, :limit => 10, :null => false
      t.timestamps
    end

    Visitor.create :name => "Tasty"
  end

  def self.down
    drop_table :visitors
  end

end
