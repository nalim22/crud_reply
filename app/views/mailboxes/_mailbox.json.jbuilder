json.extract! mailbox, :id, :s_email, :title, :content, :created_at, :updated_at
json.url mailbox_url(mailbox, format: :json)
