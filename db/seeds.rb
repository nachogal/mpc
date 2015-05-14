def rand
	('a'..'z').to_a.shuffle[0,8].join
end

User.create!({"username"=>"AnjaG", "email"=>"agodo@ufm.edu", "password"=>rand})
User.create!({"username"=>"CarmenR", "email"=>"clrodriguez@ufm.edu", "password"=>rand})
User.create!({"username"=>"DiegoR", "email"=>"driverac@ufm.edu", "password"=>rand})
User.create!({"username"=>"GraceB", "email"=>"gracebeckerm@ufm.edu", "password"=>rand})
User.create!({"username"=>"HanaK", "email"=>"hanako@ufm.edu", "password"=>rand})
User.create!({"username"=>"IgnacioG", "email"=>"jgalindom@ufm.edu", "password"=>rand})
User.create!({"username"=>"IsaM", "email"=>"isabelmoino@ufm.edu", "password"=>rand})
User.create!({"username"=>"JavierP", "email"=>"jparelladac@ufm.edu", "password"=>rand})
User.create!({"username"=>"JavierT", "email"=>"jtabush@ufm.edu", "password"=>rand})
User.create!({"username"=>"KataH", "email"=>"sylviahall@ufm.edu", "password"=>rand})
User.create!({"username"=>"LorenaP", "email"=>"lpalmieri@ufm.edu", "password"=>rand})
User.create!({"username"=>"MaferS", "email"=>"mafersoto@ufm.edu", "password"=>rand})
User.create!({"username"=>"MarcelaR", "email"=>"amrichardson@ufm.edu", "password"=>rand})
User.create!({"username"=>"MajoC", "email"=>"mcrespo@ufm.edu", "password"=>rand})
User.create!({"username"=>"MarS", "email"=>"msamayoam@ufm.edu", "password"=>"12345678"})
User.create!({"username"=>"MelanieF", "email"=>"mafalconer@ufm.edu", "password"=>rand})
User.create!({"username"=>"PabloV", "email"=>"ppablo@ufm.edu", "password"=>rand})
User.create!({"username"=>"RafaP", "email"=>"rparra@ufm.edu", "password"=>rand})


count = User.all.count
(1..count).each { |user_id|
  Post.create!({title: "Edit Title", body: "Edit Body", user_id: user_id})
}
