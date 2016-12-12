class AddAttachmentArchivoToDocuments < ActiveRecord::Migration
  def self.up
    change_table :documents do |t|
      t.attachment :archivo
    end
  end

  def self.down
    remove_attachment :documents, :archivo
  end
end
