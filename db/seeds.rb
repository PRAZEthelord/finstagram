users = [
  { username: "sharky_j", avatar_url: "https://yt3.ggpht.com/ytc/AKedOLTsY8IQxf6785cTQ-gcCnsZuLcaxjvMvbz56YxnkQ=s900-c-k-c0x00ffffff-no-rj", email: "nil", password: "nil" },
  { username: "kirk_whalum", avatar_url: "https://static.fandomspot.com/images/02/4880/18-remoraid-fish-pokemon.jpg", email: "nil", password: "nil" },
  { username: "marlin_daddy", avatar_url: "https://www.americanoceans.org/wp-content/uploads/2021/02/atlantic-blue-marlin-740x494.jpg", email: "nil", password: "nil" }
]

finstagram_posts = [
  { photo_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/76e5c193-04f2-4736-97ee-5bd92a0294e0/dcq6qqi-2ce48b1d-b34f-4310-97af-519825cbecca.png/v1/fill/w_596,h_350,q_70,strp/kyogre_playmat_by_seadraz_dcq6qqi-350t.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTQxIiwicGF0aCI6IlwvZlwvNzZlNWMxOTMtMDRmMi00NzM2LTk3ZWUtNWJkOTJhMDI5NGUwXC9kY3E2cXFpLTJjZTQ4YjFkLWIzNGYtNDMxMC05N2FmLTUxOTgyNWNiZWNjYS5wbmciLCJ3aWR0aCI6Ijw9MTYwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.xU6v98JiSOS51VExl_0saD4JZUpDhTbN_V4ORW261LY"},
  { photo_url: "https://static.wikia.nocookie.net/pokemon/images/d/de/Team_Rocket_Wailord.png"},
  { photo_url: "https://cdn-amfji.nitrocdn.com/ItsVHqVpQhWlgJHudzyOjnxXeoFraizt/assets/static/optimized/rev-5b5fb36/wp-content/uploads/2020/09/smoked-blue-marlin.jpg"}
]

puts "=== Seeding database... ==="

# create Users and FinstagramPosts
users.each_with_index do |user, index|
  # create new User
  user_record = User.create(user)
  puts "-- Created User: #{user_record.username}"
  # get a finstagram_post
  finstagram_post = finstagram_posts[index]
  # modify finstagram_post's user_id from created record
  finstagram_post[:user_id] = user_record.id
  # create new FinstagramPost
  FinstagramPost.create(finstagram_post)
  puts "-- Created a FinstagramPost for User: #{user_record.username}"
end

puts "=== Seeding complete. ==="