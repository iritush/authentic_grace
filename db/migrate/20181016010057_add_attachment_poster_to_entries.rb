class AddAttachmentPosterToEntries < ActiveRecord::Migration[5.2]
  def self.up
    change_table :entries do |t|
      t.attachment :poster
    end
  end

  def self.down
    remove_attachment :entries, :poster
  end
end
