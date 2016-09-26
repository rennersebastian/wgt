json.extract! item, :name, :amount, :wgid, :created_at, :updated_at
json.url task_url(item, format: :json)