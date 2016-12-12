class Document < ApplicationRecord
	has_attached_file :archivo
	validates_attachment :archivo,
  content_type: { content_type: "application/pdf" }

end

