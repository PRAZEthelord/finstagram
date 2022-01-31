def humanized_time_ago(time_ago_in_minutes)
  if time_ago_in_minutes >=60
    "#{time_ago_in_minutes / 60} hours ago"
    
  else
    "#{time_ago_in_minutes} minutes ago"

  end

end

get '/' do
    
  finstagram_post_shark= {
    username: "sharky_j",
    avatar_url: "https://yt3.ggpht.com/ytc/AKedOLTsY8IQxf6785cTQ-gcCnsZuLcaxjvMvbz56YxnkQ=s900-c-k-c0x00ffffff-no-rj",
    photo_url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/76e5c193-04f2-4736-97ee-5bd92a0294e0/dcq6qqi-2ce48b1d-b34f-4310-97af-519825cbecca.png/v1/fill/w_596,h_350,q_70,strp/kyogre_playmat_by_seadraz_dcq6qqi-350t.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9OTQxIiwicGF0aCI6IlwvZlwvNzZlNWMxOTMtMDRmMi00NzM2LTk3ZWUtNWJkOTJhMDI5NGUwXC9kY3E2cXFpLTJjZTQ4YjFkLWIzNGYtNDMxMC05N2FmLTUxOTgyNWNiZWNjYS5wbmciLCJ3aWR0aCI6Ijw9MTYwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.xU6v98JiSOS51VExl_0saD4JZUpDhTbN_V4ORW261LY",
    humanized_time_ago: humanized_time_ago(15),
    like_count:0,
    comment_count:1,
    comments: [{
      username:"sharky_j",
      text: "Cruising around the deep ocean blues, ain't got a clue!"
    }]
  }

  finstagram_post_whale= {
    username: "kirk_whalum",
    avatar_url: "https://static.fandomspot.com/images/02/4880/18-remoraid-fish-pokemon.jpg",
    photo_url: "https://static.wikia.nocookie.net/pokemon/images/d/de/Team_Rocket_Wailord.png",
    humanized_time_ago: humanized_time_ago(65),
    like_count: 0,
    comment_count: 1,
    comments: [{
      username: "kirk_whalum",
      text: "Hop on the wailord express! Time passed by so fast it was a blur, so is the picture."
    }]
  }

  finstagram_post_marlin= {
    username: "marlin_daddy",
    avatar_url: "https://www.americanoceans.org/wp-content/uploads/2021/02/atlantic-blue-marlin-740x494.jpg",
    photo_url: "https://cdn-amfji.nitrocdn.com/ItsVHqVpQhWlgJHudzyOjnxXeoFraizt/assets/static/optimized/rev-5b5fb36/wp-content/uploads/2020/09/smoked-blue-marlin.jpg",
    humanized_time_ago: humanized_time_ago(190),
    like_count: 0,
    comment_count: 1,
    comments: [{
      username:"marlin_daddy",
      text: "My son just died. Some idiot decided to cook him #RIP"
    }]
  }

  [finstagram_post_marlin, finstagram_post_shark, finstagram_post_whale].to_s

end