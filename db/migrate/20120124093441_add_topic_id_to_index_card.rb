class AddTopicIdToIndexCard < ActiveRecord::Migration
  def change
    add_column :index_cards, :topic_id, :integer
  end
end
