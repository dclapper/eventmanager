class AddExhibitorCategoryIdToExhibitors < ActiveRecord::Migration
  def change
    add_column :exhibitors, :exhibitor_category_id, :integer
  end
end
