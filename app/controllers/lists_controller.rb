class ListsController < ApplicationController 
	def index
		@list_keys = JSON.parse(Todo.riak.bucket("lists").get("index").raw_data)
	end
end
