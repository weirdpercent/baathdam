require 'multi_json'

fo=File.open('weirdpercent.json', "r")
mjl=MultiJson.load(fo)
u=mjl["usage"]
gravatar=mjl["gravatar"]
cuarray=mjl["connected_users"]
suarray=mjl["similar_users"]
name=mjl["name"]
uname=mjl["username"]
repoarray=mjl["repositories"]
langarray=u["languages"]
tz=mjl["timezone"]
gravurl="http://www.gravatar.com/avatar/#{gravatar}"
