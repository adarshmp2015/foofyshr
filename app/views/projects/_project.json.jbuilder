json.extract! project, :id, :name, :description, :total_budget, :from, :to, :no_instalments, :created_at, :updated_at
json.url project_url(project, format: :json)
