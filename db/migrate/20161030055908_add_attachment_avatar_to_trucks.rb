class AddAttachmentAvatarToTrucks < ActiveRecord::Migration
  def self.up
    change_table :trucks do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :trucks, :avatar
  end
end
