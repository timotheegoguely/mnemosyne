# Destroy all
School.destroy_all
User.destroy_all
Diploma.destroy_all
Thesis.destroy_all
Subcategory.destroy_all
Category.destroy_all
Tag.destroy_all
#Bookmark.destroy_all


# Schools
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


# Diplomas
dna = Diploma.create!(
  name: "Diplôme national d’art",
  #acronym: "DNA",
  degree: "license"
)
dnap = Diploma.create!(
  name: "Diplôme national d’art plastique",
  #acronym: "DNAP",
  degree: "license"
)
dnat = Diploma.create!(
  name: "Diplôme national d’arts et techniques",
  #acronym: "DNAT",
  degree: "license"
)
dnsep = Diploma.create!(
  name: "Diplôme national supérieur d’expression plastique",
  #acronym: "DNSEP",
  degree: "master"
)
ensba = Diploma.create!(
  name: "Diplôme d’école ENSBA",
  #acronym: "",
  degree: "master"
)
ensad = Diploma.create!(
  name: "Diplôme d’école ENSAD",
  #acronym: "",
  degree: "master"
)
enspArles = Diploma.create!(
  name: "Diplôme d’école ENSP Arles",
  #acronym: "",
  degree: "master"
)
ensci = Diploma.create!(
  name: "Diplôme d’école ENSCI",
  #acronym: "",
  degree: "master"
)


# Users
user1 = User.create!(
  email: "timotheegoguely@gmail.com",
  password: "123456",
  first_name: "Timothée",
  last_name: "Goguely",
  bio: "Freelance UI/UX designer",
  birthdate: DateTime.new(1991,8,12),
  website: "http://timothee.goguely.com",
  school_id: school1.id
)
user2 = User.create!(
  email: "margotcannizzo@gmail.com",
  password: "123456",
  first_name: "Margot",
  last_name: "Cannizzo",
  bio: "Graphiste / scénographe chez agnès b.",
  birthdate: DateTime.new(1989,9,12),
  website: "http://margotcannizzo.tumblr.com/",
  school_id: school2.id
)
user3 = User.create!(
  email: "stmartin.geoffrey@gmail.com",
  password: "123456",
  first_name: "Geoffrey",
  last_name: "Saint-Martin",
  bio: "Graphiste freelance",
  birthdate: DateTime.new(1989),
  website: "http://www.geoffrey-st-martin.fr/",
  school_id: school1.id
)
user4 = User.create!(
  email: "quentin.schmerber@gmail.com",
  password: "123456",
  first_name: "Quentin",
  last_name: "Schmerber",
  bio: "Hello I’m Quentin. I design books, lettering and typefaces.",
  birthdate: DateTime.new(1991,1,1),
  website: "http://www.quentin-s.ch/",
  school_id: school1.id
)
user5 = User.create!(
  email: "antoine.omerin@gmail.com",
  password: "123456",
  first_name: "Antoine",
  last_name: "Omerin",
  bio: "Photographe",
  birthdate: DateTime.new(1990,1,1),
  website: "http://antoineomerin.tumblr.com/",
  school_id: school3.id
)
user6 = User.create!(
  email: "hello@lenarobin.com",
  password: "123456",
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
  password: "123456",
  first_name: "Marta",
  last_name: "Wajszczyk",
  bio: "Graphic Designer / Art Director w MOVE-PICTURE",
  birthdate: DateTime.new(1986,1,1),
  website: "",
  school_id: school1.id
)
user8 = User.create!(
  email: "morgannlechat@gmail.com",
  password: "123456",
  first_name: "Antoine",
  last_name: "Stevenot",
  bio: "Designer graphique",
  birthdate: DateTime.new(1989,1,1),
  website: "",
  school_id: school1.id
)
user9 = User.create!(
  email: "contact@spassky-fischer.fr",
  password: "123456",
  first_name: "Antoine",
  last_name: "Stevenot",
  bio: "",
  birthdate: DateTime.new(1988,1,1),
  website: "http://spassky-fischer.fr/fr/",
  school_id: school4.id
)
# userX = User.create!(
#   email: "dasweiss@gmail.com",
#   password: "123456",
#   first_name: "Maxime",
#   last_name: "Leblanc",
#   bio: "Titanium contemporay jewellery",
#   birthdate: DateTime.new(1988,1,1),
#   website: "https://www.instagram.com/maxime_leblanc_jewellery/"
# )


# Theses
thesis1 = Thesis.create!(
  user_id: user1.id,
  title: "Mixing Culture",
  subtitle: "",
  year: Date.new(2014),
  resume: "Où se situe la frontière entre la curation et la pratique du mix ?
    Mixer peut-il être considéré comme une forme de création originale ?
    En quoi la culture et la pratique du mix ont-elles influencé nos rapports
    et nos comportements vis-à-vis des produits médiatiques (images, sons,
    vidéos, textes, jeux, etc.) issus de notre société actuelle ? \n\n
    Pour répondre à ces questions, je me suis attaché dans un premier temps à
    deux figures emblématiques du mix : le DJ et le curateur. J’ai tenté de
    comprendre au travers d’une approche à la fois historique et comparative
    quels sont les enjeux et quelles ont été les évolutions de leurs pratiques
    respectives depuis leur apparition jusqu’à nos jours. J’ai établi ensuite
    dans un second temps une analyse détaillée du processus créatif lié à la
    pratique du mix, analyse qui me permit enfin d’essayer de voir en quoi cette
    pratique et ses différentes manifestations artistiques induisent un certain
    rapport au monde et aux objets culturels qui nous entourent.",
  license: "CC BY-SA 4.0",
  link: "https://github.com/timotheegoguely/mixing-culture",
  diploma_id: diploma1.id,
  school_id: school1.id
)
thesis2 = Thesis.create!(
  user_id: user2.id,
  title: "Expression Écrite",
  subtitle: "Potentiel et limite du langage écrit normé dans la traduction d’une émotion",
  year: Date.new(2014),
  resume: "Sous couvert de ne pas avoir la bouche pleine et de faire quelques efforts de syntaxe,
    s’exprimer oralement nous permet une communication plutôt efficace.
    Le corps tout entier accompagne l’énonciation : en plus d’une bonne utilisation du langage,
    l’intonation, la gestuelle et l’expression, fournissent des indices de compréhension.
    Si le débit de parole d’un émetteur est intense, s’il parle fort et fronce les sourcils,
    aucun doute, il n’est pas de bonne humeur et ce qu’il dit ne doit pas être positif. \n\n

    Que se passe-t-il si cet émetteur en colère communique à l’écrit ?
    Quel est son champ d’action pour exposer ses idées et signifier qu’il est irrité ?
    Comment peut-il retranscrire son rythme, ses intonations, son empressement pour se
    faire comprendre ? Imaginons que notre émetteur soit l’auteur des mots d’une poésie,
    le personnage d’un texte de théâtre ou encore un ami qui nous envoie un texto ?
    Comment peut-on lire sa colère ? Le choix lexical est-il suffisant pour traduire
    une émotion ? L’utilisation de l’alphabet latin, répondant aux exigences orthographiques,
    permet-il une transcription écrite fidèle de propos oraux ou de propos voués
    à une interprétation orale ? […]",
  license: "",
  link: "http://margotcannizzo.tumblr.com/post/68452213577/expression-%C3%A9crite-potentiel-et-limite-du-langage",
  diploma_id: dnsep.id,
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
  diploma_id: dnsep.id,
  school_id: school1.id,
)
thesis4 = Thesis.create!(
  user_id: user4.id,
  title: "La cour des mirages",
  subtitle: "Le paysage des l’espace construit",
  year: Date.new(2014),
  resume: "Mémoire de DNSEP (option Design Graphique) sur la représentation de la nature
    dans les espaces architecturaux. Questionnement sur l'image et la simulation.",
  license: "",
  link: "http://www.lulu.com/shop/quentin-schmerber/la-cour-des-mirages/paperback/product-21458084.html",
  diploma_id: dnsep.id,
  school_id: school1.id,
)
thesis5 = Thesis.create!(
  user_id: user5.id,
  title: "« Wesh alors ? »",
  subtitle: "Un puzzle de mots et de pensées",
  year: Date.new(2016),
  resume: "",
  license: "",
  link: "",
  diploma_id: ensad.id,
  school_id: school3.id,
)
thesis6 = Thesis.create!(
  user_id: user6.id,
  title: "Points, Zig-zag, Double-ligne",
  subtitle: "Nouveaux modes de lecture et poétique du réseau Internet dans le livre imprimé",
  year: Date.new(2015),
  resume: "Comment, et à quel point, la lecture et l’accès à l’information sur Internet
    confèrent aux lecteurs de nouvelles habitudes ? Et comment le graphiste et l’auteur,
    qui sont eux aussi des lecteurs, peuvent révéler ces nouveaux codes dans leur pratique ?
    Il ne s’agira pas de faire une analyse du folklore visuel du net.
    Mais plutôt d’étudier la façon dont l’information nous y est délivrée : sa structure et sa lecture.
    D’en saisir les codes et de voir qu’une fois intégrés à notre pratique quotidienne de la lecture,
    ils peuvent se retrouver, lointains cousins, dans le livre papier.
    Il s’agira de déceler cette poétique de l’Internet au travers de quelques objets d’étude,
    quelques spécimens que j’aurai tenté de recenser, faisant partie d’une espèce plutôt méconnue
    et encore peu documentée car manifestement contemporaine. \n\n

    On tentera de comprendre comment la notion de réseau s’est ancrée dans notre
    imaginaire collectif, du fait particulier d’Internet. \n
    Nous verrons quelles sont les particularités que ce média d’information possède
    et comment il re-façonne nos modes de lecture. Il sera nécessaire de revenir
    sur des expérimentations littéraires et graphiques avant-gardistes pour voir
    comment le livre a pu être modifié lorsque son contenu n’est pas linéaire,
    mais de l’ordre du fragment. Enfin, nous étudierons les quelques spécimens annoncés,
    résultat de transpositions incessantes entre la lecture sur papier et celle
    sur Internet et agissent en tant que «prototypes» (objets prospectifs).
    Ces objets témoignent des mutations que connait la lecture et sont des objets hybrides,
    nourris des pratiques du lecteur et de l’internaute qui voyage désormais dans le livre,
    comme il voyage déjà sur la toile.",
  license: "",
  link: "https://issuu.com/lenarobin/docs/le__narobin_me__moire6",
  diploma_id: dnsep.id,
  school_id: school2.id,
)
thesis7 = Thesis.create!(
  user_id: user7.id,
  title: "Exhibitionnisme",
  subtitle: "La culture de l’exhibition et de la confession",
  year: Date.new(2012),
  resume: "- Comment se définit l’exhibitionnisme par rapport aux normes du monde actuel ? \n
    - L’exhibitionnisme est-il un phénomène de culture globale/mondiale ? \n
    - Quels facteurs déterminent le champ des actions considérées comme exhibitionnistes ?",
  license: "",
  link: "",
  diploma_id: dnsep.id,
  school_id: school2.id,
)
thesis8 = Thesis.create!(
  user_id: user8.id,
  title: "Simulations",
  subtitle: "Pour un graphisme-fiction",
  year: Date.new(2012),
  resume: "Comme toute hypothèse, celle que je propose ici évoquera des possibilités,
    développera une perception sur une réalité, en s’appuyant sur des exemples réels.
    Mais pour matérialiser une hypothèse, il faut une part de simulation : un « si », et un « donc ».
    Il faut matérialiser le « si » pour pouvoir imaginer le « donc ». \n\n

    D’une certaine manière, ce texte prend une valeur fictive, en matérialisant
    l’existence d’une possible ligne de conduite par des règles de création graphique.
    Et c’est bien du terme « fiction » dont nous allons parler, en tant que procédé expérimental
    à différents niveaux, qui pourrait s’associer à une pratique du graphisme fuyant sa réalité actuelle : \n
    le graphisme-fiction.",
  license: "",
  link: "",
  diploma_id: dnsep.id,
  school_id: school2.id,
)
thesis9 = Thesis.create!(
  user_id: user9.id,
  title: "Un atlas du film d’action",
  subtitle: "",
  year: Date.new(2012),
  resume: "Au-delà du simple divertissement, le film d’action véhicule un ensemble
    d’idées et de croyances politiques, économiques, sociales, propres à une époque,
    une société, une classe. Cet ensemble peut être qualifié d’idéologie. \n\n

    Il est une pratique qui observe le cinéma comme la manifestation des manières
    dont une société tente de s’inscrire dans l’Histoire. Cette pratique,
    la sociologie du cinéma, développe ainsi l’idée que le film dévoile les efforts
    d’une société dans sa représentation d’elle-même et donne à voir – non pas
    la société – mais ce qu’elle juge représentable à un moment donné de son histoire. \n
    Ainsi, les films d’action réalisés dans les années 1980 à Hollywood,
    parce qu’ils privilégient sur fond d’esthétique publicitaire des thèmes
    comme la revanche sur la guerre du Vietnam, la condamnation des déviances
    de la société américaine ou les figures manichéennes de guerriers victorieux
    sur les ennemis de la Nation, sont considérés comme les “porte-avions” de la
    propagande reaganienne. \n
    Les toutes récentes sorties de Conan 3, Die Hard 4, Rambo 4 ou encore du
    sixième opus de Rocky – séries dont les premiers épisodes ont été produits
    par Hollywood il y a plus d’une vingtaine d’années – interrogent la survivance,
    voire le renouvellement, d’un modèle idéologique possédant ses propres codes esthétiques.
    Au sein des études sociologiques sur le cinéma d’action américain,
    le traitement de l’espace opéré dans le film n’est pas spécifiquement observé.
    J’ai pourtant l’intuition que le traitement spatial du film d’action est une
    manifestation singulière de la représentation d’une société à une époque donnée.
    Et je présume que le support cartographique peut servir particulièrement ce
    questionnement spatial et le restituer sous une forme graphique pertinente. \n
    Mon projet consiste en la création d’un atlas du film d’action qui observe le
    traitement spatial opéré par ce genre cinématographique, et ceci dans le
    but d’identifier les significations qu’il porte. \n\n

    Dans quelle mesure la carte peut-elle dire, non pas autrement la même chose,
    mais autre chose que l’étude textuelle ? Et de quelle manière le langage
    visuel de la carte, appuyé par celui plus global du signe, peut-il échapper
    à certaines des limites du langage verbal ? \n\n

    À ce titre, la typographie, dans son acception large, peut s’avèrer un outil
    précieux pour la création d’un langage cartographique singulier, la carte et
    la typographie ayant un enjeu commun, celui de construire un langage conventionnel,
    à la fois global et particulier, cherchant sa cohérence dans la diversité.",
  license: "",
  link: "",
  diploma_id: dsaa.id,
  school_id: school4.id,
)


# Categories
category1 = Category.create!(name: "architecture")
category2 = Category.create!(name: "patrimoines")
category3 = Category.create!(name: "arts plastiques")
category4 = Category.create!(name: "spectacle vivant")
category5 = Category.create!(name: "cinéma et audiovisuel")
category6 = Category.create!(name: "livre")
category7 = Category.create!(name: "presse")
category8 = Category.create!(name: "gestion et médiation")


# Subcategories
sybcategories2a = Subcategory.create!( categorie_id: category2.id, name: "musées" )
sybcategories2b = Subcategory.create!( categorie_id: category2.id, name: "archéologie" )
sybcategories2c = Subcategory.create!( categorie_id: category2.id, name: "archives" )
sybcategories2d = Subcategory.create!( categorie_id: category2.id, name: "monuments historiques" )

sybcategories3a = Subcategory.create!( categorie_id: category3.id, name: "art" )
sybcategories3b = Subcategory.create!( categorie_id: category3.id, name: "design" )
sybcategories3c = Subcategory.create!( categorie_id: category3.id, name: "communication" )
sybcategories3d = Subcategory.create!( categorie_id: category3.id, name: "métiers d’art" )

sybcategories4a = Subcategory.create!( categorie_id: category4.id, name: "musique" )
sybcategories4b = Subcategory.create!( categorie_id: category4.id, name: "danse" )
sybcategories4c = Subcategory.create!( categorie_id: category4.id, name: "théâtre" )
sybcategories4d = Subcategory.create!( categorie_id: category4.id, name: "spectacles" )

sybcategories5a = Subcategory.create!( categorie_id: category5.id, name: "cinéma" )
sybcategories5b = Subcategory.create!( categorie_id: category5.id, name: "audiovisuel" )
sybcategories5c = Subcategory.create!( categorie_id: category5.id, name: "multimédia" )

sybcategories6a = Subcategory.create!( categorie_id: category6.id, name: "bibliothèques" )
sybcategories6b = Subcategory.create!( categorie_id: category6.id, name: "édition" )
sybcategories6c = Subcategory.create!( categorie_id: category6.id, name: "documentation" )
sybcategories6d = Subcategory.create!( categorie_id: category6.id, name: "librairie" )

sybcategories7a = Subcategory.create!( categorie_id: category7.id, name: "presse" )
sybcategories7b = Subcategory.create!( categorie_id: category7.id, name: "journalisme" )
sybcategories7c = Subcategory.create!( categorie_id: category7.id, name: "photographie" )
sybcategories7d = Subcategory.create!( categorie_id: category7.id, name: "librairie" )

sybcategories8a = Subcategory.create!( categorie_id: category8.id, name: "gestion" )
sybcategories8b = Subcategory.create!( categorie_id: category8.id, name: "médiation" )


# School diplomas
school1_diploma1 = SchoolDiplomas.create!(school_id: school1.id, diploma_id: dnap.id )
school1_diploma2 = SchoolDiplomas.create!(school_id: school1.id, diploma_id: dnsep.id )


# Tags
tag1  = Tag.create!(name: "mix")
tag2  = Tag.create!(name: "culture")
tag3  = Tag.create!(name: "DJing")
tag4  = Tag.create!(name: "radio")
tag5  = Tag.create!(name: "curating")
tag6  = Tag.create!(name: "commissaire d’exposition")
tag7  = Tag.create!(name: "processus créatif")
tag8  = Tag.create!(name: "editing")
tag9  = Tag.create!(name: "montage")
tag10 = Tag.create!(name: "cut")
tag11 = Tag.create!(name: "ellipse")
tag12 = Tag.create!(name: "cinéma")
tag13 = Tag.create!(name: "BD")
tag14 = Tag.create!(name: "narration")
tag15 = Tag.create!(name: "éclectisme")
tag16 = Tag.create!(name: "internet")
tag17 = Tag.create!(name: "web")
tag18 = Tag.create!(name: "folksonomie")
tag19 = Tag.create!(name: "Google")
tag20 = Tag.create!(name: "sérendipité")
tag21 = Tag.create!(name: "média")
tag22 = Tag.create!(name: "art contemporain")

tag23 = Tag.create!(name: "lecture")
tag24 = Tag.create!(name: "poésie")
tag25 = Tag.create!(name: "réseau")
tag26 = Tag.create!(name: "livre")
tag27 = Tag.create!(name: "rhizome")

