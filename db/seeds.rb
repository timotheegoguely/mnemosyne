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
user10 = User.create!(
  email: "chauvin.camille@gmail.com",
  first_name: "Camille",
  last_name: "Chauvin",
  bio: "",
  birthdate: DateTime.new(1988,1,1),
  website: "",
  school_id: school1.id
)
user11 = User.create!(
  email: "coquard.emilie@gmail.com",
  first_name: "Emilie",
  last_name: "Coquard",
  bio: "",
  birthdate: DateTime.new(1989,1,1),
  website: "",
  school_id: school1.id
)
user12 = User.create!(
  email: "jacques.floriane@gmail.com",
  first_name: "Floriane",
  last_name: "Jacques",
  bio: "",
  birthdate: DateTime.new(1990,1,1),
  website: "",
  school_id: school1.id
)
user13 = User.create!(
  email: "lalande.vanessa@gmail.com",
  first_name: "Vanessa",
  last_name: "Lalande",
  bio: "",
  birthdate: DateTime.new(1985,1,3),
  website: "",
  school_id: school1.id
)
user14 = User.create!(
  email: "martin.marion@gmail.com",
  first_name: "Marion",
  last_name: "Martin",
  bio: "",
  birthdate: DateTime.new(1987,10,3),
  website: "",
  school_id: school1.id
)
user15 = User.create!(
  email: "neagle.ennio@gmail.com",
  first_name: "Ennio",
  last_name: "Neagle",
  bio: "",
  birthdate: DateTime.new(1988,12,9),
  website: "",
  school_id: school1.id
)
user16 = User.create!(
  email: "poinsot.vincent@gmail.com",
  first_name: "Vincent",
  last_name: "Poinsot",
  bio: "",
  birthdate: DateTime.new(1990,7,7),
  website: "",
  school_id: school1.id
)
user17 = User.create!(
  email: "runghia.priscilla@gmail.com",
  first_name: "Priscilla",
  last_name: "Runghia",
  bio: "",
  birthdate: DateTime.new(1988,10,9),
  website: "",
  school_id: school1.id
)
user18 = User.create!(
  email: "sawicki.alice@gmail.com",
  first_name: "Alice",
  last_name: "Sawicki",
  bio: "",
  birthdate: DateTime.new(1989,11,11),
  website: "",
  school_id: school1.id
)
user19 = User.create!(
  email: "vanpoucke.guillaume@gmail.com",
  first_name: "Guillaume",
  last_name: "Vanpoucke",
  bio: "",
  birthdate: DateTime.new(1990,3,11),
  website: "",
  school_id: school1.id
)
user20 = User.create!(
  email: "correia.elodie@gmail.com",
  first_name: "Elodie",
  last_name: "Correia",
  bio: "",
  birthdate: DateTime.new(1991,4,16),
  website: "",
  school_id: school1.id
)
user21 = User.create!(
  email: "julien.priscillia@gmail.com",
  first_name: "Priscilla",
  last_name: "Julien",
  bio: "",
  birthdate: DateTime.new(1989,4,11),
  website: "",
  school_id: school1.id
)
user22 = User.create!(
  email: "kribs.morgane@gmail.com",
  first_name: "Morgane",
  last_name: "Kribs",
  bio: "",
  birthdate: DateTime.new(1988,7,9),
  website: "",
  school_id: school1.id
)
user23 = User.create!(
  email: "lascols.sudji@gmail.com",
  first_name: "Sudji",
  last_name: "Lascols",
  bio: "",
  birthdate: DateTime.new(1989,11,3),
  website: "",
  school_id: school1.id
)
user24 = User.create!(
  email: "trachet.lucie@gmail.com",
  first_name: "Lucie",
  last_name: "Trachet",
  bio: "",
  birthdate: DateTime.new(1990,3,11),
  website: "",
  school_id: school1.id
)
user25 = User.create!(
  email: "eveillard.louis@gmail.com",
  first_name: "Louis",
  last_name: "Eveillard",
  bio: "",
  birthdate: DateTime.new(1987,6,8),
  website: "",
  school_id: school1.id
)
user26 = User.create!(
  email: "lauv.lucie@gmail.com",
  first_name: "Lucie",
  last_name: "Lauv",
  bio: "",
  birthdate: DateTime.new(1986,7,7),
  website: "",
  school_id: school1.id
)
user27 = User.create!(
  email: "nivard.laure@gmail.com",
  first_name: "Laure",
  last_name: "Nivard",
  bio: "",
  birthdate: DateTime.new(1987,8,),
  website: "",
  school_id: school1.id
)
user28 = User.create!(
  email: "richard.amandine@gmail.com",
  first_name: "Amandine",
  last_name: "Richard",
  bio: "",
  birthdate: DateTime.new(1988,4,5),
  website: "",
  school_id: school1.id
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
thesis10 = Thesis.create!(
  user_id: user10.id,
  title: "Imaginer la fin du monde",
  subtitle: "De la pédagogie de la catastrophe à l'heure de l'urgence environnementale",
  year: Date.new(2013),
  resume: "Cette fin d’année 2012 nous aura une fois de plus confirmé notre
  fascination pour le mythe de la fin du monde. En effet, si le 21 décembre
  n’aura finalement pas été le jour tant redouté, sensé advenir en raison
  de l’achèvement du cycle du calendrier maya, il nous aura néanmoins
  permis de nous pencher sur l’engouement de notre société pour comp-
  ter le temps qui la sépare de sa dernière heure.
  Depuis quelques années, les publications et les réalisations ciné-
  matographiques autour de ce sujet ont été très nombreuses, mais il
  ne faudrait pas voir là une tendance purement contemporaine. Car
  imaginer la fin du monde est un concept inné à l’espèce humaine et
  est ancré en nous depuis de nombreux siècles déjà.
  Sans pouvoir en faire une étude exhaustive, nous verrons comment les
  civilisations et les religions qui nous ont précédés ont profondément
  inscrit en nous l’idée d’un monde voué à disparaître et comment ce
  mythe s’est renforcé pendant les moments sombres de notre histoire.
  En effet, depuis les conceptions égyptiennes de la vie après la mort
  jusqu’aux sectes millénaristes de notre siècle, les croyances escha-
  tologiques ont évolué au même rythme que notre capacité à nous
  projeter sereinement dans l’avenir. Ainsi, le Moyen Âge, tourmenté
  par les guerres, les épidémies et les famines, est l’une des périodes où
  les visions dramatiques proposées par l’Apocalypse de Jean suscitent
  une grande angoisse.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis11 = Thesis.create!(
  user_id: user11.id,
  title: "Datavisualisation",
  subtitle: "Nouvel outil de communication",
  year: Date.new(2013),
  resume: "« Grâce au numérique, l’ensemble des connaissances est disponible
  partout, tout le temps, à tout le monde. Cela répond aux enjeux d’une
  économie où la connaissance devient facteur majeur de compétitivité,
  et d’un monde qui change très vite et où il est indispensable
  d’apprendre tout au long de sa vie. Le numérique transforme alors
  radicalement les façons d’apprendre et d’enseigner. »
  Ceci est possible grâce au développement du réseau Internet et
  aux nombreux supports y donnant accès, se multipliant et devenant
  de plus en plus petits. En 2011, le nombre de ventes de tablettes
  et smartphones n’a cessé d’augmenter et surpasse alors le nombre
  d’ordinateurs vendus  2 . Le monde est connecté. Que l’on soit chez nous,
  dans les transports en commun, ou à l’école, nous suivons les nouvelles,
  travaillons ou discutons sur les réseaux sociaux. Tout cela représente
  une masse exponentielle d’informations et de données.
  En Angleterre, la charte de l’Open Data  3 a été signée en décembre 2006
  et n’est arrivée en France qu’en 2009. Depuis, nous pouvons penser
  que l’accessibilité aux données, leur lisibilité et leur com­préhension sont
  évidentes. Les données se comptent en milliards, réunis sur le réseau
  Internet et regroupées sous le terme de « Big data ».
  Comment se retrouver dans cet espace vaste où sont mélangés tous
  types d’informations de différents domaines et de différents formats ?
  Les lectures sont encore floues et très complexes pour la plupart
  d’entre nous. C’est pourquoi graphistes, journalistes, informaticiens
  s’associent de plus en plus pour tenter de transmettre ces données
  grâce à des représentations visuelles accessibles au plus grand nombre.
  Cela permet de rendre ces données intelligibles au plus grand nombre
  tout en les regroupant et en les analysant.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis12 = Thesis.create!(
  user_id: user12.id,
  title: "Espaces et aires de jeux",
  subtitle: "Un lieu dédié à la construction, l'organisation et l'imagination de l'enfant",
  year: Date.new(2013),
  resume: "Le jeu est une idée plaisante qui évoque l’enfance,
  la création, l'émulation, la nostalgie, l’amitié, la liberté...
  Le jeu est envisagé comme un phénomène culturel,
  et non pas comme une fonction biologique. Il est pourtant
  plus ancien que la culture. En effet, la notion de culture,
  si insuffisamment délimitée soit-elle, suppose en tout
  cas l’existence d’une société humaine et les animaux n’ont
  pas attendu l’arrivée de l’homme pour apprendre à jouer.
  Les hommes jouent exactement comme les animaux.
  Tous les traits fondamentaux du jeu se trouvent déjà réalisés
  dans celui des bêtes (appréhension des peurs, règles
  du jeu, vie en communauté, l’autre, la force et la domina-
  tion). Lorsque l’être joue, il obéit à un penchant inné
  à l’imitation, il satisfait un besoin de détente ou il accomplit
  l’exercice préparatoire à l’activité sérieuse que la vie exigera
  de lui. Dans notre conscience l’idée de jeu s’oppose
  à celle du sérieux. Il est pourtant un âge où le jeu est
  un acte primordial, constitutif de la personnalité, nous,
  adultes, l’oublions bien trop souvent, mais le jeu chez l’enfant est considéré comme un travail, un aprentissage.
  Le jeu est en effet l’activité la plus sérieuse chez l’enfant.
  Ainsi, il est juste d’affirmer que le jeu est un besoin
  tout aussi vital que celui de manger. Le besoin de jeu
  des enfants concerne des aspirations différentes et complé-
  mentaires : c’est le mouvement mais aussi le repos,
  c’est la sécurité mais aussi le risque, c’est la socialisation
  mais l’autonomie également, c’est l’imitation en même
  temps que la création, c’est la fiction mais aussi le réel.
  L’enfant joue pour se fabriquer lui-même : il découvre
  sa sensibilité, son corps et apprend la socialisation
  par le biais du jeu sous toutes ses formes. Dans la ville
  ou plutôt dans ses interstices, l’aire de jeux est un environ-
  nement à l’aménagement difficile. L’enfant s’emploie
  à jouer dans ce lieu très codifié, répondant à des normes
  très strictes. Les aires de jeux qui lui sont destinées,
  si conventionnelles soient-elles, sont ainsi le lieu d’une
  appropriation et d’un détournement : les jeux y deviennent
  un support de créativité.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis13 = Thesis.create!(
  user_id: user13.id,
  title: "Le réel transfiguré",
  subtitle: "Ou l'entreprise proustienne au service d'une vision",
  year: Date.new(2013),
  resume: "À la recherche du temps perdu est un monument de la littérature française,
  publié entre 1913 et 1927. Pourquoi s’intéresser à un roman qui, n’est plus
  d’actualité alors que tout a déjà été dit sur Proust, l’auteur, l’homme, sa vie
  et son œuvre ? Sans doute, parce que ce roman, qui sous certains aspects
  s’inscrit dans la tradition psychologique du roman français, demeure en
  rupture avec son époque par la valeur accordée à l’art et à l’imaginaire.
     Récit de fiction fondé sur des éléments biographiques, l’écrivain
  recrée l’évolution d’une pensée et d’une conception du monde. À la
  recherche du temps perdu est à la fois une œuvre d’art littéraire et une théo-
  rie de l’œuvre d’art, complexe par sa richesse et son ampleur. Il est sou-
  vent dit que Proust avait l’ambition de construire son livre comme une
  « cathédrale du temps ».
     Inspiré par Baudelaire, Marcel Proust a fait ses débuts littéraires avec
  la poésie. En effet, dès 1896, il publie Les Plaisirs et les Jours, un recueil de
  poèmes en prose. Pour lui, la poésie représente un idéal absolu qui per-
  met d’aborder ce qui est vécu, c’est-à-dire l’expérience. Avec son seul
  roman publié, il fait la synthèse de la poésie et du roman. Sa perception
  poétique du monde et son désir de rendre « l’impression poétique, qui
  est toute instinctive et spontanée » ont été reconnus par ses proches.
     L’écrivain allie poésie, sensibilité, instant et imagination au sens bau-
  delairien du terme, « faculté quasi divine qui perçoit [...] les rapports
  intimes et secrets des choses, les correspondances et les analogies », afin
  de nous détailler le monde qu’il perçoit. Les faits ne sont pas décrits mais
  les sensations le sont. L’univers dans lequel il introduit le lecteur est pure-
  ment intériorisé, et au travers de la sensation, il recrée chez ce dernier
  une réalité vivante.
     Que l’on connaisse bien ce roman ou que l’on en ait une connaissance
  partielle, tout le monde sait que Proust avait une perception de la réalité toute particulière. Alors, comment se positionne-t-il par rapport à cette
  réalité ? En quoi se fait-il traducteur d’un monde si caractéristique ?
     Cette vision du réel réside dans l’alliance de celui-ci et de l’imagi-
  naire. Proust privilégie l’imagination parce qu’elle permet de retrouver
  l’illusion de l’impression première et de renouer avec l’émerveillement
  primitif et enfantin. Ce roman soulève bien des questions d’ordre onto-
  logique, artistique, littéraire ou encore philosophique. À l’heure où la
  phénoménologie devenait un courant philosophique nouveau, Proust l’a
  pleinement intégrée à sa vision du monde subjectif et offre alors, à ses
  lecteurs d’hier et d’aujourd’hui, une expérience de lecture.
     Il se fait traducteur d’un monde où le banal et l’ordinaire sont élevés
  au rang de sublime et de l’extraordinaire. L’émerveillement de la bana-
  lité et de l’infime servent de tremplin pour une connaissance du monde
  plus juste et plus vraie. Le réel de Proust se situe à la croisée des chemins
  entre réel et imaginaire, l’auteur refuse toute connaissance du monde qui
  se limiterait à l’intelligible. Sa subtilité et sa sensibilité poétique offerte
  à travers de nombreuses descriptions font entrer le lecteur dans les
  moindres détails de la vie quotidienne et l’intériorité du narrateur.
     À la recherche du temps perdu est l’un des romans occidentaux les plus
  visuels. Proust fait appel à de nombreuses références picturales, ne serait-
  ce que dans son rapport au banal. Les nombreuses analogies recensées
  fonctionnent comme un enchevêtrement, une juxtaposition ou un suc-
  cession d’images mentales. La métaphore apparaît comme la figure essen-
  tielle à l’écriture et à la construction du monde proustien.
     La vie, puisque c’est bien de cela que nous parle Proust, est faite d’ins-
  tants banals, d’impressions, de souvenirs... Mais ces événements là, ne
  sont-ils pas une succession de moments fragmentés ? La question de la
  fragmentation apparaît chez Proust de manière évidente que ce soit au
  travers du moi ou du réel en tant que tel. À la recherche du temps perdu
  témoigne de l’unité de la discontinuité. L’art de Proust réside donc dans
  le fait de traduire le monde qui nous entoure en tant que totalité et en
  tant que morceau.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis14 = Thesis.create!(
  user_id: user14.id,
  title: "La langue et ses signes",
  subtitle: "Une pensée en mouvement: l'information au bout des doigts",
  year: Date.new(2013),
  resume: "Il y a quelques années, j’ai entrepris l’expérience de l’ap-
  prentissage de la Langue des Signes Française (LSF). Mon
  intérêt pour cette langue est apparu grâce au roman
  L’histoire d’Helen Keller de Lorena-A Hickok, plus récemment,
  la lecture de son autobiographie Sourde, muette, aveugle,
  histoire de ma vie, l’a attisé de nouveau. Helen Keller était un
  personnage, un exemple qui avec l’aide de son éducatrice
  Anne Sullivan, apprit à lire, écrire et parler. Cela m’a
  toujours intrigué de comprendre comment des individus
  sourds privés de parole et d’écriture communiquaient
  entre eux et se comprenaient. La capacité qu’a une com-
  munauté à s’adapter, à déployer des systèmes pour
  inventer sa propre langue et à se dépasser pour exercer un
  droit fondamental simple, celui de l’accès au savoir, est
  tout à fait fascinant.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis15 = Thesis.create!(
  user_id: user15.id,
  title: "L'immortalité: qu'en dire, aujourd'hui",
  subtitle: "",
  year: Date.new(2013),
  resume: "Échapper à la mort et vivre pour l’éternité : une
  définition que nous connaissons tous de l’immor-
  talité. Depuis longtemps les Hommes ont eu peur
  de la mort et ont toujours cherché à y échapper.
  Peut-on réellement vaincre la mort ? Cette prise
  de conscience a été l’élément déclencheur lié au
  fantasme d’immortalité.
  Quelles sont les limites de cette idée et com-
  mentse manifeste-t-elle dans une réalité ? Mes
  intentions ne sont pas de montrer comment accé-
  der à l’immortalité, mais d’explorer et analyser ce
  qui a été fait à ce sujet. De quelle manière peut-
  elle prendre forme là où on ne l’attend pas ? Ce
  fantasme prit différentes formes au cours des
  siècles, en passant de la mythologie à la science-
  fiction. Il est difficile de situer chronologiquement
  la naissance de ce concept. Le but de mon projet
  n’est pas d’élaborer une recherche pointue sur les
  origines de cette idée, mais d’expliquer selon ma
  vision, ce qu’elle peut dégager.
  La fascination que nous lui portons nous permet
  d’aller au delà de sa définition première. Grâce à
  son imaginaire, l’Homme réussit à la détourner.
  Ma réflexion questionne la beauté de la fragilité
  humaine dans son interprétation de la mort,
  donc, de l’immortalité.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis16 = Thesis.create!(
  user_id: user16.id,
  title: "Du standard au non-conforme",
  subtitle: "",
  year: Date.new(2013),
  resume: "Il me semblait évident et nécessaire de débuter
  ce mémoire par cette définition dont le mot –
  amateur– est le point de départ de ma réflexion.
  Évident car le terme est, malheureusement, bien
  souvent mal interprété; nécessaire car il s’agit
  bien de préciser que son emploi se fera par la
  suite dans son sens premier et littéral, contraire-
  ment à l'usage péjoratif qu'il pourrait induire. Sa
  signification, donnée ici par le Robert précise
  donc qu’il s’agit bien d’une « personne qui aime,
  cultive, recherche ».
  Paul Morand écrit en 1933 :
  « Les Anglais répondent que seuls ils ont
  conservé le véritable esprit sportif pour qui
  le sport est un exercice, un jeu, un entraîne-
  ment aux vertus morales, et non un massacre
  de records, que seuls ils défendent l’amateu-
  risme désintéressé contre l’âpreté ou la bru-
  talité des professionnels, que seuls ils ne
  permettent pas à un vaniteux et mesquin
  nationalisme d’envahir les stades et de
  fausser les résultats, et qu’enfin partout au
  monde, sauf chez eux, le champion a tué le
  sportsman. »",
  license: "",
  link: "",
  school_id: school1.id
)
thesis17 = Thesis.create!(
  user_id: user17.id,
  title: "Les difficultés à décrypter le langage commun",
  subtitle: "",
  year: Date.new(2013),
  resume: "Un mot s’évaporant à l’oreille lors d’une conversation, une
  inscription lapidaire sur une tablette dans un musée, une a∞che
  de théâtre sur le mur d’une station de métro, un doigt désignant ce
  que l’enfant veut de sa mère. À quoi résumer ce terme « langage »
  aussi complexe qu’il questionne le monde de la linguistique, de
  l’histoire, de la science et de l’humain tout court ? Aussi signifiant
  pour les animaux que chez l’homme, traversant les espaces et le
  temps. Il serait bien laborieux et ambitieux d’apporter des ques-
  tions savantes supplémentaires avec mon « simple » bagage.

  Pourtant le langage, a pour moi aussi sa propre « image ».
  Le langage fait existence pour tous, mais pour chacun son expé-
  rience est unique. Le langage part de l’universel pour s’adresser
  à l’individu. Langage naturel, langage SMS, langage des fleurs,
  langage informatique, etc. Une liste exhaustive parfois contestée
  selon le statut du spécialiste concerné (linguiste, sémiologue,
  philosophe, scientifique, etc.). Qu’importe, le langage interroge ici
  une a≠aire de vécu et d’expériences singulières.

  L’écrivain Bringhusrt définit le langage comme étant ;
  « ce qui nous parle autant que ce que nous parlons. Par nos neurones, nos
  gènes et nos gestes, nos postulats partagés et lubies personnelles, nous
  sommes parlés et nous parlons plusieurs langages chaque jour en inte-
  raction avec nous-mêmes, avec les autres, d’autres espèces et les objets
  naturels ou faits par la main de l’homme – qui peuplent notre monde. » ",
  license: "",
  link: "",
  school_id: school1.id
)
thesis18 = Thesis.create!(
  user_id: user18.id,
  title: "Déchets ultimes du nucléaire",
  subtitle: "Transmettre la mémoire des sites de stockage",
  year: Date.new(2013),
  resume: "L’industrie nucléaire est un sujet qui a souvent été laissé volontaire-
  ment opaque par les gouvernements. Si un certain secret est inévitable
  sur le pendant militaire, on connaît aussi la tendance à « dédramatiser »
  le nucléaire civil, même face aux situations les plus embarrassantes.
  Car si l’énergie nucléaire n’est plus tout à fait nouvelle, elle reste
  encore aujourd’hui expérimentale
  : il existe des problèmes auxquels nous
  n’avons toujours pas de solutions satisfaisantes.
  L’un d’entre eux est la gestion des déchets produits par cette industrie,
  plus particulièrement des déchets dits ultimes, ceux en bout de chaîne
  de retraitement, et concentrant les plus forts taux de radioactivité. On
  les appelle déchets HAVL pour « Haute Activité, Vie Longue », en raison de
  leur très fort taux de radioactivité et de la durée interminable qu’il
  faut pour que celle-ci décroisse. Ce sont les déchets les plus dangereux
  du nucléaire. On en comptait 250  000 tonnes dans le monde en 2008.
  Depuis la fin des années 1970, des sites d’enfouissement en couche géolo-
  gique profonde sont mis à l’étude, excavés et utilisés pour le stockage
  définitif de ces déchets, devenus trop encombrants pour pouvoir simple-
  ment être entreposés plus longtemps. Ces Centres de Stockage de Déchets
  Ultimes (CSDU) visent à isoler ceux-ci des Hommes et de la biosphère
  pendant un période de 10 000 à 100 000 ans.
  Malgré l’inexpérience des autorités en la matière, un des enjeux majeurs
  de la gestion des déchets nucléaires présente et future repose sur une
  transparence complète et une communication à large échelle de ses dangers.
  Mais comment, sur une si longue période de temps, garantir la sécurité
  du lieu ? Une des craintes majeures pour ce site, mis à part les conditions
  de stabilité géologique du site, est celle d’une intervention humaine,
  volontaire ou non, qui aboutirait à l’ouverture du site, ou occasionne-
  rait des dommages à la structure, causant une catastrophe écologique.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis19 = Thesis.create!(
  user_id: user19.id,
  title: "Vitesse",
  subtitle: "Terme contemporain du temps",
  year: Date.new(2013),
  resume: "Nous avons pris conscience qu’une logique sublimi-
  nale gouvernait notre nouveau rapport à la vérité et au
  monde lui-même. Cette logique est celle d’une vitesse
  sans cesse augmentée. Une vitesse occupant une place
  prépondérante dans notre représentation du réel, qui fini
  par constituer le réel lui-même. Le temps fracturé se ra-
  mène aujourd’hui à une suite d’« immédiatetés ». L’unité
  de mesure des nouvelles technologies devient la nanose-
  conde. Il faut y voir la métaphore d’une espèce de folie
  anthropologique. Le monde n’est plus qu’un perpétuel
  empressement. Ce triomphe du « présentisme » ramène
  au rang d’une pure nostalgie la rythmique humaine de
  la durée dans sa représentation traditionnelle, y compris
  religieuse, calendaire et rituel. L’autorité symbolique du
  « tout de suite » va de pair avec la fracture relative de
  l’espace. L’une et l’autre sont en vérité les deux faces
  d’un unique phénomène.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis20 = Thesis.create!(
  user_id: user20.id,
  title: "Danser l'espace",
  subtitle: "",
  year: Date.new(2014),
  resume: "L’infinité des mouvements et des déplacements, les
  relations avec les autres, la temporalité et la musique, la
  conscience du corps et les sensations sont autant de choses qui
  me touchent particulièrement dans la danse contemporaine et
  dans ce qu’elle renvoi. Danser c’est appréhender l’espace et le
  vivre.
  Ma pratique et mes ressentis de la danse m’ont amené à
  différents questionnements. Comment agissons-nous avec
  l’espace ? Où dansons-nous ? Quelle place prend la diversité
  des cultures et des individus dans la danse ?
  La relation entre la danse et l’espace me semble fascinante
  par l’immensité d’interactions possibles. Cela m’a amené à
  la questionner. Comment la danse interagit avec l’espace ?
  Comment l’espace fait-il évoluer la danse ?
  J’aborderai dans un premier temps la notion d’espace. Puis je
  présenterai son évolution dans la danse. Je développerai ensuite
  la perception de celui-ci, et en découlera naturellement l’appro-
  priation de l’espace. Enfin, je partagerai mon point de vue de
  spectateur.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis21 = Thesis.create!(
  user_id: user21.id,
  title: "Expériences déplaçantes",
  subtitle: "Déplacements de voyage et déplacements dans la création",
  year: Date.new(2014),
  resume: "Grâce aux statistiques, on peut compter le nombre
  de touristes qu’il y a eu dans le monde en 2013. Celui-ci
  s’élève à plus d’un milliard de personnes.
  Mais combien de personnes ont-elles réellement voyagé
  cette année-là ?
     De nombreuses personnes, pour raconter leurs
  « voyages » disent qu’ils ont « fait » tel ou tel pays. En
  utilisant ce terme, ils ne se rendent pas compte que leur
  voyage n’en était pas un, c’était un acte de tourisme,
  c’est-à-dire qu’ils ne se sont pas mis dans un état de
  disponibilité pour observer, comprendre et se laisser
  toucher par une culture et un environnement différents
  des leurs. Ils se sont déplacés physiquement tout en
  restant dans leur confort et leurs habitudes.
  Dans ce mémoire, on ne fera pas l’apologie du loisir, des
  décors de cartes postales, des visites guidées et autres
  Club Med.
  On va s’intérrésser à ce qu’est une véritable expérience
  déplaçante. Celle qui nous vient facilement à l’esprit
  est celle du voyage, mais il en existe une autre, qui est
  celle de la création, et qui, si elle ne nécéssite pas de dé-
  placement physique, est elle aussi vecteur d’un certain
  déplacement. On peut alors se demander :
  Comment peut-on faire
  l’expérience d’un déplacement lors
  de voyages comme dans la création ?",
  license: "",
  link: "",
  school_id: school1.id
)
thesis22 = Thesis.create!(
  user_id: user22.id,
  title: "Au-dela de la norme",
  subtitle: "",
  year: Date.new(2014),
  resume: "Enfant, j’ai fréquemment cherché à estomper ma différence, ma dyslexie.
  En effet, elle est souvent assimilée comme un handicap 2 , peu visible, mais
  certes, diagnostiquée par des spécialistes qui renforcent son caractère sévère.
  Si chaque individu est singulier, certains comportent des nuances notoires
  rompant avec les normes dominantes, là où se trouve le handicap 3 , mais cela
  reste une fois de plus une question de point de vue.
  Dans le cas du handicap ou défi cience 4 , nous allons voir dans ce mémoire,
  de quelle manière une personne n’ayant pas les mêmes facultés d’obser-
  vation, d’objectivation, etc. peut insuffler un regard complémentaire
  aux normes dominantes. Ayant des diffi cultés à communiquer de manière
  verbale (écrit et oral), le design graphique m’a donné des outils d’une
  communication autre. L’un n’empêchant pas l’autre, mais ce mémoire fut pour
  moi un véritable challenge. N’étant pas scientifique, je n’ai nullement
  la prétention d’off rir une solution universelle pour outrepasser quelconque
  handicap, mais aborder la question de la dyslexie sous l’angle de l’organisation
  (qui est un problème chronique), qui présente selon moi des intérêts connexes
  transversaux. Dans une société où le temps est une valeur financière,
  et parce que nous sommes mortels, l’ère moderne cherche en vain
  des solutions pour sans cesse optimiser les espaces quadridimensionnels
  (temps et espace).",
  license: "",
  link: "",
  school_id: school1.id
)
thesis23 = Thesis.create!(
  user_id: user23.id,
  title: "De la pensée à la forme",
  subtitle: "Processus de formalisation d'un espcace mental dans le champ de la création artistique",
  year: Date.new(2014),
  resume: " Commencer par la forme artistique ». Autrement dit, remonter
  à sa genèse en la considérant comme production de l’espace
  mental de son créateur. Cela m’a paru être le moyen le plus
  adapté pour tenter de mener à bien cette enquête. L’élément
  principal qui a initié et guidé l’écriture de ce mémoire a été
  le choix des références, qui s’est présenté à moi sous forme
  d’évidence et d’attirance, dès les premiers temps de réflexion.
  Ce choix s’est fait de manière assez intuitive, par goût,
  par aspirations, et par fascination aussi. Les artistes, écrivains,
  peintres, musiciens du XX e siècle − principalement d’avant-
  gardes − dont les œuvres m’ont servi de fil conducteur, ont
  en commun la forme abstraite, qu’elle soit picturale, littéraire
  ou musicale. C’est d’ailleurs cette caractéristique qui m’a
  poussée à vouloir comprendre la forme. En effet, la radicalité
  de cette approche formelle et conceptuelle, semble repousser
  sans cesse les limites de ce qui a déjà été établi, conférant
  un certain mystère à la forme produite. C’est ce mystère
  qui m’a motivée à tenter de comprendre quelles avaient été
  les intentions de ces artistes, et leur approche du processus
  de création artistique, en tentant de saisir la vision, le point
  de vue qui avait guidé et sous-tendu leur mode de formalisation.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis24 = Thesis.create!(
  user_id: user24.id,
  title: "L'enfance, de l'imaginaire au réel, du concept à la création",
  subtitle: "",
  year: Date.new(2014),
  resume: "La pulsion créative est indispensable
  à l’artiste qui veut faire œuvre,
  mais elle est aussi en chacun
  de nous, dès le plus jeune âge,
  comme le montrent les expérimentations
  vocales ou manuelles des tout-petits
  enfants. C’est ce qu’explique
  Donald Winnicott — (1896 - 1971)
  un pédiatre, psychiatre et psycha-
  nalyste anglais — dans son œuvre
  Jeu et Réalité. Pour lui, « voir le monde
  de manière créative permet
  à l’individu de ne pas se contenter
  d’exister mais de vivre. » La « créativité
  enrichit la vie au quotidien. »
  Dans La cause des enfants, Françoise
  Dolto — (1908 - 1988) une pédiatre
  et psychanalyste française — explique
  que l’enfant n’est pas le même
  selon le lieu où il naît et que la famille
  doit construire un capital pré-sensoriel
  afin qu’il puisse le développer.
  Cependant, au cours de l’éducation,
  la société développe davantage
  le mimétisme et atténue considéra-
  blement la sensibilité artistique des enfants.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis25 = Thesis.create!(
  user_id: user25.id,
  title: "Interfaces en mouvements",
  subtitle: "",
  year: Date.new(2011),
  resume: "Il sera bientôt possible de transmettre sans fil des messages à travers le monde
  tellement facilement que chacun pourra porter et utiliser son propre dispositif.
  Nikola Tesla, 1909
  À la fin des années 1980, quand les téléphones portables ont fait leur
  apparition dans le cinéma hollywoodien, peu de gens étaient capables
  d'imaginer l'ampleur de l'intégration de ces appareils dans nos vies deux
  décennies plus tard. Dans le film Wall Street d'Oliver Stone de 1987, le
  téléphone portable du magnat de la finance Gordon Gekko n'est jamais
  loin de lui. C'est un des symboles de l'emprise qu'il exerce sur ses affaires
  et de l'influence qu'il a sur le reste du monde. « L'argent ne dort jamais »,
  Gordon Gekko et son téléphone non plus. Pour autant, avec la taille d'un
  gros fer à repasser et un prix de 3995 $US, les avancées révolutionnaires
  apportées par le DynaTAC de Motorola ne conviennent pas à toutes les
  poches. Qui aurait envie de se balader avec un téléphone de 800 grammes
  et 25 centimètres de haut sur lui ?
  De nos jours, la plupart des portables tiennent dans le creux d'une main
  et il y a, en France, plus d'abonnés mobiles que d'habitants (64,4 millions
  d'abonnés en 2010 selon l'ARCEP, certaines personnes possédant deux
  abonnements). Cela étant, l'existence dans la vie de chacun d'entre
  nous de ces appareils ne tient pas seulement à la capacité de l'objet
  à nous permettre de communiquer avec n'importe qui, n'importe quand
  et n'importe où. Elle provient aussi de la multiplicité des usages qu'il est
  possible d'en faire : agenda, mail, messagerie instantanée, accès à internet
  permanent, navigation routière, baladeur mp3, radio FM, réveil, lampe de
  poche, ou encore livre de recettes de cuisine, plan du métro, traducteur
  vocal, interface de publication pour blog, réservation de billets de train,
  système de montage audio ou vidéo, niveau à bulle... Il devient tellement
  naturel de se servir de son téléphone pour toutes ces tâches qu'on
  remarque à peine son existence dans notre vie quotidienne. Pour une",
  license: "",
  link: "",
  school_id: school1.id
)
thesis26 = Thesis.create!(
  user_id: user26.id,
  title: "La manipulation des statistiques",
  subtitle: "Comment les politiciens français crédibilisent leurs discours?",
  year: Date.new(2011),
  resume: "Aujourd’hui, il est incontestable d’admettre
  l’invasion des statistiques dans l’espace public. On
  entend par « statistiques » les données produites par
  le système statistique public français, autrement dit,
  les chiffres. À ne pas confondre avec la statistique,
  qui est la méthode utilisée pour les produire.
     En France, certains de nos hommes politiques
  manipulent les statistiques. Cela se sait de plus en
  plus grâce à des informations diffusées à la télévi-
  sion ou sur internet. Par exemple à travers des sites
  web personnels, des blogs, des sites d’informations
  générales ou de revues de presse politique comme
  le monde, libération, l’humanité, le figaro, etc. Il y a
  également des informations qui s’écoutent à la ra-
  dio ou qui sont publiées sous forme de livres. Ces
  derniers peuvent être écrits par des journalistes, des
  politiciens ou encore des personnes qui, se sentant
  particulièrement impliquées par un sujet, ont pris
  la démarche d’enquêter eux-même. Qu’importent
  leurs origines, nous ne pouvons affirmer la véracité
  des informations recueillies. Par contre, la quantité
  et la multitude de leurs présences nous permettent
  certaines interrogations.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis27 = Thesis.create!(
  user_id: user27.id,
  title: "Les paradis artificiels",
  subtitle: "",
  year: Date.new(2011),
  resume: "Tout commence par un fait, un statut : nous vivons dans une logis-
  tique stable. En tant que citoyen bien inséré dans la société, on aura
  élu un lieu comme son domicile, on en connaîtra éventuellement
  un autre pour exercer sa profession ; on possèdera en dehors de cela
  un petit cercle d’amis, du moins quelques fréquentations régulières
  parmi lesquelles les membres proches de cet ensemble filial qu’est la
  famille. Selon sa situation, que l’on soit plus ou moins pourvu, on
  a bâti en soi un rythme quotidien où sont ancrés les repères néces-
  saires pour mener une vie à peu près normale et satisfaisante. Ainsi,
  si je devais me présenter, je pourrais dire que je m’appelle Jacques,
  que j’habite Grenoble, que je travaille environ neuf heures par jour à
  l’entreprise Schneider Électricité, cela en dehors de mes congés payés
  où je pars rendre visite à mes petits enfants résidant en Autriche avec
  ma fille aînée. Si l’enchaînement des données — identité, emploi,
  situation familiale, loisirs — varie peu d’une personne à l’autre, c’est
  qu’il correspond aussi à l’ordre logique d’une société où l’on trouve
  sa place dans le travail, en l’échange duquel on perçoit son dû sous
  forme d’argent : monnaie courante pour subsister à ses besoins,
  des plus élémentaires aux plus superficiels. L’application de la loi
  a fait que, s’il y a un temps consacré au travail, il existe forcément
  un temps de vacance, où, comme l’indique le mot pris en son sens
  littéral, on manque temporairement à son poste habituel, on prends
  congé de son cadre de vie pour aller chercher autre chose, ailleurs.
  Il s’agit alors de combler de la meilleure façon ce temps vacant
  dont on dispose.",
  license: "",
  link: "",
  school_id: school1.id
)
thesis28 = Thesis.create!(
  user_id: user28.id,
  title: "Produire autrement",
  subtitle: "",
  year: Date.new(2011),
  resume: "Inspirée par les terroirs, la nourriture est un élément central et fonda-
  teur des sociétés humaines. Depuis les premières civilisations, l’homme a
  toujours produit les aliments dont il avait besoin en fonction de son envi-
  ronnement naturel, cependant, aujourd’hui, la production des ressources
  agricoles semble être dictée par une politique échappant aux considéra-
  tions locales.
  La révolution industrielle, l’exode rural, et l’uniformisation des modes de
  vies qui s’en suivit, ont profondément influencé la production agricole.
  L’agriculture a peu à peu évolué en parallèle d’une mondialisation crois-
  sante, et d’une course à la production de masse.
  Le paysan rural, qui cultive ses terres au rythme de la nature pour nourrir
  la population environnante est devenu une véritable image d’Épinal.
  Cette société paysanne autonome autrefois a fait place à des exploitants
  agricoles dépendants d’une part des nombreuses coopératives mais sur-
  tout de la politique agricole et des multinationales du secteur.
  Les terres agricoles sont devenues des « No Man’s Land », peuplées par
  des machines toujours plus performantes. Les maîtres mots sont devenus :
  immédiateté, rentabilité, et productivité.",
  license: "",
  link: "",
  school_id: school1.id
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
