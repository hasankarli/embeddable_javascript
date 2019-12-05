class AddSiteToDiscussions < ActiveRecord::Migration[6.0]
  def change
    add_reference :discussions, :site, foreign_key: true
  end
end
