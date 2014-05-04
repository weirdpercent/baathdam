require 'multi_json'

fo = File.open('weirdpercent.json', "r")
mjl = MultiJson.load(fo)
u = mjl['usage']
gravatar = mjl['gravatar']
gravurl = "http://www.gravatar.com/avatar/#{gravatar}"
cuarray = mjl['connected_users']
suarray = mjl['similar_users']
name = mjl['name']
uname = mjl['username']
repoarray = mjl['repositories']
langarray = u['languages']
tz = mjl['timezone']
# cuarray, suarray & langarray are arrays of hashes that need to be broken up
cul = cuarray.length
sul = suarray.length
langl = langarray.length
cuh = {}
suh = {}
langh = {}
x = 0
y = 0
z = 0
while x < cul
  extr = cuarray[x]
  rearr = extr['name']
  rearr2 = extr['username']
  cuh[rearr] = rearr2
  x += 1
end
while y < sul
  extr = suarray[y]
  rearr = extr['name']
  rearr2 = extr['username']
  suh[rearr] = rearr2
  y += 1
end
while z < langl
  extr = langarray[z]
  rearr = extr['count']
  rearr2 = extr['language']
  langh[rearr] = rearr2
  z += 1
end
