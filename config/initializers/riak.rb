Todo.riak = Riak::Client.new(:nodes => [{host: '127.0.0.1', pb_port: 8087, http_port: 8098}])

lists = Todo.riak.bucket("lists")
lists_index = lists.get_or_new("index")
lists_index.raw_data ||= JSON.dump(["home", "work", "play"])
lists_index.store

home_list = lists.get_or_new("home")
home_list.raw_data ||= JSON.dump({"name" => "Home", "tasks" => []})
home_list.store

work_list = lists.get_or_new("work")
work_list.raw_data ||= JSON.dump({"name" => "Work", "tasks" => []})
work_list.store

play_list = lists.get_or_new("play")
play_list.raw_data ||= JSON.dump({"name" => "Play", "tasks" => []})
play_list.store
