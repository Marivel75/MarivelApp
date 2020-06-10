# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Place.destroy_all
TripWaypoint.destroy_all
Trip.destroy_all

User.create(
  first_name: "Boubou",
  last_name: Faker::Name.last_name,
  description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
  email: Faker::Internet.email,
  password: "123456",
  role: "admin"
)

User.create(
  first_name: "Trotro",
  last_name: Faker::Name.last_name,
  description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
  email: Faker::Internet.email,
  password: "123456",
  role: "partner"
)

User.create(
  first_name: "CMN",
  last_name: "Centre des monuments nationaux",
  description: "Premier  opérateur  public,  culturel  et  touristique  avec  plus  de  10  millions  de  visiteurs  par  an,  le  Centre  des monuments nationaux conserve et ouvre à la visite des monuments d’exception ainsi que leurs parcs et jardins. Ils illustrent, par leur diversité, la richesse du patrimoine français.",
  email: Faker::Internet.email,
  password: "123456",
  role: "partner"
)

User.create(
  first_name: "Nana",
  last_name: Faker::Name.last_name,
  description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
  email: Faker::Internet.email,
  password: "123456",
  role: "traveler"
)

User.create(
  first_name: "Lili",
  last_name: Faker::Name.last_name,
  description: Faker::Quotes::Shakespeare.as_you_like_it_quote,
  email: Faker::Internet.email,
  password: "123456",
  role: "traveler"
)

Category.create(
  name: "Roadtrip"
)

Category.create(
  name: "À vélo"
)

Category.create(
  name: "À pied"
)

Place.create(
  name: "Abbaye de Cluny",
  address: "Palais du Pape Gélase Place du 11 Août 1944 71250 Cluny",
  description: "Située à 20 minutes seulement de Mâcon, cette abbaye a rayonné sur l’Europe durant tout le Moyen-Âge. Fondée en 910, elle possédait des proportions hors du commun : les plus hautes voûtes du monde roman témoignent encore aujourd’hui de ce gigantisme. Un film 3D et des restitutions virtuelles complètent la visite et permettent de retrouver toute la majesté du lieu.",
  subtitle: "Une abbaye rayonnant sur toute l’Europe au Moyen-Âge",
  price: "Plein tarif adulte : 9,50€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 7,50€",
  website: "http://www.cluny-abbaye.fr/",
  phone: "33 / (0)3 85 59 15 93",
  author_id: User.first.id,
  attribution: "CC BY-SA 1.0, https://commons.wikimedia.org/w/index.php?curid=1028947"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Cluny_Farinier_depuis_clocher.jpg"), filename: "image.jpg")

Place.create(
  name: "Monastère royal de Brou",
  address: "63 boulevard de Brou 01000 Bourg-en-Bresse",
  description: "A 30 minutes de Mâcon et à 1 heure de Lyon, la charmante ville de Bourg-en-Bresse abrite ce somptueux monastère. Il est édifié au début de la Renaissance par Marguerite d’Autriche alors régente des Pays-Bas. Ce monastère est le chef-d’oeuvre qu’elle a voulu pour perpétuer sa gloire et l’amour qu’elle portat à son mari. L’église est un joyau richement orné : tombeaux, retable, statues et vitraux restés intacts.",
  subtitle: "Un chef-d'oeuvre du gothique flamboyant par amour",
  price: "Individuel : 9,50€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 7,50€",
  website: "http://www.monastere-de-brou.fr/",
  phone: "04 74 22 83 83",
  author_id: User.first.id,
  attribution: "Par © Benoît Prieur / Wikimedia Commons, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=33658475"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Monastère_royal_de_Brou_(église)_(1).JPG"), filename: "image.jpg")

Place.create(
  name: "Fort Saint-André",
  address: "Fort Saint-André 30400 Villeneuve-lez-Avigon",
  description: "Autrefois reliée à Avignon par son célèbre pont, la ville de Villeneuve-lez-Avignon ne manque pas de charme. Son fort a été construit pour affirmer la supériorité de la monarchie capétienne sur ses voisins avignonais. Il est admirablement conservé et constitue un ensemble significatif du degré de perfectionnement de l’architecture militaire. Dominant la chartreuse, il constitue un point de vue exceptionnel.",
  subtitle: "L’un des plus beaux points de vue sur la Cité des Papes",
  price: "Individuel : 6€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 5€",
  website: "http://www.fort-saint-andre.fr/",
  phone: "33 / (0)4 90 25 45 35",
  author_id: User.first.id,
  attribution: "CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=1095185"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Fort_Saint-André.JPG"), filename: "image.jpg")

Place.create(
  name: "Site archéologique de Glanum",
  address: "Site archéologique de Glanum Avenue Vincent Van Gogh 13210 Saint-Rémy-de-Provence",
  description: "A seulement 30 minutes d’Avignon, le charmant village de Saint-Rémy de Provence accueille les vestiges d’une cité aux influences grecques puis romaines. Ce site archéologique niché au coeur des Alpilles, cadre naturel exxceptionnel, offre un voyage dans le temps hors du commun. On y voit encore les grands monuments, disposés le long d’une rue centrale, qui caractérisent les cités de la Rome Impériale : les temples, la basilique, le Forum, la Curie, les thermes et les habitations.",
  subtitle: "D’importants vestiges grecs et romains au coeur des Alpilles",
  price: "Individuel : 8€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 6,50€",
  website: "http://www.site-glanum.fr/",
  phone: "33 / (0)4 90 92 23 79",
  author_id: User.first.id,
  attribution: "Par Rodrigue Eckert — Travail personnel, Domaine public, https://commons.wikimedia.org/w/index.php?curid=1520583"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Site_de_Glanum_Nord_2006-07-16.jpg"), filename: "image.jpg")

Place.create(
  name: "Abbaye de Montmajour",
  address: "Route de FONTVIEILLE 13200 Arles",
  description: "A quelques kilomètres d’Arles existait l’île du Mont Majour. C’est ici que fut édifié cet ensemble exceptionnel composé d’un édifice préroman, d’une abbatiale et d’un cloître construits par les moines bénédictins. Elle fut agrandie au XVIIIème siècle d’un second monastère monumental : le bâtiment Saint-Maur. Aujourd’hui le mont n’est plus une île mais conserve toute sa beauté et une vue unique sur le pays arlésien",
  subtitle: "Témoignage de huit siècles de vie monastique",
  price: "Individuel : 6€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 5€",
  website: "http://www.abbaye-montmajour.fr/",
  phone: "33 / (0)4 90 54 64 17",
  author_id: User.first.id,
  attribution: "CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=96374"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Montmajour-VueGénérale1.jpg"), filename: "image.jpg")

Place.create(
  name: "Tours et remparts d’Aigues-Mortes",
  address: "Tours et remparts d'Aigues-Mortes Logis du Gouverneur 30220 Aigues-Mortes",
  description: "A 45 minutes d’Arles, Saint-Louis a fondé la ville fortifiée d’Aigues-Mortes pour doter la France d’un port sur la Méditérranée. Le donjon, les remparts et les tours sont de véritables joyaux de l’architecture gothique. La terasse de la tour de Constance permet de découvrir un panorama grandiose, dominant la Camargue et les marais salants.",
  subtitle: "Les remparts de Saint-Louis au coeur de la Camargue",
  price: "Individuel : 8€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 6,50€",
  website: "http://www.aigues-mortes-monument.fr/",
  phone: "33 / (0)4 66 53 61 55",
  author_id: User.first.id,
  attribution: "Par Alainauzas — Travail personnel, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=59795326"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Aigues-Mortes_et_salins.jpg"), filename: "image.jpg")

Place.create(
  name: "Château d’If à Marseille",
  address: "8, rue Glandeves 13001 Marseille",
  description: "Il faut pénétrer dans la forteresse de l’île d’If pour découvrir ce site remarquable. Face à Marseille, elle a enfermé les prisonniers les plus célèbres de France tel que Mirabeau. Préservé dans son environnement et son architecture, il est connu dans le monde entier grâce au roman Le Comte de Monte Cristo d’Alexxandre Dumas.",
  subtitle: "Le célèbre fort immortalisé par le Comte de Monte Cristo",
  price: "Individuel : 6€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 5€",
  website: "http://www.chateau-if.fr/",
  phone: "33 / 06 03 06 25 26 / 06 80 52 75 96 / 04 91 59 02 30",
  author_id: User.first.id,
  attribution: "Par Jean-Marc Rosier http://www.cjrosier.com — Travail personnel, CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=1610961"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Monte-Cristo_if_castle_-_marseille_France_by_JM_Rosier.JPG"), filename: "image.jpg")

Place.create(
  name: "Panthéon",
  address: "Panthéon Place du Panthéon 75005 PARIS",
  description: "En créant une architecture religieuse exemplaire, Soufflot répondait au voeu de Louis XV de glorifier dignement la monarchie en la personne de Sainte Geneviève, patronne de Paris, à laquelle était dédié l’édifice. En 1791, la Révolution laïcise le monument qui devient le Panthéon national. Au XIXème siècle, il reçoit, au gré des régimes successifs, une affectation tantôt religieuse, tantôt patriotique. Depuis 1885, date de la panthéonisation de Victor Hugo, l’édifice est devenu le lieu où reposent les grands personnages de la patrie : Voltaire, Rousseau, Zola, Pierre et Maire Curie… Suite à une grande campagne de restauration, l’accès à la colonnade est désormais ouvert, découvrez une autre vue de Paris.",
  subtitle: "Un lieu consacré à la mémoire des hommes et des femmes qui ont crée les points d’appui de notre histoire depuis la Révolution",
  price: "Individuel : 11,50€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 9€",
  website: "http://www.paris-pantheon.fr/",
  phone: "33 / (0)1 44 32 18 00",
  author_id: User.first.id,
  attribution: "Par Chabe01 — Travail personnel, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=54342255"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Fronton_Panthéon_Paris_1.jpg"), filename: "image.jpg")

Place.create(
  name: "Arc de Triomphe",
  address: "Arc de triomphe 27, rue Vernet 75008 Paris",
  description: "En 1806, Napoléon Ier ordonne la construction de l’Arc de Triomphe en l’honneur de la Grande Armée. Inspiré des arts antiques, ce monument emblématique porte les noms illutres de la nation et abrite la tombe du soldat inconnu dont la flamme est ravivée tous les soirs. De la terasse, vous pourrez admirer, de jour comme de nuit, un panorama unique sur les Champs Élysées. Découvrez lors de la visite l’exposition « Soldats Inconnus ».",
  subtitle: "Un panorama unique sur les Champs Élysées",
  price: "Individuel : 13€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 11€",
  website: "http://www.paris-arc-de-triomphe.fr/",
  author_id: User.first.id,
  attribution: "Par Jiuguang Wang — Flickr: Arc de Triomphe, CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=33787667"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Arc_de_Triomphe,_Paris_21_October_2010.jpg"), filename: "image.jpg")

Place.create(
  name: "Château de Maisons",
  address: "2, avenue Carnot 78600 Maisons-Laffitte",
  description: "Dominant largement une boucle de la Seine, le château de Maisons a été construit au XVIIème siècle par le célèbre architecte François Mansart au sommet de son art : la majesté, la symétrie et l’équilibre des formes de cette demeure exemplaire en ont fait l’un des chefs-d’oeuvre de son temps. Sans ce château, Vaux le Viconte et Versailles n’existeraient pas. Le château, situé à proximité immédiate de la forêt de Saint-Germain, avait pour vocation de recevoir le roi. Louis XIV y résida ainsi à plusieurs reprises. Visite exceptionnelle : découvrez les petits appartements du château de Maisons !",
  subtitle: "Le château qui a inspiré les châteaux de Vaux-le-Vicomte et de Versailles",
  price: "Individuel : 8€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 6,50€",
  website: "http://www.chateau-maisons.fr/",
  phone: "33 / (0)1 39 62 01 49",
  author_id: User.first.id,
  attribution: "Par Moonik — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=19058066"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Château_de_Maisons-Laffitte_001.jpg"), filename: "image.jpg")

Place.create(
  name: "Villa Savoye",
  address: "82, rue de Villiers 78300 Poissy",
  description: "Chef-d’oeuvre de renomée internationale, la Villa Savoye dites « Les Heures Claires » a été construite par l’architecte Charles-Édouard Jeanneret, dit Le Corbusier, et Pierre Jeanneret, entre 1929 et 1931. Cette villa de week-end dont M et Mme Savoye étaient les commanditaires est considérée ajourd’hui comme une oeuvre iconique de l’architecture moderne.",
  subtitle: "Les bases de l’architecture moderne",
  price: "Individuel : 8€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 6,50€",
  website: "http://www.villa-savoye.fr/",
  phone: "33 / (0)1 39 65 01 06",
  author_id: User.first.id,
  attribution: "Par Photographie : Michal Lewi / Architectes : Le Corbusier († 1965) et Pierre Jeanneret († 1967) — Travail personnel de Michal Lewi, Image non libre, https://fr.wikipedia.org/w/index.php?curid=9805686"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/MarivelApp/app/assets/images/Villa_Savoye.jpg"), filename: "image.jpg")

Place.create(
  name: "Château d’Angers",
  address: "2, promenade du Bout du Monde 49100 Angers",
  description: "Ne vous laissez pas impressionner par l’austérité apparente de cette forteresse de schiste et de calcaire, ponctuée de 17 tours, que le jeune Saint-Louis fit édifier à la frontière de son royaume au XIIIème siècle. Franchissez le pont-levis et découvrez, à l’intérieur de l’enceinte, l’agréable résidence des ducs d’Anjou, composée de bâtiments de la fin de l’époque gothique et de jardins qui vous invitent à la flânerie. D’autres merveilles vous attendent dont l’exceptionnelle tenture de l’Apocalypse, qui par ses dimensions, sa technique et son ancienneté, est une oeuvre majeure de l’art médiéval.",
  subtitle: "La tapisserie de l’Apocalypse au cœur de la ville",
  price: "Individuel : 9,50€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 7,50€",
  website: "http://www.chateau-angers.fr/",
  phone: "33 / (0)2 41 86 48 77 // 33/ (0) 2 41 86 51 40 Pour les groupes adultes // 33/ (0) 2 41 86 48 79 Pour les groupes scolaires",
  author_id: User.first.id,
  attribution: "Par Mbzt — Travail personnel, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=48265876"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/P1310987_Angers_Maine_chateau_roi_Rene_rwk.jpg"), filename: "image.jpg")

Place.create(
  name: "Château d’Azay-le-Rideau",
  address: "19, rue Balzac 37190 Azay-le-Rideau",
  description: "Le château d’Azay-le-Rideau, édifié au cœur de la Touraine sous le règne de François 1er, offre tout le charme de la Renaissance. Chef-d’oeuvre de l’architecture du XVIème siècle, il se dresse sur une île dessinée par l’Indre et est entouré d’un parc romantique du XIXème siècle restauré en 2014. Après avoir bénéficié d »‘un exceptionnel programme de restauration, ce joyau du Val de Loire dévoile à l’été 2017 ses plus beaux atours. Le château offre aussi une nouvelle expérience : mise en valeur des collections, parcours de visite onirique, applications de visite embarquées, parc romantique… A ne pas manquer ! Le salon et la salle à manger des Marquis de Biencourt (décors du XIXème siècle), la mise en ambiance de la cuisine, le nouvel espace d’interprétation.",
  subtitle: "La perle romantique du Val de Loire se dévoile",
  price: "Individuel : 11,50€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 9€",
  website: "http://www.azay-le-rideau.fr/",
  phone: "33 / (0)2 47 45 42 04",
  author_id: User.first.id,
  attribution: "Par GuyFrancis — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=16744078"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/castle-of-azay-le-rideau-1122156_640.jpg"), filename: "image.jpg")

Place.create(
  name: "Cloître de la Psalette à Tours",
  address: "Cathédrale Saint-Gatien Place de la Cathédrale 37000 TOURS",
  description: "Le cloître de la Psalette adossé à la cathédrale de Tours est ainsi appelé car l’une des salles servait aux répétitions de chants religieux au Moyen Âge. Ce cloître est composé de trois galeries dont l’architecture est en partie flamboyante et en partie Renaissance, du scriptorium, de l’ancienne libraire et d’un escalier Renaissance. Le jardin du cloître a été restitué en 2014.",
  subtitle: "Un élégant édifice de la Renaissance",
  price: "Individuel : 4€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 3,5€",
  website: "http://www.cloitre-de-la-psalette.fr/",
  phone: "33 / (0)2 47 47 05 19",
  author_id: User.first.id,
  attribution: "Par © Croquant / Wikimedia Commons, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=10752024"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Tours_escalier_du_cloître_de_la_Psalette.jpg"), filename: "image.jpg")

Place.create(
  name: "Château de Fougères-sur-Bièvre",
  address: "Château de Fougères-sur-Bièvre",
  description: "Petit château fort édifié dans la seconde moitié du XVème siècle et au début du XVIème siècle, Fougères présente une imposante courtine d’entrée à mâchicoulis, un chemin de ronde et un donjon. Par le choix des matériaux et des techniques, ce château est l’illustration parfaite de l’art de bâtir du terroir. Au XVIème siècle, une galerie à arcades, inspirée de celle du château de Blois, signe de l’essor de la Renaissance. Les charpentes du château sont ouvertes à la visite. Profitez d’une mise en lumière du château tous les soirs de l’année. N’oubliez pas de visiter le jardin d’inspiration médiévale.",
  subtitle: "Un petit château fort illustrant l’art de bâtir du terroir",
  price: "Individuel : 6€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 5€",
  website: "http://www.fougeres-sur-bievre.fr/",
  phone: "33 / (0)2 54 20 27 18",
  author_id: User.first.id,
  attribution: "Par Gerd Eichmann — Travail personnel, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=79593098"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Château_de_Fougères-sur-Bièvre-128-Laube-2008-gje.jpg"), filename: "image.jpg")

Place.create(
  name: "Château de Talcy",
  address: "Château de Talcy 41370 TALCY",
  description: "À 25 km de Blois, les toits effilés du château de Talcy émergent des plaintes céréalières de la petite Beauce. Le puit, les communs pourvus d’un pressoir et d’un colombier et le jardin réhabilité en verger de collection soulignent le caractère agricole du domaine. Le château a conservé l’aspect intérieur et les meubles qu’il avait au XVIIIème siècle. Ronsard y fut épris de Cassandre, fille du propriétaire et banquier italien Bernard Salviati, qui lui inspira le célébre poème Mignonne, allons voir…",
  subtitle: "Un petit joyau dans l’ombre des grands",
  price: "Individuel : 6€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 5€",
  website: "http://www.chateau-talcy.fr/",
  phone: "33 / (0)2 54 81 03 01",
  author_id: User.first.id,
  attribution: "Par I, Patrick GIRAUD, CC BY 2.5, https://commons.wikimedia.org/w/index.php?curid=2735422"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Castle_of_Talcy_01.jpg"), filename: "image.jpg")

Place.create(
  name: "Tour Pey-Berland",
  address: "Tour Pey-Berland Place Pey-Berland 33000 Bordeaux",
  description: "Fleuron du gothique flamboyant, la tour Pey-Berland est le clocher de la cathédrale de Bordeaux, dont elle est séparée pour ne pas menacer sa structure. Elle renferme des cloches imposantes et est surmontée d’une Vierge dorée depuis le XIXème siècle. À 50 mètres de haut, ses deux terrasses proposent une vue à 360° sur la ville, et présentent son histoire et ses monuments. À ne pas manquer ! Une visite privée avec apéritif en dehors des horaires d’ouverture de mai à octobre.",
  subtitle: "Un panorama unique en plein centre de Bordeaux",
  price: "Individuel : 6€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 5€",
  website: "http://www.pey-berland.fr/",
  phone: "33 / (0)5 56 81 26 25",
  author_id: User.first.id,
  attribution: "Par Olivier Aumage — Photo taken by Olivier Aumage, CC BY-SA 2.0 fr, https://commons.wikimedia.org/w/index.php?curid=168977"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Bordeaux_Tour_Pey_Berland_statue.jpg"), filename: "image.jpg")

Place.create(
  name: "Grotte de Pair-non-Pair",
  address: "Grotte de Pair-non-Pair 2, chemin de Pair non Pair 33710 Prignac et Marcamps",
  description: "Tout près de l’estuaire de la Gironde, découvrez Pair-non-Pair, une des plus anciennes grottes ornées au monde. Ce témoignage émouvant de l’éveil artistique de l’humanité est aussi un haut lieu de la recherche scientifique. Découverte en 1881, elle est ornée de gravures (chevaux, bouquetins, cervidés, mammouths, bovidés) qui sont parmi les plus anciennes expressions artistiques de l’homme de la Préhistoire (entre 33000 et 26000 ans). Un espace muséographique complète la visite par la présentation d’objets préhistoriques découverts sur place.",
  subtitle: "La grotte préhistorique de Gironde",
  price: "Individuel : 8€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 6,50€",
  website: "http://www.pair-non-pair.fr/",
  phone: "33 / (0)5 57 68 33 40",
  author_id: User.first.id,
  attribution: "Par Xabi Rome-Hérault, CC BY 3.0, https://commons.wikimedia.org/w/index.php?curid=3565987"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Entrée_de_Pair-non-Pair.jpg"), filename: "image.jpg")

Place.create(
  name: "Abbaye de la Sauve Majeure",
  address: "14, rue de l'abbaye 33670 La Sauve",
  description: "À 25 km de Bordeaux, dans la Toscane girondine entre Dordogne et Garonne, La Sauve-Majeure constitue un des plus beaux exemples de l’architecture et de la sculpture romane du Sud-Ouest. Édifié au XIIème siècle, ce centre religieux majeur étend ses possessions en Europe occidentale et devient une halte vers Saint-Jacques-de-Compostelle. Son cadre romantique présente des chapiteaux et des vestiges exceptionnels sur un site préservé, ainsi qu’une vue remarquable sur le paysage environnant.",
  subtitle: "Chef d’oeuvre de l’art roman et site paysager",
  price: "Individuel : 6€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 5€",
  website: "http://www.abbaye-la-sauve-majeure.fr/",
  phone: "33 / (0)5 56 23 01 55",
  author_id: User.first.id,
  attribution: "Par William Ellison — Travail personnel, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=41822844"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Abbaye_de_La_Sauve_01.JPG"), filename: "image.jpg")

Place.create(
  name: "Château de Cadillac",
  address: "4, place de la Libération 33410 Cadillac-sur-Garonne",
  description: "En bord de Garonne à 40 minutes de Bordeaux par autoroute, ce château d’apparat incarne la toute-puissance du 1er duc d’Epernon, cadet de Gascogne projeté favori d’Henri III. Engagée sous Henri IV (que le duc côtoie lors de son assassinat par Ravaillac), cette résidence qui recevra Louis XIII, Anne d’Autriche, Richelieu et Louis XIV est un des premiers exemples d’architecture à la française. Cheminées monumentales, plafonds peints, tapisseries d’époque jalonnent ses riches décors, qui portent aussi des traces d’une longue occupation carcérale du XIXème siècle à 1950.",
  subtitle: "Du Grand Siècle à la prison : un château, deux histoires",
  price: "Individuel : 6€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 5€",
  website: "http://www.chateau-cadillac.fr/",
  phone: "33 / (0)5 56 62 69 58",
  author_id: User.first.id,
  attribution: "Par William corby — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=16703738"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Château_des_ducs_d'Epernon_à_Cadillac.jpg"), filename: "image.jpg")

Place.create(
  name: "Site archéologique de Montcaret",
  address: "Site archéologique de Montcaret Le Bourg 24230 Montcaret",
  description: "Les vestiges des 1er-5ème siècles réoccupés au moyen âge apartiennent à la partie résidentielle d’une demeure aristocratique gallo-romaine rurale (une villa). La partie la mieux conservée de cet ensemble présente une pièce de plan polylobée de 60 m2 au sol mosaïqué, probablement une salle à manger, greffée sur une salle d’apparat de 320 m2. L’intérêt du site réside dans la richesse des mosaïques et dans la durée d’occupation ininterrompue depuis l’Antiquité jusqu’à nos jours.",
  subtitle: "Les mosaïques gallo-romaines de Dordogne",
  price: "Individuel : 4€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 3,50€",
  website: "http://www.villa-montcaret.fr/",
  phone: "33 / (0)5 53 58 50 18",
  author_id: User.first.id,
  attribution: "Par Philippe Berthé — https://regards.monuments-nationaux.fr/fr/feature/483/la-villa-gallo-romaine-de-montcaret/page/1/nobc/1, Licence Ouverte, https://commons.wikimedia.org/w/index.php?curid=89030333"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/1485px-Villa_gallo-romaine_de_Montcaret,_piscine_froide_des_thermes_(phbw09_8383).jpg"), filename: "image.jpg")

Place.create(
  name: "Château et remparts de Carcassonne",
  address: "1, rue Violet-le-Duc 11000 Carcassonne",
  description: "Occupée dès le VIème siècle avant Jésus-Christ, Carcassonne a été une ville romaine, fortifiée au IVème siècle, avant de devenir la typique cité médiévale que l’on connait. Restaurée par Violet-le-Duc au XIXème siècle, la cité témoigne de 1000 ans d’architecture militaire et de 250 ans d’histoire. Visionnez un film de 12 minutes alliant images 3D et prises de vue réelles ; parcourez les chemins de ronde, les hourds et les remparts ; découvrez les salles du musée archéologiques et de nombreux espaces exclusifs. Et découvrez la légende la Dame Carcas. Princesse à la tête des chevaliers de la Cité de Carcassone alors aux mains des Sarrasins et assiégée par Charlemagne, voyant les vivres s’amenuiser et la famine avoir raison de ses défenseurs, elle eut l’idée de nourrir un porc avec du blé puis le jeta par-dessus les remparts. Charlemagne et ses hommes imaginant avec horreur que la Cité débordait encore de provisions malgré les six années de siège pour que l’on gâcha du blé en le donnant aux bêtes, décidèrent de quitter la plaine. Dame Carcas fit alors sonner les trompettes « Carcas sonne! » et convint d’une paix avec le souverain. Cette légende, inspirée des chansons de gestes médiévales, est bien entendu fausse. Charlemagne n’a jamais assiégé Carcassonne !",
  subtitle: "Une place forte exceptionnelle et universelle",
  price: "Individuel : 9,50€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 7,50€",
  website: "http://www.remparts-carcassonne.fr/",
  phone: "33 / (0)4 68 11 70 70",
  author_id: User.first.id,
  attribution: "Par Chensiyuan — Travail personnel, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=50100276"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/1831px-1_carcassonne_aerial_2016.jpg"), filename: "image.jpg")

Place.create(
  name: "Forteresse de Salses",
  address: "Forteresse de Salses 66600 SALSES-LE-CHÂTEAU",
  description: "À 15 km de Perpignan, visitez la forteresse de Salses, un exemple unique d’architecture militaire, entre château fort et bastion moderne. Découvrez au sein du monument du XVème siècle le dialogue surprenant entre le lieu et des installations d’artistes contemporains majeurs.",
  subtitle: "Salses, la forteresse de l’intérieur",
  price: "Individuel : 8€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 6,50€",
  website: "http://www.forteresse-salses.fr/",
  phone: "33 / (0)4 68 38 60 13",
  author_id: User.first.id,
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Salses_Forteresse_vue_du_sol_02.jpg"), filename: "image.jpg")

Place.create(
  name: "Site archéologique d’Ensérune",
  address: "Site archéologique d'Ensérune 34440 Nissan-lez-Ensérune",
  description: "À une dizaine de kilomètres de Béziers, entre garrigue languedocienne et rivages méditerranéens, visitez le site archéologique d’Ensérune et découvrez un village gaulois parmi les plus importants du Midi. Les fouilles, réalisées depuis 1915, ont mis au jour les vestiges d’un habitat qui remonte au milieu du VIème siècle avant Jésus-Christ et se poursuit jusqu’au début du Ier siècle de notre ère.",
  subtitle: "L’un des sites archéologiques les plus importants du Midi-méditerranéen",
  price: "Individuel : 4€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 3,50€",
  website: "http://www.enserune.fr/",
  phone: "33 / (0)4 67 37 01 23",
  author_id: User.first.id,
  attribution: "Par Totor-22 — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=11939960"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Enserune-Montady-01.JPG"), filename: "image.jpg")

Place.create(
  name: "Villa Cavrois",
  address: "60 Avenue Kennedy 59170 Croix",
  description: "Achevée en 1932, la Villa Cavrois est une demeure familiale, commandée à l’architecte Robert Mallet-Stevens, figure du courant moderniste. Obéissant à un programme précis, cette villa concentre alors toutes les technologies avancées de l’époque et constitue un choc esthétique dont les effets sont encore perceptibles aujourd’hui. L’intérieur de la Villa, entièrement traité avec des matériaux luxueux comme le marbre, le bois exotique, l’aluminium poli, est aménagé avec du mobilier dessiné par Mallet-Stevens, qui a également signé la conception paysagère du parc. Visitez la Villa autrement avec l’application de visite : la Villa s’offre à vous dans son état meublé de 1932 grâce à une reconstitution 3D unique !",
  subtitle: "Près de Lille, un véritable château moderne à découvrir",
  price: "Individuel : 9,50€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 7,50€",
  website: "http://www.villa-cavrois.fr/",
  phone: "+33 / (0)3 20 73 47 12",
  author_id: User.first.id,
  attribution: "Par Jean-Pierre Dalbéra — https://www.flickr.com/photos/dalbera/20513987475, Image non libre, https://fr.wikipedia.org/w/index.php?curid=12493365"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/MarivelApp/app/assets/images/Villa_Cavrois_Image_Facade_Sud.jpg"), filename: "image.jpg")

Place.create(
  name: "La villa Kérylos",
  address: "Impasse Gustave Eiffel 06310 Beaulieu-sur-Mer",
  description: "Une somptueuse villa, inspirée de la Grèce antique, commandée par Théodore Reinach en 1902, à la Belle Époque. Homme de lettre érudit, à la fois archéologue, académicien et député, Théodore Reinach a souhaité vivre et recevoir ses hôtes dans une reconstitution originale d’un luxueux palais grec du 2ème siècle avant Jésus-Christ intégrant tout le confort moderne de son époque. Balcon sur la mer Méditérranée, la villa est située entre Nice et Moncao dans la magnifique baie de Beaulieu-sur-Mer. Entourée d’un charmant jardin littoral, c’est un décor extraordinaire, entièrement meublé, orné de tissus, de fresques et de mosaïques, tout à fait unique, qui nous permet de découvrir et d’apprécier l’art de vivre et le raffinement de la civilisation grecque.",
  subtitle: "Une véritable invitation au voyage",
  price: "Individuel : 11,50€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 9€",
  website: "http://www.villakerylos.fr/",
  phone: "+33 / (0)3 20 73 47 12",
  author_id: User.first.id,
  attribution: "Par Berthold Werner — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=15718919"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/MarivelApp/app/assets/images/Villa_Kerylos_BW_2011-06-10_11-56-07.JPG"), filename: "image.jpg")

Place.create(
  name: "Château de Montal",
  address: "Château de Montal 46400 Saint-Jean Lespinasse",
  description: "Dès 1938, devant les menaces de guerre, l’administration française envisage l’évacuation d’oeuvres d’art majeures. Le déplacement de la Joconde du Musée du Louvres se fait dès le 28 août 1939. Le château de Montal, situé dans le Lot, offre des atouts non négligeables pour l’accueillir : risques d’incendies limités, vastes salles voutées en rez-de-chaussé. Le 13 mars 1943, une modeste caisse immatriculée MNLP0 arrive à Montal. ll s’agit de la Joconde ! En juillet 1944, craignant les bombardements alliés, l’équipe du château de Montal inscrit dans le pré jouxtant le monument « Musée du Louvres » en grandes lettres blanches. Le château de Montal ne sera jamais bombardé et, le 15 juin 1945, les oeuvres reprendront le chemin de la capital!",
  subtitle: "Mona Lisa, le chef d’oeuvre en péril",
  price: "Individuel : 8€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 6,50€",
  website: "http://www.chateau-montal.fr/",
  phone: "05 65 38 13 72",
  author_id: User.first.id,
  attribution: "Par MOSSOT — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=9287335"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Château_de_Montal_-2.jpg"), filename: "image.jpg")

Place.create(
  name: "Château d’Oiron",
  address: "Château d'Oiron 79100 Oiron",
  description: "En 1666, Madame de Montespan rencontre Louis XIV. Elle ne tarde pas à devenir une de ses favorites alors que son mari, le marquis de Montespan, un peu trop véhément, est exilé sur ses terres gasconnes. Quelques années plus tard, c’est la disgrâce. Madame de Montespan quitte la cour et renvoie au roi un des colliers de perles qu’il lui avait offert. En échange, elle reçoit 100 000 livres pour l’acquisition des terres du Château d’Oiron. Le Château d’Oiron abrite aujourd’hui la collection d’art contemporain Curios & Mirabilia, librement conçue sur le thème du cabinet de curiosité.",
  subtitle: "Madame de Montespan, la favorite déchue",
  price: "Individuel : 8€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 6,50€",
  website: "http://www.chateau-oiron.fr/",
  phone: "33 / (0)5 49 96 51 25",
  author_id: User.first.id,
  attribution: "Par Père Igor — Travail personnel, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=4408753"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Oiron_château.JPG"), filename: "image.jpg")

Place.create(
  name: "Domaine de George Sand",
  address: "2 Place Sainte-Anne 36400 Nohant-Vic",
  description: "Aurore Dupin, alias George Sand, est élevée à Nohant, dans la maison de sa grand-mère. Elle aimait échapper au tumulte parisien et venait fréquemment s’y réfugier. La maison conserve encore aujourd’hui le mobilier et les objets de l’écrivain. Le jardin qui entoure la maison témoigne également de la riche personnalité de George Sand et de son attachement à la nature. De grands artistes comme Balzac, Flaubert, ses amis, étaient souvent invités à partager ses journées studieuses. Le domaine et sa région, sources d’inspiration, trouvent d’ailleurs une grande place dans son oeuvre.",
  subtitle: "L’écrivain et ses hôtes célèbres",
  price: "Individuel : 8€",
  price_2: "Tarif professionnels du tourisme ou groupes à partir de 20 personnes : 6,50€",
  website: "http://www.maison-george-sand.fr/",
  phone: "33 / (0)2 54 31 06 04",
  author_id: User.first.id
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/George_Sand_House_Cover_Shot.jpg"), filename: "image.jpg")

Place.create(
  name: "Île de la Cité",
  address: "1 boulevard du Palais, Paris",
  description: "Depuis l’incendie de la Cathédrale Notre-Dame de Paris le 15 avril 2019, le bâtiment et ses abords sont fermés au public. Néanmoins, n’hésitez-pas à venir contempler la Cathédrale et à parcourir les petites rues de l’île de la Cité. La promenade reste un moment magique et mémorable. À quelques mètres, se trouve la Sainte-Chapelle, joyau du gothique rayonnant édifié par Saint Louis au coeur de l'ancien Palais de la Cité. Découvrez ses vitraux uniques qui nimbent l'air de couleurs et de lumière et qui ont abrité la Couronne d'Épines du Christ. Poursuivez votre escapade en visitant la Conciergerie, composée d'exceptionnelles salles gothiques du premier palais royal parisien et qui fut par la suite la prison du tribunal révolutionnaire. A la fin du XVIIème siècle, de nombreux prévenus y furent incarcérées, dont Marie-Antoinette.",
  author_id: User.first.id,
  attribution: "Par Daniel Vorndran / DXR, CC BY-SA 3.0, https://commons.wikimedia.org/w/index.php?curid=31704254"
).place_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/1280px-Île_de_la_Cité_shortly_before_sunrise,_West_View_140320_1.jpg"), filename: "image.jpg")

Trip.create(
  title: "Le long du Rhône et de la Saône",
  description: "Un voyage à travers les époques et les paysages entre Bourgogne et Méditerranée. Les monuments historiques sont une porte d'entrée pour découvrir la richesse du patrimoine et de la nature du sud-est de l'Hexagone.",
  category_id: Category.first.id,
  author_id: User.where(first_name:"CMN").ids[0],
  online: true
).trip_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Monte-Cristo_if_castle_-_marseille_France_by_JM_Rosier.JPG"), filename: "image.jpg")

Trip.create(
  title: "Le long de la Seine",
  description: "C’est au bord de la Seine, sur l’ile de la Cité, que Paris est né. Les monuments les plus emblématiques de la capitale forment un décor majestueux. En suivant le cours du fleuve, d’autres monuments remarquables sont à découvrir.",
  category_id: Category.first.id,
  author_id: User.where(first_name:"CMN").ids[0],
  online: true
).trip_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/BastilleDay_PatrouilleDeFrance_(pixinn.net).jpg"), filename: "image.jpg")

Trip.create(
  title: "Le long de la Loire",
  description: "Le long de la Loire, ce sont des merveilles architecturales de la Renaissance que l’on découvre en parcourant les routes de cette ancienne région royale. La maison des Valois y a importé un art de vivre inspiré de l’Italie en faisant venir artistes et artisans. Cette période nous a légué une densité exceptionnelle de monuments remarquables, qui ont valu au Val de Loire son inscription au patrimoine mondial de l’Unesco.",
  category_id: Category.first.id,
  author_id: User.where(first_name:"CMN").ids[0],
  online: true
).trip_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Basse-indre_loire.jpg"), filename: "image.jpg")

Trip.create(
  title: "Le long de la Garonne et de la Dordogne",
  description: "Une région qui a bien plus que des vignobles à offrir. En témoignent ces lieux qui ont traversé le temps depuis la préhistoire jusqu’à nous pour enchanter les routes de ce beau pays.",
  category_id: Category.first.id,
  author_id: User.where(first_name:"CMN").ids[0],
  online: true
).trip_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Château_des_ducs_d'Epernon_à_Cadillac.jpg"), filename: "image.jpg")

Trip.create(
  title: "Le long du canal du Midi",
  description: "Châteaux et sites archéologiques jalonnent le tracé de ce chef-d’oeuvre du XVIIème siècle, qui révolutionna le transport fluvial et la navigation dans le Midi. Suivre son cours, c’est plonger dans la richesse historique et naturelle de cette région aux couleurs et aux paysages merveilleux.",
  category_id: Category.first.id,
  author_id: User.where(first_name:"CMN").ids[0],
  online: true
).trip_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Canal du Midi.jpg"), filename: "image.jpg")

Trip.create(
  title: "Trois villas des années 30",
  description: "Trois villas historiques pour parcourir la France du Nord au Sud, ou du Sud au Nord. Trois architectes qui ont marqué au-delà de leur temps pour façonner la modernité et bouleverser la façon « d’habiter ».",
  category_id: Category.first.id,
  author_id: User.where(first_name:"CMN").ids[0],
  online: true
).trip_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/MarivelApp/app/assets/images/Villa_Cavrois_Image_Facade_Sud.jpg"), filename: "image.jpg")

Trip.create(
  title: "Elles ont fait l’Histoire",
  description: "La science, l’amour, la guerre, les arts et la politique. Les femmes ont fait l’Histoire de France ; les monuments historiques en témoignent.",
  category_id: Category.first.id,
  author_id: User.where(first_name:"CMN").ids[0],
  online: true
).trip_picture.attach(io: File.open("/Users/mikael/Documents/Projet ESUS/MARIVEL/DESIGN/Photos/Fronton_Panthéon_Paris_1.jpg"), filename: "image.jpg")

# Itinéraire Le long du Rhône et de la Saône
TripWaypoint.create(
  place_id: Place.find(1).id,
  trip_id: Trip.find(1).id,
  rank: 1
)

TripWaypoint.create(
  place_id: Place.find(2).id,
  trip_id: Trip.find(1).id,
  rank: 2
)

TripWaypoint.create(
  place_id: Place.find(3).id,
  trip_id: Trip.find(1).id,
  rank: 3
)

TripWaypoint.create(
  place_id: Place.find(4).id,
  trip_id: Trip.find(1).id,
  rank: 4
)

TripWaypoint.create(
  place_id: Place.find(5).id,
  trip_id: Trip.find(1).id,
  rank: 5
)

TripWaypoint.create(
  place_id: Place.find(6).id,
  trip_id: Trip.find(1).id,
  rank: 6
)

TripWaypoint.create(
  place_id: Place.find(7).id,
  trip_id: Trip.find(1).id,
  rank: 7
)

# Itinéraire Le long de la Seine
TripWaypoint.create(
  place_id: Place.find(30).id,
  trip_id: Trip.find(2).id,
  rank: 1
)

TripWaypoint.create(
  place_id: Place.find(8).id,
  trip_id: Trip.find(2).id,
  rank: 2
)

TripWaypoint.create(
  place_id: Place.find(9).id,
  trip_id: Trip.find(2).id,
  rank: 3
)

TripWaypoint.create(
  place_id: Place.find(10).id,
  trip_id: Trip.find(2).id,
  rank: 4
)

TripWaypoint.create(
  place_id: Place.find(11).id,
  trip_id: Trip.find(2).id,
  rank: 5
)

# Itinéraire Le long de la Loire
TripWaypoint.create(
  place_id: Place.find(12).id,
  trip_id: Trip.find(3).id,
  rank: 1
)

TripWaypoint.create(
  place_id: Place.find(13).id,
  trip_id: Trip.find(3).id,
  rank: 2
)

TripWaypoint.create(
  place_id: Place.find(14).id,
  trip_id: Trip.find(3).id,
  rank: 3
)

TripWaypoint.create(
  place_id: Place.find(15).id,
  trip_id: Trip.find(3).id,
  rank: 4
)

TripWaypoint.create(
  place_id: Place.find(16).id,
  trip_id: Trip.find(3).id,
  rank: 5
)

# Itinéraire Le long de la Garonne et de la Dordogne
TripWaypoint.create(
  place_id: Place.find(17).id,
  trip_id: Trip.find(4).id,
  rank: 1
)

TripWaypoint.create(
  place_id: Place.find(18).id,
  trip_id: Trip.find(4).id,
  rank: 2
)

TripWaypoint.create(
  place_id: Place.find(19).id,
  trip_id: Trip.find(4).id,
  rank: 3
)

TripWaypoint.create(
  place_id: Place.find(20).id,
  trip_id: Trip.find(4).id,
  rank: 4
)

TripWaypoint.create(
  place_id: Place.find(21).id,
  trip_id: Trip.find(4).id,
  rank: 5
)

# Itinéraire Le long du canal du Midi
TripWaypoint.create(
  place_id: Place.find(22).id,
  trip_id: Trip.find(5).id,
  rank: 1
)

TripWaypoint.create(
  place_id: Place.find(23).id,
  trip_id: Trip.find(5).id,
  rank: 2
)

TripWaypoint.create(
  place_id: Place.find(24).id,
  trip_id: Trip.find(5).id,
  rank: 3
)

TripWaypoint.create(
  place_id: Place.find(6).id,
  trip_id: Trip.find(5).id,
  rank: 4
)

TripWaypoint.create(
  place_id: Place.find(5).id,
  trip_id: Trip.find(5).id,
  rank: 5
)

TripWaypoint.create(
  place_id: Place.find(4).id,
  trip_id: Trip.find(5).id,
  rank: 6
)

TripWaypoint.create(
  place_id: Place.find(3).id,
  trip_id: Trip.find(5).id,
  rank: 7
)

# Itinéraire Trois villas des années 30
TripWaypoint.create(
  place_id: Place.find(25).id,
  trip_id: Trip.find(6).id,
  rank: 1
)

TripWaypoint.create(
  place_id: Place.find(11).id,
  trip_id: Trip.find(6).id,
  rank: 2
)

TripWaypoint.create(
  place_id: Place.find(26).id,
  trip_id: Trip.find(6).id,
  rank: 3
)

# Itinéraire Elles ont fait l'histoire
TripWaypoint.create(
  place_id: Place.find(8).id,
  trip_id: Trip.find(7).id,
  rank: 1
)

TripWaypoint.create(
  place_id: Place.find(2).id,
  trip_id: Trip.find(7).id,
  rank: 2
)

TripWaypoint.create(
  place_id: Place.find(22).id,
  trip_id: Trip.find(7).id,
  rank: 3
)

TripWaypoint.create(
  place_id: Place.find(27).id,
  trip_id: Trip.find(7).id,
  rank: 4
)

TripWaypoint.create(
  place_id: Place.find(28).id,
  trip_id: Trip.find(7).id,
  rank: 5
)

TripWaypoint.create(
  place_id: Place.find(29).id,
  trip_id: Trip.find(7).id,
  rank: 6
)
