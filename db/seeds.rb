Booking.destroy_all
puts 'All bookings destroyed'
Product.destroy_all
puts 'All products destroyed'
User.destroy_all
puts 'All users destroyed'
Review.destroy_all
puts 'All reviews destroyed'


# Seed Users

user1 = User.create!(name: "John Doe", email: "john.doe@example.com", avatar: "https://res.cloudinary.com/deewxzlno/image/upload/v1724074421/production/avatars/u46sxktotibbrjhhjsym.jpg", password: "password1", password_confirmation: "password1")
user2 = User.create!(name: "Jane Smith", email: "jane.smith@example.com", avatar: "https://res.cloudinary.com/deewxzlno/image/upload/v1724074422/production/avatars/fxstnxf6mudy64ohbug1.jpg", password: "password2", password_confirmation: "password2")
user3 = User.create!(name: "Alice Johnson", email: "alice.johnson@example.com", avatar: "https://res.cloudinary.com/deewxzlno/image/upload/v1724074421/production/avatars/zqf6zhn2lbkx0iaoexn7.jpg", password: "password3", password_confirmation: "password3")
user4 = User.create!(name: "Lola Brown", email: "bob.brown@example.com", avatar: "https://res.cloudinary.com/deewxzlno/image/upload/v1724074421/production/avatars/fvpxbivbzkzu01budynj.jpg", password: "password4", password_confirmation: "password4")
user5 = User.create!(name: "Charlie Davis", email: "charlie.davis@example.com", avatar: "https://res.cloudinary.com/deewxzlno/image/upload/v1724074421/production/avatars/d5bioei9rgmik1pzos8g.jpg", password: "password5", password_confirmation: "password5")

puts '5 Users created'

# Seed Products


product1 = Product.create!(name: "Aeros Comet V2", description: "La Comet V2 est une voile polyvalente parfaite pour les débutants. Conçue pour offrir une excellente stabilité dans diverses conditions de vent, elle permet une progression en toute sécurité et sans effort.", price_per_day: 30, user_id: user1.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069046/production/kites/csu1stjknifqjrnvdojx.jpg")
product2 = Product.create!(name: "Ozone Edge XR", description: "L'Edge XR d'Ozone est une voile avancée qui offre un contrôle supérieur et une performance de pointe. Idéale pour les riders expérimentés qui cherchent à repousser leurs limites.", price_per_day: 50, user_id: user2.id, image: "", image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069045/production/kites/v3yg5rcu7cgu0xdtjodg.jpg")
product3 = Product.create!(name: "North Orbit", description: "L'Orbit de North est une voile légère, spécialement conçue pour exceller dans les conditions de vent fort. Sa construction robuste garantit une durabilité exceptionnelle.", price_per_day: 35, user_id: user1.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069044/production/kites/rdwbkgjn5fkovjppo2s0.jpg")
product4 = Product.create!(name: "Slingshot Rally GT", description: "La Rally GT de Slingshot est une voile durable qui offre des performances fiables sur le long terme. Parfaite pour les sessions prolongées, elle est appréciée des kitesurfers de tous niveaux.", price_per_day: 40, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069046/production/kites/ycaitihygpd4holer7uu.jpg")
product5 = Product.create!(name: "Cabrinha Switchblade", description: "La Switchblade de Cabrinha est une voile de qualité professionnelle, conçue pour les experts. Elle offre une maniabilité exceptionnelle et des performances élevées dans toutes les conditions.", price_per_day: 65, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069045/production/kites/stozvlcw1d5eyk3y8jwe.jpg")

product6 = Product.create!(name: "Naish Pivot", description: "Le Naish Pivot est une voile très polyvalente, idéale pour le freeride. Elle offre une stabilité exceptionnelle et une capacité de relance facile, ce qui la rend populaire parmi les riders de tous niveaux.", price_per_day: 45, user_id: user1.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069046/production/kites/mkcxxviknjglv4jn7vjz.jpg")
product7 = Product.create!(name: "F-One Bandit", description: "La F-One Bandit est une voile iconique, connue pour sa réactivité et son confort. Elle offre des performances constantes, que ce soit en freestyle, en vague ou en freeride.", price_per_day: 55, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069043/production/kites/lsbai2n6berf2c4cgec5.jpg")
product8 = Product.create!(name: "Duotone Rebel", description: "La Duotone Rebel est conçue pour offrir une grande portance et un contrôle optimal dans toutes les conditions. C'est une voile parfaite pour les kitesurfers cherchant à maximiser leur temps en l'air.", price_per_day: 50, user_id: user1.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069044/production/kites/knrojj6wu2mnsdf66rbk.jpg")
product9 = Product.create!(name: "Core XR7", description: "La Core XR7 est une voile qui combine une puissance énorme avec une maniabilité précise. Parfaite pour les sessions de big air et les courses, elle est adaptée aux riders avancés.", price_per_day: 60, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069044/production/kites/rdwbkgjn5fkovjppo2s0.jpg")
product10 = Product.create!(name: "Liquid Force NV", description: "La Liquid Force NV est une voile accessible qui offre un excellent compromis entre puissance et contrôle. Sa facilité d'utilisation en fait un choix privilégié pour les débutants et intermédiaires.", price_per_day: 40, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069045/production/kites/v3yg5rcu7cgu0xdtjodg.jpg")

product11 = Product.create!(name: "Airush Union", description: "L'Union d'Airush est une voile dynamique qui allie vitesse, réactivité et stabilité. Elle est parfaite pour le freestyle et le wave riding, offrant une polyvalence maximale.", price_per_day: 50, user_id: user1.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069046/production/kites/csu1stjknifqjrnvdojx.jpg")
product12 = Product.create!(name: "Cabrinha Drifter", description: "La Drifter de Cabrinha est la voile de référence pour le surf. Conçue pour offrir un drift sans effort et une réactivité instantanée, elle est idéale pour les amateurs de vagues.", price_per_day: 55, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069045/production/kites/z2hfnoehb34zvdollgft.jpg")
product13 = Product.create!(name: "Slingshot Raptor", description: "La Slingshot Raptor est une voile dédiée au big air, offrant une portance exceptionnelle et une stabilité inégalée. C'est le choix des riders cherchant à repousser leurs limites en hauteur.", price_per_day: 60, user_id: user1.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069045/production/kites/v3yg5rcu7cgu0xdtjodg.jpg")
product14 = Product.create!(name: "Naish Boxer", description: "La Boxer de Naish est une voile mono-latte légère, parfaite pour le foil et les vents légers. Sa conception minimaliste permet une maniabilité fluide et réactive.", price_per_day: 35, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069044/production/kites/rba62bixi8z6rw9b4mna.jpg")
product15 = Product.create!(name: "F-One Breeze", description: "La F-One Breeze est conçue pour exceller dans les conditions de vent faible. Sa légèreté et sa réactivité en font une voile idéale pour le foil et le freeride par vents légers.", price_per_day: 45, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069046/production/kites/ycaitihygpd4holer7uu.jpg")

product16 = Product.create!(name: "Ozone Catalyst", description: "L'Ozone Catalyst est une voile facile à prendre en main, parfaite pour les débutants et intermédiaires. Sa construction robuste et sa stabilité en font un choix sûr pour progresser en toute confiance.", price_per_day: 40, user_id: user1.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069046/production/kites/ycaitihygpd4holer7uu.jpg")
product17 = Product.create!(name: "North Carve", description: "La North Carve est spécialement conçue pour le surf, offrant un drift incroyable et une maniabilité précise. Elle est parfaite pour ceux qui cherchent à dompter les vagues avec style.", price_per_day: 50, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069045/production/kites/v3yg5rcu7cgu0xdtjodg.jpg")
product18 = Product.create!(name: "Duotone Dice", description: "La Duotone Dice est une voile de freestyle agile et réactive, offrant des performances de pointe pour les tricks et les figures aériennes. Elle est idéale pour les riders créatifs.", price_per_day: 55, user_id: user1.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069046/production/kites/mkcxxviknjglv4jn7vjz.jpg")
product19 = Product.create!(name: "Liquid Force Solo", description: "La Liquid Force Solo est une voile minimaliste, conçue pour être légère et facile à manipuler. Parfaite pour le foil, elle excelle également dans les vents légers.", price_per_day: 35, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069045/production/kites/stozvlcw1d5eyk3y8jwe.jpg")
product20 = Product.create!(name: "Core GTS5", description: "La Core GTS5 est une voile de freestyle polyvalente, connue pour sa puissance explosive et son loop précis. Idéale pour les riders recherchant des sensations fortes.", price_per_day: 60, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069044/production/kites/knrojj6wu2mnsdf66rbk.jpg")

product21 = Product.create!(name: "Ozone Reo V5", description: "L'Ozone Reo V5 est la voile de référence pour le wave riding. Sa capacité à drifter et sa stabilité dans les vagues en font un choix incontournable pour les surfeurs expérimentés.", price_per_day: 50, user_id: user1.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069046/production/kites/csu1stjknifqjrnvdojx.jpg")
product22 = Product.create!(name: "North Neo", description: "La North Neo est une voile de surf très réactive, offrant un excellent contrôle dans les vagues. Son drift exceptionnel en fait une alliée de choix pour les sessions en mer agitée.", price_per_day: 55, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069044/production/kites/rba62bixi8z6rw9b4mna.jpg")
product23 = Product.create!(name: "F-One WTF", description: "La F-One WTF est une voile de freestyle conçue pour les riders les plus exigeants. Avec une réactivité et une puissance sans compromis, elle est idéale pour le big air et les figures extrêmes.", price_per_day: 60, user_id: user1.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069046/production/kites/mkcxxviknjglv4jn7vjz.jpg")
product24 = Product.create!(name: "Cabrinha Moto", description: "La Cabrinha Moto est une voile polyvalente, idéale pour ceux qui cherchent à tout faire. Freeride, freestyle, ou surf, elle offre des performances solides dans toutes les disciplines.", price_per_day: 45, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069045/production/kites/z2hfnoehb34zvdollgft.jpg")
product25 = Product.create!(name: "Duotone Evo", description: "La Duotone Evo est une voile tout-terrain, parfaite pour les riders de tous niveaux. Son équilibre entre puissance et contrôle en fait une option polyvalente pour toutes les conditions.", price_per_day: 50, user_id: user2.id, image: "https://res.cloudinary.com/deewxzlno/image/upload/v1724069043/production/kites/lsbai2n6berf2c4cgec5.jpg")

puts "25 products created"


# Seed Bookings

booking1 = Booking.create!(start_date: DateTime.now + 1.day,  end_date: DateTime.now + 3.days, confirmed: false, product_id: product1.id, user_id: user1.id)
booking2 = Booking.create!(start_date: DateTime.now + 2.days, end_date: DateTime.now + 5.days, confirmed: false, product_id: product2.id, user_id: user2.id)
booking3 = Booking.create!(start_date: DateTime.now + 3.days, end_date: DateTime.now + 6.days, confirmed: false, product_id: product3.id, user_id: user3.id)
booking4 = Booking.create!(start_date: DateTime.now + 4.days, end_date: DateTime.now + 7.days, confirmed: false, product_id: product4.id, user_id: user4.id)
booking5 = Booking.create!(start_date: DateTime.now + 5.days, end_date: DateTime.now + 8.days, confirmed: false, product_id: product5.id, user_id: user5.id)

puts '5 Bookings created'

# Seed Reviews

reviews_data = [
  # Reviews for Product 1
  { content: "Très efficace et facile à utiliser. Je recommande !", rating: 5, user_id: user1.id, product_id: product1.id },
  { content: "Bon produit, mais il pourrait être amélioré.", rating: 3, user_id: user2.id, product_id: product1.id },
  { content: "Superbe voile, parfaite pour débuter.", rating: 4, user_id: user3.id, product_id: product1.id },
  { content: "Un bon rapport qualité-prix.", rating: 4, user_id: user4.id, product_id: product1.id },
  { content: "Pas mal, mais je m'attendais à mieux.", rating: 3, user_id: user5.id, product_id: product1.id },

  # Reviews for Product 2
  { content: "Excellente performance, très satisfait.", rating: 5, user_id: user1.id, product_id: product2.id },
  { content: "Facile à contrôler, idéale pour les experts.", rating: 4, user_id: user2.id, product_id: product2.id },
  { content: "Une voile de haute qualité.", rating: 5, user_id: user3.id, product_id: product2.id },
  { content: "Bon produit, je l'ai adoré.", rating: 4, user_id: user4.id, product_id: product2.id },
  { content: "Plutôt bien, mais un peu cher.", rating: 3, user_id: user5.id, product_id: product2.id },

  # Reviews for Product 3
  { content: "Légère et facile à manier, parfaite pour le vent fort.", rating: 4, user_id: user1.id, product_id: product3.id },
  { content: "Très bon produit, je suis impressionné.", rating: 5, user_id: user2.id, product_id: product3.id },
  { content: "Bon compromis entre légèreté et durabilité.", rating: 4, user_id: user3.id, product_id: product3.id },
  { content: "Pas mal, mais la durabilité pourrait être meilleure.", rating: 3, user_id: user4.id, product_id: product3.id },
  { content: "Facile à utiliser, même pour un débutant.", rating: 4, user_id: user5.id, product_id: product3.id },

  # Reviews for Product 4
  { content: "Très robuste, parfaite pour de longues sessions.", rating: 5, user_id: user1.id, product_id: product4.id },
  { content: "Une voile fiable, je suis content de mon achat.", rating: 4, user_id: user2.id, product_id: product4.id },
  { content: "Bonne voile, mais un peu lourde.", rating: 3, user_id: user3.id, product_id: product4.id },
  { content: "Bon produit pour un usage prolongé.", rating: 4, user_id: user4.id, product_id: product4.id },
  { content: "Correct, mais pas exceptionnel.", rating: 3, user_id: user5.id, product_id: product4.id },

  # Reviews for Product 5
  { content: "Performance de haut niveau, je recommande vivement.", rating: 5, user_id: user1.id, product_id: product5.id },
  { content: "Idéale pour les experts, une voile de qualité.", rating: 5, user_id: user2.id, product_id: product5.id },
  { content: "Bonne maniabilité, très satisfaite.", rating: 4, user_id: user3.id, product_id: product5.id },
  { content: "Un peu difficile à contrôler, mais puissante.", rating: 3, user_id: user4.id, product_id: product5.id },
  { content: "Voile haut de gamme, très performante.", rating: 5, user_id: user5.id, product_id: product5.id },

  # Reviews for Product 6
  { content: "Voile polyvalente, facile à utiliser.", rating: 4, user_id: user1.id, product_id: product6.id },
  { content: "Bon contrôle, parfaite pour le freeride.", rating: 5, user_id: user2.id, product_id: product6.id },
  { content: "Excellente stabilité dans diverses conditions.", rating: 5, user_id: user3.id, product_id: product6.id },
  { content: "Parfaite pour les débutants et intermédiaires.", rating: 4, user_id: user4.id, product_id: product6.id },
  { content: "Une voile fiable et durable.", rating: 5, user_id: user5.id, product_id: product6.id },

  # Reviews for Product 7
  { content: "Iconique, réactive et confortable.", rating: 5, user_id: user1.id, product_id: product7.id },
  { content: "Performances constantes, très satisfaisant.", rating: 4, user_id: user2.id, product_id: product7.id },
  { content: "Parfait pour le freestyle et le freeride.", rating: 4, user_id: user3.id, product_id: product7.id },
  { content: "Facile à contrôler dans les vagues.", rating: 4, user_id: user4.id, product_id: product7.id },
  { content: "Une valeur sûre pour tous les riders.", rating: 5, user_id: user5.id, product_id: product7.id },

  # Reviews for Product 8
  { content: "Portance impressionnante, contrôle optimal.", rating: 5, user_id: user1.id, product_id: product8.id },
  { content: "Parfaite pour maximiser le temps en l'air.", rating: 5, user_id: user2.id, product_id: product8.id },
  { content: "Maniabilité exceptionnelle dans toutes les conditions.", rating: 4, user_id: user3.id, product_id: product8.id },
  { content: "Bon produit pour le big air.", rating: 4, user_id: user4.id, product_id: product8.id },
  { content: "Solide et performante, je recommande.", rating: 5, user_id: user5.id, product_id: product8.id },

  # Reviews for Product 9
  { content: "Puissance énorme et maniabilité précise.", rating: 5, user_id: user1.id, product_id: product9.id },
  { content: "Parfaite pour les sessions de big air.", rating: 5, user_id: user2.id, product_id: product9.id },
  { content: "Idéale pour les riders avancés.", rating: 4, user_id: user3.id, product_id: product9.id },
  { content: "Un peu difficile à prendre en main.", rating: 3, user_id: user4.id, product_id: product9.id },
  { content: "Produit de qualité, très performant.", rating: 5, user_id: user5.id, product_id: product9.id },

  # Reviews for Product 10
  { content: "Facilité d'utilisation pour les débutants.", rating: 4, user_id: user1.id, product_id: product10.id },
  { content: "Bon compromis entre puissance et contrôle.", rating: 4, user_id: user2.id, product_id: product10.id },
  { content: "Parfaite pour progresser en kitesurf.", rating: 4, user_id: user3.id, product_id: product10.id },
  { content: "Performances fiables dans diverses conditions.", rating: 4, user_id: user4.id, product_id: product10.id },
  { content: "Un excellent choix pour les intermédiaires.", rating: 4, user_id: user5.id, product_id: product10.id },

  # Reviews for Product 11
  { content: "Voile dynamique et réactive, idéale pour le freestyle.", rating: 5, user_id: user1.id, product_id: product11.id },
  { content: "Polyvalente et stable, très satisfaisant.", rating: 4, user_id: user2.id, product_id: product11.id },
  { content: "Bon produit pour le wave riding.", rating: 4, user_id: user3.id, product_id: product11.id },
  { content: "Facile à manier, même pour les débutants.", rating: 4, user_id: user4.id, product_id: product11.id },
  { content: "Performances solides dans toutes les conditions.", rating: 5, user_id: user5.id, product_id: product11.id },

  # Reviews for Product 12
  { content: "Idéale pour le surf, drift exceptionnel.", rating: 5, user_id: user1.id, product_id: product12.id },
  { content: "Conception parfaite pour les amateurs de vagues.", rating: 5, user_id: user2.id, product_id: product12.id },
  { content: "Réactivité instantanée, très impressionnant.", rating: 4, user_id: user3.id, product_id: product12.id },
  { content: "Un peu difficile à maîtriser au début.", rating: 3, user_id: user4.id, product_id: product12.id },
  { content: "Pour les passionnés de vagues, un must.", rating: 5, user_id: user5.id, product_id: product12.id },

  # Reviews for Product 13
  { content: "Très légère et pourtant très puissante.", rating: 5, user_id: user1.id, product_id: product13.id },
  { content: "Parfaite pour les longues sessions en mer.", rating: 4, user_id: user2.id, product_id: product13.id },
  { content: "Bonne stabilité, même par vent fort.", rating: 4, user_id: user3.id, product_id: product13.id },
  { content: "Très agréable à utiliser, même pour les débutants.", rating: 4, user_id: user4.id, product_id: product13.id },
  { content: "Excellent contrôle et réactivité.", rating: 5, user_id: user5.id, product_id: product13.id },

  # Reviews for Product 14
  { content: "La meilleure voile que j'ai utilisée jusqu'à présent.", rating: 5, user_id: user1.id, product_id: product14.id },
  { content: "Parfaite pour les riders de tous niveaux.", rating: 4, user_id: user2.id, product_id: product14.id },
  { content: "Superbe contrôle et très maniable.", rating: 4, user_id: user3.id, product_id: product14.id },
  { content: "Bonne pour les longues sessions.", rating: 4, user_id: user4.id, product_id: product14.id },
  { content: "Très performante, je recommande.", rating: 5, user_id: user5.id, product_id: product14.id },

  # Reviews for Product 15
  { content: "Incroyablement stable, même dans les rafales.", rating: 5, user_id: user1.id, product_id: product15.id },
  { content: "Parfaite pour le big air et le freestyle.", rating: 5, user_id: user2.id, product_id: product15.id },
  { content: "Très robuste et fiable.", rating: 4, user_id: user3.id, product_id: product15.id },
  { content: "Superbe produit, très satisfait.", rating: 5, user_id: user4.id, product_id: product15.id },
  { content: "Un peu cher, mais ça vaut le coup.", rating: 4, user_id: user5.id, product_id: product15.id },

  # Reviews for Product 16
  { content: "Très facile à contrôler, même pour un débutant.", rating: 4, user_id: user1.id, product_id: product16.id },
  { content: "Bon équilibre entre puissance et maniabilité.", rating: 4, user_id: user2.id, product_id: product16.id },
  { content: "Conception robuste, très durable.", rating: 4, user_id: user3.id, product_id: product16.id },
  { content: "Une excellente voile pour progresser.", rating: 4, user_id: user4.id, product_id: product16.id },
  { content: "Super produit pour le prix.", rating: 4, user_id: user5.id, product_id: product16.id },

  # Reviews for Product 17
  { content: "Incroyablement réactive et rapide.", rating: 5, user_id: user1.id, product_id: product17.id },
  { content: "Parfaite pour les riders avancés.", rating: 5, user_id: user2.id, product_id: product17.id },
  { content: "Très stable dans les conditions difficiles.", rating: 4, user_id: user3.id, product_id: product17.id },
  { content: "Bon produit, mais un peu cher.", rating: 4, user_id: user4.id, product_id: product17.id },
  { content: "Une voile de très haute qualité.", rating: 5, user_id: user5.id, product_id: product17.id },

  # Reviews for Product 18
  { content: "Légère et puissante, un plaisir à utiliser.", rating: 5, user_id: user1.id, product_id: product18.id },
  { content: "Idéale pour les débutants, très indulgente.", rating: 4, user_id: user2.id, product_id: product18.id },
  { content: "Conception solide, très fiable.", rating: 4, user_id: user3.id, product_id: product18.id },
  { content: "Parfaite pour progresser rapidement.", rating: 4, user_id: user4.id, product_id: product18.id },
  { content: "Très bon produit pour le prix.", rating: 4, user_id: user5.id, product_id: product18.id },

  # Reviews for Product 19
  { content: "Très puissante, mais un peu difficile à contrôler.", rating: 3, user_id: user1.id, product_id: product19.id },
  { content: "Bonne maniabilité pour les riders expérimentés.", rating: 4, user_id: user2.id, product_id: product19.id },
  { content: "Performances impressionnantes, très satisfaisant.", rating: 5, user_id: user3.id, product_id: product19.id },
  { content: "Assez lourde, mais très solide.", rating: 4, user_id: user4.id, product_id: product19.id },
  { content: "Excellente voile pour les experts.", rating: 5, user_id: user5.id, product_id: product19.id },

  # Reviews for Product 20
  { content: "Parfaite pour les sessions en mer agitée.", rating: 5, user_id: user1.id, product_id: product20.id },
  { content: "Conception robuste et durable.", rating: 4, user_id: user2.id, product_id: product20.id },
  { content: "Très bonne stabilité, même dans les vagues.", rating: 5, user_id: user3.id, product_id: product20.id },
  { content: "Un peu difficile à contrôler pour les débutants.", rating: 3, user_id: user4.id, product_id: product20.id },
  { content: "Très performante, je suis impressionné.", rating: 5, user_id: user5.id, product_id: product20.id },

  # Reviews for Product 21
  { content: "Maniabilité exceptionnelle, très réactive.", rating: 5, user_id: user1.id, product_id: product21.id },
  { content: "Idéale pour les sessions de freestyle.", rating: 4, user_id: user2.id, product_id: product21.id },
  { content: "Très bonne pour le big air.", rating: 4, user_id: user3.id, product_id: product21.id },
  { content: "Assez polyvalente, bonne dans plusieurs conditions.", rating: 4, user_id: user4.id, product_id: product21.id },
  { content: "Produit de haute qualité, très satisfait.", rating: 5, user_id: user5.id, product_id: product21.id },

  # Reviews for Product 22
  { content: "Voile très puissante, un peu difficile à maîtriser.", rating: 3, user_id: user1.id, product_id: product22.id },
  { content: "Bonne stabilité, même dans les conditions difficiles.", rating: 4, user_id: user2.id, product_id: product22.id },
  { content: "Très performante pour le freestyle.", rating: 5, user_id: user3.id, product_id: product22.id },
  { content: "Un peu lourde, mais très robuste.", rating: 4, user_id: user4.id, product_id: product22.id },
  { content: "Une voile de qualité pour les riders expérimentés.", rating: 5, user_id: user5.id, product_id: product22.id },

  # Reviews for Product 23
  { content: "Facile à utiliser, même pour les débutants.", rating: 4, user_id: user1.id, product_id: product23.id },
  { content: "Très bon produit pour progresser rapidement.", rating: 4, user_id: user2.id, product_id: product23.id },
  { content: "Bonne performance et maniabilité.", rating: 4, user_id: user3.id, product_id: product23.id },
  { content: "Légère et réactive, idéale pour le freeride.", rating: 4, user_id: user4.id, product_id: product23.id },
  { content: "Bon rapport qualité-prix, je recommande.", rating: 4, user_id: user5.id, product_id: product23.id },

  # Reviews for Product 24
  { content: "Conception innovante, très impressionné.", rating: 5, user_id: user1.id, product_id: product24.id },
  { content: "Excellente performance dans toutes les conditions.", rating: 5, user_id: user2.id, product_id: product24.id },
  { content: "très réactive, facile à manier.", rating: 4, user_id: user3.id, product_id: product24.id },
  { content: "Un peu chère, mais ça vaut le coup.", rating: 4, user_id: user4.id, product_id: product24.id },
  { content: "Produit de très haute qualité.", rating: 5, user_id: user5.id, product_id: product24.id },

  # Reviews for Product 25
  { content: "Très puissante, parfaite pour les sessions de freestyle.", rating: 5, user_id: user1.id, product_id: product25.id },
  { content: "Un peu difficile à contrôler pour les débutants.", rating: 3, user_id: user2.id, product_id: product25.id },
  { content: "Excellent produit, très performant.", rating: 5, user_id: user3.id, product_id: product25.id },
  { content: "Bonne stabilité, même dans les conditions difficiles.", rating: 4, user_id: user4.id, product_id: product25.id },
  { content: "Une voile de qualité pour les riders avancés.", rating: 5, user_id: user5.id, product_id: product25.id }
]

# Create the reviews
reviews_data.each do |review_data|
  Review.create!(review_data)
end

puts '125 Reviews created'
