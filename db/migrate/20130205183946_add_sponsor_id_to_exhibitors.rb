class AddSponsorIdToExhibitors < ActiveRecord::Migration
  def change
    add_column :exhibitors, :sponsor_id, :integer
  end
end
