json.array!(@agents.visible) do |agent|
  json.extract! agent, :id, :name, :position, :visible, :views, :adress, :details, :phone
  json.url agent_url(agent, format: :json)
end
