-- phpMyAdmin SQL Dump
-- version 4.1.14.8
-- http://www.phpmyadmin.net
--
-- Client :  db518663206.db.1and1.com
-- Généré le :  Jeu 06 Août 2015 à 02:15
-- Version du serveur :  5.1.73-log
-- Version de PHP :  5.4.41-0+deb7u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `db518663206`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `extract` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`id`, `title`, `user_id`, `date`, `image`, `content`, `extract`, `status`) VALUES
(1, 'Histoire de PHP', 4, '2015-08-05', 'DSC_0103.JPG', 'PHP, tel qu''il est connu aujourd''hui, est le successeur d''un produit appelé PHP/FI. Créée en 1994 par Rasmus Lerdorf, la toute première incarnation de PHP était un simple jeu de binaires CGI écrits en langage C. Originairement utilisée pour suivre les visiteurs de son curriculum vitae en ligne, il nomme cette suite de scripts "Personal Home Page Tools" (ndt : Outils pour page personnelle), plus fréquemment appelée "PHP Tools". Au fil du temps, de plus en plus de fonctionnalités sont demandées, et Rasmus ré-écrit les outils PHP, produisant ainsi une implémentation plus large et plus riche. Ce nouveau modèle était capable d’interagir avec une base de données, mais aussi, fournissait un framework permettant aux utilisateurs de développer une application dynamique simple pour le web, comme des livres d''or. En Juin 1995, Rasmus » fournit le code source de PHP Tools au grand public, permettant ainsi aux développeurs de l''utiliser comme bon leur semblait. Ceci a également permis - et encouragé - aux utilisateurs de fournir des patches pour corriger les bogues, mais aussi pour éprouver la stabilité du produit.\r\n\r\nEn septembre de cette année là, Rasmus continua d''élargir PHP et - pour un temps très court - supprima le nom PHP. Faisant dorénavant référence aux outils sous le nom de FI (abréviation pour "Forms Interpreter" ou interpréteur de formulaire), la nouvelle implémentation incluait plusieurs fonctionnalités de base que nous connaissons encore aujourd''hui. Elle avait ces variables qui ressemblent au Perl, un système d''interprétation automatique des variables de formulaires, et une syntaxe qui s''intègre facilement dans HTML. La syntaxe elle-même était similaire à celle du Perl, bien que beaucoup plus limitée, plus simple, et un peu incohérente. En fait, pour embarquer du code dans un fichier HTML, les développeurs devaient utiliser des commentaires HTML. Malgré le fait que cette méthode ne soit pas accueillie avec un grand enthousiasme, FI continua de rassembler de plus en plus de monde, et fut accepté comme outil CGI --- mais toujours pas comme un langage. Cependant, ceci commença à changer les mois suivants ; en octobre 1995, Rasmus livra une nouvelle version totalement ré-écrite. Reprenant le nom de PHP, elle était maintenant nommée (brièvement) "Personal Home Page Construction Kit", et était la première version à mettre en avant le fait que PHP était considéré comme une interface de scripts avancée. Le langage fut délibérément architecturé pour ressembler à la structure du C, rendant ainsi son adoption facile pour les développeurs familiers avec les langages comme C, Perl et consorts. Dans un premier temps limité aux systèmes Unix et POSIX, son potentiel pour une implémentation sous Windows NT commença à être exploré.\r\n\r\nLe code fut de nouveau repris de zéro, et en Avril 1996, combinant les noms des précédentes versions, Rasmus introduisit PHP/FI. Cette implémentation de seconde génération commença à faire réellement évoluer PHP d''une simple suite d''outils vers un vrai langage de programmation. Il incluait un support interne pour les bases de données DBM, mSQL et Postgres95, pour les cookies, un support des fonctions définies par l''utilisateur, et bien plus. Ce mois de Juin, PHP/FI prenait un statut de version 2.0. Un point intéressant, cependant, était qu''il n''existait qu''une seule et unique version de PHP 2.0. Quand elle est finalement sortie du statut béta en Novembre 1997, le moteur d''analyse interne était déjà en cours de ré-écriture complète.\r\n\r\nBien qu''il fournît un cycle de développement très court, il continua de gagner en popularité dans ce monde où le développement web était encore très récent. En 1997 et 1998, PHP/FI comptait plusieurs milliers d''utilisateurs à travers le monde. Le site de surveillance Netcraft, en Mai 1998, indiquait qu''environ 60.000 domaines exportaient l''en-tête "PHP", indiquant ainsi que le serveur hôte l''avait d''installé. Ce nombre correspondait à environ 1% des domaines d''Internet de l''époque. Malgré ce chiffre impressionnant, la maturation de PHP/FI était condamnée à ses limitations ; bien qu''il y ait plusieurs contributeurs mineurs, il était encore principalement développé par un seul individu.', 'PHP, tel qu''il est connu aujourd''hui', 2),
(2, 'SPORT : Mahut, roi des wild-cards dans l''ère open', 4, '2015-05-05', 'Nicolas-Mahut.jpg', 'Qualifié ce mardi pour le deuxième tour de Wimbledon pour lequel il bénéficie d''une invitation, Nicolas Mahut apprenait dans la foulée auprès de nos confrères présents à Londres qu''il était tout simplement le joueur dans l''ère open à avoir bénéficié le plus de wild-card en tournois du Grand Chelem. Plutôt sceptique face à cette statistique, l''Angevin l''a d''abord mise en doute. BR\r\n\r\n"L’info ne me paraît pas bonne, il faut vérifier, onze, ça me paraît beaucoup. Je n’en ai eu aucune à l’US Open", signalait-il, avant que l''incertitude ne soit finalement levée, le record tenant en fait sur les tableaux de double et de simple confondus. Cela n''empêchait pas le Français d''être reconnaissant envers ses bienfaiteurs du All England : "J’ai eu l’occasion de remercier Andrew Jarrett parce que ça fait trois fois que je l’ai ici."\r\nBR\r\nEt Mahut de signaler avoir été victime d''une "petite alerte derrière la cuisse à la fin du deuxième (set)", qui aura nécessité la venue du kiné sur le court. Je n’ai pas encore vu les osthéo, mais je ne suis pas trop inquiet… Je suis arrivé bien préparé, j’ai gagné des matches, le jeu est là. Je vais avoir un prochain tour très difficile, mais j’espère réussir un grand Wimbledon, bien sûr." Il retrouvera le vainqueur du duel opposant son compatriote Jérémy Chardy à la tête de série n°6 et finaliste en 2010, Thomas Berdych.   BR BR\r\nsource : http://www.sports.fr/tennis/wimbledon/scans/mahut-roi-des-wild-cards-dans-l-ere-open-1273126/', '"L’info ne me paraît pas bonne"', 1),
(3, 'mobile', 4, '2015-08-05', '1438808957531-1015075209.jpg', 'Contenu mobile', 'Extrait mobile', 0),
(4, 'TECH : La feuille de match Informatique, l''essayer c''est l''adopter !', 4, '2015-08-06', 'feuille-match-informatisee.jpg', 'Une révolution est donc en marche. Elle balaiera sur son passage des décennies d’habitudes. Quel dirigeant ou entraîneur, quel licencié ou arbitre ne s’est jamais plié à l’immuable rituel de la feuille de match, ce si célèbre morceau de papier à noircir consciencieusement, dans un coin de vestiaire ou sur un bout de table, le paquet de licences à la main ? D’ici quelques mois, ces scènes presque patrimoniales du football seront à classer au rayon des souvenirs.\r\nD’ici quelques mois, en effet, quelque 30.000 tablettes tactiles auront été distribuées à l’ensemble des clubs de la FFF. Elles seront les équipements incontournables et les symboles de l’avènement de la feuille de match informatisée (FMI), le tout nouvel outil digital développé par la Fédération, plus que jamais résolue à faire des technologies modernes un atout pour le football hexagonal et pour elle-même. Dès aujourd’hui et, plus encore, pour demain.\r\n\r\nExpérience généralisée\r\nLa finalité du projet tombe sous le sens : faciliter le travail de ceux qui ont en charge la feuille de match, aussi bien dans les clubs que dans les ligues et districts, sans oublier la FFF, en la dématérialisant et en accélérant la transmission des informations qu’elle contient. À terme, l’intégralité des matches de compétition sera concernée par cette innovation, qui s’ajoute à celles introduites ces dernières saisons - principalement via le logiciel footclubs - dont la mise en œuvre a permis de simplifier considérablement la gestion sportive, administrative, comptable, du football.\r\nAvant même d’être réellement officialisée, la FMI est déjà un succès. Après un trimestre de phase pilote sur certaines épreuves des ligues de Bourgogne, Languedoc-Roussillon, Normandie et Picardie, des districts de l’Eure et du Loiret, ainsi que de la FFF (Division 1 féminine), son expérimentation, lancée en septembre dernier, a été étendue à l’ensemble des instances régionales pour la seconde partie de saison. Cette extension doit être l’occasion pour les ligues mais aussi les districts de s’impliquer et d’appréhender dès maintenant le nouveau produit, que les premiers mois de test ont déjà permis d’améliorer. Elle s’opère dans le cadre du règlement adopté par l’Assemblée fédérale du 13 décembre 2014. \r\n\r\nLa tablette en vedette\r\nDe nombreux clubs (ceux des compétitions concernées, essentiellement en DH seniors) vont donc découvrir la tablette et l’application mobile consacrée à la feuille de match, également accessible à partir d’autres équipements (iPad, tabelette Androïd…). Hormis quelques choix supplémentaires proposés en option (buteurs, statistiques…), les concepteurs de la FMI, opérationnelle en mode connectée ou non, se sont attachés à transposer scrupuleusement, du papier au digital, la procédure existante, afin de ne pas dérouter les apprentis utilisateurs invités à se familiariser avec ce nouvel univers.\r\nLes préposés à la feuille de match (munis d’un identifiant et d’un mot de passe pour ouvrir l’application de manière sécurisée) retrouveront donc, écran après écran, les étapes habituelles pour la saisie des informations relatives à la tenue d’une rencontre : composition d’équipe, contrôle des licences et pose de réserves, signature, avant celle-ci ; inscription des faits de match (discipline), des réserves techniques, des éventuelles observations, et signature, après celle-ci. La saisie terminée et validée, l’envoi de la FMI via la tablette, transférera directement le document au centre de gestion. À la clé, un traitement beaucoup plus aisé et rapide.\r\n"L’expérience montre que le produit, débarrassé des petites imperfections originelles, est bon et bien perçu par les clubs, souligne Jean Lapeyre, directeur juridique de la Fédération. Néanmoins, il nécessite de bien préparer les choses à l’avance, de s’investir dès le départ pour que tout se passe bien. Certains ont commis l’erreur de considérer la FMI comme facultative et ce fut un échec. Son caractère obligatoire doit être compris de tous, clubs et officiels. La FFF accompagne régulièrement les sites pilotes en termes de suivi, de formation et de documentation. Avec ce projet, on touche à ce qui constitue le cœur de notre sport, le terrain et le match. Le football !".\r\n\r\nEn savoir plus sur http://www.fff.fr/actualites/150885-558505-fmi-lessayer-cest-ladopter#czF2m8qRPVrKpL0s.99', 'Rangez vos stylos et sortez vos stylets. La Feuille de Match Informatisée (FMI) arrive. Ce support numérique relèguera bientôt dans l’histoire du football le traditionnel document papier, souvent fastidieux à remplir. Après une large phase d’expérimentation cette saison, le déploiement progressif de la FMI sera amorcé en septembre prochain pour s’achever en 2016-2017.\r\nEn savoir plus sur http://www.fff.fr/actualites/150885-558505-fmi-lessayer-cest-ladopter#czF2m8qRPVrKpL0s.99', 1),
(5, 'TECH : Les géants de la Silicon Valley mettent les drones sur orbite', 4, '2015-08-06', '1142439_les-geants-de-la-silicon-valley-mettent-les-drones-sur-orbite-web-tete-021246917866_660x352p.jpg', 'Facebook, Google et Amazon ont multiplié les annonces concernant les drones.Malgré les obstacles, les industriels s’en emparent également.\r\nLa Silicon Valley a l’art des annonces spectaculaires. Le 30 juillet, Facebook a dévoilé les contours d’un drone à énergie solaire qui permettrait de connecter à Internet les régions les plus reculées du monde. « Il y a quatre milliards de personnes dans le monde qui n’ont pas accès Internet. Il y a beaucoup à faire », a justifié Jay Parikh, son vice-président en charge de l’ingénierie et des infrastructures.\r\nConçu en fibre de carbone, connecté à Internet grâce au laser, et pouvant voler pendant trois mois, le drone, qui fait la taille d’un Boeing 737 (42 mètres) et pèse 400 kilos, permet une connexion de plusieurs dizaines de gigabits par seconde, soit 10 fois plus que les technologies existantes. Avec l’Aquila, Facebook emboîte le pas à Google, qui s’est offert en 2014 les drones de Titan Aerospace, fonctionnant eux aussi à l’énergie solaire. Mais Google ne s’en tient pas là. Le moteur de recherche, qui veut rivaliser avec Amazon, a également testé la livraison de colis par drone.\r\nLivraison de colis\r\nNe voulant pas rester sur le bas côté, les géants de la Silicon Valley sont souvent précurseurs dans l’utilisation d’une nouvelle technologie, même si elle n’est pas tout à fait mature. Ils investissent alors massivement, souvent bien avant les acteurs historiques.\r\nLe patron d’Amazon, Jeff Bezos, habituellement si discret, avait donné le ton fin 2013 en annonçant vouloir livrer des colis par drone dans les 4 ou 5 prochaines années. A l’époque, ses détracteurs avaient crié à l’effet d’annonce. « Je sais que cela ressemble à de la science fiction », avait-il lancé. Deux ans plus tard, on ne peut que lui donner raison. Les projets les plus spectaculaires foisonnent. En février, la chaîne de restaurant singapourienne Timbre a commencé à utiliser des drones pour servir plats et boissons, aux cotés des serveurs, dans ses établissements.\r\n\r\nEn savoir plus sur http://www.lesechos.fr/tech-medias/hightech/021247176904-les-geants-de-la-silicon-valley-mettent-les-drones-sur-orbite-1142439.php?xwgHa47rfXX7fidV.99', 'Facebook, Google et Amazon ont multiplié les annonces concernant les drones.Malgré les obstacles, les industriels s’en emparent également.', 1),
(6, 'SPORT : Federer, une «marque» qui fait vendre', 4, '2015-08-06', 'rodger.jpg', 'En se basant sur les contrats de sponsoring, la présence sur les réseaux sociaux, le temps accordé aux partenaires commerciaux et bien d''autres critères, la London School of Marketing a établi un classement des sportifs qui sont le plus "marketables". Et s''il n''est que n°2 mondial au classement ATP, Roger Federer est le champion lorsqu''il s''agit de faire vendre. Il domine un classement où les tennismen et les golfeurs sont largement représentés. Parmi les 20 sportifs classés, seules deux femmes sont présentes et elles pratiquent également le tennis. Il s''agit de Maria Sharapova (12e) et de Serena Williams (20e).\r\nJUMP JUMP\r\nLe classement des athlètes les plus rentables :\r\nJUMP JUMP\r\n1. Roger Federer – Tennis\r\nJUMP2. Tiger Woods – Golf\r\nJUMP3. Phil Mickelson – Golf\r\nJUMP4. LeBron James – Basketball\r\nJUMP5. Kevin Durant – Basketball\r\nJUMP6. Rory McIlroy – Golf\r\nJUMP7. Novak Djokovic – Tennis\r\nJUMP8. Rafael Nadal – Tennis\r\nJUMP9. Mahendra Singh Dhoni – Cricket\r\nJUMP10. Cristiano Ronaldo – Football\r\nJUMP11. Kobe Bryant – Basketball\r\nJUMP12. Maria Sharapova – Tennis\r\nJUMP13. Lionel Messi – Football\r\nJUMP14. Usain Bolt – Track\r\nJUMP15. Neymar – Football\r\nJUMP16. Andy Murray – Tennis\r\nJUMP17. Kei Nishikori – Tennis\r\nJUMP18. Derrick Rose – Basketball\r\nJUMP19. Floyd Mayweather – Boxing\r\nJUMP20. Serena Williams – Tennis', 'En se basant sur les contrats de sponsoring, la présence sur les réseaux sociaux, le temps accordé aux partenaires commerciaux et bien d''autres critères, la London School of Marketing a établi un classement des sportifs qui sont le plus "marketables". Et s''il n''est que n°2 mondial au classement ATP, Roger Federer est le champion lorsqu''il s''agit de faire vendre. Il domine un classement où les tennismen et les golfeurs sont largement représentés. Parmi les 20 sportifs classés, seules deux femmes sont présentes et elles pratiquent également le tennis. Il s''agit de Maria Sharapova (12e) et de Serena Williams (20e).', 1),
(7, 'APPRENDRE AUTREMENT : Un lycée de la mer !', 6, '2015-05-12', 'Vue-ExterieurMAJ-VAGUE-logo1.jpg', 'Le lycée public maritime Florence Arthaud est un établissement d’enseignement secondaire dédié à la formation professionnelle maritime\r\ndans toutes les disciplines du champ des métiers de la mer.\r\nIl est animé par une équipe volontaire et dynamique qui affiche ses objectifs dans le cadre\r\n– d’un projet d’établissement (2005 révisé 2009) et\r\n– d’une certification de management par la qualité (ISO 9001-2008).\r\nIl accueillera en septembre 2015, dans un immeuble neuf,  près de 250 élèves et apprentis  dont une centaine d’internes\r\net réalisera environ 50000 heures stagiaires de formation continue pour adultes.\r\nNotre objectif est de fournir aux secteurs professionnels concernés des personnels\r\nformés aux standards internationaux et prêts à acquérir les compétences spécifiques des entreprises.\r\nNOUVELLE ADRESSE AU 3 JUILLET 2015 : 36 RUE DE LA CROIX-DÉSILLES  35400  SAINT-MALO', 'Le lycée public maritime Florence Arthaud est un établissement d’enseignement secondaire dédié à la formation professionnelle maritime\r\ndans toutes les disciplines du champ des métiers de la mer.', 1),
(8, 'SORTIE : Une ballade en Ardèche', 6, '2015-08-06', 'ardeche-coux_0_0.jpg', 'Visiter l''Ardèche, c''est partir à la découverte de ses 339 villes et villages, de sa richesse naturelle, historique, architecturale et patrimoniale. \r\n\r\nDe l''Ardèche Verte à l''Ardèche Méridionale en passant par la Montagne Ardéchoise, découvrez Annonay, ville de la montgolfière, Privas, préfecture de l''Ardèche située aux portes du Parc Naturel Régional des Monts d''Ardèche, Aubenas, carrefour historique entre Auvergne et Provence. \r\n\r\nAu fil des nombreuses routes touristiques ardéchoises, les 19 Villages de Caractère vous dévoileront leurs traditions et savoir-faire, les 3 stations thermales vous insuffleront une pause bien-être, le riche terroir gastronomique et viticole enchantera vos papilles de mille saveurs. \r\n\r\nDes sites réputés comme la Grotte Chauvet ou la magnifique arche naturelle de Vallon Pont d''Arc ont également fait la notoriété de nombreux petits villages d''Ardèche préservés. \r\n\r\nTrès touristique, le département de l''Ardèche dispose de nombreux gîtes, campings, chambres d''hôtes et hôtels vous proposant leurs services.', 'Les villages de caractère, l’Ardèche y dévoile son histoire et ses traditions ! Châteaux féodaux et donjons, églises néogothiques et dolmens, ruelles perchées et forteresses médiévales, terrasses volcaniques et ponts suspendus, les 20 villages de caractère de l’Ardèche forment un vrai kaléidoscope de traditions. Une richesse architecturale qui séduira les curieux…\r\nDe l''Ardèche Verte à l''Ardèche Méridionale en passant par la Montagne Ardéchoise, découvrez Annonay, ville de la montgolfière, Privas, préfecture de l''Ardèche située aux portes du Parc Naturel Régional des Monts d''Ardèche, Aubenas, carrefour historique entre Auvergne et Provence.', 1),
(9, 'SORTIE : Une exposition sur le tatouage', 6, '2015-08-06', 'tatoueurs_tatoues.jpg', '« Nous avons rassemblé 300 pièces, de l’Antiquité à nos jours, venant des quatre coins du monde ; c’est du jamais vu ! » s’enthousiasment les commissaires de l’exposition, Anne & Julien, également créateurs et rédacteurs en chef de la revue HEY! Gravures, morceaux de peau, représentations sur sculpture, statuettes, objets servant à tatouer,… Tout a été pensé pour offrir aux spectateurs une rétrospective exceptionnelle mariant richesse et éclectisme. Et parce qu’on ne peut pas comprendre cet art sans s’intéresser à ses artistes, l’exposition fait la part belle aux pionniers contemporains qui l’ont fait évoluer. « L’histoire a été façonné par les échanges assez confidentiels entre tatoueurs. Dans les années 60, nombreux sont ceux qui à l’instar des compagnons, bougeaient de shop en shop pour transmettre leur savoir-faire. C’est à eux que l’on doit la reconnaissance et la vitalité de cet art » précise Julien, ravi de faire découvrir les coulisses de cet univers au grand public. Pour l’occasion, les deux commissaires ont d’ailleurs demandé à 13 maîtres, dont le Français Tin-Tin et le Japonais Horiyoshi III, de tatouer des prototypes reproduisant des parties de corps humain. A côté de ces 13 volumes, 19 projets de "dos" peints sur des kakémonos jalonnent le parcours de cette manifestation qui se clôture par un cabinet photographique tapissé de clichés de corps tatoués à l’échelle 1. De quoi permettre au tout un chacun de réfléchir sur le sens de cette démarche. Comme le rappelle Julien : « Confier sa peau n’a rien d’un acte anodin. C’est quelque part une manière de rentrer dans une histoire… »', 'Le musée du Quai Branly explore, avec l''exposition Tatoueurs, tatoués, l’univers du tatouage. Il propose une approche inédite de cette pratique ancestrale en rassemblant trois cents œuvres historiques et contemporaines provenant du monde entier. \r\n\r\nLe parcours met en perspective la dimension artistique du tatouage ainsi que son histoire, depuis les premiers témoignages de son existence, à travers toutes les cultures. Le musée du Quai Branly fait ainsi écho à l’intérêt grandissant porté à cet art, à la fois objet de fascination et marquage identitaire, dans nos sociétés contemporaines.', 1),
(10, 'DIVERTISSEMENT : FIFA 16 en avant première', 4, '2015-08-04', 'fifa16.jpg', 'Tout en bénéficiant d''une refonte de son interface, plus claire donc a priori plus lisible, le mode Carrière introduira cette saison une gestion des matchs et tournois de pré-saison. Au-delà de l''aspect financier, pas négligeable pour arrondir le budget transferts, ces affiches jouées à l''autre bout du monde donneront l''opportunité de tester de nouvelles formations tout en intégrant de nouveaux éléments dans la rotation.\r\nJUMP\r\nA la manière d''un Football Manager, il sera également possible d''assigner des entraînements spécifiques à certains joueurs, en sélectionnant chaque semaine cinq éléments de l''effectif pour leur faire travailler un point particulier de leur jeu, en espérant gratter quelques points de stats de-ci de-là. Là encore, les jeunes pousses devraient sans doute tirer profit de de ces ateliers particuliers pour s''améliorer dans l''ombre en attendant leur heure.\r\nJUMP\r\nLa présentation générale du mode Carrière devrait également connaître de stubiles améliorations. Les fidèles de la Bundesliga bénéficieront ainsi de l''habillage officiel utilisé lors des retransmissions télé, à l''image des matchs de Premier League la saison passée. A en croire EA Sports, les commentaires se focaliseront davantage en cours de saison sur les performances des uns et des autres, qu''il s''agisse de rumeurs de transfert, des positions au classement de l''équipe ou des prestations individuelles, en espérant que cela ne soit pas trop scripté là encore.\r\nJUMP\r\nCôté transferts, FIFA 16 autorisera la signature de joueurs libres même une fois le mercato bouclé. Les développeurs promettent également une extension des rapports de scouts qui resteront valables durant une année et non plus trois mois, le report des reliquats du budget transfert d''une année sur l''autre, des options de prêt étendues (de trois à six mois, voire deux ans), des matchs amicaux sans limite de remplacements, et enfin beaucoup plus de transferts de gros joueurs d''un club à l''autre, pour mieux tenir compte de la frénésie qui s''empare souvent de l''été.', 'Tout en bénéficiant d''une refonte de son interface, plus claire donc a priori plus lisible, le mode Carrière introduira cette saison une gestion des matchs et tournois de pré-saison. Au-delà de l''aspect financier, pas négligeable pour arrondir le budget transferts, ces affiches jouées à l''autre bout du monde donneront l''opportunité de tester de nouvelles formations tout en intégrant de nouveaux éléments dans la rotation.', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
