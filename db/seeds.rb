# Destroy_all
ThesisDiplomaSubcategory.destroy_all
DiplomaSubcategory.destroy_all
SchoolSubcategory.destroy_all
ThesisDiploma.destroy_all
SchoolDiploma.destroy_all
# ThesisTag.destroy_all
Subcategory.destroy_all
Thesis.destroy_all
User.destroy_all
School.destroy_all
Category.destroy_all
Diploma.destroy_all
# Tag.destroy_all


# schools table

school1 = School.create!(
  name: "École Supérieure d’Art et de Design d’Amiens",
  acronym: "ÉSAD",
  address_1: "40 rue des Teinturiers",
  address_2: "",
  zipcode: "80080",
  city: "Amiens",
  country: "France",
  website: "www.esad-amiens.fr",
  phone_number: "+33 3 22 66 49 90"
)
school2 = School.create!(
  name: "Haute École des Arts du Rhin",
  acronym: "HEAR",
  address_1: "1 rue de l’Académie",
  address_2: "CS 10032",
  zipcode: "67000",
  city: "Strasbourg",
  country: "France",
  website: "www.hear.fr",
  phone_number: "+33 3 69 06 37 77"
)
school3 = School.create!(
  name: "École Nationale Supérieure des Arts Décoratifs",
  acronym: "ENSAD",
  address_1: "31 rue d’Ulm",
  address_2: "",
  zipcode: "75005",
  city: "Paris",
  country: "France",
  website: "www.ensad.fr",
  phone_number: "+33 1 42 34 97 00"
)
school4 = School.create!(
  name: "École Estienne",
  acronym: "",
  address_1: "18 boulevard Auguste-Blanqui",
  address_2: "",
  zipcode: "75013",
  city: "Paris",
  country: "France",
  website: "www.ecole-estienne.paris",
  phone_number: "+33 1 55 43 47 47"
)

puts "✓ schools table seeded"


# diplomas table

dna = Diploma.create!(
  name: "Diplôme national d’art",
  acronym: "DNA",
  degree: "1"
)
dnap = Diploma.create!(
  name: "Diplôme national d’art plastique",
  acronym: "DNAP",
  degree: "1"
)
dnat = Diploma.create!(
  name: "Diplôme national d’arts et techniques",
  acronym: "DNAT",
  degree: "1"
)
dnsep = Diploma.create!(
  name: "Diplôme national supérieur d’expression plastique",
  acronym: "DNSEP",
  degree: "2"
)
ensba = Diploma.create!(
  name: "Diplôme d’école ENSBA",
  acronym: "",
  degree: "2"
)
ensad = Diploma.create!(
  name: "Diplôme d’école ENSAD",
  acronym: "",
  degree: "2"
)
enspArles = Diploma.create!(
  name: "Diplôme d’école ENSP Arles",
  acronym: "",
  degree: "2"
)
ensci = Diploma.create!(
  name: "Diplôme d’école ENSCI",
  acronym: "",
  degree: "2"
)
dsaa = Diploma.create!(
  name: "Diplôme supérieur d’arts appliqués",
  acronym: "DSAA",
  degree: "2"
)
cim1 = Diploma.create!(
  name: "Composition et interprétation musicale",
  acronym: "CIM",
  degree: "1"
)
cim2 = Diploma.create!(
  name: "Composition et interprétation musicale",
  acronym: "CIM",
  degree: "2"
)
de = Diploma.create!(
  name: "Diplôme d’état",
  acronym: "DE",
  degree: "1"
)

puts "✓ diplomas table seeded"


# categories table

category1 = Category.create!(name: "architecture")
category2 = Category.create!(name: "patrimoines")
category3 = Category.create!(name: "arts plastiques")
category4 = Category.create!(name: "spectacle vivant")
category5 = Category.create!(name: "cinéma et audiovisuel")
category6 = Category.create!(name: "livre")
category7 = Category.create!(name: "presse")
category8 = Category.create!(name: "gestion et médiation")

puts "✓ categories table seede"


# tags table

# tag1  = Tag.create!(name: "mix")
# tag2  = Tag.create!(name: "culture")
# tag3  = Tag.create!(name: "DJing")
# tag4  = Tag.create!(name: "radio")
# tag5  = Tag.create!(name: "curating")
# tag6  = Tag.create!(name: "commissaire d’exposition")
# tag7  = Tag.create!(name: "processus créatif")
# tag8  = Tag.create!(name: "editing")
# tag9  = Tag.create!(name: "montage")
# tag10 = Tag.create!(name: "cut")
# tag11 = Tag.create!(name: "ellipse")
# tag12 = Tag.create!(name: "cinéma")
# tag13 = Tag.create!(name: "BD")
# tag14 = Tag.create!(name: "narration")
# tag15 = Tag.create!(name: "éclectisme")
# tag16 = Tag.create!(name: "internet")
# tag17 = Tag.create!(name: "web")
# tag18 = Tag.create!(name: "folksonomie")
# tag19 = Tag.create!(name: "Google")
# tag20 = Tag.create!(name: "sérendipité")
# tag21 = Tag.create!(name: "média")
# tag22 = Tag.create!(name: "art contemporain")
# tag23 = Tag.create!(name: "comportement")
# tag24 = Tag.create!(name: "lecture")
# tag25 = Tag.create!(name: "traduction")
# tag26 = Tag.create!(name: "écrit")
# tag27 = Tag.create!(name: "langage")
# tag28 = Tag.create!(name: "ponctuation")
# tag29 = Tag.create!(name: "communication")
# tag30 = Tag.create!(name: "poésie")
# tag31 = Tag.create!(name: "réseau")
# tag32 = Tag.create!(name: "livre")
# tag33 = Tag.create!(name: "rhizome")

# puts "✓ tags table seeded"


# users table

user1 = User.create!(
  email: "timotheegoguely@gmail.com",
  first_name: "Timothée",
  last_name: "Goguely",
  bio: "Freelance UI/UX designer",
  birthdate: DateTime.new(1991,8,12),
  website: "http://timothee.goguely.com",
  school_id: school1.id,
  admin: true
)
user2 = User.create!(
  email: "margotcannizzo@gmail.com",
  first_name: "Margot",
  last_name: "Cannizzo",
  bio: "Graphiste / scénographe chez agnès b.",
  birthdate: DateTime.new(1989,9,12),
  website: "http://margotcannizzo.tumblr.com/",
  school_id: school2.id
)
user3 = User.create!(
  email: "stmartin.geoffrey@gmail.com",
  first_name: "Geoffrey",
  last_name: "Saint-Martin",
  bio: "Graphiste freelance",
  birthdate: DateTime.new(1989),
  website: "http://www.geoffrey-st-martin.fr/",
  school_id: school1.id
)
user4 = User.create!(
  email: "quentin.schmerber@gmail.com",
  first_name: "Quentin",
  last_name: "Schmerber",
  bio: "Hello I’m Quentin. I design books, lettering and typefaces.",
  birthdate: DateTime.new(1991,1,1),
  website: "http://www.quentin-s.ch/",
  school_id: school1.id
)
user5 = User.create!(
  email: "antoine.omerin@gmail.com",
  first_name: "Antoine",
  last_name: "Omerin",
  bio: "Photographe",
  birthdate: DateTime.new(1990,1,1),
  website: "http://antoineomerin.tumblr.com/",
  school_id: school3.id
)
user6 = User.create!(
  email: "hello@lenarobin.com",
  first_name: "Lena",
  last_name: "Robin",
  bio: "Hello! My name is Léna Robin, I am an independent graphic designer.
    I graduated with a Master’s degree in Graphic Communication from Haute École
    des Arts du Rhin (Strasbourg) and with a Bachelor from École Estienne (Paris).\n\n

    I design books, posters, websites but also less conventional visual products.
    I’m interested in collective works and public space, order and disorder,
    information media, Internet and hybrid publishing.\n\n

    I currently work for the Institute of Network Cultures, at the PublishingLab
    department in Amsterdam.",
  birthdate: DateTime.new(1989,1,1),
  website: "http://lenarobin.com/",
  school_id: school2.id
)
user7 = User.create!(
  email: "martawajszczyk@gmail.com",
  first_name: "Marta",
  last_name: "Wajszczyk",
  bio: "Graphic Designer / Art Director w MOVE-PICTURE",
  birthdate: DateTime.new(1986,1,1),
  website: "",
  school_id: school1.id
)
user8 = User.create!(
  email: "morgannlechat@gmail.com",
  first_name: "Antoine",
  last_name: "Stevenot",
  bio: "Designer graphique",
  birthdate: DateTime.new(1989,1,1),
  website: "",
  school_id: school1.id
)
user9 = User.create!(
  email: "contact@spassky-fischer.fr",
  first_name: "Antoine",
  last_name: "Stevenot",
  bio: "",
  birthdate: DateTime.new(1988,1,1),
  website: "http://spassky-fischer.fr/fr/",
  school_id: school4.id
)
# userX = User.create!(
#   email: "dasweiss@gmail.com",
#   first_name: "Maxime",
#   last_name: "Leblanc",
#   bio: "Titanium contemporay jewellery",
#   birthdate: DateTime.new(1988,1,1),
#   website: "https://www.instagram.com/maxime_leblanc_jewellery/"
# )

puts "✓ users table seeded"


# theses table

thesis1 = Thesis.create!(
  user_id: user1.id,
  title: "Mixing Culture",
  subtitle: "",
  year: Date.new(2014),
  resume: "Où se situe la frontière entre la curation et la pratique du mix ? Mixer peut-il être considéré comme une forme de création originale ? En quoi la culture et la pratique du mix ont-elles influencé nos rapports et nos comportements vis-à-vis des produits médiatiques (images, sons, vidéos, textes, jeux, etc.) issus de notre société actuelle ?

    Pour répondre à ces questions, je me suis attaché dans un premier temps à deux figures emblématiques du mix : le DJ et le curateur. J’ai tenté de comprendre au travers d’une approche à la fois historique et comparative quels sont les enjeux et quelles ont été les évolutions de leurs pratiques respectives depuis leur apparition jusqu’à nos jours. J’ai établi ensuite dans un second temps une analyse détaillée du processus créatif lié à la pratique du mix, analyse qui me permit enfin d’essayer de voir en quoi cette pratique et ses différentes manifestations artistiques induisent un certain rapport au monde et aux objets culturels qui nous entourent.",
  license: "CC BY-SA 4.0",
  link: "https://github.com/timotheegoguely/mixing-culture",
  school_id: school1.id
)
thesis2 = Thesis.create!(
  user_id: user2.id,
  title: "Expression Écrite",
  subtitle: "Potentiel et limite du langage écrit normé dans la traduction d’une émotion",
  year: Date.new(2014),
  resume: "Sous couvert de ne pas avoir la bouche pleine et de faire quelques efforts de syntaxe, s’exprimer oralement nous permet une communication plutôt efficace. Le corps tout entier accompagne l’énonciation : en plus d’une bonne utilisation du langage, l’intonation, la gestuelle et l’expression, fournissent des indices de compréhension. Si le débit de parole d’un émetteur est intense, s’il parle fort et fronce les sourcils, aucun doute, il n’est pas de bonne humeur et ce qu’il dit ne doit pas être positif.

    Que se passe-t-il si cet émetteur en colère communique à l’écrit ? Quel est son champ d’action pour exposer ses idées et signifier qu’il est irrité ? Comment peut-il retranscrire son rythme, ses intonations, son empressement pour se faire comprendre ? Imaginons que notre émetteur soit l’auteur des mots d’une poésie, le personnage d’un texte de théâtre ou encore un ami qui nous envoie un texto ? Comment peut-on lire sa colère ? Le choix lexical est-il suffisant pour traduire une émotion ? L’utilisation de l’alphabet latin, répondant aux exigences orthographiques, permet-il une transcription écrite fidèle de propos oraux ou de propos voués à une interprétation orale ? […]",
  license: "",
  link: "http://margotcannizzo.tumblr.com/post/68452213577/expression-%C3%A9crite-potentiel-et-limite-du-langage",
  school_id: school2.id,
)
thesis3 = Thesis.create!(
  user_id: user3.id,
  title: "Hommage à son parcours",
  subtitle: "",
  year: Date.new(2014),
  resume: "",
  license: "",
  link: "",
  school_id: school1.id,
)
thesis4 = Thesis.create!(
  user_id: user4.id,
  title: "La cour des mirages",
  subtitle: "Le paysage des l’espace construit",
  year: Date.new(2014),
  resume: "Mémoire de DNSEP (option Design Graphique) sur la représentation de la nature dans les espaces architecturaux. Questionnement sur l'image et la simulation.",
  license: "",
  link: "http://www.lulu.com/shop/quentin-schmerber/la-cour-des-mirages/paperback/product-21458084.html",
  school_id: school1.id
)
thesis5 = Thesis.create!(
  user_id: user5.id,
  title: "« Wesh alors ? »",
  subtitle: "Un puzzle de mots et de pensées",
  year: Date.new(2016),
  resume: "",
  license: "",
  link: "",
  school_id: school3.id
)
thesis6 = Thesis.create!(
  user_id: user6.id,
  title: "Points, Zig-zag, Double-ligne",
  subtitle: "Nouveaux modes de lecture et poétique du réseau Internet dans le livre imprimé",
  year: Date.new(2015),
  resume: "Comment, et à quel point, la lecture et l’accès à l’information sur Internet confèrent aux lecteurs de nouvelles habitudes ? Et comment le graphiste et l’auteur, qui sont eux aussi des lecteurs, peuvent révéler ces nouveaux codes dans leur pratique ? Il ne s’agira pas de faire une analyse du folklore visuel du net. Mais plutôt d’étudier la façon dont l’information nous y est délivrée : sa structure et sa lecture. D’en saisir les codes et de voir qu’une fois intégrés à notre pratique quotidienne de la lecture, ils peuvent se retrouver, lointains cousins, dans le livre papier. Il s’agira de déceler cette poétique de l’Internet au travers de quelques objets d’étude, quelques spécimens que j’aurai tenté de recenser, faisant partie d’une espèce plutôt méconnue et encore peu documentée car manifestement contemporaine.

    On tentera de comprendre comment la notion de réseau s’est ancrée dans notre imaginaire collectif, du fait particulier d’Internet.
    Nous verrons quelles sont les particularités que ce média d’information possède et comment il re-façonne nos modes de lecture. Il sera nécessaire de revenir sur des expérimentations littéraires et graphiques avant-gardistes pour voir comment le livre a pu être modifié lorsque son contenu n’est pas linéaire, mais de l’ordre du fragment. Enfin, nous étudierons les quelques spécimens annoncés, résultat de transpositions incessantes entre la lecture sur papier et celle sur Internet et agissent en tant que «prototypes» (objets prospectifs). Ces objets témoignent des mutations que connait la lecture et sont des objets hybrides, nourris des pratiques du lecteur et de l’internaute qui voyage désormais dans le livre, comme il voyage déjà sur la toile.",
  license: "",
  link: "https://issuu.com/lenarobin/docs/le__narobin_me__moire6",
  school_id: school2.id,
)
thesis7 = Thesis.create!(
  user_id: user7.id,
  title: "Exhibitionnisme",
  subtitle: "La culture de l’exhibition et de la confession",
  year: Date.new(2012),
  resume: "- Comment se définit l’exhibitionnisme par rapport aux normes du monde actuel ?
    - L’exhibitionnisme est-il un phénomène de culture globale/mondiale ?
    - Quels facteurs déterminent le champ des actions considérées comme exhibitionnistes ?",
  license: "",
  link: "",
  school_id: school2.id
)
thesis8 = Thesis.create!(
  user_id: user8.id,
  title: "Simulations",
  subtitle: "Pour un graphisme-fiction",
  year: Date.new(2012),
  resume: "Comme toute hypothèse, celle que je propose ici évoquera des possibilités, développera une perception sur une réalité, en s’appuyant sur des exemples réels. Mais pour matérialiser une hypothèse, il faut une part de simulation : un « si », et un « donc ». Il faut matérialiser le « si » pour pouvoir imaginer le « donc ».

    D’une certaine manière, ce texte prend une valeur fictive, en matérialisant l’existence d’une possible ligne de conduite par des règles de création graphique. Et c’est bien du terme « fiction » dont nous allons parler, en tant que procédé expérimental à différents niveaux, qui pourrait s’associer à une pratique du graphisme fuyant sa réalité actuelle :
    le graphisme-fiction.",
  license: "",
  link: "",
  school_id: school2.id
)
thesis9 = Thesis.create!(
  user_id: user9.id,
  title: "Un atlas du film d’action",
  subtitle: "",
  year: Date.new(2012),
  resume: "Au-delà du simple divertissement, le film d’action véhicule un ensemble d’idées et de croyances politiques, économiques, sociales, propres à une époque, une société, une classe. Cet ensemble peut être qualifié d’idéologie.

    Il est une pratique qui observe le cinéma comme la manifestation des manières dont une société tente de s’inscrire dans l’Histoire. Cette pratique, la sociologie du cinéma, développe ainsi l’idée que le film dévoile les efforts d’une société dans sa représentation d’elle-même et donne à voir – non pas la société – mais ce qu’elle juge représentable à un moment donné de son histoire.
    Ainsi, les films d’action réalisés dans les années 1980 à Hollywood, parce qu’ils privilégient sur fond d’esthétique publicitaire des thèmes comme la revanche sur la guerre du Vietnam, la condamnation des déviances de la société américaine ou les figures manichéennes de guerriers victorieux sur les ennemis de la Nation, sont considérés comme les “porte-avions” de la propagande reaganienne.
    Les toutes récentes sorties de Conan 3, Die Hard 4, Rambo 4 ou encore du sixième opus de Rocky – séries dont les premiers épisodes ont été produits par Hollywood il y a plus d’une vingtaine d’années – interrogent la survivance, voire le renouvellement, d’un modèle idéologique possédant ses propres codes esthétiques. Au sein des études sociologiques sur le cinéma d’action américain, le traitement de l’espace opéré dans le film n’est pas spécifiquement observé. J’ai pourtant l’intuition que le traitement spatial du film d’action est une manifestation singulière de la représentation d’une société à une époque donnée. Et je présume que le support cartographique peut servir particulièrement ce questionnement spatial et le restituer sous une forme graphique pertinente.
    Mon projet consiste en la création d’un atlas du film d’action qui observe le traitement spatial opéré par ce genre cinématographique, et ceci dans le but d’identifier les significations qu’il porte.

    Dans quelle mesure la carte peut-elle dire, non pas autrement la même chose, mais autre chose que l’étude textuelle ? Et de quelle manière le langage visuel de la carte, appuyé par celui plus global du signe, peut-il échapper à certaines des limites du langage verbal ?

    À ce titre, la typographie, dans son acception large, peut s’avèrer un outil précieux pour la création d’un langage cartographique singulier, la carte et la typographie ayant un enjeu commun, celui de construire un langage conventionnel, à la fois global et particulier, cherchant sa cohérence dans la diversité.",
  license: "",
  link: "",
  school_id: school4.id
)

puts "✓ theses table seeded"


# tags (using act-as-taggable gem)

tags = [ "mix","culture","DJing","radio","curating","commissaire d’exposition","processus créatif","editing","montage","cut","ellipse","cinéma","BD","narration","éclectisme","internet","web","folksonomie","Google","sérendipité","média","art contemporain","comportement","lecture","traduction","écrit","langage","ponctuation","communication","poésie","réseau","livre","rhizome" ]

tag_list_for_thesis1 = []
tag_list_for_thesis2 = []
tag_list_for_thesis6 = []

for i in 0..21 do
  tag_list_for_thesis1 << tags[i]
end
for i in 0..6 do
  tag_list_for_thesis2 << tags[i]
end
for i in 0..4 do
  tag_list_for_thesis6 << tags[i]
end

thesis1.tag_list.add(tag_list_for_thesis1.join(','), parse: true)
thesis2.tag_list.add(tag_list_for_thesis2.join(','), parse: true)
thesis6.tag_list.add(tag_list_for_thesis6.join(','), parse: true)

thesis1.save!
thesis2.save!
thesis6.save!

puts "✓ tags added"

# tag1  = "mix"
# tag2  = "culture"
# tag3  = "DJing"
# tag4  = "radio"
# tag5  = "curating"
# tag6  = "commissaire d’exposition"
# tag7  = "processus créatif"
# tag8  = "editing"
# tag9  = "montage"
# tag10 = "cut"
# tag11 = "ellipse"
# tag12 = "cinéma"
# tag13 = "BD"
# tag14 = "narration"
# tag15 = "éclectisme"
# tag16 = "internet"
# tag17 = "web"
# tag18 = "folksonomie"
# tag19 = "Google"
# tag20 = "sérendipité"
# tag21 = "média"
# tag22 = "art contemporain"
# tag23 = "comportement"
# tag24 = "lecture"
# tag25 = "traduction"
# tag26 = "écrit"
# tag27 = "langage"
# tag28 = "ponctuation"
# tag29 = "communication"
# tag30 = "poésie"
# tag31 = "réseau"
# tag32 = "livre"
# tag33 = "rhizome"

# subcategories table

subcategories2a = Subcategory.create!( category_id: category2.id, name: "musées" )
subcategories2b = Subcategory.create!( category_id: category2.id, name: "archéologie" )
subcategories2c = Subcategory.create!( category_id: category2.id, name: "archives" )
subcategories2d = Subcategory.create!( category_id: category2.id, name: "monuments historiques" )

subcategories3a = Subcategory.create!( category_id: category3.id, name: "art" )
subcategories3b = Subcategory.create!( category_id: category3.id, name: "design" )
subcategories3c = Subcategory.create!( category_id: category3.id, name: "communication" )
subcategories3d = Subcategory.create!( category_id: category3.id, name: "métiers d’art" )

subcategories4a = Subcategory.create!( category_id: category4.id, name: "musique" )
subcategories4b = Subcategory.create!( category_id: category4.id, name: "danse" )
subcategories4c = Subcategory.create!( category_id: category4.id, name: "théâtre" )
subcategories4d = Subcategory.create!( category_id: category4.id, name: "spectacles" )

subcategories5a = Subcategory.create!( category_id: category5.id, name: "cinéma" )
subcategories5b = Subcategory.create!( category_id: category5.id, name: "audiovisuel" )
subcategories5c = Subcategory.create!( category_id: category5.id, name: "multimédia" )

subcategories6a = Subcategory.create!( category_id: category6.id, name: "bibliothèques" )
subcategories6b = Subcategory.create!( category_id: category6.id, name: "édition" )
subcategories6c = Subcategory.create!( category_id: category6.id, name: "documentation" )
subcategories6d = Subcategory.create!( category_id: category6.id, name: "librairie" )

subcategories7a = Subcategory.create!( category_id: category7.id, name: "presse" )
subcategories7b = Subcategory.create!( category_id: category7.id, name: "journalisme" )
subcategories7c = Subcategory.create!( category_id: category7.id, name: "photographie" )

subcategories8a = Subcategory.create!( category_id: category8.id, name: "gestion" )
subcategories8b = Subcategory.create!( category_id: category8.id, name: "médiation" )

puts "✓ subcategories table seeded"


# school_diplomas table

school1_diploma1 = SchoolDiploma.create!(school_id: school1.id, diploma_id: dnap.id )
school1_diploma2 = SchoolDiploma.create!(school_id: school1.id, diploma_id: dnsep.id )

school2_diploma1 = SchoolDiploma.create!(school_id: school2.id, diploma_id: dnap.id )
school2_diploma2 = SchoolDiploma.create!(school_id: school2.id, diploma_id: dnsep.id )
school2_diploma3 = SchoolDiploma.create!(school_id: school2.id, diploma_id: de.id )
school2_diploma4 = SchoolDiploma.create!(school_id: school2.id, diploma_id: cim1.id )
school2_diploma5 = SchoolDiploma.create!(school_id: school2.id, diploma_id: cim2.id )

puts "✓ school_diplomas table seeded"


# thesis_tags table

# thesis1_tag1  = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag1.id )
# thesis1_tag2  = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag2.id )
# thesis1_tag3  = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag3.id )
# thesis1_tag4  = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag4.id )
# thesis1_tag5  = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag5.id )
# thesis1_tag6  = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag6.id )
# thesis1_tag7  = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag7.id )
# thesis1_tag8  = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag8.id )
# thesis1_tag9  = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag9.id )
# thesis1_tag10 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag10.id )
# thesis1_tag11 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag11.id )
# thesis1_tag12 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag12.id )
# thesis1_tag13 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag13.id )
# thesis1_tag14 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag14.id )
# thesis1_tag15 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag15.id )
# thesis1_tag16 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag16.id )
# thesis1_tag17 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag17.id )
# thesis1_tag18 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag18.id )
# thesis1_tag19 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag19.id )
# thesis1_tag20 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag20.id )
# thesis1_tag21 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag21.id )
# thesis1_tag22 = ThesisTag.create!(thesis_id: thesis1.id, tag_id: tag22.id )
# thesis2_tag1 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag23.id )
# thesis2_tag2 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag24.id )
# thesis2_tag3 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag25.id )
# thesis2_tag4 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag26.id )
# thesis2_tag5 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag27.id )
# thesis2_tag6 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag28.id )
# thesis2_tag7 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag29.id )
# thesis6_tag1 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag24.id )
# thesis6_tag2 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag30.id )
# thesis6_tag3 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag31.id )
# thesis6_tag4 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag32.id )
# thesis6_tag5 = ThesisTag.create!(thesis_id: thesis6.id, tag_id: tag33.id )

# puts "✓ thesis_tags table seeded"


# diploma_subcategories table

dna_subcategory1   = DiplomaSubcategory.create!(diploma_id: dna.id, subcategory_id: subcategories3a.id)
dna_subcategory2   = DiplomaSubcategory.create!(diploma_id: dna.id, subcategory_id: subcategories3b.id)
dna_subcategory3   = DiplomaSubcategory.create!(diploma_id: dna.id, subcategory_id: subcategories3d.id)
cim1_subcategory1  = DiplomaSubcategory.create!(diploma_id: cim1.id, subcategory_id: subcategories3d.id)
dnsep_subcategory1 = DiplomaSubcategory.create!(diploma_id: dnsep.id, subcategory_id: subcategories3a.id)
dnsep_subcategory2 = DiplomaSubcategory.create!(diploma_id: dnsep.id, subcategory_id: subcategories3b.id)
dnsep_subcategory3 = DiplomaSubcategory.create!(diploma_id: dnsep.id, subcategory_id: subcategories3c.id)
dnsep_subcategory4 = DiplomaSubcategory.create!(diploma_id: dnsep.id, subcategory_id: subcategories3b.id)

puts "✓ diploma_subcategories table seeded"


# school_subcategories table

school1_subcategories3a = SchoolSubcategory.create!(school_id: school1.id, subcategory_id: subcategories3a.id)
school1_subcategories3b = SchoolSubcategory.create!(school_id: school1.id, subcategory_id: subcategories3b.id)
school1_subcategories3d = SchoolSubcategory.create!(school_id: school1.id, subcategory_id: subcategories3a.id)
school3_subcategories5a = SchoolSubcategory.create!(school_id: school3.id, subcategory_id: subcategories5a.id)
school3_subcategories3b = SchoolSubcategory.create!(school_id: school3.id, subcategory_id: subcategories3b.id)
school4_subcategories6b = SchoolSubcategory.create!(school_id: school4.id, subcategory_id: subcategories6b.id)
school4_subcategories6d = SchoolSubcategory.create!(school_id: school4.id, subcategory_id: subcategories6d.id)

puts "✓ school_subcategories table seeded"


# thesis_diplomas table

thesis1_dnsep = ThesisDiploma.create!(thesis_id: thesis1.id, diploma_id: dnsep.id)
thesis2_dnsep = ThesisDiploma.create!(thesis_id: thesis2.id, diploma_id: dnsep.id)
thesis3_dnsep = ThesisDiploma.create!(thesis_id: thesis3.id, diploma_id: dnsep.id)
thesis4_dnsep = ThesisDiploma.create!(thesis_id: thesis4.id, diploma_id: dnsep.id)
thesis5_ensad = ThesisDiploma.create!(thesis_id: thesis5.id, diploma_id: ensad.id)
thesis6_dnat  = ThesisDiploma.create!(thesis_id: thesis6.id, diploma_id: dnat.id)
thesis7_dnat  = ThesisDiploma.create!(thesis_id: thesis7.id, diploma_id: dnat.id)
thesis8_dnsep = ThesisDiploma.create!(thesis_id: thesis8.id, diploma_id: dnsep.id)
thesis9_dsaa  = ThesisDiploma.create!(thesis_id: thesis9.id, diploma_id: dsaa.id)

puts "✓ thesis_diplomas table seeded"


# thesis_diploma_subcategories table

thesis1_dnsep_subcategories2a = ThesisDiplomaSubcategory.create!(thesis_diploma_id: thesis1_dnsep.id, subcategory_id: subcategories2a.id)
thesis1_dnsep_subcategories2b = ThesisDiplomaSubcategory.create!(thesis_diploma_id: thesis1_dnsep.id, subcategory_id: subcategories2b.id)
thesis1_dnsep_subcategories2c = ThesisDiplomaSubcategory.create!(thesis_diploma_id: thesis1_dnsep.id, subcategory_id: subcategories2c.id)
thesis2_dnsep_subcategories6a = ThesisDiplomaSubcategory.create!(thesis_diploma_id: thesis2_dnsep.id, subcategory_id: subcategories6a.id)
thesis2_dnsep_subcategories6c = ThesisDiplomaSubcategory.create!(thesis_diploma_id: thesis2_dnsep.id, subcategory_id: subcategories6c.id)
thesis9_dsaa_subcategories5a  = ThesisDiplomaSubcategory.create!(thesis_diploma_id: thesis9_dsaa.id, subcategory_id: subcategories5a.id)
thesis9_dsaa_subcategories5b  = ThesisDiplomaSubcategory.create!(thesis_diploma_id: thesis9_dsaa.id, subcategory_id: subcategories5b.id)
thesis9_dsaa_subcategories5c  = ThesisDiplomaSubcategory.create!(thesis_diploma_id: thesis9_dsaa.id, subcategory_id: subcategories5c.id)

puts "✓ thesis_diploma_subcategories table seeded"
