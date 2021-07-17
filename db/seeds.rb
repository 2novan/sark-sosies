Booking.destroy_all
Sosie.destroy_all
User.destroy_all

user = User.new({email: "test@email.com", name: "Norman BAGNE", biography: "On me surnomme le Eddie Barclay du 44"})
user.password = "123456"
user.save!

user.avatar.attach(io: File.open(Rails.root.join('app/assets/images/godefroy.jpg')),
                  filename: 'godefroy.jpg')

user = User.new({email: "contact2@sark.com", name: "Sarkozy", biography: Faker::Marketing.buzzwords})
user.password = "123456"
user.save!

sosie1 = Sosie.create!({address: "8 Rue Saint-Jean, 44000 Nantes", celebrity: "Johnny Hallyday", name:  "Johnny Twist", description: "Johnny Twist sosie vocal de Johnny Hallyday du Val d' Oise et d'Ile de France.
A plusieurs reprises les fans ont été étonnés par la performance vocale et reconnaissaient que c'était très bluffant car sa voix est très proche de celle de Johnny Hallyday.
Il attache une très grande importance à vous restituer un show digne de l'artiste. Il vous interprétera en direct tous les plus grands succès de Johnny Hallyday.
Il se déplace dans la France entière seul où accompagné de ses musiciens et danseuses 2h00 de spectacle à couper le souffle.", price_per_day: "300", user: User.first})

sosie1.photo.attach(io: File.open(Rails.root.join('app/assets/images/johnny-twist.jpg')),
                  filename: 'johnny-twist.jpg')

sosie2 = Sosie.create!({address: "8 Rue Francis Merlant, 44000 Nantes", celebrity: "Patrick Sebastien", name:  "David Bastien", description: "David Bastien - Sosie Imitateur officiel de Patrick Sébastien - NORD - PAS DE CALAIS - Toute la France Reconnu officiellement par Patrick Sébastien en 2011, David Bastien est le seul sosie et imitateur officiel de Patrick SEBASTIEN. Il vous propose un spectacle de 30 mn à 1h30 avec de nombreux changements de costumes avec ses charmantes danseuses.
Doublure dans le plus grand cabaret du monde en 2007, élu meilleur sosie sur 100%mag sur m6 en septembre 2010, acteur de complément en tant que sosie de Patrick au cinéma dans le séminaire avec Bruno Solo, plus de 1000 spectacles à travers toute la France, la Belgique et d'autres pays touristiques, 2 spectacles possibles : spectacle festif sosie seul ou avec 2 danseuses, costumes strass, plumes etc. nombreux passages TV comme le plus grand cabaret du monde, incroyable talent, le séminaire, TF1, FRANCE 2, FRANCE 3, M6.", price_per_day: "250", user: User.first})

sosie2.photo.attach(io: File.open(Rails.root.join('app/assets/images/david-bastien.jpg')),
                  filename: 'david-bastien.jpg')

sosie3 = Sosie.create!({address: "Allée de Guérande, 44400 Rezé", celebrity: "Florent Pagny", name:  "Florent Dady", description: "Florent Dady sosie officiel reconnu par Florent Pagny à tf1 lors de l’émission la méthode cauet. Il a chanté à ses cotés sur FR2 !
Vu sur plusieurs chaines tv dans de nombreuses émissions.
Plus d’une heure trente de spectacle où il interprète  en direct sans imitation, tous les plus grands succès de Florent Pagny et hommages à divers artistes de la chanson.
Ma liberté de penser, et un jour une femme, Chanter, bienvenue chez moi, les murs porteurs, savoir aimer, 8ème merveille, le présent d abord etc..
« je suis un faux mais je joue vrai » meme taille, meme age que son modéle !!! Il a suivi tous les looks de Florent Pagny !
Possibilité de photos et dédicaces après le concert. Artiste sosie chanteur depuis 2002.", price_per_day: "300", user: User.first})

sosie3.photo.attach(io: File.open(Rails.root.join('app/assets/images/florent-dady.jpg')),
                  filename: 'florent-dady.jpg')

sosie4 = Sosie.create!({address: "19 Rue Desaix, 44000 Nantes", celebrity: "Serge gainsbourg", name:  "Serge Gainsbard", description: "Concert hommage dédié a SERGE GAINSBOURG : DE GAINSBOURG A GAINSBARRE.
Spectacle live d'1h30 a 2h, duo avec Jean-Francois Louis (sosie vocal et physique /chant et chœurs), accompagné de son clavier ( keyboard ) Alain Laurent .
Le duo dispose de sa propre sonorisation (Bose et Micros Shure) et jeux d éclairages.
Spectacle pour tout public (Multi générationnel).", price_per_day: "150", user: User.last})

sosie4.photo.attach(io: File.open(Rails.root.join('app/assets/images/serge-gainsbard.jpg')),
                  filename: 'serge-gainsbard.jpg')

sosie5 = Sosie.create!({address: "22 Rue de Malville, 44100 Nantes", celebrity: "Mylene Farmer", name:  "Mylenia", description: "Mylénia, Sosie de Mylène Farmer interprête en live les chansons de l’ange roux ... accompagnée de ses deux ou quatre danseuses, Mylénia vous transporte au coeur d’un spectacle sublimé par de nombreux costumes ainsi que des chorégraphies originales. La prestation inclue un Show lumière haut de gamme et un technicien. Durée modulable allant de 20 à 90 minutes.", price_per_day: "150", user: User.last})

sosie5.photo.attach(io: File.open(Rails.root.join('app/assets/images/mylenia.jpg')),
                  filename: 'mylenia.jpg')

sosie6 = Sosie.create!({address: "5 Rue Roland Garros, 44700 Orvault", celebrity: "Michel Sardou", name:  "Hervé Michel", description: "Interprétés par Hervé Michel. Retrouvez la voix de Sardou, le style, le rythme de Michel Sardou
En traversant les grandes années Sardou Hervé Michel vous invite à voyager dans l’univers Michel Sardou
Son timbre de voix, son mimétisme donne à l’interprétation de Michel Sardou toute sa dimension
Vous baignerez dans l’exceptionnelle ambiance Michel Sardou, son charisme, son incroyable personnalité, son talent
Vous les retrouverez dans chaque interprétation de Sardou années 70, de Sardou années 80 à Sardou années 90 et 2000.
Du célèbre bal populaire au lac du Connemara Hervé Michel vous emmène en croisière Sardou", price_per_day: "400", user: User.last})

sosie6.photo.attach(io: File.open(Rails.root.join('app/assets/images/herve-michel.jpg')),
                  filename: 'herve-michel.jpg')

 sosie7 = Sosie.create!({address: "8 Rue des Aubépines, 44980 Sainte-Luce-sur-Loire", celebrity: "Laurent Gerra", name:  "Olivier Vietti", description: "Spectacle avec Sosie de Dutronc et un chanteur de Variété Asti Even et Moi meme Un show Presque Parfait durée 2 heures. Humour, chansons, parodies d'émissions télé....

Vu dans Un dîner presque parfait spéciale sosie
Qui sera le meilleur sosie sur TF1
Dans le film Mon père est femme de ménage", price_per_day: "200", user: User.last})

sosie7.photo.attach(io: File.open(Rails.root.join('app/assets/images/laurent.jpg')),
                  filename: 'laurent.jpg')

sosie8 = Sosie.create!({address: "8 Rue de la Pyramide, 44230 Saint-Sébastien-sur-Loire", celebrity: "CLaude Francois", name:  "Yannick", description: "Yannick artiste, sosie Physique et Vocal de Claude François vous présente un show Hommage avec 2 ou 4 danseuses en LIVE.
Grâce à 7 ans d’expérience de la scène, d'un travail acharné pour réaliser un spectacle rythmé et chorégraphié d'1h30 à 1h45 d'une quinzaine de tableaux costumés...avec une ressemblance physique étonnante, des performances vocales & chorégraphiques semblables à la star, Yannick propose son spectacle dans toute la France et pays francophones. Il rempli les têtes de souvenirs, fait naître l'émotion et l'ambiance dans la salle. La joie, la bonne humeur provoquent une véritable complicité avec le public dans un pur moment de www.*******.*** show ne laissera jamais indifférents !
Plus d'infos:
-Sosie du Moulin de Claude François ( Ancienne demeure du Chanteur situé a Dannemois)
-Sosie reconnu par Ketty ex-clodette du Chanteur.
Il chante avec le cœur et fait renaître son idole Claude François, dans une énergie débordante, le tout en LIVE.", price_per_day: "400", user: User.last})

sosie8.photo.attach(io: File.open(Rails.root.join('app/assets/images/yannick.jpg')),
                  filename: 'yannick.jpg')

sosie9 = Sosie.create!({address: "5 Rue Michel Columb, 44200 Nantes", celebrity: "Michelle Torr", name: "Martine Ower", description: "NOTRE SOSIE est une artiste complète avec plus de 2000
représentations et 20 ans de carrière dans le milieu artistique ( meneuse de
revue en cabaret, auteur, compositeur…)

Elle rend hommage à cette grande artistes qu'est Michèle
TORR en proposant des prestations 100% live

1ERE FORMULE

Un spectacle de 1h30  SHOW
SOSIE MICHELE TORR 100% LIVE

Tous
les grands tubes de la DIVA
qu’elle partagera avec le public qui n’hésitera pas à reprendre les
refrains

ainsi qu’un hommage à ses
compositeurs (Didier BARBELIVIEN, C. JEROME, François VALERY) Elle parcourra
les années de la carrière de l’immense artiste.", price_per_day: "200", user: User.last})

sosie9.photo.attach(io: File.open(Rails.root.join('app/assets/images/martine-ower.png')),
                  filename: 'martine-ower.png')

sosie10 = Sosie.create!({address: "5 Rue Michel Columb, 44200 Nantes", celebrity: "Michael Jackson", name: "Mike Joseph", description: "Mike Joseph Jackson France, sosie professionnel 100 % naturel aux nombreuses références médiatiques et prestigieuses, de multiples apparitions télé et des spectacles donnés dans des salles prestigieuses.

Vous propose un show spectaculaire mêlant le dynamisme, la magie et l'émotion.

Différentes formules vous sont proposées selon votre budget avec jusqu'à 4 danseurs professionnels reconnus dans le métier.
", price_per_day: "500", user: User.last})

sosie10.photo.attach(io: File.open(Rails.root.join('app/assets/images/mike-joseph.jpg')),
                  filename: 'mike-joseph.jpg')

puts "done"
