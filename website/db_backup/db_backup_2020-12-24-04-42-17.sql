#
# TABLE STRUCTURE FOR: ci_sessions
#

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4j09f4i06nm3mnfk0ra79ar9092j0nsp', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608752232, '__ci_last_regenerate|i:1608752232;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"4\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dngm2ai19nldl826ju46dr876mqmtb21', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608752681, '__ci_last_regenerate|i:1608752681;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";success|s:22:\"Slider added successed\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}active_menu|s:1:\"4\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gv165lvc837kibs6vm3bse2f3j1nv384', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752357, '__ci_last_regenerate|i:1608752357;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b96g8mvo9mpukq6i5iokdlom9j2cjpur', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752362, '__ci_last_regenerate|i:1608752362;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hcuma7ga5005k0ulqbem93mvh3io111a', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752362, '__ci_last_regenerate|i:1608752362;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('acja4698dh0klhhalt6itf9ejmufc5f8', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752481, '__ci_last_regenerate|i:1608752481;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1db21pr9dq52uks8va8e1l3ehigj7nj4', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752504, '__ci_last_regenerate|i:1608752504;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9tv49dq9e613cm833702c9k530tlnfrd', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752504, '__ci_last_regenerate|i:1608752504;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gp6h9qo5bnklbn4c6q86ucp6pljf5n1v', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752510, '__ci_last_regenerate|i:1608752510;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s2t3ahea0vpql14cvbpet3r100jcof14', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752512, '__ci_last_regenerate|i:1608752512;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fmaqv5loa02801hulsflvdb28o2ipvjo', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752581, '__ci_last_regenerate|i:1608752581;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3e8khhch78evgd9dlf9ovaaei9hkgobv', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752584, '__ci_last_regenerate|i:1608752584;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('t9nek04ba1n3epm2trqmrdr9rbhhgtfs', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752586, '__ci_last_regenerate|i:1608752586;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('56bqqt8njd2slaunbmu6m3d49i6lmqcm', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752586, '__ci_last_regenerate|i:1608752586;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tqumiv7jnde1a3rea6gdehg9362hk118', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752591, '__ci_last_regenerate|i:1608752591;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bmfruc3kv8r7nctutmf7bhu9vleuknas', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752591, '__ci_last_regenerate|i:1608752591;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s53huavctpun1n8sbatseeuaeelpt89k', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608753626, '__ci_last_regenerate|i:1608753626;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";success|s:22:\"Slider added successed\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}active_menu|s:1:\"4\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('faqqo37i9setgih126vdm059usqertsu', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752811, '__ci_last_regenerate|i:1608752811;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('coigrhbtrqn1ocu3kpvrvhi8llfkgv0r', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752828, '__ci_last_regenerate|i:1608752828;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('f0bhetfbme27d9hat6u6erhecqq5eip6', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752831, '__ci_last_regenerate|i:1608752831;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('i7o70j3mmi8m35i4p7snt7qjcknvmerj', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752832, '__ci_last_regenerate|i:1608752832;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bg0a9dqvpq988j7qha9picdrb9m9u3a4', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752833, '__ci_last_regenerate|i:1608752833;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9cu3sffrmbttc0ta4lmijges22ch601j', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752838, '__ci_last_regenerate|i:1608752838;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('akluu0l7f2a44cd0lhpg61pskaaji2va', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608752841, '__ci_last_regenerate|i:1608752841;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ool77fk3u213uo5o56fpfv75di12nnj6', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753167, '__ci_last_regenerate|i:1608753167;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tlkkk84h2g8m2jo0n73iokqin33mh7sq', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753167, '__ci_last_regenerate|i:1608753167;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3i45oed09ehhrc2fhs5l3173aeau109d', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753169, '__ci_last_regenerate|i:1608753169;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e1dnsg5b1ie6vf7ofrsh5jgna0f7k21l', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753170, '__ci_last_regenerate|i:1608753169;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h3kcld84gjqjcun95o83taklb4q7i326', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753171, '__ci_last_regenerate|i:1608753171;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a4f9k251mfovb2drfps5rp6si76eevll', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753205, '__ci_last_regenerate|i:1608753205;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('60vmu9vkm4cd8oemeouf0dbajgrkaml7', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753205, '__ci_last_regenerate|i:1608753205;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e0l8abg6rvn1ntnculv0c6iqd49fmrb3', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753206, '__ci_last_regenerate|i:1608753206;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4q5ef9lt9219k45p8u62c6ld2o2ov4jo', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608754048, '__ci_last_regenerate|i:1608754048;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"26\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('63ku863cj663r223n4vuf1akemsq7f55', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753633, '__ci_last_regenerate|i:1608753633;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m5v951oqbu9i20mdf20m87btrjscse29', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753640, '__ci_last_regenerate|i:1608753640;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ko5bo9n0irt1dj0hnjrkslojj6tb3qjo', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753648, '__ci_last_regenerate|i:1608753648;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8enc81ee8p0c9boun90k9satd32b0d2j', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753660, '__ci_last_regenerate|i:1608753660;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6iv4p8a45qfso1dsgu94ot6fd85r5di8', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753660, '__ci_last_regenerate|i:1608753660;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('g9dno7lsokobo97slvsimhl1bhmi0098', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753663, '__ci_last_regenerate|i:1608753663;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cv5qjrsljlqkjac1pr8ac613fp6rh4vv', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753663, '__ci_last_regenerate|i:1608753663;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d0dgfuv88pkh25e6830v5ae8n1lnvgcb', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753664, '__ci_last_regenerate|i:1608753664;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('evscubl428srl2pfv0v5jeej5rboi1ue', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753828, '__ci_last_regenerate|i:1608753828;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ngedlkus6bkmtjsrar7do39874jag3f1', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753832, '__ci_last_regenerate|i:1608753832;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5fhk9nvtbq1cdrgotkek8bcp2pf7dub5', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753841, '__ci_last_regenerate|i:1608753841;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9e3uahi6jnkek8u6hf79si54sfcibvg9', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753903, '__ci_last_regenerate|i:1608753903;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rtkrchoc81cpm99ukjekadoscgj51qsp', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753904, '__ci_last_regenerate|i:1608753904;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1rh8doggkjcfr1pf8l01qe4ffaibnk59', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608753905, '__ci_last_regenerate|i:1608753905;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8mi35ic50opoa1cd3gcljrb7ok61u2s7', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608754381, '__ci_last_regenerate|i:1608754381;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|i:139;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mm7cm68alip2is7bkb3kn44g1e83dun3', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754055, '__ci_last_regenerate|i:1608754055;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('21p5eullhl277c4jvsehue11rv6ft3f2', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608755429, '__ci_last_regenerate|i:1608755429;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"26\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vqn3hkqlnklibdbs81fjtp2q1t11a6hh', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754918, '__ci_last_regenerate|i:1608754918;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mt0pk3hkb32len9b3g21916lafhkvjo8', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754920, '__ci_last_regenerate|i:1608754920;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nel78o9103eiu1b5p90j4hk7qiq6mrrn', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754921, '__ci_last_regenerate|i:1608754921;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('smdf8ep8n5jkst3sps0petkve4u7rk3d', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754922, '__ci_last_regenerate|i:1608754922;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5lfhaguhj5mh43qlugikitcfcq90bso8', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754927, '__ci_last_regenerate|i:1608754926;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nm1kh14mjq5tquuiaj0l5qf3rj27213i', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754930, '__ci_last_regenerate|i:1608754930;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('aa33ion7dehvi08jl7gtchcjmjqu1me8', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754931, '__ci_last_regenerate|i:1608754931;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6qi4co1t2urgmeaqisb2su1nk3v706fc', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754933, '__ci_last_regenerate|i:1608754933;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b0gbiioeqi893irg2e1dm2llpm39i1nu', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754933, '__ci_last_regenerate|i:1608754933;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('apa49ae77q9d9svlbvmor3oa8mg728sc', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754953, '__ci_last_regenerate|i:1608754952;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mertmkevmi5oh7ngjl7umrt51pnrcr7d', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754959, '__ci_last_regenerate|i:1608754959;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4gvqni47lvjrolso4mcaoh6ervu70k60', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754967, '__ci_last_regenerate|i:1608754967;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mv21smeir1lerdqviurftpg1gcfl38al', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754977, '__ci_last_regenerate|i:1608754977;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dmbveq826mkmn7jtvu5h5d4meghsfj06', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754983, '__ci_last_regenerate|i:1608754983;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vc9mgahqpaesplhrnpm20r3h0nh69411', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754984, '__ci_last_regenerate|i:1608754984;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cfhjhs7hb91tqd24ab493fm88i6d7t5u', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754992, '__ci_last_regenerate|i:1608754992;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('gfq0kshq3lqv5ahj83n262rdv65rbt15', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754992, '__ci_last_regenerate|i:1608754992;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rpo4arnff1gl2qcdn1nr3l618ns35ae5', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754994, '__ci_last_regenerate|i:1608754994;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m2ddc4luf2enlkt24jnrgjo2it6doo7k', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754994, '__ci_last_regenerate|i:1608754994;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0pqdrrk9jdh314vlu1547drl91or7ggq', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754996, '__ci_last_regenerate|i:1608754996;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ddqtgi89at73lerln3qpup1r35o7t5q3', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608754998, '__ci_last_regenerate|i:1608754998;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n4b6atonkko39mab3lieo3qo4he12tlg', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755001, '__ci_last_regenerate|i:1608755001;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('okjr2farvp1chs6un4d0qopem77vverk', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755007, '__ci_last_regenerate|i:1608755007;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('sc1lg4cqr8ans13l6gvk0ac6epfdnc8r', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755015, '__ci_last_regenerate|i:1608755015;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0l8hfu5sa91705htje9mjivmq7t8mb4e', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755015, '__ci_last_regenerate|i:1608755015;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ov0n1pv65sj1jjo17k1ldo29eqaqd11q', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755021, '__ci_last_regenerate|i:1608755021;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1p46uqqoromeo7u6a1ns8q3n29brp28g', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755021, '__ci_last_regenerate|i:1608755021;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('i8ab7lnjffla9vto89ajlqnd88rtemic', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755403, '__ci_last_regenerate|i:1608755403;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jmfvmudfcai9e3if8g0970tblvq8bedg', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755403, '__ci_last_regenerate|i:1608755403;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j6oqa8e6fj3m00dn5sa5367416s16hjj', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755406, '__ci_last_regenerate|i:1608755406;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ehs1gt38o1l158rk8vrqd8k7lkpn77vp', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755406, '__ci_last_regenerate|i:1608755406;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6k1p97apsk2g5tn7fe0onblu9i8cth60', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755407, '__ci_last_regenerate|i:1608755407;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s92kra9tihmp0uvubtcm8cvguedv3hf8', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755412, '__ci_last_regenerate|i:1608755411;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0fvmrvhoq4mjbcn3kt19tue9hj39n8fb', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608756038, '__ci_last_regenerate|i:1608756038;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:1:\"1\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r13jommt17sh3jiufbd73hq0q95uk8bs', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755595, '__ci_last_regenerate|i:1608755595;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('h4f09ldihbbptv8u0j2ft5h1sd1g51r8', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755604, '__ci_last_regenerate|i:1608755604;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('c5oe4i89g6n5184anuhsou018giaaktn', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755604, '__ci_last_regenerate|i:1608755604;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('voq4s5d5tr3j9vh0kr2d6urverk19gp3', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755607, '__ci_last_regenerate|i:1608755606;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('43g7cbqr205gqmsucq6bu5esagbatc7d', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755607, '__ci_last_regenerate|i:1608755607;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('24koiubthgpd9oj8d08ludgo5v1vs171', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755608, '__ci_last_regenerate|i:1608755608;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hnq8o1ha81h7it0l15iedchs49oj6ivp', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608755610, '__ci_last_regenerate|i:1608755610;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hdsn3lajfckthuh7b55sbnon3ldbegiv', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608756380, '__ci_last_regenerate|i:1608756380;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"26\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('24u29p0p8sgfno0otgblkepnphr0vnn9', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608757707, '__ci_last_regenerate|i:1608757707;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"26\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tel42buhd4rfdhvrsu8mi47nsi9411t4', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756460, '__ci_last_regenerate|i:1608756460;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('j6qp7mu3sjq3csqbvls05ri2ujc2bd0v', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756501, '__ci_last_regenerate|i:1608756501;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qbgdirmpfpqmpkdvr1rqgj94h0fdjvh7', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756510, '__ci_last_regenerate|i:1608756510;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qb1hg6laporo97td2g7arufb9tabpish', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756514, '__ci_last_regenerate|i:1608756514;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('psebst6hkg0a39bn6us7uqrtr46583e8', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756517, '__ci_last_regenerate|i:1608756517;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('maaiukuru5verefrajcbcri7rma99rts', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756519, '__ci_last_regenerate|i:1608756519;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pog49tv7nh2c57vtceh5kao60aiaugm4', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756522, '__ci_last_regenerate|i:1608756522;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('v31v3rtbkoul7bm38q7p076l9bofp8bm', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756523, '__ci_last_regenerate|i:1608756523;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8qni83bbunm5osj28h7pq27t6jodl6nv', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756524, '__ci_last_regenerate|i:1608756524;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6d17dm05gc19hk197drcpooq6l5a1cui', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756526, '__ci_last_regenerate|i:1608756526;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5er3sfsuurik3opqqds4gsu13ru231pb', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756528, '__ci_last_regenerate|i:1608756528;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('facv7jvuj37fq2807q205bq68t78s7ov', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756529, '__ci_last_regenerate|i:1608756529;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('vnb6hri8g98mqoaabht954p7hsjpan6i', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756531, '__ci_last_regenerate|i:1608756531;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5k3u2e3nm6q6u5g4hajv5jlulfh7stae', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756595, '__ci_last_regenerate|i:1608756595;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ls7sklu1bv9r9bj61r1vq2c271b1e2r1', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756598, '__ci_last_regenerate|i:1608756598;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('peq5hb07juv5mrbd52l7aj3aemc91vfs', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756684, '__ci_last_regenerate|i:1608756684;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('60jon4q1oskein6h0u67dp5uq4rdrfc7', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756696, '__ci_last_regenerate|i:1608756696;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ivn9uvrmiatk8ksijcsos0nilkrr3cef', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756699, '__ci_last_regenerate|i:1608756699;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6mtqcue8t3d371tme2ge8o7dijusnj3c', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756701, '__ci_last_regenerate|i:1608756701;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4r3olfit6fjnlsqnqtpnaoqi44f9oc2t', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756702, '__ci_last_regenerate|i:1608756702;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kte2efdo5alj6mopsoh7b22m7hjunt4q', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756703, '__ci_last_regenerate|i:1608756702;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pbiae7etqj95acq1s4t6c259rjho8289', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756704, '__ci_last_regenerate|i:1608756704;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5itdhlo3713gvuigo65v3vdj2dsqhqbn', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756705, '__ci_last_regenerate|i:1608756705;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8n73mruvirl93ug27ecqqimnthtm2u18', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608756707, '__ci_last_regenerate|i:1608756707;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('86cla890nmhjt47vhtkq8acocd0h1j9o', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757631, '__ci_last_regenerate|i:1608757631;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('laq42p6smg80cpvn32610c712nm5lek6', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757631, '__ci_last_regenerate|i:1608757631;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1u51n68qu57qvc4gei16hs3abgelulfp', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757633, '__ci_last_regenerate|i:1608757633;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8lrlaoqe9bkqfnaqu11jr879nf7afl3q', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757633, '__ci_last_regenerate|i:1608757633;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('t9t06kes4l88k6jsudq1cpqfhb3h4btg', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757635, '__ci_last_regenerate|i:1608757635;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('v5ueos3t0jdvjs1cpota9240t9e4ev74', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757641, '__ci_last_regenerate|i:1608757641;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lhu1lno2ivrsnahc3mq4p3cfv0ibci4g', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757648, '__ci_last_regenerate|i:1608757647;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bao58ftng2iqtnlktmrejm8a7jfg71dv', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757649, '__ci_last_regenerate|i:1608757649;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bmk6hk4hc7sukiakfbiqrufv1ibdvjr0', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757694, '__ci_last_regenerate|i:1608757694;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7sg84gikd52ma7iqkfiim0rhb06ltnl8', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608760693, '__ci_last_regenerate|i:1608760693;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";success|s:25:\"Setting update successed.\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}active_menu|s:2:\"16\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1jmi7nf4c1c5kh1vj3pbeb0f73l1di0f', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757722, '__ci_last_regenerate|i:1608757722;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0f0h4bi3fhdogimrbjgg2lnu2amt56rl', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757729, '__ci_last_regenerate|i:1608757729;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6bjv120ilcjbkn2rlfr958n0vihn13j9', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757729, '__ci_last_regenerate|i:1608757729;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('q2amv2uqc5hadhbr3lnkjovnnt5h6vck', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757731, '__ci_last_regenerate|i:1608757731;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0usr70ikbkeklg2ktjtm71ederr5o14l', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757732, '__ci_last_regenerate|i:1608757732;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kr4258thbl9g2kghfvj1d9dhgncaej9v', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608757733, '__ci_last_regenerate|i:1608757733;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iopuvjuqnb744dfvnsj1s0tli9tdj464', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758148, '__ci_last_regenerate|i:1608758148;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b58s6haaep15jfjlfr9v8t7eqtgp1p5c', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758151, '__ci_last_regenerate|i:1608758151;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8817ht1f595ohlji226f9ggjtncsf24f', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758153, '__ci_last_regenerate|i:1608758152;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('c32v2mmspl6qh9lbpc0e0od9mbnh983k', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758157, '__ci_last_regenerate|i:1608758157;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4sq3moocqk312h6l54omj86pm20omr30', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758158, '__ci_last_regenerate|i:1608758157;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nmcs0ugf1rupd8m2eup6v3vevfv35a05', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758160, '__ci_last_regenerate|i:1608758160;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tdu11e6m6mdqp7hed2c40fj3p17uki5s', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758160, '__ci_last_regenerate|i:1608758160;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('85m6jlcv2n0h48amlptbbfv56e2t6vd0', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758161, '__ci_last_regenerate|i:1608758161;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kh4uogrfl1dqtpr5qnpr47r4od9pdhfq', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758266, '__ci_last_regenerate|i:1608758266;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('prlo9g3vlrnmelvmkj06ps38c9j80okv', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758269, '__ci_last_regenerate|i:1608758269;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('15bp1v3lv72k5ikl7kss5fios8fkauog', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758270, '__ci_last_regenerate|i:1608758270;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r6de52brpmrp0crji1l6lotq07i5ra7i', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758328, '__ci_last_regenerate|i:1608758328;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bcmbp5grfso31m35r96ioeicru5dh2q2', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758328, '__ci_last_regenerate|i:1608758328;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('u0rqfqhgb1vak5av780vm5u1b7o5nbfr', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758331, '__ci_last_regenerate|i:1608758331;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('r92p9m9akba1evlk501ggdhqeputvrtm', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758331, '__ci_last_regenerate|i:1608758331;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iomoqj58ie33nniehrhmjlf56a1dg5kg', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758332, '__ci_last_regenerate|i:1608758332;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0r6gag2bq4q3dk7db2dh2dvs8uf1pjdr', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758334, '__ci_last_regenerate|i:1608758334;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('20kc9il1fndvujripu3ejsbtjhnobarg', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758338, '__ci_last_regenerate|i:1608758338;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tiocrlmd150mc8jnactmvq47chdgk5hh', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758340, '__ci_last_regenerate|i:1608758340;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('erg6mutdde918g7ar8i3m31plgk80ocl', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758401, '__ci_last_regenerate|i:1608758401;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m5fn5alklvdatht50okfk9fufp7umjne', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758438, '__ci_last_regenerate|i:1608758438;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0r2enr0kbem668gsfgn3kouo7f181d56', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758438, '__ci_last_regenerate|i:1608758438;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lb1tm25no9c96v6d1tmt3si920rq3da5', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758441, '__ci_last_regenerate|i:1608758440;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('odb605u7qgmepdj29ue88o0f83o5oia5', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758441, '__ci_last_regenerate|i:1608758441;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('o11c5q1n7qbhtcgd2i58qnjqc45tb1f1', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758442, '__ci_last_regenerate|i:1608758442;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nn7octuoe45kgfldt24b34m4r1ocge9s', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758452, '__ci_last_regenerate|i:1608758452;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('umd7mpepb75idc4opv5fchpmqkd15vg1', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758457, '__ci_last_regenerate|i:1608758457;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('tp8e3qs1v7p05akq413vvvutjg9picsf', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758778, '__ci_last_regenerate|i:1608758778;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('qrmhrdpme5130nm4trobignfidh7pmvo', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758778, '__ci_last_regenerate|i:1608758778;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5riv5jr6vkvt0fqlau3lirhfpq23so5o', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758780, '__ci_last_regenerate|i:1608758780;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('a7mlktudsc3cob2j7mrd8cm4icbq54tm', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758780, '__ci_last_regenerate|i:1608758780;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('plu90vsq10ungncjfm8ub5t2qi4vcjuv', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758782, '__ci_last_regenerate|i:1608758782;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fmunh4ghpe7adfmhj7mgi9pun0besgkg', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758783, '__ci_last_regenerate|i:1608758783;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('i72c4nrk4hgqmappqch52lduajh60liq', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758787, '__ci_last_regenerate|i:1608758787;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6288l4soc07en982foc2ei2j9s9ums8o', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758795, '__ci_last_regenerate|i:1608758795;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('sbd9ul5gpi1dmjkmcimdaisi9bg7rfbj', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758795, '__ci_last_regenerate|i:1608758795;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nmglrekuq21b1fcs6hakopnu4te7554e', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608758795, '__ci_last_regenerate|i:1608758795;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pgieltr4f5jeq4sqdmkva0070acl74a9', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759197, '__ci_last_regenerate|i:1608759197;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2kfd9o28s18dhd42rbpr8ujnhqpgifbi', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759197, '__ci_last_regenerate|i:1608759197;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n9cql6ufn094i3insmttuepavfni7uun', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759199, '__ci_last_regenerate|i:1608759199;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6s3ggj1msjrnsqb3dn64oat9m131r6ds', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759200, '__ci_last_regenerate|i:1608759199;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3lirgilb6ge8vklet7h37n48nrt965ar', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759201, '__ci_last_regenerate|i:1608759201;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('1dm4vdkfi7s31ri3tdn5h4p9pb0sgas3', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759205, '__ci_last_regenerate|i:1608759205;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6pjii61os501me7438cl8jabgr6g4cia', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759209, '__ci_last_regenerate|i:1608759209;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mb06lpnm0p8jt6md2bke2hckjtncprj8', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759212, '__ci_last_regenerate|i:1608759212;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('kekkn8bbl9bmqq5035ugfdlodhh977ni', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759212, '__ci_last_regenerate|i:1608759212;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bqke17475npum84jf1ktqe03nven1i73', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759212, '__ci_last_regenerate|i:1608759212;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4lvl0gk1us7k5d97qa0684sikvl0k46d', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759264, '__ci_last_regenerate|i:1608759264;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('duqi9pn0kvgchl7ato0okkndok07v1go', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759264, '__ci_last_regenerate|i:1608759264;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('e5dfs73thf657pl5oij0h71q5el1bmvj', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759267, '__ci_last_regenerate|i:1608759267;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lqf6bbeppp5eirh5mikcuufau7qssugm', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759267, '__ci_last_regenerate|i:1608759267;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bushdrot6gm84p4rt9diidie466npnoh', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759268, '__ci_last_regenerate|i:1608759268;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8a93d2pcpgpo157eq7397of36b8cmtul', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759276, '__ci_last_regenerate|i:1608759276;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('sljh9qmtj5ij663jatgalr4kl94o7n4k', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759279, '__ci_last_regenerate|i:1608759279;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ktie8nsb0in1s4t586dl71bhnk37brj0', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759281, '__ci_last_regenerate|i:1608759281;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ucjjfefminusf15b2hvvqvedkvl8un6d', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759282, '__ci_last_regenerate|i:1608759281;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('2ju03b1fabo079io7r156kvhuel0vhmi', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759282, '__ci_last_regenerate|i:1608759281;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('c920rp3toh0faf4ogr83avuhtdummmjj', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759297, '__ci_last_regenerate|i:1608759297;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7l6rjngjmsnnabrj3a3vdof3sa9fk2ba', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759297, '__ci_last_regenerate|i:1608759297;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rl83l5kupo0gg77u68h6u2suabe6s2aa', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759299, '__ci_last_regenerate|i:1608759299;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('hjg3ej3psofb48vk8l2djbsit2g6t588', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759299, '__ci_last_regenerate|i:1608759299;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('lcb3mo4mjt05q6p9eqca05h15bg2fc3j', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759301, '__ci_last_regenerate|i:1608759301;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3fjb4dq9k0m2jigfe64oq19pb2sikfpp', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759304, '__ci_last_regenerate|i:1608759303;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('flljsshbhsgoc9efrce6nqoc9efh8jp4', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759307, '__ci_last_regenerate|i:1608759307;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('iitta6stoqq6do38l2dopcspeu745msa', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759313, '__ci_last_regenerate|i:1608759313;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('91imeq00jfio1vva8puoahs7orf0t4tk', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759313, '__ci_last_regenerate|i:1608759313;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('um7oklfqdjius6aek63185pgg5k0ppah', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759313, '__ci_last_regenerate|i:1608759313;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('9q6g6mujiq6kqaetaj7ibcrq54t4jacf', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759340, '__ci_last_regenerate|i:1608759340;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('oqudfh1d5rq3k3h20s66j9ntmu05k454', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759340, '__ci_last_regenerate|i:1608759340;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('grf8hvn19jm2mhi2atkfs6kokloenr29', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759342, '__ci_last_regenerate|i:1608759342;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cap4i08ft1f85gn1hgr8grkofadthcfs', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759342, '__ci_last_regenerate|i:1608759342;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ggknvqimdnsufm3vlo5chasa8i1ti8b9', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759343, '__ci_last_regenerate|i:1608759343;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('u7f5lat7cvsb8he619o5n0mn87h0hmli', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759346, '__ci_last_regenerate|i:1608759346;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mc38m10g7d484a7469mcl7vpqi20a4n9', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759350, '__ci_last_regenerate|i:1608759350;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jjf8su97ajafe5m6s1i536etfafiqifc', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759354, '__ci_last_regenerate|i:1608759354;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('codrbtjur7mc6gfc0djqo357n2pn0uvp', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759354, '__ci_last_regenerate|i:1608759354;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('de7vcvlunmi7uhs02iv8k5or76me8gb4', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759354, '__ci_last_regenerate|i:1608759354;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ujjkt8675n7p2ufciuel7j4lnbo1jfmf', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759387, '__ci_last_regenerate|i:1608759387;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('32hgtpnl9fjij7qinphg8lbdppdn3bbk', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759387, '__ci_last_regenerate|i:1608759387;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('07543s4ck1vfn6qero5d1qi490o3gqm2', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759389, '__ci_last_regenerate|i:1608759389;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4jbdveuefe144gev8mq4ki9u3oam89om', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759389, '__ci_last_regenerate|i:1608759389;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mbulvo874dlrh8oi689lt05731dgs2if', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759391, '__ci_last_regenerate|i:1608759391;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('p492hmiaebfvpslkmmvvgqi59c494tv1', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759395, '__ci_last_regenerate|i:1608759394;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('okh2flhg8vmhoj1env85inadtlutqsr2', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759398, '__ci_last_regenerate|i:1608759398;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('uq3hmlqfsd0cplvhpiqta85pggbhrm5d', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759407, '__ci_last_regenerate|i:1608759407;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s2ggo1chpucdjea9npk95pm2lo52qutt', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759407, '__ci_last_regenerate|i:1608759407;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('v91ikaar8q1b3mhdk7qhmn7mfqub3ega', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759407, '__ci_last_regenerate|i:1608759407;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8muisn15nnrccel2ggenc8rlpgd2269i', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759445, '__ci_last_regenerate|i:1608759445;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ovn62ncfc5rr3c8gp9r1hps9661d6iuk', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759445, '__ci_last_regenerate|i:1608759445;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('co9ok65ut8id4nejj3e1jmio6eq1f8hh', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759448, '__ci_last_regenerate|i:1608759448;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ok9mj47euepmm9jrbu033c8vn12t6j9c', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759448, '__ci_last_regenerate|i:1608759448;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ahof5deifi5acr0lbgb82k61uaeumoei', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759449, '__ci_last_regenerate|i:1608759449;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('l4ak9pbhkfaous7rq2tclhau9aqcvotj', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759453, '__ci_last_regenerate|i:1608759452;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('k94viqkmd3ttm9t7bs9jug4f8lvi89f4', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759456, '__ci_last_regenerate|i:1608759456;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('p3uvon34dcb2067udtj4pvuljjpdcdtp', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759458, '__ci_last_regenerate|i:1608759458;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m7raf85fjs66rilru25ekhecluob3eaa', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759458, '__ci_last_regenerate|i:1608759458;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('455fodj8d7bfssjg41emqoetedk9sq0q', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759458, '__ci_last_regenerate|i:1608759458;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('itc6mv78d1npjgdppek70dqpqn6j7d7q', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759592, '__ci_last_regenerate|i:1608759592;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('phfjjmq9ab4t3hsgug1te2709asjh6gd', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759593, '__ci_last_regenerate|i:1608759592;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('t7qdhakd49hmod5em7lr7ec548bchv6j', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759595, '__ci_last_regenerate|i:1608759595;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('7i8asfoimf682odsj1n85qar17anubc1', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759595, '__ci_last_regenerate|i:1608759595;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pm50ecbiooru0k8hgbv2fhq33nbdd215', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759596, '__ci_last_regenerate|i:1608759596;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('geksufve6lsr5bmacv0g2mbjndanrbna', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759599, '__ci_last_regenerate|i:1608759599;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('19010smvj2i3qk21u4815v9a4gk3c37k', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759603, '__ci_last_regenerate|i:1608759603;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('nicse0umdsm6h1ih8v67fuoearhofsta', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759609, '__ci_last_regenerate|i:1608759609;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('bjt53vmpomu34ihgofpc5etivircovq5', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759610, '__ci_last_regenerate|i:1608759609;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('teptdbohjm2v014qma3obb50hfnj8pu4', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759610, '__ci_last_regenerate|i:1608759609;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('f1ums5u2quqdmog6v6uk9n4intft3hb1', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759767, '__ci_last_regenerate|i:1608759767;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6induejlo9bj863j2a180s9jusr8e0rh', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759779, '__ci_last_regenerate|i:1608759779;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0k4dneikp5n1piuin9su28vrdurbm07q', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759781, '__ci_last_regenerate|i:1608759781;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('38d2ucmjdkdeclgca10sc7bgg32a9mq0', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759782, '__ci_last_regenerate|i:1608759781;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('4bgrnn6nrt26bktcota57p4mi7gk1na4', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759783, '__ci_last_regenerate|i:1608759783;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('652hsq5bgonie6am83806n2ibhnmqg4q', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759785, '__ci_last_regenerate|i:1608759785;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5ufsmu0893jdb3q67jgc2l7ref3hi0vk', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759788, '__ci_last_regenerate|i:1608759788;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('glmdnghtaj0cosc66br3h30ufpml28o0', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759790, '__ci_last_regenerate|i:1608759790;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('na6a23n1jge8d3q5g4p8ugtkbuga252g', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759791, '__ci_last_regenerate|i:1608759791;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('cdh5afacp85o2jtsg7c8ma708e7qk5id', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759791, '__ci_last_regenerate|i:1608759791;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8tec102pqurikma5prhod5enp85rteu4', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608759804, '__ci_last_regenerate|i:1608759804;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dbr9vneo1nk6airqpgcj1kol4b6cev6k', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760057, '__ci_last_regenerate|i:1608760057;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5kd6j2pti3vu7urrtg8mdcvmsjm05jpg', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760060, '__ci_last_regenerate|i:1608760060;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pusiv7nk41craffgsrv6v5l5j76jhf0e', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760060, '__ci_last_regenerate|i:1608760060;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0034v8dfieb0e52p6rlqvgq9el5s2uv9', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760061, '__ci_last_regenerate|i:1608760061;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('mgssdmvs76cg1pg7kc09ebn4bgdgkrl1', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760063, '__ci_last_regenerate|i:1608760063;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3sidjeb0ppmtk528rpmjed3hr9gldaae', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760067, '__ci_last_regenerate|i:1608760067;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('8s2bihe8kt2nqcm48tdkrpbf4ujl3pl5', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760069, '__ci_last_regenerate|i:1608760069;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('dpog1jml0jfn8d4rs78gnci9f5ca96sn', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760070, '__ci_last_regenerate|i:1608760070;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('92mlgqpkp5j3nktiihe36kk2ngs4nn86', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760077, '__ci_last_regenerate|i:1608760077;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('s339q0t3af8qq1pfjqjljvr0k7g4gdk2', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760077, '__ci_last_regenerate|i:1608760077;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('rn74arg6o9pfnvhscc1javmn2tqgs31g', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760311, '__ci_last_regenerate|i:1608760311;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('48bda9uhl8nq02ahjvoklfg5em5nqvq8', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760313, '__ci_last_regenerate|i:1608760313;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('q49l93npssh9tfp031auss13f6df2sv9', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760316, '__ci_last_regenerate|i:1608760316;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5i870j173tk1g67hd1p7l2eo090qdcdm', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760316, '__ci_last_regenerate|i:1608760316;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0mdbm3dipksb6423d6f9m82nmlm0siai', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760320, '__ci_last_regenerate|i:1608760320;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6ucf1rujbcnuqbjdvgn4pad4ujf57u53', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760321, '__ci_last_regenerate|i:1608760321;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pmg71a88uutsdvm72aofif98fon6rp0l', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760326, '__ci_last_regenerate|i:1608760326;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ddeljnmgac794ti062ouh65o526qb65n', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608760331, '__ci_last_regenerate|i:1608760330;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('6pe8fq8d0nqh056erc1ij5869rl34a53', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608761294, '__ci_last_regenerate|i:1608761294;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"26\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('n2jbn6145fli5dlekpi3ofbrolbkvtom', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608761711, '__ci_last_regenerate|i:1608761711;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";success|s:18:\"TV added successed\";__ci_vars|a:1:{s:7:\"success\";s:3:\"old\";}active_menu|s:2:\"26\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('m59gc87fbn8n1tosevjhflkksglvnv6r', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608762027, '__ci_last_regenerate|i:1608762027;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"26\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('omi11aanqlopbs7gmtcorgbijgrt30o0', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608763323, '__ci_last_regenerate|i:1608763323;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"35\";');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b38vcno99lnse7e9jm6uiqecmfsl3pdn', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608762364, '__ci_last_regenerate|i:1608762364;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('pm7t60jbmgm2o7hsrukks93gc2nijmq5', '2a0a:a540:dcf4:0:38a8:d1e1:ed13:9a46', 1608762369, '__ci_last_regenerate|i:1608762369;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('oer8qfatsrr7tan6ivmc9t489f8f9sst', '2a0a:a540:dcf4:0:2906:7692:6d2b:7375', 1608763335, '__ci_last_regenerate|i:1608763323;login_status|s:1:\"1\";user_id|s:1:\"1\";name|s:5:\"admin\";email|s:15:\"admin@admin.com\";admin_is_login|s:1:\"1\";login_type|s:5:\"admin\";active_menu|s:2:\"23\";');


#
# TABLE STRUCTURE FOR: comments
#

DROP TABLE IF EXISTS `comments`;

CREATE TABLE `comments` (
  `comments_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `video_id` int(20) NOT NULL,
  `comment_type` int(5) NOT NULL DEFAULT 1,
  `replay_for` int(10) DEFAULT 0,
  `comment` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `comment_at` datetime DEFAULT NULL,
  `publication` int(5) DEFAULT 0,
  PRIMARY KEY (`comments_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: config
#

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`config_id`)
) ENGINE=MyISAM AUTO_INCREMENT=272 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (194, 'system_name', 'OXOO - Android Live TV & Movie Portal');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (195, 'site_name', 'My Movie Site');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (196, 'business_address', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (197, 'business_phone', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (198, 'contact_email', 'contact@mydomain.com');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (199, 'system_email', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (200, 'system_short_name', 'OXOO');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (201, 'slider_type', 'image');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (202, 'slide_per_page', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (203, 'protocol', 'mail');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (204, 'mailpath', '/usr/bin/sendmail');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (205, 'smtp_host', 'smtp.gmail.com');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (206, 'smtp_user', 'email@gmail.com');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (207, 'smtp_pass', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (208, 'smtp_port', '465');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (209, 'smtp_crypto', 'ssl');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (210, 'comments_approval', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (211, 'movie_per_page', '72');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (212, 'purchase_code', 'item_purchase_code');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (213, 'push_notification_enable', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (214, 'onesignal_appid', 'one_signal_app_id_here');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (215, 'onesignal_api_keys', 'one_signal_api_key_here');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (216, 'mobile_apps_api_secret_key', NULL);
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (217, 'cron_key', 'default_cron_key');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (218, 'db_backup', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (219, 'backup_schedule', '30');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (220, 'version', '1.3.0');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (221, 'terms', '<p><br></p>');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (222, 'total_movie_in_slider', '5');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (223, 'preroll_ads_enable', '0');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (224, 'preroll_ads_video', '');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (225, 'admob_ads_enable', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (226, 'admob_publisher_id', ' pub-xxxxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (227, 'admob_app_id', 'ca-app-pub-xxxxxxxxxx~xxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (228, 'admob_banner_ads_id', 'ca-app-pub-xxxxxxxxx/xxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (229, 'admob_interstitial_ads_id', 'ca-app-pub-xxxxxxxxxxxxxxx/xxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (230, 'app_menu', 'vertical');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (231, 'app_program_guide_enable', 'false');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (232, 'app_mandatory_login', 'false');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (233, 'genre_visible', 'false');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (234, 'country_visible', 'false');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (235, 'trial_enable', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (236, 'trial_period', '7');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (237, 'paypal_email', 'paypal@yourwebsite.com');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (238, 'currency_symbol', '$');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (239, 'stripe_publishable_key', 'pk_test_fBUK0yZBlxsTrHoQudKGVD6s00EtEapeAl');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (240, 'stripe_secret_key', 'sk_test_QgCvIIJGWMKwLeLrvROYIKAV00qsjPGf4n');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (241, 'currency', 'USD');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (256, 'program_guide_enable', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (242, 'mobile_ads_enable', '0');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (243, 'mobile_ads_network', 'admob');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (244, 'fan_native_ads_placement_id', 'xxxxxxxxxxxxx_xxxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (245, 'fan_banner_ads_placement_id', 'xxxxxxxxxx_xxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (246, 'fan_Interstitial_ads_placement_id', 'xxxxxxxxxxx_xxxxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (247, 'startapp_app_id', 'xxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (248, 'paypal_client_id', 'xxxxxxxxxxxxxxxxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (249, 'exchange_rate_update_by_cron', '0');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (250, 'enable_ribbon', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (251, 'apk_version_code', '15');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (252, 'apk_version_name', 'v1.2.0');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (253, 'apk_whats_new', 'New UI\r\nDownload option\r\nAdvanced Search\r\nSubscription');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (254, 'latest_apk_url', 'http://oxoo.spagreen.net/demo/oxoo-v114.apk');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (257, 'apk_update_is_skipable', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (258, 'season_order', 'DESC');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (259, 'episode_order', 'DESC');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (260, 'video_file_order', 'ASC');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (261, 'video_source', 'video_source');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (262, 'razorpay_key_id', 'xxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (263, 'razorpay_key_secret', 'xxxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (264, 'paypal_enable', 'true');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (265, 'stripe_enable', 'true');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (266, 'razorpay_enable', 'true');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (267, 'razorpay_inr_exchange_rate', '1');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (268, 'admob_native_ads_id', 'xxxxxxxxxxx');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (269, 'offline_payment_enable', 'false');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (270, 'offline_payment_title', 'Offline Payment');
INSERT INTO `config` (`config_id`, `title`, `value`) VALUES (271, 'offline_payment_instruction', 'Offline payment instruction goes here.');


#
# TABLE STRUCTURE FOR: country
#

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `publication` int(2) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (1, 'International', '', 'international', 1);
INSERT INTO `country` (`country_id`, `name`, `description`, `slug`, `publication`) VALUES (2, 'Pakistan', '', 'pakistan', 1);


#
# TABLE STRUCTURE FOR: cron
#

DROP TABLE IF EXISTS `cron`;

CREATE TABLE `cron` (
  `cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_url` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `save_to` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(250) DEFAULT NULL,
  `admin_email_from` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `admin_email` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_to` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_sub` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`cron_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: currency
#

DROP TABLE IF EXISTS `currency`;

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `iso_code` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `symbol` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `exchange_rate` double NOT NULL DEFAULT 1,
  `default` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (1, 'Albania', 'Leke', 'ALL', 'Lek', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (2, 'America', 'Dollars', 'USD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (3, 'Afghanistan', 'Afghanis', 'AFN', '؋', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (4, 'Argentina', 'Pesos', 'ARS', '$', '61.399228', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (5, 'Aruba', 'Guilders', 'AWG', 'ƒ', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (6, 'Australia', 'Dollars', 'AUD', '$', '1.4882', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (7, 'Azerbaijan', 'New Manats', 'AZN', 'ман', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (8, 'Bahamas', 'Dollars', 'BSD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (9, 'Barbados', 'Dollars', 'BBD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (10, 'Belarus', 'Rubles', 'BYR', 'p.', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (11, 'Belgium', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (12, 'Beliz', 'Dollars', 'BZD', 'BZ$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (13, 'Bermuda', 'Dollars', 'BMD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (14, 'Bolivia', 'Bolivianos', 'BOB', '$b', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (16, 'Botswana', 'Pula', 'BWP', 'P', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (17, 'Bulgaria', 'Leva', 'BGN', 'лв', '1.803753', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (18, 'Brazil', 'Reais', 'BRL', 'R$', '4.330496', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', '83', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (20, 'Brunei Darussalam', 'Dollars', 'BND', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (21, 'Cambodia', 'Riels', 'KHR', '៛', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (22, 'Canada', 'Dollars', 'CAD', '$', '1.325097', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (23, 'Cayman Islands', 'Dollars', 'KYD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (24, 'Chile', 'Pesos', 'CLP', '$', '794.622928', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (25, 'China', 'Yuan Renminbi', 'CNY', '¥', '6.984162', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (26, 'Colombia', 'Pesos', 'COP', '$', '3313', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (27, 'Costa Rica', 'Colón', 'CRC', '₡', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (28, 'Croatia', 'Kuna', 'HRK', 'kn', '6.869981', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (29, 'Cuba', 'Pesos', 'CUP', '₱', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (30, 'Cyprus', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', '22.911451', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (32, 'Denmark', 'Kroner', 'DKK', 'kr', '6.890187', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', '53.507402', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (34, 'East Caribbean', 'Dollars', 'XCD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (35, 'Egypt', 'Pounds', 'EGP', '£', '15.61815', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (36, 'El Salvador', 'Colones', 'SVC', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', '83', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (38, 'Euro', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (39, 'Falkland Islands', 'Pounds', 'FKP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (40, 'Fiji', 'Dollars', 'FJD', '$', '2.195918', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (41, 'France', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (42, 'Ghana', 'Cedis', 'GHC', '¢', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (43, 'Gibraltar', 'Pounds', 'GIP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (44, 'Greece', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', '7.63804', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (46, 'Guernsey', 'Pounds', 'GGP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (47, 'Guyana', 'Dollars', 'GYD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (49, 'Honduras', 'Lempiras', 'HNL', 'L', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (50, 'Hong Kong', 'Dollars', 'HKD', '$', '7.767071', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (51, 'Hungary', 'Forint', 'HUF', 'Ft', '310.231043', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (52, 'Iceland', 'Kronur', 'ISK', 'kr', '126.858376', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (53, 'India', 'Rupees', 'INR', 'Rp', '71.40112', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', '13612.651679', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (55, 'Iran', 'Rials', 'IRR', '﷼', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (56, 'Ireland', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (57, 'Isle of Man', 'Pounds', 'IMP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (58, 'Israel', 'New Shekels', 'ILS', '₪', '3.427408', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (59, 'Italy', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (60, 'Jamaica', 'Dollars', 'JMD', 'J$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (61, 'Japan', 'Yen', 'JPY', '¥', '109.814254', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (62, 'Jersey', 'Pounds', 'JEP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', '376.834123', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (64, 'Korea (North)', 'Won', 'KPW', '₩', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (65, 'Korea (South)', 'Won', 'KRW', '₩', '1183.94149', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (67, 'Laos', 'Kips', 'LAK', '₭', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (68, 'Latvia', 'Lati', 'LVL', 'Ls', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (69, 'Lebanon', 'Pounds', 'LBP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (70, 'Liberia', 'Dollars', 'LRD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', '0.980752', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (72, 'Lithuania', 'Litai', 'LTL', 'Lt', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (73, 'Luxembourg', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (74, 'Macedonia', 'Denars', 'MKD', 'ден', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (75, 'Malaysia', 'Ringgits', 'MYR', 'RM', '4.139749', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (76, 'Malta', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (77, 'Mauritius', 'Rupees', 'MUR', '₨', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (78, 'Mexico', 'Pesos', 'MXN', '$', '18.585695', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (79, 'Mongolia', 'Tugriks', 'MNT', '₮', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (80, 'Mozambique', 'Meticais', 'MZN', 'MT', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (81, 'Namibia', 'Dollars', 'NAD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (82, 'Nepal', 'Rupees', 'NPR', '₨', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (84, 'Netherlands', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (85, 'New Zealand', 'Dollars', 'NZD', '$', '1.553574', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (87, 'Nigeria', 'Nairas', 'NGN', '₦', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (88, 'North Korea', 'Won', 'KPW', '₩', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (89, 'Norway', 'Krone', 'NOK', 'kr', '9.253793', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (90, 'Oman', 'Rials', 'OMR', '﷼', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (91, 'Pakistan', 'Rupees', 'PKR', '₨', '154.392233', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (92, 'Panama', 'Balboa', 'PAB', 'B/.', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (93, 'Paraguay', 'Guarani', 'PYG', 'Gs', '6626', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.', '3.383275', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (95, 'Philippines', 'Pesos', 'PHP', 'Php', '50.525693', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (96, 'Poland', 'Zlotych', 'PLN', 'zł', '3.917289', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (97, 'Qatar', 'Rials', 'QAR', '﷼', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (98, 'Romania', 'New Lei', 'RON', 'lei', '4.396745', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (99, 'Russia', 'Rubles', 'RUB', 'руб', '63.537178', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (100, 'Saint Helena', 'Pounds', 'SHP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', '3.75061', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (102, 'Serbia', 'Dinars', 'RSD', 'Дин.', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (103, 'Seychelles', 'Rupees', 'SCR', '₨', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (104, 'Singapore', 'Dollars', 'SGD', '$', '1.390516', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (105, 'Slovenia', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (106, 'Solomon Islands', 'Dollars', 'SBD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (107, 'Somalia', 'Shillings', 'SOS', 'S', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (108, 'South Africa', 'Rand', 'ZAR', 'R', '14.88117', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (109, 'South Korea', 'Won', 'KRW', '₩', '1183.94149', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (110, 'Spain', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (111, 'Sri Lanka', 'Rupees', 'LKR', '₨', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (112, 'Sweden', 'Kronor', 'SEK', 'kr', '9.694847', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (113, 'Switzerland', 'Francs', 'CHF', 'CHF', '0.980752', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (114, 'Suriname', 'Dollars', 'SRD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (115, 'Syria', 'Pounds', 'SYP', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', '30.0056', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (117, 'Thailand', 'Baht', 'THB', '฿', '31.163295', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (119, 'Turkey', 'Lira', 'TRY', 'TL', '6.053817', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (120, 'Turkey', 'Liras', 'TRL', '£', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (121, 'Tuvalu', 'Dollars', 'TVD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (122, 'Ukraine', 'Hryvnia', 'UAH', '₴', '24.336642', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (123, 'United Kingdom', 'Pounds', 'GBP', '£', '83', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (124, 'United States of America', 'Dollars', 'USD', '$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (125, 'Uruguay', 'Pesos', 'UYU', '$U', '37.880896', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (126, 'Uzbekistan', 'Sums', 'UZS', 'лв', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (127, 'Vatican City', 'Euro', 'EUR', '€', '0.922379', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (129, 'Vietnam', 'Dong', 'VND', '₫', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (130, 'Yemen', 'Rials', 'YER', '﷼', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', '1', 0, 1);
INSERT INTO `currency` (`currency_id`, `country`, `currency`, `iso_code`, `symbol`, `exchange_rate`, `default`, `status`) VALUES (132, 'Bangladesh', 'Taka', 'BDT', '৳', '83', 0, 1);


#
# TABLE STRUCTURE FOR: download_link
#

DROP TABLE IF EXISTS `download_link`;

CREATE TABLE `download_link` (
  `download_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(11) DEFAULT NULL,
  `link_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resolution` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '720p',
  `file_size` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '00MB',
  `download_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `in_app_download` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`download_link_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: episode_download_link
#

DROP TABLE IF EXISTS `episode_download_link`;

CREATE TABLE `episode_download_link` (
  `episode_download_link_id` int(11) NOT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `season_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `link_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resolution` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '720p',
  `file_size` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '00MB',
  `download_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `in_app_download` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: episodes
#

DROP TABLE IF EXISTS `episodes`;

CREATE TABLE `episodes` (
  `episodes_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_id` int(11) DEFAULT NULL,
  `episodes_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `last_ep_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`episodes_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: genre
#

DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `publication` int(1) NOT NULL,
  `featured` int(2) DEFAULT 0,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (1, 'Action', 'Action Movie<br>', 'action', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (2, 'TV Show', 'Tv Show <br>', 'tv-show', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (3, 'Si-Fi', '', 'si-fi', 1, 1);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (4, 'Adventure', 'Adventure Movies<br>', 'adventure', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (5, 'Animation', 'Animation Movies<br>', 'animation', 1, 1);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (6, 'Biography', 'Biography Movies<br>', 'biography', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (7, 'Comedy', 'Comedy Movies<br>', 'comedy', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (8, 'Crime', 'Crime Movies<br>', 'crime', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (9, 'Documentary', 'Documentary Movies<br>', 'documentary', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (10, 'Drama', '', 'drama', 1, 1);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (11, 'Family', 'Family<br>', 'family', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (12, 'Fantasy', 'Fantasy Movies<br>', 'fantasy', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (13, 'History', '', 'history', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (14, 'Horror', 'Horror Movies<br>', 'horror', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (15, 'Music', '', 'music', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (16, 'Musical', '', 'musical', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (17, 'Mystery', '', 'mystery', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (18, 'Thriller', '', 'thriller', 1, 1);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (19, 'War', '', 'war', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (20, 'Western', '', 'western', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (21, 'TV Series', '', 'tv-series', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (22, 'Romance', ' Romance', 'romance', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (23, 'Adventure', ' Adventure', 'adventure', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (24, 'Thriller', ' Thriller', 'thriller', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (25, 'Drama', ' Drama', 'drama', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (26, 'Fantasy', ' Fantasy', 'fantasy', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (27, 'Sci-Fi', ' Sci-Fi', 'sci-fi', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (28, 'Comedy', ' Comedy', 'comedy', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (29, 'Family', ' Family', 'family', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (30, 'Action', ' Action', 'action', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (31, 'Short', 'Short', 'short', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (32, 'Music', ' Music', 'music', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (33, 'History', ' History', 'history', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (34, 'Crime', ' Crime', 'crime', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (35, 'Western', ' Western', 'western', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (36, 'Sport', ' Sport', 'sport', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (37, 'Short', ' Short', 'short', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (38, 'Mystery', ' Mystery', 'mystery', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (39, 'Romance', 'Romance', 'romance', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (40, 'Action & Adventure', 'Action & Adventure', 'action-adventure', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (41, 'Sci-Fi & Fantasy', 'Sci-Fi & Fantasy', 'sci-fi-fantasy', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (42, 'Science Fiction', 'Science Fiction', 'science-fiction', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (44, 'TV Movie', 'TV Movie', 'tv-movie', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (45, 'News', 'News', 'news', 1, 0);
INSERT INTO `genre` (`genre_id`, `name`, `description`, `slug`, `publication`, `featured`) VALUES (46, 'Reality', 'Reality', 'reality', 1, 0);


#
# TABLE STRUCTURE FOR: keys
#

DROP TABLE IF EXISTS `keys`;

CREATE TABLE `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT 'System',
  `key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `keys` (`id`, `label`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES (1, 'Admin', '6trhkkuky0yxkmw7h5ioor0y', 1, 0, 0, NULL, 1584340674);


#
# TABLE STRUCTURE FOR: languages_iso
#

DROP TABLE IF EXISTS `languages_iso`;

CREATE TABLE `languages_iso` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(49) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `iso` char(2) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (1, 'English', 'en');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (2, 'Afar', 'aa');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (3, 'Abkhazian', 'ab');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (4, 'Afrikaans', 'af');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (5, 'Amharic', 'am');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (6, 'Arabic', 'ar');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (7, 'Assamese', 'as');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (8, 'Aymara', 'ay');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (9, 'Azerbaijani', 'az');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (10, 'Bashkir', 'ba');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (11, 'Belarusian', 'be');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (12, 'Bulgarian', 'bg');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (13, 'Bihari', 'bh');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (14, 'Bislama', 'bi');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (15, 'Bangla', 'bn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (16, 'Tibetan', 'bo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (17, 'Breton', 'br');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (18, 'Catalan', 'ca');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (19, 'Corsican', 'co');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (20, 'Czech', 'cs');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (21, 'Welsh', 'cy');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (22, 'Danish', 'da');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (23, 'German', 'de');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (24, 'Bhutani', 'dz');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (25, 'Greek', 'el');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (26, 'Esperanto', 'eo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (27, 'Spanish', 'es');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (28, 'Estonian', 'et');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (29, 'Basque', 'eu');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (30, 'Persian', 'fa');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (31, 'Finnish', 'fi');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (32, 'Fiji', 'fj');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (33, 'Faeroese', 'fo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (34, 'French', 'fr');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (35, 'Frisian', 'fy');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (36, 'Irish', 'ga');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (37, 'Scots/Gaelic', 'gd');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (38, 'Galician', 'gl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (39, 'Guarani', 'gn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (40, 'Gujarati', 'gu');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (41, 'Hausa', 'ha');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (42, 'Hindi', 'hi');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (43, 'Croatian', 'hr');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (44, 'Hungarian', 'hu');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (45, 'Armenian', 'hy');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (46, 'Interlingua', 'ia');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (47, 'Interlingue', 'ie');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (48, 'Inupiak', 'ik');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (49, 'Indonesian', 'in');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (50, 'Icelandic', 'is');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (51, 'Italian', 'it');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (52, 'Hebrew', 'iw');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (53, 'Japanese', 'ja');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (54, 'Yiddish', 'ji');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (55, 'Javanese', 'jw');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (56, 'Georgian', 'ka');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (57, 'Kazakh', 'kk');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (58, 'Greenlandic', 'kl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (59, 'Cambodian', 'km');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (60, 'Kannada', 'kn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (61, 'Korean', 'ko');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (62, 'Kashmiri', 'ks');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (63, 'Kurdish', 'ku');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (64, 'Kirghiz', 'ky');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (65, 'Latin', 'la');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (66, 'Lingala', 'ln');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (67, 'Laothian', 'lo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (68, 'Lithuanian', 'lt');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (69, 'Latvian/Lettish', 'lv');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (70, 'Malagasy', 'mg');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (71, 'Maori', 'mi');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (72, 'Macedonian', 'mk');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (73, 'Malayalam', 'ml');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (74, 'Mongolian', 'mn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (75, 'Moldavian', 'mo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (76, 'Marathi', 'mr');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (77, 'Malay', 'ms');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (78, 'Maltese', 'mt');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (79, 'Burmese', 'my');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (80, 'Nauru', 'na');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (81, 'Nepali', 'ne');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (82, 'Dutch', 'nl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (83, 'Norwegian', 'no');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (84, 'Occitan', 'oc');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (85, '(Afan)/Oromoor/Oriya', 'om');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (86, 'Punjabi', 'pa');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (87, 'Polish', 'pl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (88, 'Pashto/Pushto', 'ps');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (89, 'Portuguese', 'pt');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (90, 'Quechua', 'qu');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (91, 'Rhaeto-Romance', 'rm');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (92, 'Kirundi', 'rn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (93, 'Romanian', 'ro');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (94, 'Russian', 'ru');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (95, 'Kinyarwanda', 'rw');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (96, 'Sanskrit', 'sa');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (97, 'Sindhi', 'sd');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (98, 'Sangro', 'sg');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (99, 'Serbo-Croatian', 'sh');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (100, 'Singhalese', 'si');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (101, 'Slovak', 'sk');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (102, 'Slovenian', 'sl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (103, 'Samoan', 'sm');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (104, 'Shona', 'sn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (105, 'Somali', 'so');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (106, 'Albanian', 'sq');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (107, 'Serbian', 'sr');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (108, 'Siswati', 'ss');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (109, 'Sesotho', 'st');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (110, 'Sundanese', 'su');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (111, 'Swedish', 'sv');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (112, 'Swahili', 'sw');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (113, 'Tamil', 'ta');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (114, 'Telugu', 'te');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (115, 'Tajik', 'tg');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (116, 'Thai', 'th');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (117, 'Tigrinya', 'ti');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (118, 'Turkmen', 'tk');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (119, 'Tagalog', 'tl');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (120, 'Setswana', 'tn');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (121, 'Tonga', 'to');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (122, 'Turkish', 'tr');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (123, 'Tsonga', 'ts');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (124, 'Tatar', 'tt');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (125, 'Twi', 'tw');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (126, 'Ukrainian', 'uk');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (127, 'Urdu', 'ur');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (128, 'Uzbek', 'uz');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (129, 'Vietnamese', 'vi');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (130, 'Volapuk', 'vo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (131, 'Wolof', 'wo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (132, 'Xhosa', 'xh');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (133, 'Yoruba', 'yo');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (134, 'Chinese', 'zh');
INSERT INTO `languages_iso` (`id`, `name`, `iso`) VALUES (135, 'Zulu', 'zu');


#
# TABLE STRUCTURE FOR: live_tv
#

DROP TABLE IF EXISTS `live_tv`;

CREATE TABLE `live_tv` (
  `live_tv_id` int(11) NOT NULL AUTO_INCREMENT,
  `tv_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `seo_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_category_id` int(50) DEFAULT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `language` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT 'en',
  `stream_from` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stream_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stream_url` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `poster` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `thumbnail` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `focus_keyword` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `featured` int(2) DEFAULT 1,
  `is_paid` int(5) NOT NULL DEFAULT 1,
  `tags` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publish` int(10) unsigned DEFAULT 0,
  `country_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`live_tv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `live_tv` (`live_tv_id`, `tv_name`, `seo_title`, `live_tv_category_id`, `slug`, `language`, `stream_from`, `stream_label`, `stream_url`, `poster`, `thumbnail`, `focus_keyword`, `meta_description`, `featured`, `is_paid`, `tags`, `description`, `publish`, `country_id`) VALUES (1, 'ARY News', NULL, 2, 'ary-news', 'en', 'youtube_live', 'HD', 'https://www.youtube.com/watch?v=brVXJjT_Bes', 'ary-news.png', 'ary-news.png', NULL, NULL, 1, 0, NULL, '<p><br></p>', 1, 2);
INSERT INTO `live_tv` (`live_tv_id`, `tv_name`, `seo_title`, `live_tv_category_id`, `slug`, `language`, `stream_from`, `stream_label`, `stream_url`, `poster`, `thumbnail`, `focus_keyword`, `meta_description`, `featured`, `is_paid`, `tags`, `description`, `publish`, `country_id`) VALUES (2, 'Geo News', NULL, 2, 'geo-news', 'en', 'youtube_live', 'HD', 'https://www.youtube.com/watch?v=sOdRPZwcxOw', 'geo-news.jpg', 'geo-news.jpg', NULL, NULL, 1, 0, NULL, '<p><br></p>', 1, 2);
INSERT INTO `live_tv` (`live_tv_id`, `tv_name`, `seo_title`, `live_tv_category_id`, `slug`, `language`, `stream_from`, `stream_label`, `stream_url`, `poster`, `thumbnail`, `focus_keyword`, `meta_description`, `featured`, `is_paid`, `tags`, `description`, `publish`, `country_id`) VALUES (3, 'Hum TV', NULL, 3, 'hum-tv', 'en', 'youtube_live', 'HD', 'https://www.youtube.com/watch?v=pHAqhwyoPn4', 'hum-tv.png', 'hum-tv.png', NULL, NULL, 0, 0, NULL, '<p><br></p>', 1, 2);
INSERT INTO `live_tv` (`live_tv_id`, `tv_name`, `seo_title`, `live_tv_category_id`, `slug`, `language`, `stream_from`, `stream_label`, `stream_url`, `poster`, `thumbnail`, `focus_keyword`, `meta_description`, `featured`, `is_paid`, `tags`, `description`, `publish`, `country_id`) VALUES (4, 'Geo Entertainment', NULL, 3, 'geo-entertainment', 'en', 'hls', 'HD', 'https://jk3lz82elw79-hls-live.5centscdn.com/harPalGeo/955ad3298db330b5ee880c2c9e6f23a0.sdp/playlist.m3u8', 'geo-entertainment.jpg', 'geo-entertainment.jpg', NULL, NULL, 0, 0, NULL, '<p><br></p>', 1, 2);
INSERT INTO `live_tv` (`live_tv_id`, `tv_name`, `seo_title`, `live_tv_category_id`, `slug`, `language`, `stream_from`, `stream_label`, `stream_url`, `poster`, `thumbnail`, `focus_keyword`, `meta_description`, `featured`, `is_paid`, `tags`, `description`, `publish`, `country_id`) VALUES (5, 'Bol News', NULL, 2, 'bol-news', 'en', 'youtube_live', 'HD', 'https://www.youtube.com/watch?v=im1vJSeKjv0', 'bol-news.png', 'bol-news.png', NULL, NULL, 1, 0, NULL, '<p><br></p>', 1, 2);
INSERT INTO `live_tv` (`live_tv_id`, `tv_name`, `seo_title`, `live_tv_category_id`, `slug`, `language`, `stream_from`, `stream_label`, `stream_url`, `poster`, `thumbnail`, `focus_keyword`, `meta_description`, `featured`, `is_paid`, `tags`, `description`, `publish`, `country_id`) VALUES (6, 'Samaa News', NULL, 2, 'samaa-news', 'en', 'youtube_live', 'HD', 'https://www.youtube.com/watch?v=NXf2KrXh7aY', 'samaa-news.jpg', 'samaa-news.jpg', NULL, NULL, 1, 0, NULL, '<p><br></p>', 1, 2);


#
# TABLE STRUCTURE FOR: live_tv_category
#

DROP TABLE IF EXISTS `live_tv_category`;

CREATE TABLE `live_tv_category` (
  `live_tv_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_tv_category` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_category_desc` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `slug` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`live_tv_category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `live_tv_category` (`live_tv_category_id`, `live_tv_category`, `live_tv_category_desc`, `status`, `slug`) VALUES (1, 'Sports', 'All Sport TV Channel goes here', 1, NULL);
INSERT INTO `live_tv_category` (`live_tv_category_id`, `live_tv_category`, `live_tv_category_desc`, `status`, `slug`) VALUES (2, 'News', 'All news channel goes here', 1, NULL);
INSERT INTO `live_tv_category` (`live_tv_category_id`, `live_tv_category`, `live_tv_category_desc`, `status`, `slug`) VALUES (3, 'Family', 'Family tv serials channels goes here', 1, NULL);


#
# TABLE STRUCTURE FOR: live_tv_program_guide
#

DROP TABLE IF EXISTS `live_tv_program_guide`;

CREATE TABLE `live_tv_program_guide` (
  `live_tv_program_guide_id` int(11) NOT NULL AUTO_INCREMENT,
  `live_tv_id` int(50) NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` enum('onaired','upcoming') COLLATE utf8mb4_unicode_520_ci DEFAULT 'upcoming',
  `status` int(50) NOT NULL DEFAULT 1,
  PRIMARY KEY (`live_tv_program_guide_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: live_tv_url
#

DROP TABLE IF EXISTS `live_tv_url`;

CREATE TABLE `live_tv_url` (
  `live_tv_url_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `live_tv_id` int(11) DEFAULT NULL,
  `url_for` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `quality` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`live_tv_url_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (1, '2wlstdrgu0vg', 1, 'opt1', 'hls', 'SD', 'SD', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (2, 'w0cq294lju8f', 1, 'opt2', 'hls', 'LQ', 'LQ', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (22, 'bna5yxoxhj5u', 2, 'opt2', 'hls', 'LQ', 'LQ', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (21, '7k9nn8y1d7ls', 2, 'opt1', 'hls', 'SD', 'SD', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (33, 'pm1hxzkerw63', 3, 'opt1', 'rtmp', 'SD', 'SD', 'rtmp://pakistani.mine.nu:1935/live/15.ch?u=FAISAL53:p=sajjadmalik');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (32, 'dfuh395j8vnk', 4, 'opt2', 'hls', 'LQ', 'LQ', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (31, 'phb29l3qp2zg', 4, 'opt1', 'hls', 'SD', 'SD', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (34, 'szgvnmiu6lbl', 3, 'opt2', 'hls', 'LQ', 'LQ', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (28, 'trahpmyi0eog', 5, 'opt2', 'hls', 'LQ', 'LQ', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (27, '8mrxis68sqws', 5, 'opt1', 'hls', 'SD', 'SD', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (42, '6u9nhn0fxmcc', 6, 'opt2', 'hls', 'LQ', 'LQ', '');
INSERT INTO `live_tv_url` (`live_tv_url_id`, `stream_key`, `live_tv_id`, `url_for`, `source`, `label`, `quality`, `url`) VALUES (41, 'p149vqncea00', 6, 'opt1', 'hls', 'SD', 'SD', '');


#
# TABLE STRUCTURE FOR: logs
#

DROP TABLE IF EXISTS `logs`;

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `api_key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: plan
#

DROP TABLE IF EXISTS `plan`;

CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `day` int(50) DEFAULT 0,
  `screens` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `price` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `plan` (`plan_id`, `name`, `day`, `screens`, `price`, `status`) VALUES (1, 'Basic', 7, NULL, '2.50', 1);
INSERT INTO `plan` (`plan_id`, `name`, `day`, `screens`, `price`, `status`) VALUES (2, 'Starter', 30, NULL, '5.00', 1);
INSERT INTO `plan` (`plan_id`, `name`, `day`, `screens`, `price`, `status`) VALUES (3, 'Professional ', 90, NULL, '10.00', 1);


#
# TABLE STRUCTURE FOR: quality
#

DROP TABLE IF EXISTS `quality`;

CREATE TABLE `quality` (
  `quality_id` int(10) NOT NULL AUTO_INCREMENT,
  `quality` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(5) DEFAULT 1,
  PRIMARY KEY (`quality_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (1, '4K', 'High Defination', 1);
INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (2, 'HD', 'Sandard Defination', 1);
INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (3, 'SD', 'Ultra High Defination', 1);
INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (4, 'CAM', 'Web Camera Video', 1);
INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (7, 'LQ', 'Low Quality', 1);
INSERT INTO `quality` (`quality_id`, `quality`, `description`, `status`) VALUES (8, 'DVD', 'Digital Video Device', 1);


#
# TABLE STRUCTURE FOR: report
#

DROP TABLE IF EXISTS `report`;

CREATE TABLE `report` (
  `report_id` int(11) NOT NULL,
  `type` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(50) DEFAULT NULL,
  `issue` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_datetime` datetime DEFAULT current_timestamp(),
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: request
#

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `request_id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `request_datetime` datetime DEFAULT current_timestamp(),
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: rest_logins
#

DROP TABLE IF EXISTS `rest_logins`;

CREATE TABLE `rest_logins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `rest_logins` (`id`, `username`, `password`, `status`) VALUES (1, 'admin', 'rest_user_password', 1);


#
# TABLE STRUCTURE FOR: seasons
#

DROP TABLE IF EXISTS `seasons`;

CREATE TABLE `seasons` (
  `seasons_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(11) DEFAULT NULL,
  `seasons_name` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `publish` int(11) DEFAULT 1,
  `order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`seasons_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: slider
#

DROP TABLE IF EXISTS `slider`;

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `video_link` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_link` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `action_btn_text` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `action_id` int(50) DEFAULT NULL,
  `action_url` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `order` int(50) NOT NULL DEFAULT 0,
  `publication` int(1) NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `slider` (`slider_id`, `title`, `description`, `video_link`, `image_link`, `slug`, `action_type`, `action_btn_text`, `action_id`, `action_url`, `order`, `publication`) VALUES (1, 'Watch ARY News Live here', '', NULL, 'https://gharana.pk/wp-content/uploads/2017/10/ARY-News-Live-HD-Streaming-24x7-LIVE-HD.png', 'watch-ary-news-live-here', 'tv', 'Play', 1, NULL, 0, 1);
INSERT INTO `slider` (`slider_id`, `title`, `description`, `video_link`, `image_link`, `slug`, `action_type`, `action_btn_text`, `action_id`, `action_url`, `order`, `publication`) VALUES (2, 'Watch Geo News Live here', '', NULL, 'https://www.geo.tv/assets/front/images/image-share.jpg', 'watch-geo-news-live-here', 'tv', 'Play', 2, NULL, 0, 1);
INSERT INTO `slider` (`slider_id`, `title`, `description`, `video_link`, `image_link`, `slug`, `action_type`, `action_btn_text`, `action_id`, `action_url`, `order`, `publication`) VALUES (3, 'Watch Bol News Live here', '', NULL, 'https://i.pinimg.com/originals/b1/7d/ca/b17dca718754b076c777158a5912ebea.jpg', 'watch-bol-news-live-here', 'tv', 'Play', 5, NULL, 0, 1);
INSERT INTO `slider` (`slider_id`, `title`, `description`, `video_link`, `image_link`, `slug`, `action_type`, `action_btn_text`, `action_id`, `action_url`, `order`, `publication`) VALUES (4, 'Watch Samaa News Live here', '', NULL, 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/6b712754742869.596789d8766cf.png', 'watch-samaa-news-live-here', 'tv', 'Play', 6, NULL, 0, 1);


#
# TABLE STRUCTURE FOR: star
#

DROP TABLE IF EXISTS `star`;

CREATE TABLE `star` (
  `star_id` int(10) NOT NULL AUTO_INCREMENT,
  `star_type` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `star_name` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `star_desc` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `view` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`star_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: subscription
#

DROP TABLE IF EXISTS `subscription`;

CREATE TABLE `subscription` (
  `subscription_id` int(50) NOT NULL AUTO_INCREMENT,
  `plan_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `price_amount` int(50) DEFAULT NULL,
  `paid_amount` float DEFAULT NULL,
  `timestamp_from` int(50) NOT NULL,
  `timestamp_to` int(50) NOT NULL,
  `payment_method` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_info` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `payment_timestamp` int(50) DEFAULT NULL,
  `recurring` int(10) NOT NULL DEFAULT 1,
  `status` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`subscription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `subscription` (`subscription_id`, `plan_id`, `user_id`, `price_amount`, `paid_amount`, `timestamp_from`, `timestamp_to`, `payment_method`, `payment_info`, `payment_timestamp`, `recurring`, `status`) VALUES (1, 0, 17, NULL, NULL, 1608750744, 1609355544, NULL, NULL, NULL, 1, 1);


#
# TABLE STRUCTURE FOR: subtitle
#

DROP TABLE IF EXISTS `subtitle`;

CREATE TABLE `subtitle` (
  `subtitle_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` int(50) NOT NULL,
  `video_file_id` int(50) DEFAULT NULL,
  `language` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kind` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `src` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `srclang` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `common` int(2) DEFAULT 0,
  `status` int(2) DEFAULT 1,
  PRIMARY KEY (`subtitle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: tvseries_subtitle
#

DROP TABLE IF EXISTS `tvseries_subtitle`;

CREATE TABLE `tvseries_subtitle` (
  `tvseries_subtitle_id` int(11) NOT NULL AUTO_INCREMENT,
  `videos_id` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `episodes_id` int(250) DEFAULT NULL,
  `language` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `kind` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `src` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `srclang` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `common` int(2) DEFAULT 0,
  `status` int(2) DEFAULT 1,
  PRIMARY KEY (`tvseries_subtitle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `username` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_password_set` int(5) NOT NULL DEFAULT 0 COMMENT '0 = unknown, 1=set, 2 =unset',
  `password` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gender` int(2) DEFAULT 1,
  `role` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `token` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `theme` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT 'default',
  `theme_color` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT '#16163F',
  `join_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `deactivate_reason` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `phone` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `dob` date DEFAULT '0000-00-00',
  `firebase_auth_uid` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `user` (`user_id`, `name`, `slug`, `username`, `email`, `is_password_set`, `password`, `gender`, `role`, `token`, `theme`, `theme_color`, `join_date`, `last_login`, `deactivate_reason`, `status`, `phone`, `dob`, `firebase_auth_uid`) VALUES (1, 'admin', '', 'admin@admin.com', 'admin@admin.com', 0, '6af2cad09cdf18db7b14ded8f7e62566', 1, 'admin', NULL, 'default', '#16163F', NULL, '2020-12-24 01:13:10', NULL, 1, NULL, '0000-00-00', NULL);
INSERT INTO `user` (`user_id`, `name`, `slug`, `username`, `email`, `is_password_set`, `password`, `gender`, `role`, `token`, `theme`, `theme_color`, `join_date`, `last_login`, `deactivate_reason`, `status`, `phone`, `dob`, `firebase_auth_uid`) VALUES (17, 'Waqar Ahmed', NULL, 'wqrahd@gmail.com', 'wqrahd@gmail.com', 0, '91259490d2a702a4735bdb695bfef2fa', 1, 'subscriber', NULL, 'default', '#16163F', '2020-12-24 01:12:24', '2020-12-24 01:12:55', NULL, 1, NULL, '0000-00-00', NULL);


#
# TABLE STRUCTURE FOR: video_file
#

DROP TABLE IF EXISTS `video_file`;

CREATE TABLE `video_file` (
  `video_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `stream_key` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `file_source` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `source_type` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `file_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `label` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Server#1',
  `order` int(50) NOT NULL DEFAULT 0,
  PRIMARY KEY (`video_file_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: videos
#

DROP TABLE IF EXISTS `videos`;

CREATE TABLE `videos` (
  `videos_id` int(11) NOT NULL AUTO_INCREMENT,
  `imdbid` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `seo_title` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `stars` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `director` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `writer` varchar(250) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rating` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT '0',
  `release` date DEFAULT NULL,
  `country` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `genre` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `video_type` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `runtime` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `video_quality` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT 'HD',
  `is_paid` int(5) NOT NULL DEFAULT 1,
  `publication` int(5) DEFAULT NULL,
  `trailer` int(5) DEFAULT 0,
  `trailler_youtube_source` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `enable_download` int(5) DEFAULT 1,
  `focus_keyword` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tags` mediumtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `imdb_rating` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_tvseries` int(11) NOT NULL DEFAULT 0,
  `total_rating` int(50) DEFAULT 1,
  `today_view` int(250) DEFAULT 0,
  `weekly_view` int(250) DEFAULT 0,
  `monthly_view` int(250) DEFAULT 0,
  `total_view` int(250) DEFAULT 1,
  `last_ep_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`videos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

#
# TABLE STRUCTURE FOR: wish_list
#

DROP TABLE IF EXISTS `wish_list`;

CREATE TABLE `wish_list` (
  `wish_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `wish_list_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `videos_id` int(11) DEFAULT NULL,
  `episodes_id` int(200) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  PRIMARY KEY (`wish_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

