class SourceProviderResource < JSONAPI::Resource
  attributes :name, :url, :adress, :isactive

  filter :isactive, default:true
end
