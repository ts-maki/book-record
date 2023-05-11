-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql
-- 生成日時: 2023 年 5 月 11 日 06:55
-- サーバのバージョン： 8.0.32
-- PHP のバージョン: 8.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `book_record`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `google_book_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'googleAPIの本のid',
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '本のタイトル',
  `author` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '著者',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '本のあらすじ',
  `thumbnail_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表紙画像のurl',
  `isbn` bigint UNSIGNED DEFAULT NULL COMMENT '本のISBN番号',
  `published_date` date DEFAULT NULL COMMENT '出版日',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `books`
--

INSERT INTO `books` (`id`, `google_book_id`, `title`, `author`, `description`, `thumbnail_path`, `isbn`, `published_date`, `created_at`, `updated_at`) VALUES
(282, 'FyrNsgEACAAJ', 'レオ・アッティール伝', '杉原智則', '西のアリオン王国、東の聖ディティアーヌ連盟と二つの列強に挟まれたアトール公国。その公子レオ・アッティールはアリオンへ人質同然で送り出され、辺境の太守のもとで武芸と学問に励んでいた。そして時代は転換点を迎える。アトールと接する中立勢力・コンスコン寺院とアリオンの関係が悪化したのだ。アトールからの援軍パーシー、コンスコンの僧兵カミュ、僻地から来た傭兵クオンは協力して迫りくるアリオンの軍勢に対抗しようとする。その戦いの最中、三人とレオは運命の出会いを果たす―。若き主従が戦乱の世を駆け抜ける本格戦記ファンタジー、開幕!', 'http://books.google.com/books/content?id=FyrNsgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784048651967, '2015-06-10', '2023-05-07 22:52:54', '2023-05-07 22:52:54'),
(284, 'fbfcCwAAQBAJ', 'ブラッディ・ギアス', '杉原智則', 'ある夜、吸血鬼化したクラスメイトに襲われた黒宮尚輝は、危ないところを珠那という少女に救われる。尚輝は“ハンター”の珠那と行動を共にするが、ある戦いで命を落としてしまう。ところが同じ一日を繰り返して!?', 'http://books.google.com/books/content?id=fbfcCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, '2016-04-01', '2023-05-07 22:53:20', '2023-05-07 22:53:20'),
(285, 'N_wtDwAAQBAJ', '交響詩篇エウレカセブン3NEWWORLDORDER', '杉原智則', '連邦との対立が激化するにつれ、次々と危機に直面するゲッコーステイト。そのなかで思いもよらない人間の裏切りが発覚。彼の手引きでエウレカとレントンが連邦に拉致されてしまう。二人を待ち受ける苛烈な運命とは！ 注：紙版の巻末収録「解説 南 雅彦」は電子版には収録されておりません', 'http://books.google.com/books/content?id=N_wtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, '2006-04-28', '2023-05-07 23:00:34', '2023-05-07 23:00:34'),
(286, '0uklNwAACAAJ', 'てのひらのエネミー4', '杉原智則', '戦いで負傷したアウルを守りたい、その一心で彼を教会連合に連れてきたシーラ。しかしアウルを利用し戦線を拡大、さらにシーラ暗殺を企む勢力が連合内で暗躍する。一方、魔法使い軍でも教会側との全面戦争を主張する一派が台頭してきた。無駄な血が流れるのはもうたくさんだ!―アウルの魂の叫びが、彼の中に眠る大いなる力を目覚めさせた。無益な戦いを続ける者への怒りが大地を焦がす、ハンドメイドマジカルストーリーついに完結。', 'http://books.google.com/books/content?id=0uklNwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784044300043, '2005-02-01', '2023-05-08 00:07:12', '2023-05-08 00:07:12'),
(288, '_GTftgEACAAJ', '叛逆せよ!英雄、転じて邪神騎士2', '杉原智則', '英雄による邪神王国復興物語、第2弾!', 'http://books.google.com/books/content?id=_GTftgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784048938310, '2018-05-01', '2023-05-08 00:15:39', '2023-05-08 00:15:39'),
(289, 'gFbtDwAAQBAJ', '叛逆せよ!英雄、転じて邪神騎士3', '杉原智則', '邪神を討ち倒した英雄ギュネイは、敗戦国ランドール王国の荒廃ぶりを見かねて手助けを重ねるうちに、救世主〈黒狼の騎士〉として祭り上げられてしまう。 そんななか、〈純潔の聖女〉エリシスの暗殺計画の情報を得るギュネイ。居ても立ってもいられず、ランドールの姫・ミネルバに暇を乞うが…… 「これまでよくぞ仕えてくれました、と言うと思いましたか？ 許しません！」 「ええっ！？」 時を同じくして、それまで沈黙を貫いていた不死騎士団残党が王都に押し寄せてきて――二人の王女の間に立つギュネイ、今こそ決断の時！？ 邪神王国復興物語、第３弾！', 'http://books.google.com/books/content?id=gFbtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, '2020-07-10', '2023-05-08 00:29:42', '2023-05-08 00:29:42'),
(290, 'XZNqQgAACAAJ', 'レギオン', '杉原智則', 'ぼく―風見徹は図書室で一冊のノートを拾った。その持ち主は美人だけどクラスで孤立している矢島葵で、中には不思議な物語が綴られていた。世間では奇妙な“眠り病”が流行しはじめ、同時に葵の物語に変化が訪れる。そしてぼくは世界に徴かな違和感を覚えはじめる―。おれ―トール・カザミは“異海”に唯一対抗できる兵器“騎体”を操る騎士になった。“眠り病”をもたらし世界を侵食する“異海”と戦ううちに、おれは自らの過去に疑念を抱きはじめる―。交錯する「ぼく」と「おれ」、そして二つの世界の繋がりとは。杉原智則が贈るツインワールド・ストーリー。', 'http://books.google.com/books/content?id=XZNqQgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784840238106, '2007-04-25', '2023-05-08 14:11:02', '2023-05-08 14:11:02'),
(293, 'qRBSAwAAQBAJ', '聖剣の姫と神盟騎士団IV', '杉原智則', '失われたもう一つの反魂珠の手がかりを求めて『皆殺しの島』へと旅立ったダークたち。なんとそこは死者の王国が支配する島だった。ダークとフィーネは死霊たちに襲われるが、美しい僧侶ロナに救われ——！？', 'http://books.google.com/books/content?id=qRBSAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, NULL, '2023-05-08 21:51:57', '2023-05-08 21:51:57'),
(294, 'LfwtDwAAQBAJ', '交響詩篇エウレカセブン1BLUEMONDAY', '杉原智則', '先の見えてしまう将来、何も起こることのない日々。14歳の少年レントンの鬱々とした世界も、紫色の瞳を持つひとりの少女との出逢いによって、いま大きく変わろうとしている。新感覚ロボットアクションノベル登場！ 注：紙版の巻末収録「解説 京田知己」は電子版には収録されておりません', 'http://books.google.com/books/content?id=LfwtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, '2005-10-29', '2023-05-10 13:30:13', '2023-05-10 13:30:13'),
(296, 'm9A5mQEACAAJ', 'V.T.R.', '辻村深月', '辻村深月の長編ミステリーから物語が飛び出した。「スロウハイツ」の住人を受け止め、支えたあの作家。物語に生きる彼らと同じ視線で、チヨダ・コーキのデビュー作を味わおう。『スロウハイツの神様』の世界へようこそ。', 'http://books.google.com/books/content?id=m9A5mQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784062774789, '2013-02-01', '2023-05-10 15:24:04', '2023-05-10 15:24:04'),
(297, 'V8YCDAAAQBAJ', 'ディズニー キセキの神様が教えてくれたこと', '鎌田洋', '【累計90万部突破！のベストセラーシリーズ！】 大切なことに気づく３つの物語 ディズニーランドで生まれる“奇跡”とも呼べるエピソードの数々。 これらはいかにして生み出されるのか？ その秘密を知っているのが“キセキの神様”だった。 本書は“夢と魔法の王国”を舞台に繰り広げられる「出会いと絆から生まれる奇跡」の物語。', 'http://books.google.com/books/content?id=V8YCDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 4797386401, '2016-04-21', '2023-05-11 15:39:54', '2023-05-11 15:39:54'),
(298, 'qQ19DwAAQBAJ', 'なれる！SE162年目でわかる？SE入門', '夏海公司', '工兵、次郎丸、梅林 VS 立華、藤崎の対決となった総合商社二社のインフラ統合案件は、暗躍するスピリッティアの貝塚の介入もあり、業界全体を巻き込む事態に。国内の主要なIT企業を押えられ、案件を進める術を失った工兵が目を向けたのは……まさかのあの人物!? 一方、工兵の総務部への異動話も待ったなしの状況に。スルガシステムの未来と、立華のいるSE部を守ること、そして自身のエンジニアとしてのキャリアに悩む工兵の選ぶ道とは──。萌えるSE残酷物語、感動のシリーズ本編完結編！', 'http://books.google.com/books/content?id=qQ19DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, '2017-08-10', '2023-05-11 15:40:55', '2023-05-11 15:40:55'),
(299, 'nOx8DwAAQBAJ', '烙印の紋章XIあかつきの空を竜は翔ける(上)', '杉原智則', '勢力を増すオルバの軍勢。もはや看過できなくなった皇帝は、オルバを帝都へ招くという強行手段に出る。 一方、隣国エンデには、戦巧者の 『小覇王』 カセリア率いる東の大国・アリオン軍が迫るという事態に陥っていた。 アリオンの野心はエンデに留まらず、必ずやメフィウス、ガーベラにまで及ぶ ──。その危機を前に、オルバが、そして負傷をして祖国ガーベラに帰国したビリーナが行動を開始する！', 'http://books.google.com/books/content?id=nOx8DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, '2012-06-10', '2023-05-11 15:45:49', '2023-05-11 15:45:49'),
(301, 'He5IuwEACAAJ', '小説の神様', '相沢沙呼', '今、この文章を読んでいるあなたのおかげで、生み出された物語があるのだと、あなたに知ってほしい。', 'http://books.google.com/books/content?id=He5IuwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784065125540, '2018-08-01', '2023-05-11 15:48:01', '2023-05-11 15:48:01');

-- --------------------------------------------------------

--
-- テーブルの構造 `book_records`
--

CREATE TABLE `book_records` (
  `id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '本の感想',
  `read_date` date NOT NULL COMMENT '読んだ日',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `book_records`
--

INSERT INTO `book_records` (`id`, `book_id`, `user_id`, `category_id`, `content`, `read_date`, `created_at`, `updated_at`) VALUES
(7, 286, 2, 4, '感想が入るよーーん感想が入るよーーん感想が入るよーーん感想が入るよーーん', '2023-05-03', '2023-05-08 00:07:35', '2023-05-08 00:07:35'),
(9, 289, 2, 5, 'お気に入りの本', '2023-05-08', '2023-05-08 00:29:47', '2023-05-08 20:40:31'),
(11, 293, 2, 6, 'ｓｆｓｄｆｓ', '2023-05-08', '2023-05-08 21:52:03', '2023-05-10 15:26:15'),
(12, 294, 2, 5, 'イナーシャのテスト', '2023-05-10', '2023-05-10 13:30:35', '2023-05-10 13:30:50'),
(14, 297, 3, 7, 'ディズニーのおもてなしの精神に感化される', '2023-05-11', '2023-05-11 15:40:19', '2023-05-11 15:40:19'),
(15, 298, 3, 7, '熱狂お仕事小説', '2023-05-11', '2023-05-11 15:41:15', '2023-05-11 15:41:15'),
(16, 299, 4, 1, '硬派戦記', '2023-05-11', '2023-05-11 15:45:59', '2023-05-11 15:45:59'),
(17, 301, 4, 3, 'あらすじがすてき', '2023-05-11', '2023-05-11 15:48:16', '2023-05-11 15:48:16');

-- --------------------------------------------------------

--
-- テーブルの構造 `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '本のカテゴリー名',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ファンタジー', '2023-05-04 16:42:32', '2023-05-04 16:42:32'),
(2, '恋愛', '2023-05-04 16:43:43', '2023-05-04 16:43:43'),
(3, '青春', '2023-05-04 16:48:26', '2023-05-04 16:48:26'),
(4, 'SF', '2023-05-04 16:48:53', '2023-05-04 16:48:53'),
(5, 'ミステリー', '2023-05-04 16:49:13', '2023-05-04 16:49:13'),
(6, 'ホラー', '2023-05-04 16:49:36', '2023-05-04 16:49:36'),
(7, '仕事', '2023-05-04 16:50:31', '2023-05-04 16:50:31'),
(8, '歴史', '2023-05-05 16:50:49', '2023-05-04 16:50:49');

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `likes`
--

CREATE TABLE `likes` (
  `user_id` bigint UNSIGNED NOT NULL,
  `book_record_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `likes`
--

INSERT INTO `likes` (`user_id`, `book_record_id`, `created_at`, `updated_at`) VALUES
(2, 7, '2023-05-11 15:15:09', '2023-05-11 15:15:09'),
(2, 9, '2023-05-11 15:15:08', '2023-05-11 15:15:08'),
(2, 11, '2023-05-11 15:15:07', '2023-05-11 15:15:07'),
(2, 12, '2023-05-11 15:15:06', '2023-05-11 15:15:06'),
(3, 11, '2023-05-11 15:49:45', '2023-05-11 15:49:45'),
(3, 15, '2023-05-11 15:49:43', '2023-05-11 15:49:43'),
(4, 9, '2023-05-11 15:48:39', '2023-05-11 15:48:39'),
(4, 17, '2023-05-11 15:48:26', '2023-05-11 15:48:26');

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2018_08_08_100000_create_telescope_entries_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_04_150503_add_column_image_path_to_users', 2),
(8, '2023_05_04_152309_create_books_table', 3),
(9, '2023_05_04_160103_create_categories_table', 4),
(10, '2023_05_04_160546_create_book_records_table', 5),
(11, '2023_05_04_161602_create_likes_table', 6),
(12, '2023_05_04_165946_add_comment_column', 7),
(13, '2023_05_05_131518_add_culumn_username_to_users', 8),
(15, '2023_05_05_163903_add_culumn_description_to_books', 9),
(16, '2023_05_05_192716_change_column_published_date_to_books', 10),
(17, '2023_05_05_200854_change_column_isbn_to_books', 11),
(18, '2023_05_05_202851_add_column_google_books_id_to_books', 12),
(19, '2023_05_08_160826_change_name_culumn', 13);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(26091, '9923bf37-d018-48bf-be7f-bd818124cb5e', '9923bf37-d1a7-4117-86ec-f6b6964de56c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `telescope_entries`\",\"time\":\"222.04\",\"slow\":true,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":35,\"hash\":\"028161d6b6379f4e627c4ba6981fd441\",\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:10'),
(26092, '9923bf37-d148-44d5-b965-2be29fb3f0a5', '9923bf37-d1a7-4117-86ec-f6b6964de56c', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"delete from `telescope_monitoring`\",\"time\":\"0.71\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/artisan\",\"line\":35,\"hash\":\"93d47a4a096729228b0389a4805074ec\",\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:10'),
(26093, '9923bf37-d171-49cc-9d33-47045b20569e', '9923bf37-d1a7-4117-86ec-f6b6964de56c', NULL, 1, 'command', '{\"command\":\"telescope:clear\",\"exit_code\":0,\"arguments\":{\"command\":\"telescope:clear\"},\"options\":{\"help\":false,\"quiet\":false,\"verbose\":false,\"version\":false,\"ansi\":null,\"no-interaction\":false,\"env\":null},\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:10'),
(26094, '9923bf40-56d1-4690-ba46-54937b041c0b', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `book_records` order by `created_at` desc\",\"time\":\"2.87\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Http\\/Controllers\\/Book\\/BookController.php\",\"line\":88,\"hash\":\"fa4bc96512bf4a156f27902f32b89390\",\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26095, '9923bf40-56fe-4da4-9c33-9ad4c8db5b64', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\BookRecord\",\"count\":8,\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26096, '9923bf40-578e-4e97-8405-dcb5d91c8d25', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `books` where `books`.`id` in (286, 289, 293, 294, 297, 298, 299, 301)\",\"time\":\"0.71\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Http\\/Controllers\\/Book\\/BookController.php\",\"line\":88,\"hash\":\"949040956c387da346a0bfae0e2ae855\",\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26097, '9923bf40-57a3-481e-9408-92f209689e2b', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Book\",\"count\":8,\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26098, '9923bf40-57df-4555-bf54-4f96f09f03c9', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'view', '{\"name\":\"index\",\"path\":\"\\/resources\\/views\\/index.blade.php\",\"data\":[\"records\"],\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26099, '9923bf40-5858-4981-8263-25a071a100c0', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 3 limit 1\",\"time\":\"0.47\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/storage\\/framework\\/views\\/c5ede9c7fc8c57a52b634d179ce0b0a7.php\",\"line\":24,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26100, '9923bf40-586c-42a8-9561-af122b367eae', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26101, '9923bf40-5917-4753-8bcd-c8f50b753353', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 17) as `exists`\",\"time\":\"0.91\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26102, '9923bf40-59d0-4606-81ac-bffb99acc366', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 16) as `exists`\",\"time\":\"0.82\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26103, '9923bf40-5a40-4787-9167-7e93a057cef2', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 15) as `exists`\",\"time\":\"0.43\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26104, '9923bf40-5aae-42c6-825c-c1da0b810c89', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 14) as `exists`\",\"time\":\"0.53\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26105, '9923bf40-5b02-4701-b096-591103a9dffc', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 12) as `exists`\",\"time\":\"0.40\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26106, '9923bf40-5b68-48f5-85e4-6da7e65bfb62', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 11) as `exists`\",\"time\":\"0.56\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26107, '9923bf40-5bb4-40d6-beb2-fdc0c7eeab87', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 9) as `exists`\",\"time\":\"0.32\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26108, '9923bf40-5bfa-4be3-9230-ad11158ca08a', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 7) as `exists`\",\"time\":\"0.32\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26109, '9923bf40-5c16-4bd5-a660-5f528b68b09b', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\/resources\\/views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26110, '9923bf40-5d21-4967-963a-fd534dbbea5b', '9923bf40-5d60-46ef-9e5a-12214c246e5e', NULL, 1, 'request', '{\"ip_address\":\"172.23.0.1\",\"uri\":\"\\/index\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Book\\\\BookController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"113\\\", \\\"Chromium\\\";v=\\\"113\\\", \\\"Not-A.Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/113.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-dest\":\"document\",\"referer\":\"http:\\/\\/localhost\\/index\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"ja,en-US;q=0.9,en;q=0.8\",\"cookie\":\"pma_lang=ja; phpMyAdmin=f312922eaf96acc58c7e609fb28c1501; XSRF-TOKEN=eyJpdiI6IkJjYUdPU2xaWUNUQzVXM09nTHJ4MUE9PSIsInZhbHVlIjoiSmRnbXVLeHZNSjBiRzRZNVlQOEdySzVnZEt0djBzeWpxeUozSENYekVpOGQzcitPR0h5b2Q0Rkd5bGgvb1orQzNPdUIwQTNZQjVRaytaWmlPTWkvUW9XVHhsNlM2T0RJLzRQU2o5YTZVb2hnaDh3VHNzd09NTEhlRXZIY3B0YkYiLCJtYWMiOiIxNWE3YTFmZWY1NDIyNWIzMDQ2YTY4ZDhiOWU5MjNkMDYzMDFjYzEwNDZlZjIzM2ZhNDYzOTFiMWQxYmI0MzM1IiwidGFnIjoiIn0%3D; _session=eyJpdiI6Ik1OWEhDL2VhcXpTcnlsMDBIWXh3ZGc9PSIsInZhbHVlIjoia0gxUnN3d0dHQkxvUWlVZU9wT3hTeHY3Vms1d0I3Z1FDQUhWZ3JCdmNld01UeTM3eFAvRkN6cElNMUIzMGtSMHM0a1ZOWlUrM1FIdTV2RDRPb2dpS2IwRk11bDEzc2tMWDd0WXJhejdscGxvd3kraW8xanlVQURIMkFwd1pHa0oiLCJtYWMiOiJlZDFhOGI4ZDlkYmRmMWEzNDBkNGY2NmFjODE0MDk4MDFmZDk0YTRhYzVjZWM4ZmI4YjM1ODBiNDUxZjM3MTk3IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"RAtDQG5pWu63myAhawT6h3ers0aMeKFGkvJfFm27\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/localhost\\/index\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3},\"response_status\":200,\"response\":{\"view\":\"\\/var\\/www\\/html\\/resources\\/views\\/index.blade.php\",\"data\":{\"records\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":17,\"book_id\":301,\"user_id\":4,\"category_id\":3,\"content\":\"\\u3042\\u3089\\u3059\\u3058\\u304c\\u3059\\u3066\\u304d\",\"read_date\":\"2023-05-11\",\"created_at\":\"2023-05-11T06:48:16.000000Z\",\"updated_at\":\"2023-05-11T06:48:16.000000Z\",\"book\":{\"id\":301,\"google_book_id\":\"He5IuwEACAAJ\",\"title\":\"\\u5c0f\\u8aac\\u306e\\u795e\\u69d8\",\"author\":\"\\u76f8\\u6ca2\\u6c99\\u547c\",\"description\":\"\\u4eca\\u3001\\u3053\\u306e\\u6587\\u7ae0\\u3092\\u8aad\\u3093\\u3067\\u3044\\u308b\\u3042\\u306a\\u305f\\u306e\\u304a\\u304b\\u3052\\u3067\\u3001\\u751f\\u307f\\u51fa\\u3055\\u308c\\u305f\\u7269\\u8a9e\\u304c\\u3042\\u308b\\u306e\\u3060\\u3068\\u3001\\u3042\\u306a\\u305f\\u306b\\u77e5\\u3063\\u3066\\u307b\\u3057\\u3044\\u3002\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=He5IuwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api\",\"isbn\":9784065125540,\"published_date\":\"2018-08-01\",\"created_at\":\"2023-05-11T06:48:01.000000Z\",\"updated_at\":\"2023-05-11T06:48:01.000000Z\"}},{\"id\":16,\"book_id\":299,\"user_id\":4,\"category_id\":1,\"content\":\"\\u786c\\u6d3e\\u6226\\u8a18\",\"read_date\":\"2023-05-11\",\"created_at\":\"2023-05-11T06:45:59.000000Z\",\"updated_at\":\"2023-05-11T06:45:59.000000Z\",\"book\":{\"id\":299,\"google_book_id\":\"nOx8DwAAQBAJ\",\"title\":\"\\u70d9\\u5370\\u306e\\u7d0b\\u7ae0XI\\u3042\\u304b\\u3064\\u304d\\u306e\\u7a7a\\u3092\\u7adc\\u306f\\u7fd4\\u3051\\u308b(\\u4e0a)\",\"author\":\"\\u6749\\u539f\\u667a\\u5247\",\"description\":\"\\u52e2\\u529b\\u3092\\u5897\\u3059\\u30aa\\u30eb\\u30d0\\u306e\\u8ecd\\u52e2\\u3002\\u3082\\u306f\\u3084\\u770b\\u904e\\u3067\\u304d\\u306a\\u304f\\u306a\\u3063\\u305f\\u7687\\u5e1d\\u306f\\u3001\\u30aa\\u30eb\\u30d0\\u3092\\u5e1d\\u90fd\\u3078\\u62db\\u304f\\u3068\\u3044\\u3046\\u5f37\\u884c\\u624b\\u6bb5\\u306b\\u51fa\\u308b\\u3002 \\u4e00\\u65b9\\u3001\\u96a3\\u56fd\\u30a8\\u30f3\\u30c7\\u306b\\u306f\\u3001\\u6226\\u5de7\\u8005\\u306e \\u300e\\u5c0f\\u8987\\u738b\\u300f \\u30ab\\u30bb\\u30ea\\u30a2\\u7387\\u3044\\u308b\\u6771\\u306e\\u5927\\u56fd\\u30fb\\u30a2\\u30ea\\u30aa\\u30f3\\u8ecd\\u304c\\u8feb\\u308b\\u3068\\u3044\\u3046\\u4e8b\\u614b\\u306b\\u9665\\u3063\\u3066\\u3044\\u305f\\u3002 \\u30a2\\u30ea\\u30aa\\u30f3\\u306e\\u91ce\\u5fc3\\u306f\\u30a8\\u30f3\\u30c7\\u306b\\u7559\\u307e\\u3089\\u305a\\u3001\\u5fc5\\u305a\\u3084\\u30e1\\u30d5\\u30a3\\u30a6\\u30b9\\u3001\\u30ac\\u30fc\\u30d9\\u30e9\\u306b\\u307e\\u3067\\u53ca\\u3076 \\u2500\\u2500\\u3002\\u305d\\u306e\\u5371\\u6a5f\\u3092\\u524d\\u306b\\u3001\\u30aa\\u30eb\\u30d0\\u304c\\u3001\\u305d\\u3057\\u3066\\u8ca0\\u50b7\\u3092\\u3057\\u3066\\u7956\\u56fd\\u30ac\\u30fc\\u30d9\\u30e9\\u306b\\u5e30\\u56fd\\u3057\\u305f\\u30d3\\u30ea\\u30fc\\u30ca\\u304c\\u884c\\u52d5\\u3092\\u958b\\u59cb\\u3059\\u308b\\uff01\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=nOx8DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api\",\"isbn\":null,\"published_date\":\"2012-06-10\",\"created_at\":\"2023-05-11T06:45:49.000000Z\",\"updated_at\":\"2023-05-11T06:45:49.000000Z\"}},{\"id\":15,\"book_id\":298,\"user_id\":3,\"category_id\":7,\"content\":\"\\u71b1\\u72c2\\u304a\\u4ed5\\u4e8b\\u5c0f\\u8aac\",\"read_date\":\"2023-05-11\",\"created_at\":\"2023-05-11T06:41:15.000000Z\",\"updated_at\":\"2023-05-11T06:41:15.000000Z\",\"book\":{\"id\":298,\"google_book_id\":\"qQ19DwAAQBAJ\",\"title\":\"\\u306a\\u308c\\u308b\\uff01SE162\\u5e74\\u76ee\\u3067\\u308f\\u304b\\u308b\\uff1fSE\\u5165\\u9580\",\"author\":\"\\u590f\\u6d77\\u516c\\u53f8\",\"description\":\"\\u5de5\\u5175\\u3001\\u6b21\\u90ce\\u4e38\\u3001\\u6885\\u6797 VS \\u7acb\\u83ef\\u3001\\u85e4\\u5d0e\\u306e\\u5bfe\\u6c7a\\u3068\\u306a\\u3063\\u305f\\u7dcf\\u5408\\u5546\\u793e\\u4e8c\\u793e\\u306e\\u30a4\\u30f3\\u30d5\\u30e9\\u7d71\\u5408\\u6848\\u4ef6\\u306f\\u3001\\u6697\\u8e8d\\u3059\\u308b\\u30b9\\u30d4\\u30ea\\u30c3\\u30c6\\u30a3\\u30a2\\u306e\\u8c9d\\u585a\\u306e\\u4ecb\\u5165\\u3082\\u3042\\u308a\\u3001\\u696d\\u754c\\u5168\\u4f53\\u3092\\u5dfb\\u304d\\u8fbc\\u3080\\u4e8b\\u614b\\u306b\\u3002\\u56fd\\u5185\\u306e\\u4e3b\\u8981\\u306aIT\\u4f01\\u696d\\u3092\\u62bc\\u3048\\u3089\\u308c\\u3001\\u6848\\u4ef6\\u3092\\u9032\\u3081\\u308b\\u8853\\u3092\\u5931\\u3063\\u305f\\u5de5\\u5175\\u304c\\u76ee\\u3092\\u5411\\u3051\\u305f\\u306e\\u306f\\u2026\\u2026\\u307e\\u3055\\u304b\\u306e\\u3042\\u306e\\u4eba\\u7269!? \\u4e00\\u65b9\\u3001\\u5de5\\u5175\\u306e\\u7dcf\\u52d9\\u90e8\\u3078\\u306e\\u7570\\u52d5\\u8a71\\u3082\\u5f85\\u3063\\u305f\\u306a\\u3057\\u306e\\u72b6\\u6cc1\\u306b\\u3002\\u30b9\\u30eb\\u30ac\\u30b7\\u30b9\\u30c6\\u30e0\\u306e\\u672a\\u6765\\u3068\\u3001\\u7acb\\u83ef\\u306e\\u3044\\u308bSE\\u90e8\\u3092\\u5b88\\u308b\\u3053\\u3068\\u3001\\u305d\\u3057\\u3066\\u81ea\\u8eab\\u306e\\u30a8\\u30f3\\u30b8\\u30cb\\u30a2\\u3068\\u3057\\u3066\\u306e\\u30ad\\u30e3\\u30ea\\u30a2\\u306b\\u60a9\\u3080\\u5de5\\u5175\\u306e\\u9078\\u3076\\u9053\\u3068\\u306f\\u2500\\u2500\\u3002\\u840c\\u3048\\u308bSE\\u6b8b\\u9177\\u7269\\u8a9e\\u3001\\u611f\\u52d5\\u306e\\u30b7\\u30ea\\u30fc\\u30ba\\u672c\\u7de8\\u5b8c\\u7d50\\u7de8\\uff01\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=qQ19DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api\",\"isbn\":null,\"published_date\":\"2017-08-10\",\"created_at\":\"2023-05-11T06:40:55.000000Z\",\"updated_at\":\"2023-05-11T06:40:55.000000Z\"}},{\"id\":14,\"book_id\":297,\"user_id\":3,\"category_id\":7,\"content\":\"\\u30c7\\u30a3\\u30ba\\u30cb\\u30fc\\u306e\\u304a\\u3082\\u3066\\u306a\\u3057\\u306e\\u7cbe\\u795e\\u306b\\u611f\\u5316\\u3055\\u308c\\u308b\",\"read_date\":\"2023-05-11\",\"created_at\":\"2023-05-11T06:40:19.000000Z\",\"updated_at\":\"2023-05-11T06:40:19.000000Z\",\"book\":{\"id\":297,\"google_book_id\":\"V8YCDAAAQBAJ\",\"title\":\"\\u30c7\\u30a3\\u30ba\\u30cb\\u30fc \\u30ad\\u30bb\\u30ad\\u306e\\u795e\\u69d8\\u304c\\u6559\\u3048\\u3066\\u304f\\u308c\\u305f\\u3053\\u3068\",\"author\":\"\\u938c\\u7530\\u6d0b\",\"description\":\"\\u3010\\u7d2f\\u8a0890\\u4e07\\u90e8\\u7a81\\u7834\\uff01\\u306e\\u30d9\\u30b9\\u30c8\\u30bb\\u30e9\\u30fc\\u30b7\\u30ea\\u30fc\\u30ba\\uff01\\u3011 \\u5927\\u5207\\u306a\\u3053\\u3068\\u306b\\u6c17\\u3065\\u304f\\uff13\\u3064\\u306e\\u7269\\u8a9e \\u30c7\\u30a3\\u30ba\\u30cb\\u30fc\\u30e9\\u30f3\\u30c9\\u3067\\u751f\\u307e\\u308c\\u308b\\u201c\\u5947\\u8de1\\u201d\\u3068\\u3082\\u547c\\u3079\\u308b\\u30a8\\u30d4\\u30bd\\u30fc\\u30c9\\u306e\\u6570\\u3005\\u3002 \\u3053\\u308c\\u3089\\u306f\\u3044\\u304b\\u306b\\u3057\\u3066\\u751f\\u307f\\u51fa\\u3055\\u308c\\u308b\\u306e\\u304b\\uff1f \\u305d\\u306e\\u79d8\\u5bc6\\u3092\\u77e5\\u3063\\u3066\\u3044\\u308b\\u306e\\u304c\\u201c\\u30ad\\u30bb\\u30ad\\u306e\\u795e\\u69d8\\u201d\\u3060\\u3063\\u305f\\u3002 \\u672c\\u66f8\\u306f\\u201c\\u5922\\u3068\\u9b54\\u6cd5\\u306e\\u738b\\u56fd\\u201d\\u3092\\u821e\\u53f0\\u306b\\u7e70\\u308a\\u5e83\\u3052\\u3089\\u308c\\u308b\\u300c\\u51fa\\u4f1a\\u3044\\u3068\\u7d46\\u304b\\u3089\\u751f\\u307e\\u308c\\u308b\\u5947\\u8de1\\u300d\\u306e\\u7269\\u8a9e\\u3002\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=V8YCDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api\",\"isbn\":4797386401,\"published_date\":\"2016-04-21\",\"created_at\":\"2023-05-11T06:39:54.000000Z\",\"updated_at\":\"2023-05-11T06:39:54.000000Z\"}},{\"id\":12,\"book_id\":294,\"user_id\":2,\"category_id\":5,\"content\":\"\\u30a4\\u30ca\\u30fc\\u30b7\\u30e3\\u306e\\u30c6\\u30b9\\u30c8\",\"read_date\":\"2023-05-10\",\"created_at\":\"2023-05-10T04:30:35.000000Z\",\"updated_at\":\"2023-05-10T04:30:50.000000Z\",\"book\":{\"id\":294,\"google_book_id\":\"LfwtDwAAQBAJ\",\"title\":\"\\u4ea4\\u97ff\\u8a69\\u7bc7\\u30a8\\u30a6\\u30ec\\u30ab\\u30bb\\u30d6\\u30f31BLUEMONDAY\",\"author\":\"\\u6749\\u539f\\u667a\\u5247\",\"description\":\"\\u5148\\u306e\\u898b\\u3048\\u3066\\u3057\\u307e\\u3046\\u5c06\\u6765\\u3001\\u4f55\\u3082\\u8d77\\u3053\\u308b\\u3053\\u3068\\u306e\\u306a\\u3044\\u65e5\\u3005\\u300214\\u6b73\\u306e\\u5c11\\u5e74\\u30ec\\u30f3\\u30c8\\u30f3\\u306e\\u9b31\\u3005\\u3068\\u3057\\u305f\\u4e16\\u754c\\u3082\\u3001\\u7d2b\\u8272\\u306e\\u77b3\\u3092\\u6301\\u3064\\u3072\\u3068\\u308a\\u306e\\u5c11\\u5973\\u3068\\u306e\\u51fa\\u9022\\u3044\\u306b\\u3088\\u3063\\u3066\\u3001\\u3044\\u307e\\u5927\\u304d\\u304f\\u5909\\u308f\\u308d\\u3046\\u3068\\u3057\\u3066\\u3044\\u308b\\u3002\\u65b0\\u611f\\u899a\\u30ed\\u30dc\\u30c3\\u30c8\\u30a2\\u30af\\u30b7\\u30e7\\u30f3\\u30ce\\u30d9\\u30eb\\u767b\\u5834\\uff01 \\u6ce8\\uff1a\\u7d19\\u7248\\u306e\\u5dfb\\u672b\\u53ce\\u9332\\u300c\\u89e3\\u8aac \\u4eac\\u7530\\u77e5\\u5df1\\u300d\\u306f\\u96fb\\u5b50\\u7248\\u306b\\u306f\\u53ce\\u9332\\u3055\\u308c\\u3066\\u304a\\u308a\\u307e\\u305b\\u3093\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=LfwtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api\",\"isbn\":null,\"published_date\":\"2005-10-29\",\"created_at\":\"2023-05-10T04:30:13.000000Z\",\"updated_at\":\"2023-05-10T04:30:13.000000Z\"}},{\"id\":11,\"book_id\":293,\"user_id\":2,\"category_id\":6,\"content\":\"\\uff53\\uff46\\uff53\\uff44\\uff46\\uff53\",\"read_date\":\"2023-05-08\",\"created_at\":\"2023-05-08T12:52:03.000000Z\",\"updated_at\":\"2023-05-10T06:26:15.000000Z\",\"book\":{\"id\":293,\"google_book_id\":\"qRBSAwAAQBAJ\",\"title\":\"\\u8056\\u5263\\u306e\\u59eb\\u3068\\u795e\\u76df\\u9a0e\\u58eb\\u56e3IV\",\"author\":\"\\u6749\\u539f\\u667a\\u5247\",\"description\":\"\\u5931\\u308f\\u308c\\u305f\\u3082\\u3046\\u4e00\\u3064\\u306e\\u53cd\\u9b42\\u73e0\\u306e\\u624b\\u304c\\u304b\\u308a\\u3092\\u6c42\\u3081\\u3066\\u300e\\u7686\\u6bba\\u3057\\u306e\\u5cf6\\u300f\\u3078\\u3068\\u65c5\\u7acb\\u3063\\u305f\\u30c0\\u30fc\\u30af\\u305f\\u3061\\u3002\\u306a\\u3093\\u3068\\u305d\\u3053\\u306f\\u6b7b\\u8005\\u306e\\u738b\\u56fd\\u304c\\u652f\\u914d\\u3059\\u308b\\u5cf6\\u3060\\u3063\\u305f\\u3002\\u30c0\\u30fc\\u30af\\u3068\\u30d5\\u30a3\\u30fc\\u30cd\\u306f\\u6b7b\\u970a\\u305f\\u3061\\u306b\\u8972\\u308f\\u308c\\u308b\\u304c\\u3001\\u7f8e\\u3057\\u3044\\u50e7\\u4fb6\\u30ed\\u30ca\\u306b\\u6551\\u308f\\u308c\\u2014\\u2014\\uff01\\uff1f\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=qRBSAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api\",\"isbn\":null,\"published_date\":null,\"created_at\":\"2023-05-08T12:51:57.000000Z\",\"updated_at\":\"2023-05-08T12:51:57.000000Z\"}},{\"id\":9,\"book_id\":289,\"user_id\":2,\"category_id\":5,\"content\":\"\\u304a\\u6c17\\u306b\\u5165\\u308a\\u306e\\u672c\",\"read_date\":\"2023-05-08\",\"created_at\":\"2023-05-07T15:29:47.000000Z\",\"updated_at\":\"2023-05-08T11:40:31.000000Z\",\"book\":{\"id\":289,\"google_book_id\":\"gFbtDwAAQBAJ\",\"title\":\"\\u53db\\u9006\\u305b\\u3088!\\u82f1\\u96c4\\u3001\\u8ee2\\u3058\\u3066\\u90aa\\u795e\\u9a0e\\u58eb3\",\"author\":\"\\u6749\\u539f\\u667a\\u5247\",\"description\":\"\\u90aa\\u795e\\u3092\\u8a0e\\u3061\\u5012\\u3057\\u305f\\u82f1\\u96c4\\u30ae\\u30e5\\u30cd\\u30a4\\u306f\\u3001\\u6557\\u6226\\u56fd\\u30e9\\u30f3\\u30c9\\u30fc\\u30eb\\u738b\\u56fd\\u306e\\u8352\\u5ec3\\u3076\\u308a\\u3092\\u898b\\u304b\\u306d\\u3066\\u624b\\u52a9\\u3051\\u3092\\u91cd\\u306d\\u308b\\u3046\\u3061\\u306b\\u3001\\u6551\\u4e16\\u4e3b\\u3008\\u9ed2\\u72fc\\u306e\\u9a0e\\u58eb\\u3009\\u3068\\u3057\\u3066\\u796d\\u308a\\u4e0a\\u3052\\u3089\\u308c\\u3066\\u3057\\u307e\\u3046\\u3002 \\u305d\\u3093\\u306a\\u306a\\u304b\\u3001\\u3008\\u7d14\\u6f54\\u306e\\u8056\\u5973\\u3009\\u30a8\\u30ea\\u30b7\\u30b9\\u306e\\u6697\\u6bba\\u8a08\\u753b\\u306e\\u60c5\\u5831\\u3092\\u5f97\\u308b\\u30ae\\u30e5\\u30cd\\u30a4\\u3002\\u5c45\\u3066\\u3082\\u7acb\\u3063\\u3066\\u3082\\u3044\\u3089\\u308c\\u305a\\u3001\\u30e9\\u30f3\\u30c9\\u30fc\\u30eb\\u306e\\u59eb\\u30fb\\u30df\\u30cd\\u30eb\\u30d0\\u306b\\u6687\\u3092\\u4e5e\\u3046\\u304c\\u2026\\u2026 \\u300c\\u3053\\u308c\\u307e\\u3067\\u3088\\u304f\\u305e\\u4ed5\\u3048\\u3066\\u304f\\u308c\\u307e\\u3057\\u305f\\u3001\\u3068\\u8a00\\u3046\\u3068\\u601d\\u3044\\u307e\\u3057\\u305f\\u304b\\uff1f \\u8a31\\u3057\\u307e\\u305b\\u3093\\uff01\\u300d \\u300c\\u3048\\u3048\\u3063\\uff01\\uff1f\\u300d \\u6642\\u3092\\u540c\\u3058\\u304f\\u3057\\u3066\\u3001\\u305d\\u308c\\u307e\\u3067\\u6c88\\u9ed9\\u3092\\u8cab\\u3044\\u3066\\u3044\\u305f\\u4e0d\\u6b7b\\u9a0e\\u58eb\\u56e3\\u6b8b\\u515a\\u304c\\u738b\\u90fd\\u306b\\u62bc\\u3057\\u5bc4\\u305b\\u3066\\u304d\\u3066\\u2015\\u2015\\u4e8c\\u4eba\\u306e\\u738b\\u5973\\u306e\\u9593\\u306b\\u7acb\\u3064\\u30ae\\u30e5\\u30cd\\u30a4\\u3001\\u4eca\\u3053\\u305d\\u6c7a\\u65ad\\u306e\\u6642\\uff01\\uff1f \\u90aa\\u795e\\u738b\\u56fd\\u5fa9\\u8208\\u7269\\u8a9e\\u3001\\u7b2c\\uff13\\u5f3e\\uff01\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=gFbtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api\",\"isbn\":null,\"published_date\":\"2020-07-10\",\"created_at\":\"2023-05-07T15:29:42.000000Z\",\"updated_at\":\"2023-05-07T15:29:42.000000Z\"}},{\"id\":7,\"book_id\":286,\"user_id\":2,\"category_id\":4,\"content\":\"\\u611f\\u60f3\\u304c\\u5165\\u308b\\u3088\\u30fc\\u30fc\\u3093\\u611f\\u60f3\\u304c\\u5165\\u308b\\u3088\\u30fc\\u30fc\\u3093\\u611f\\u60f3\\u304c\\u5165\\u308b\\u3088\\u30fc\\u30fc\\u3093\\u611f\\u60f3\\u304c\\u5165\\u308b\\u3088\\u30fc\\u30fc\\u3093\",\"read_date\":\"2023-05-03\",\"created_at\":\"2023-05-07T15:07:35.000000Z\",\"updated_at\":\"2023-05-07T15:07:35.000000Z\",\"book\":{\"id\":286,\"google_book_id\":\"0uklNwAACAAJ\",\"title\":\"\\u3066\\u306e\\u3072\\u3089\\u306e\\u30a8\\u30cd\\u30df\\u30fc4\",\"author\":\"\\u6749\\u539f\\u667a\\u5247\",\"description\":\"\\u6226\\u3044\\u3067\\u8ca0\\u50b7\\u3057\\u305f\\u30a2\\u30a6\\u30eb\\u3092\\u5b88\\u308a\\u305f\\u3044\\u3001\\u305d\\u306e\\u4e00\\u5fc3\\u3067\\u5f7c\\u3092\\u6559\\u4f1a\\u9023\\u5408\\u306b\\u9023\\u308c\\u3066\\u304d\\u305f\\u30b7\\u30fc\\u30e9\\u3002\\u3057\\u304b\\u3057\\u30a2\\u30a6\\u30eb\\u3092\\u5229\\u7528\\u3057\\u6226\\u7dda\\u3092\\u62e1\\u5927\\u3001\\u3055\\u3089\\u306b\\u30b7\\u30fc\\u30e9\\u6697\\u6bba\\u3092\\u4f01\\u3080\\u52e2\\u529b\\u304c\\u9023\\u5408\\u5185\\u3067\\u6697\\u8e8d\\u3059\\u308b\\u3002\\u4e00\\u65b9\\u3001\\u9b54\\u6cd5\\u4f7f\\u3044\\u8ecd\\u3067\\u3082\\u6559\\u4f1a\\u5074\\u3068\\u306e\\u5168\\u9762\\u6226\\u4e89\\u3092\\u4e3b\\u5f35\\u3059\\u308b\\u4e00\\u6d3e\\u304c\\u53f0\\u982d\\u3057\\u3066\\u304d\\u305f\\u3002\\u7121\\u99c4\\u306a\\u8840\\u304c\\u6d41\\u308c\\u308b\\u306e\\u306f\\u3082\\u3046\\u305f\\u304f\\u3055\\u3093\\u3060!\\u2015\\u30a2\\u30a6\\u30eb\\u306e\\u9b42\\u306e\\u53eb\\u3073\\u304c\\u3001\\u5f7c\\u306e\\u4e2d\\u306b\\u7720\\u308b\\u5927\\u3044\\u306a\\u308b\\u529b\\u3092\\u76ee\\u899a\\u3081\\u3055\\u305b\\u305f\\u3002\\u7121\\u76ca\\u306a\\u6226\\u3044\\u3092\\u7d9a\\u3051\\u308b\\u8005\\u3078\\u306e\\u6012\\u308a\\u304c\\u5927\\u5730\\u3092\\u7126\\u304c\\u3059\\u3001\\u30cf\\u30f3\\u30c9\\u30e1\\u30a4\\u30c9\\u30de\\u30b8\\u30ab\\u30eb\\u30b9\\u30c8\\u30fc\\u30ea\\u30fc\\u3064\\u3044\\u306b\\u5b8c\\u7d50\\u3002\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=0uklNwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api\",\"isbn\":9784044300043,\"published_date\":\"2005-02-01\",\"created_at\":\"2023-05-07T15:07:12.000000Z\",\"updated_at\":\"2023-05-07T15:07:12.000000Z\"}}]}}},\"duration\":31,\"memory\":2,\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26111, '9923bf40-6b6d-45f9-800e-402a72e63c2f', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `book_records` order by `created_at` desc\",\"time\":\"2.68\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Http\\/Controllers\\/Book\\/BookController.php\",\"line\":88,\"hash\":\"fa4bc96512bf4a156f27902f32b89390\",\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26112, '9923bf40-6b9c-41c4-8899-633bd5bce05c', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\BookRecord\",\"count\":8,\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26113, '9923bf40-6c61-48c8-b3cc-cd96aa5348f4', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `books` where `books`.`id` in (286, 289, 293, 294, 297, 298, 299, 301)\",\"time\":\"0.97\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Http\\/Controllers\\/Book\\/BookController.php\",\"line\":88,\"hash\":\"949040956c387da346a0bfae0e2ae855\",\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26114, '9923bf40-6c9c-4f07-b323-7c54833167b6', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\Book\",\"count\":8,\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26115, '9923bf40-6d14-4181-9862-b71283003189', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'view', '{\"name\":\"index\",\"path\":\"\\/resources\\/views\\/index.blade.php\",\"data\":[\"records\"],\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26116, '9923bf40-6dce-43ad-8615-5b3ea3a98247', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select * from `users` where `id` = 3 limit 1\",\"time\":\"0.99\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/storage\\/framework\\/views\\/c5ede9c7fc8c57a52b634d179ce0b0a7.php\",\"line\":24,\"hash\":\"082e27d9c4fc4a40315cae2c646c0509\",\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26117, '9923bf40-6deb-429d-a595-e9274d00e71d', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'model', '{\"action\":\"retrieved\",\"model\":\"App\\\\Models\\\\User\",\"count\":1,\"hostname\":\"06e0df12d941\"}', '2023-05-11 15:55:15'),
(26118, '9923bf40-6e6e-4b92-ad66-bbaee91bef79', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 17) as `exists`\",\"time\":\"0.75\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26119, '9923bf40-6f01-4f71-afda-c94d9e6f20c4', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 16) as `exists`\",\"time\":\"0.68\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26120, '9923bf40-6f7f-43a3-b2a2-f3bbcd991f9c', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 15) as `exists`\",\"time\":\"0.59\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26121, '9923bf40-6fe9-4492-910e-fc7ab78f2170', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 14) as `exists`\",\"time\":\"0.49\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26122, '9923bf40-7058-4bd0-b111-72eed3d6b2d8', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 12) as `exists`\",\"time\":\"0.53\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26123, '9923bf40-7103-45d2-8df2-f7331eebad72', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 11) as `exists`\",\"time\":\"0.88\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26124, '9923bf40-71ce-4523-8fff-49c88b690eb8', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 9) as `exists`\",\"time\":\"0.85\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26125, '9923bf40-7270-4ac5-ae63-c0abf88adeef', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'query', '{\"connection\":\"mysql\",\"bindings\":[],\"sql\":\"select exists(select * from `book_records` inner join `likes` on `book_records`.`id` = `likes`.`book_record_id` where `likes`.`user_id` = 3 and `book_record_id` = 7) as `exists`\",\"time\":\"0.65\",\"slow\":false,\"file\":\"\\/var\\/www\\/html\\/app\\/Models\\/User.php\",\"line\":55,\"hash\":\"15cf909a7415adb226d8a280cc67bace\",\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15'),
(26126, '9923bf40-72b3-41a7-a1a9-72cfb5903008', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'view', '{\"name\":\"components.layout\",\"path\":\"\\/resources\\/views\\/components\\/layout.blade.php\",\"data\":[\"attributes\",\"slot\",\"__laravel_slots\"],\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15');
INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(26127, '9923bf40-7474-4f33-839a-810d976d73df', '9923bf40-74cc-4d0a-b6ad-82003bd1cb0a', NULL, 1, 'request', '{\"ip_address\":\"172.23.0.1\",\"uri\":\"\\/index\",\"method\":\"GET\",\"controller_action\":\"App\\\\Http\\\\Controllers\\\\Book\\\\BookController@index\",\"middleware\":[\"web\"],\"headers\":{\"host\":\"localhost\",\"connection\":\"keep-alive\",\"cache-control\":\"max-age=0\",\"sec-ch-ua\":\"\\\"Google Chrome\\\";v=\\\"113\\\", \\\"Chromium\\\";v=\\\"113\\\", \\\"Not-A.Brand\\\";v=\\\"24\\\"\",\"sec-ch-ua-mobile\":\"?0\",\"sec-ch-ua-platform\":\"\\\"Windows\\\"\",\"upgrade-insecure-requests\":\"1\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/113.0.0.0 Safari\\/537.36\",\"accept\":\"text\\/html,application\\/xhtml+xml,application\\/xml;q=0.9,image\\/avif,image\\/webp,image\\/apng,*\\/*;q=0.8,application\\/signed-exchange;v=b3;q=0.7\",\"sec-fetch-site\":\"same-origin\",\"sec-fetch-mode\":\"navigate\",\"sec-fetch-dest\":\"document\",\"referer\":\"http:\\/\\/localhost\\/index\",\"accept-encoding\":\"gzip, deflate, br\",\"accept-language\":\"ja,en-US;q=0.9,en;q=0.8\",\"cookie\":\"pma_lang=ja; phpMyAdmin=f312922eaf96acc58c7e609fb28c1501; XSRF-TOKEN=eyJpdiI6IkJjYUdPU2xaWUNUQzVXM09nTHJ4MUE9PSIsInZhbHVlIjoiSmRnbXVLeHZNSjBiRzRZNVlQOEdySzVnZEt0djBzeWpxeUozSENYekVpOGQzcitPR0h5b2Q0Rkd5bGgvb1orQzNPdUIwQTNZQjVRaytaWmlPTWkvUW9XVHhsNlM2T0RJLzRQU2o5YTZVb2hnaDh3VHNzd09NTEhlRXZIY3B0YkYiLCJtYWMiOiIxNWE3YTFmZWY1NDIyNWIzMDQ2YTY4ZDhiOWU5MjNkMDYzMDFjYzEwNDZlZjIzM2ZhNDYzOTFiMWQxYmI0MzM1IiwidGFnIjoiIn0%3D; _session=eyJpdiI6Ik1OWEhDL2VhcXpTcnlsMDBIWXh3ZGc9PSIsInZhbHVlIjoia0gxUnN3d0dHQkxvUWlVZU9wT3hTeHY3Vms1d0I3Z1FDQUhWZ3JCdmNld01UeTM3eFAvRkN6cElNMUIzMGtSMHM0a1ZOWlUrM1FIdTV2RDRPb2dpS2IwRk11bDEzc2tMWDd0WXJhejdscGxvd3kraW8xanlVQURIMkFwd1pHa0oiLCJtYWMiOiJlZDFhOGI4ZDlkYmRmMWEzNDBkNGY2NmFjODE0MDk4MDFmZDk0YTRhYzVjZWM4ZmI4YjM1ODBiNDUxZjM3MTk3IiwidGFnIjoiIn0%3D\"},\"payload\":[],\"session\":{\"_token\":\"RAtDQG5pWu63myAhawT6h3ers0aMeKFGkvJfFm27\",\"_flash\":{\"old\":[],\"new\":[]},\"_previous\":{\"url\":\"http:\\/\\/localhost\\/index\"},\"login_web_59ba36addc2b2f9401580f014c7f58ea4e30989d\":3},\"response_status\":200,\"response\":{\"view\":\"\\/var\\/www\\/html\\/resources\\/views\\/index.blade.php\",\"data\":{\"records\":{\"class\":\"Illuminate\\\\Database\\\\Eloquent\\\\Collection\",\"properties\":[{\"id\":17,\"book_id\":301,\"user_id\":4,\"category_id\":3,\"content\":\"\\u3042\\u3089\\u3059\\u3058\\u304c\\u3059\\u3066\\u304d\",\"read_date\":\"2023-05-11\",\"created_at\":\"2023-05-11T06:48:16.000000Z\",\"updated_at\":\"2023-05-11T06:48:16.000000Z\",\"book\":{\"id\":301,\"google_book_id\":\"He5IuwEACAAJ\",\"title\":\"\\u5c0f\\u8aac\\u306e\\u795e\\u69d8\",\"author\":\"\\u76f8\\u6ca2\\u6c99\\u547c\",\"description\":\"\\u4eca\\u3001\\u3053\\u306e\\u6587\\u7ae0\\u3092\\u8aad\\u3093\\u3067\\u3044\\u308b\\u3042\\u306a\\u305f\\u306e\\u304a\\u304b\\u3052\\u3067\\u3001\\u751f\\u307f\\u51fa\\u3055\\u308c\\u305f\\u7269\\u8a9e\\u304c\\u3042\\u308b\\u306e\\u3060\\u3068\\u3001\\u3042\\u306a\\u305f\\u306b\\u77e5\\u3063\\u3066\\u307b\\u3057\\u3044\\u3002\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=He5IuwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api\",\"isbn\":9784065125540,\"published_date\":\"2018-08-01\",\"created_at\":\"2023-05-11T06:48:01.000000Z\",\"updated_at\":\"2023-05-11T06:48:01.000000Z\"}},{\"id\":16,\"book_id\":299,\"user_id\":4,\"category_id\":1,\"content\":\"\\u786c\\u6d3e\\u6226\\u8a18\",\"read_date\":\"2023-05-11\",\"created_at\":\"2023-05-11T06:45:59.000000Z\",\"updated_at\":\"2023-05-11T06:45:59.000000Z\",\"book\":{\"id\":299,\"google_book_id\":\"nOx8DwAAQBAJ\",\"title\":\"\\u70d9\\u5370\\u306e\\u7d0b\\u7ae0XI\\u3042\\u304b\\u3064\\u304d\\u306e\\u7a7a\\u3092\\u7adc\\u306f\\u7fd4\\u3051\\u308b(\\u4e0a)\",\"author\":\"\\u6749\\u539f\\u667a\\u5247\",\"description\":\"\\u52e2\\u529b\\u3092\\u5897\\u3059\\u30aa\\u30eb\\u30d0\\u306e\\u8ecd\\u52e2\\u3002\\u3082\\u306f\\u3084\\u770b\\u904e\\u3067\\u304d\\u306a\\u304f\\u306a\\u3063\\u305f\\u7687\\u5e1d\\u306f\\u3001\\u30aa\\u30eb\\u30d0\\u3092\\u5e1d\\u90fd\\u3078\\u62db\\u304f\\u3068\\u3044\\u3046\\u5f37\\u884c\\u624b\\u6bb5\\u306b\\u51fa\\u308b\\u3002 \\u4e00\\u65b9\\u3001\\u96a3\\u56fd\\u30a8\\u30f3\\u30c7\\u306b\\u306f\\u3001\\u6226\\u5de7\\u8005\\u306e \\u300e\\u5c0f\\u8987\\u738b\\u300f \\u30ab\\u30bb\\u30ea\\u30a2\\u7387\\u3044\\u308b\\u6771\\u306e\\u5927\\u56fd\\u30fb\\u30a2\\u30ea\\u30aa\\u30f3\\u8ecd\\u304c\\u8feb\\u308b\\u3068\\u3044\\u3046\\u4e8b\\u614b\\u306b\\u9665\\u3063\\u3066\\u3044\\u305f\\u3002 \\u30a2\\u30ea\\u30aa\\u30f3\\u306e\\u91ce\\u5fc3\\u306f\\u30a8\\u30f3\\u30c7\\u306b\\u7559\\u307e\\u3089\\u305a\\u3001\\u5fc5\\u305a\\u3084\\u30e1\\u30d5\\u30a3\\u30a6\\u30b9\\u3001\\u30ac\\u30fc\\u30d9\\u30e9\\u306b\\u307e\\u3067\\u53ca\\u3076 \\u2500\\u2500\\u3002\\u305d\\u306e\\u5371\\u6a5f\\u3092\\u524d\\u306b\\u3001\\u30aa\\u30eb\\u30d0\\u304c\\u3001\\u305d\\u3057\\u3066\\u8ca0\\u50b7\\u3092\\u3057\\u3066\\u7956\\u56fd\\u30ac\\u30fc\\u30d9\\u30e9\\u306b\\u5e30\\u56fd\\u3057\\u305f\\u30d3\\u30ea\\u30fc\\u30ca\\u304c\\u884c\\u52d5\\u3092\\u958b\\u59cb\\u3059\\u308b\\uff01\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=nOx8DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api\",\"isbn\":null,\"published_date\":\"2012-06-10\",\"created_at\":\"2023-05-11T06:45:49.000000Z\",\"updated_at\":\"2023-05-11T06:45:49.000000Z\"}},{\"id\":15,\"book_id\":298,\"user_id\":3,\"category_id\":7,\"content\":\"\\u71b1\\u72c2\\u304a\\u4ed5\\u4e8b\\u5c0f\\u8aac\",\"read_date\":\"2023-05-11\",\"created_at\":\"2023-05-11T06:41:15.000000Z\",\"updated_at\":\"2023-05-11T06:41:15.000000Z\",\"book\":{\"id\":298,\"google_book_id\":\"qQ19DwAAQBAJ\",\"title\":\"\\u306a\\u308c\\u308b\\uff01SE162\\u5e74\\u76ee\\u3067\\u308f\\u304b\\u308b\\uff1fSE\\u5165\\u9580\",\"author\":\"\\u590f\\u6d77\\u516c\\u53f8\",\"description\":\"\\u5de5\\u5175\\u3001\\u6b21\\u90ce\\u4e38\\u3001\\u6885\\u6797 VS \\u7acb\\u83ef\\u3001\\u85e4\\u5d0e\\u306e\\u5bfe\\u6c7a\\u3068\\u306a\\u3063\\u305f\\u7dcf\\u5408\\u5546\\u793e\\u4e8c\\u793e\\u306e\\u30a4\\u30f3\\u30d5\\u30e9\\u7d71\\u5408\\u6848\\u4ef6\\u306f\\u3001\\u6697\\u8e8d\\u3059\\u308b\\u30b9\\u30d4\\u30ea\\u30c3\\u30c6\\u30a3\\u30a2\\u306e\\u8c9d\\u585a\\u306e\\u4ecb\\u5165\\u3082\\u3042\\u308a\\u3001\\u696d\\u754c\\u5168\\u4f53\\u3092\\u5dfb\\u304d\\u8fbc\\u3080\\u4e8b\\u614b\\u306b\\u3002\\u56fd\\u5185\\u306e\\u4e3b\\u8981\\u306aIT\\u4f01\\u696d\\u3092\\u62bc\\u3048\\u3089\\u308c\\u3001\\u6848\\u4ef6\\u3092\\u9032\\u3081\\u308b\\u8853\\u3092\\u5931\\u3063\\u305f\\u5de5\\u5175\\u304c\\u76ee\\u3092\\u5411\\u3051\\u305f\\u306e\\u306f\\u2026\\u2026\\u307e\\u3055\\u304b\\u306e\\u3042\\u306e\\u4eba\\u7269!? \\u4e00\\u65b9\\u3001\\u5de5\\u5175\\u306e\\u7dcf\\u52d9\\u90e8\\u3078\\u306e\\u7570\\u52d5\\u8a71\\u3082\\u5f85\\u3063\\u305f\\u306a\\u3057\\u306e\\u72b6\\u6cc1\\u306b\\u3002\\u30b9\\u30eb\\u30ac\\u30b7\\u30b9\\u30c6\\u30e0\\u306e\\u672a\\u6765\\u3068\\u3001\\u7acb\\u83ef\\u306e\\u3044\\u308bSE\\u90e8\\u3092\\u5b88\\u308b\\u3053\\u3068\\u3001\\u305d\\u3057\\u3066\\u81ea\\u8eab\\u306e\\u30a8\\u30f3\\u30b8\\u30cb\\u30a2\\u3068\\u3057\\u3066\\u306e\\u30ad\\u30e3\\u30ea\\u30a2\\u306b\\u60a9\\u3080\\u5de5\\u5175\\u306e\\u9078\\u3076\\u9053\\u3068\\u306f\\u2500\\u2500\\u3002\\u840c\\u3048\\u308bSE\\u6b8b\\u9177\\u7269\\u8a9e\\u3001\\u611f\\u52d5\\u306e\\u30b7\\u30ea\\u30fc\\u30ba\\u672c\\u7de8\\u5b8c\\u7d50\\u7de8\\uff01\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=qQ19DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api\",\"isbn\":null,\"published_date\":\"2017-08-10\",\"created_at\":\"2023-05-11T06:40:55.000000Z\",\"updated_at\":\"2023-05-11T06:40:55.000000Z\"}},{\"id\":14,\"book_id\":297,\"user_id\":3,\"category_id\":7,\"content\":\"\\u30c7\\u30a3\\u30ba\\u30cb\\u30fc\\u306e\\u304a\\u3082\\u3066\\u306a\\u3057\\u306e\\u7cbe\\u795e\\u306b\\u611f\\u5316\\u3055\\u308c\\u308b\",\"read_date\":\"2023-05-11\",\"created_at\":\"2023-05-11T06:40:19.000000Z\",\"updated_at\":\"2023-05-11T06:40:19.000000Z\",\"book\":{\"id\":297,\"google_book_id\":\"V8YCDAAAQBAJ\",\"title\":\"\\u30c7\\u30a3\\u30ba\\u30cb\\u30fc \\u30ad\\u30bb\\u30ad\\u306e\\u795e\\u69d8\\u304c\\u6559\\u3048\\u3066\\u304f\\u308c\\u305f\\u3053\\u3068\",\"author\":\"\\u938c\\u7530\\u6d0b\",\"description\":\"\\u3010\\u7d2f\\u8a0890\\u4e07\\u90e8\\u7a81\\u7834\\uff01\\u306e\\u30d9\\u30b9\\u30c8\\u30bb\\u30e9\\u30fc\\u30b7\\u30ea\\u30fc\\u30ba\\uff01\\u3011 \\u5927\\u5207\\u306a\\u3053\\u3068\\u306b\\u6c17\\u3065\\u304f\\uff13\\u3064\\u306e\\u7269\\u8a9e \\u30c7\\u30a3\\u30ba\\u30cb\\u30fc\\u30e9\\u30f3\\u30c9\\u3067\\u751f\\u307e\\u308c\\u308b\\u201c\\u5947\\u8de1\\u201d\\u3068\\u3082\\u547c\\u3079\\u308b\\u30a8\\u30d4\\u30bd\\u30fc\\u30c9\\u306e\\u6570\\u3005\\u3002 \\u3053\\u308c\\u3089\\u306f\\u3044\\u304b\\u306b\\u3057\\u3066\\u751f\\u307f\\u51fa\\u3055\\u308c\\u308b\\u306e\\u304b\\uff1f \\u305d\\u306e\\u79d8\\u5bc6\\u3092\\u77e5\\u3063\\u3066\\u3044\\u308b\\u306e\\u304c\\u201c\\u30ad\\u30bb\\u30ad\\u306e\\u795e\\u69d8\\u201d\\u3060\\u3063\\u305f\\u3002 \\u672c\\u66f8\\u306f\\u201c\\u5922\\u3068\\u9b54\\u6cd5\\u306e\\u738b\\u56fd\\u201d\\u3092\\u821e\\u53f0\\u306b\\u7e70\\u308a\\u5e83\\u3052\\u3089\\u308c\\u308b\\u300c\\u51fa\\u4f1a\\u3044\\u3068\\u7d46\\u304b\\u3089\\u751f\\u307e\\u308c\\u308b\\u5947\\u8de1\\u300d\\u306e\\u7269\\u8a9e\\u3002\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=V8YCDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api\",\"isbn\":4797386401,\"published_date\":\"2016-04-21\",\"created_at\":\"2023-05-11T06:39:54.000000Z\",\"updated_at\":\"2023-05-11T06:39:54.000000Z\"}},{\"id\":12,\"book_id\":294,\"user_id\":2,\"category_id\":5,\"content\":\"\\u30a4\\u30ca\\u30fc\\u30b7\\u30e3\\u306e\\u30c6\\u30b9\\u30c8\",\"read_date\":\"2023-05-10\",\"created_at\":\"2023-05-10T04:30:35.000000Z\",\"updated_at\":\"2023-05-10T04:30:50.000000Z\",\"book\":{\"id\":294,\"google_book_id\":\"LfwtDwAAQBAJ\",\"title\":\"\\u4ea4\\u97ff\\u8a69\\u7bc7\\u30a8\\u30a6\\u30ec\\u30ab\\u30bb\\u30d6\\u30f31BLUEMONDAY\",\"author\":\"\\u6749\\u539f\\u667a\\u5247\",\"description\":\"\\u5148\\u306e\\u898b\\u3048\\u3066\\u3057\\u307e\\u3046\\u5c06\\u6765\\u3001\\u4f55\\u3082\\u8d77\\u3053\\u308b\\u3053\\u3068\\u306e\\u306a\\u3044\\u65e5\\u3005\\u300214\\u6b73\\u306e\\u5c11\\u5e74\\u30ec\\u30f3\\u30c8\\u30f3\\u306e\\u9b31\\u3005\\u3068\\u3057\\u305f\\u4e16\\u754c\\u3082\\u3001\\u7d2b\\u8272\\u306e\\u77b3\\u3092\\u6301\\u3064\\u3072\\u3068\\u308a\\u306e\\u5c11\\u5973\\u3068\\u306e\\u51fa\\u9022\\u3044\\u306b\\u3088\\u3063\\u3066\\u3001\\u3044\\u307e\\u5927\\u304d\\u304f\\u5909\\u308f\\u308d\\u3046\\u3068\\u3057\\u3066\\u3044\\u308b\\u3002\\u65b0\\u611f\\u899a\\u30ed\\u30dc\\u30c3\\u30c8\\u30a2\\u30af\\u30b7\\u30e7\\u30f3\\u30ce\\u30d9\\u30eb\\u767b\\u5834\\uff01 \\u6ce8\\uff1a\\u7d19\\u7248\\u306e\\u5dfb\\u672b\\u53ce\\u9332\\u300c\\u89e3\\u8aac \\u4eac\\u7530\\u77e5\\u5df1\\u300d\\u306f\\u96fb\\u5b50\\u7248\\u306b\\u306f\\u53ce\\u9332\\u3055\\u308c\\u3066\\u304a\\u308a\\u307e\\u305b\\u3093\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=LfwtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api\",\"isbn\":null,\"published_date\":\"2005-10-29\",\"created_at\":\"2023-05-10T04:30:13.000000Z\",\"updated_at\":\"2023-05-10T04:30:13.000000Z\"}},{\"id\":11,\"book_id\":293,\"user_id\":2,\"category_id\":6,\"content\":\"\\uff53\\uff46\\uff53\\uff44\\uff46\\uff53\",\"read_date\":\"2023-05-08\",\"created_at\":\"2023-05-08T12:52:03.000000Z\",\"updated_at\":\"2023-05-10T06:26:15.000000Z\",\"book\":{\"id\":293,\"google_book_id\":\"qRBSAwAAQBAJ\",\"title\":\"\\u8056\\u5263\\u306e\\u59eb\\u3068\\u795e\\u76df\\u9a0e\\u58eb\\u56e3IV\",\"author\":\"\\u6749\\u539f\\u667a\\u5247\",\"description\":\"\\u5931\\u308f\\u308c\\u305f\\u3082\\u3046\\u4e00\\u3064\\u306e\\u53cd\\u9b42\\u73e0\\u306e\\u624b\\u304c\\u304b\\u308a\\u3092\\u6c42\\u3081\\u3066\\u300e\\u7686\\u6bba\\u3057\\u306e\\u5cf6\\u300f\\u3078\\u3068\\u65c5\\u7acb\\u3063\\u305f\\u30c0\\u30fc\\u30af\\u305f\\u3061\\u3002\\u306a\\u3093\\u3068\\u305d\\u3053\\u306f\\u6b7b\\u8005\\u306e\\u738b\\u56fd\\u304c\\u652f\\u914d\\u3059\\u308b\\u5cf6\\u3060\\u3063\\u305f\\u3002\\u30c0\\u30fc\\u30af\\u3068\\u30d5\\u30a3\\u30fc\\u30cd\\u306f\\u6b7b\\u970a\\u305f\\u3061\\u306b\\u8972\\u308f\\u308c\\u308b\\u304c\\u3001\\u7f8e\\u3057\\u3044\\u50e7\\u4fb6\\u30ed\\u30ca\\u306b\\u6551\\u308f\\u308c\\u2014\\u2014\\uff01\\uff1f\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=qRBSAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api\",\"isbn\":null,\"published_date\":null,\"created_at\":\"2023-05-08T12:51:57.000000Z\",\"updated_at\":\"2023-05-08T12:51:57.000000Z\"}},{\"id\":9,\"book_id\":289,\"user_id\":2,\"category_id\":5,\"content\":\"\\u304a\\u6c17\\u306b\\u5165\\u308a\\u306e\\u672c\",\"read_date\":\"2023-05-08\",\"created_at\":\"2023-05-07T15:29:47.000000Z\",\"updated_at\":\"2023-05-08T11:40:31.000000Z\",\"book\":{\"id\":289,\"google_book_id\":\"gFbtDwAAQBAJ\",\"title\":\"\\u53db\\u9006\\u305b\\u3088!\\u82f1\\u96c4\\u3001\\u8ee2\\u3058\\u3066\\u90aa\\u795e\\u9a0e\\u58eb3\",\"author\":\"\\u6749\\u539f\\u667a\\u5247\",\"description\":\"\\u90aa\\u795e\\u3092\\u8a0e\\u3061\\u5012\\u3057\\u305f\\u82f1\\u96c4\\u30ae\\u30e5\\u30cd\\u30a4\\u306f\\u3001\\u6557\\u6226\\u56fd\\u30e9\\u30f3\\u30c9\\u30fc\\u30eb\\u738b\\u56fd\\u306e\\u8352\\u5ec3\\u3076\\u308a\\u3092\\u898b\\u304b\\u306d\\u3066\\u624b\\u52a9\\u3051\\u3092\\u91cd\\u306d\\u308b\\u3046\\u3061\\u306b\\u3001\\u6551\\u4e16\\u4e3b\\u3008\\u9ed2\\u72fc\\u306e\\u9a0e\\u58eb\\u3009\\u3068\\u3057\\u3066\\u796d\\u308a\\u4e0a\\u3052\\u3089\\u308c\\u3066\\u3057\\u307e\\u3046\\u3002 \\u305d\\u3093\\u306a\\u306a\\u304b\\u3001\\u3008\\u7d14\\u6f54\\u306e\\u8056\\u5973\\u3009\\u30a8\\u30ea\\u30b7\\u30b9\\u306e\\u6697\\u6bba\\u8a08\\u753b\\u306e\\u60c5\\u5831\\u3092\\u5f97\\u308b\\u30ae\\u30e5\\u30cd\\u30a4\\u3002\\u5c45\\u3066\\u3082\\u7acb\\u3063\\u3066\\u3082\\u3044\\u3089\\u308c\\u305a\\u3001\\u30e9\\u30f3\\u30c9\\u30fc\\u30eb\\u306e\\u59eb\\u30fb\\u30df\\u30cd\\u30eb\\u30d0\\u306b\\u6687\\u3092\\u4e5e\\u3046\\u304c\\u2026\\u2026 \\u300c\\u3053\\u308c\\u307e\\u3067\\u3088\\u304f\\u305e\\u4ed5\\u3048\\u3066\\u304f\\u308c\\u307e\\u3057\\u305f\\u3001\\u3068\\u8a00\\u3046\\u3068\\u601d\\u3044\\u307e\\u3057\\u305f\\u304b\\uff1f \\u8a31\\u3057\\u307e\\u305b\\u3093\\uff01\\u300d \\u300c\\u3048\\u3048\\u3063\\uff01\\uff1f\\u300d \\u6642\\u3092\\u540c\\u3058\\u304f\\u3057\\u3066\\u3001\\u305d\\u308c\\u307e\\u3067\\u6c88\\u9ed9\\u3092\\u8cab\\u3044\\u3066\\u3044\\u305f\\u4e0d\\u6b7b\\u9a0e\\u58eb\\u56e3\\u6b8b\\u515a\\u304c\\u738b\\u90fd\\u306b\\u62bc\\u3057\\u5bc4\\u305b\\u3066\\u304d\\u3066\\u2015\\u2015\\u4e8c\\u4eba\\u306e\\u738b\\u5973\\u306e\\u9593\\u306b\\u7acb\\u3064\\u30ae\\u30e5\\u30cd\\u30a4\\u3001\\u4eca\\u3053\\u305d\\u6c7a\\u65ad\\u306e\\u6642\\uff01\\uff1f \\u90aa\\u795e\\u738b\\u56fd\\u5fa9\\u8208\\u7269\\u8a9e\\u3001\\u7b2c\\uff13\\u5f3e\\uff01\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=gFbtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api\",\"isbn\":null,\"published_date\":\"2020-07-10\",\"created_at\":\"2023-05-07T15:29:42.000000Z\",\"updated_at\":\"2023-05-07T15:29:42.000000Z\"}},{\"id\":7,\"book_id\":286,\"user_id\":2,\"category_id\":4,\"content\":\"\\u611f\\u60f3\\u304c\\u5165\\u308b\\u3088\\u30fc\\u30fc\\u3093\\u611f\\u60f3\\u304c\\u5165\\u308b\\u3088\\u30fc\\u30fc\\u3093\\u611f\\u60f3\\u304c\\u5165\\u308b\\u3088\\u30fc\\u30fc\\u3093\\u611f\\u60f3\\u304c\\u5165\\u308b\\u3088\\u30fc\\u30fc\\u3093\",\"read_date\":\"2023-05-03\",\"created_at\":\"2023-05-07T15:07:35.000000Z\",\"updated_at\":\"2023-05-07T15:07:35.000000Z\",\"book\":{\"id\":286,\"google_book_id\":\"0uklNwAACAAJ\",\"title\":\"\\u3066\\u306e\\u3072\\u3089\\u306e\\u30a8\\u30cd\\u30df\\u30fc4\",\"author\":\"\\u6749\\u539f\\u667a\\u5247\",\"description\":\"\\u6226\\u3044\\u3067\\u8ca0\\u50b7\\u3057\\u305f\\u30a2\\u30a6\\u30eb\\u3092\\u5b88\\u308a\\u305f\\u3044\\u3001\\u305d\\u306e\\u4e00\\u5fc3\\u3067\\u5f7c\\u3092\\u6559\\u4f1a\\u9023\\u5408\\u306b\\u9023\\u308c\\u3066\\u304d\\u305f\\u30b7\\u30fc\\u30e9\\u3002\\u3057\\u304b\\u3057\\u30a2\\u30a6\\u30eb\\u3092\\u5229\\u7528\\u3057\\u6226\\u7dda\\u3092\\u62e1\\u5927\\u3001\\u3055\\u3089\\u306b\\u30b7\\u30fc\\u30e9\\u6697\\u6bba\\u3092\\u4f01\\u3080\\u52e2\\u529b\\u304c\\u9023\\u5408\\u5185\\u3067\\u6697\\u8e8d\\u3059\\u308b\\u3002\\u4e00\\u65b9\\u3001\\u9b54\\u6cd5\\u4f7f\\u3044\\u8ecd\\u3067\\u3082\\u6559\\u4f1a\\u5074\\u3068\\u306e\\u5168\\u9762\\u6226\\u4e89\\u3092\\u4e3b\\u5f35\\u3059\\u308b\\u4e00\\u6d3e\\u304c\\u53f0\\u982d\\u3057\\u3066\\u304d\\u305f\\u3002\\u7121\\u99c4\\u306a\\u8840\\u304c\\u6d41\\u308c\\u308b\\u306e\\u306f\\u3082\\u3046\\u305f\\u304f\\u3055\\u3093\\u3060!\\u2015\\u30a2\\u30a6\\u30eb\\u306e\\u9b42\\u306e\\u53eb\\u3073\\u304c\\u3001\\u5f7c\\u306e\\u4e2d\\u306b\\u7720\\u308b\\u5927\\u3044\\u306a\\u308b\\u529b\\u3092\\u76ee\\u899a\\u3081\\u3055\\u305b\\u305f\\u3002\\u7121\\u76ca\\u306a\\u6226\\u3044\\u3092\\u7d9a\\u3051\\u308b\\u8005\\u3078\\u306e\\u6012\\u308a\\u304c\\u5927\\u5730\\u3092\\u7126\\u304c\\u3059\\u3001\\u30cf\\u30f3\\u30c9\\u30e1\\u30a4\\u30c9\\u30de\\u30b8\\u30ab\\u30eb\\u30b9\\u30c8\\u30fc\\u30ea\\u30fc\\u3064\\u3044\\u306b\\u5b8c\\u7d50\\u3002\",\"thumbnail_path\":\"http:\\/\\/books.google.com\\/books\\/content?id=0uklNwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api\",\"isbn\":9784044300043,\"published_date\":\"2005-02-01\",\"created_at\":\"2023-05-07T15:07:12.000000Z\",\"updated_at\":\"2023-05-07T15:07:12.000000Z\"}}]}}},\"duration\":36,\"memory\":2,\"hostname\":\"06e0df12d941\",\"user\":{\"id\":3,\"name\":\"\\u306f\\u308c\",\"email\":\"aaa@example.jp\"}}', '2023-05-11 15:55:15');

-- --------------------------------------------------------

--
-- テーブルの構造 `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `telescope_entries_tags`
--

INSERT INTO `telescope_entries_tags` (`entry_uuid`, `tag`) VALUES
('9923bf37-d018-48bf-be7f-bd818124cb5e', 'slow'),
('9923bf40-56fe-4da4-9c33-9ad4c8db5b64', 'App\\Models\\BookRecord'),
('9923bf40-57a3-481e-9408-92f209689e2b', 'App\\Models\\Book'),
('9923bf40-586c-42a8-9561-af122b367eae', 'App\\Models\\User'),
('9923bf40-5917-4753-8bcd-c8f50b753353', 'Auth:3'),
('9923bf40-59d0-4606-81ac-bffb99acc366', 'Auth:3'),
('9923bf40-5a40-4787-9167-7e93a057cef2', 'Auth:3'),
('9923bf40-5aae-42c6-825c-c1da0b810c89', 'Auth:3'),
('9923bf40-5b02-4701-b096-591103a9dffc', 'Auth:3'),
('9923bf40-5b68-48f5-85e4-6da7e65bfb62', 'Auth:3'),
('9923bf40-5bb4-40d6-beb2-fdc0c7eeab87', 'Auth:3'),
('9923bf40-5bfa-4be3-9230-ad11158ca08a', 'Auth:3'),
('9923bf40-5c16-4bd5-a660-5f528b68b09b', 'Auth:3'),
('9923bf40-5d21-4967-963a-fd534dbbea5b', 'Auth:3'),
('9923bf40-6b9c-41c4-8899-633bd5bce05c', 'App\\Models\\BookRecord'),
('9923bf40-6c9c-4f07-b323-7c54833167b6', 'App\\Models\\Book'),
('9923bf40-6deb-429d-a595-e9274d00e71d', 'App\\Models\\User'),
('9923bf40-6e6e-4b92-ad66-bbaee91bef79', 'Auth:3'),
('9923bf40-6f01-4f71-afda-c94d9e6f20c4', 'Auth:3'),
('9923bf40-6f7f-43a3-b2a2-f3bbcd991f9c', 'Auth:3'),
('9923bf40-6fe9-4492-910e-fc7ab78f2170', 'Auth:3'),
('9923bf40-7058-4bd0-b111-72eed3d6b2d8', 'Auth:3'),
('9923bf40-7103-45d2-8df2-f7331eebad72', 'Auth:3'),
('9923bf40-71ce-4523-8fff-49c88b690eb8', 'Auth:3'),
('9923bf40-7270-4ac5-ae63-c0abf88adeef', 'Auth:3'),
('9923bf40-72b3-41a7-a1a9-72cfb5903008', 'Auth:3'),
('9923bf40-7474-4f33-839a-810d976d73df', 'Auth:3');

-- --------------------------------------------------------

--
-- テーブルの構造 `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Twitterのユーザー名',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '画像のURL',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ログイン保持',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `email`, `password`, `image_path`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hare', NULL, 'ptk.sakamaki@gmail.com', '$2y$10$FuLr2y/pyDHNher1CpIaPe9MrR2OCqqIztumaYY3xoGhEQqkqTBN6', NULL, NULL, '2023-05-04 14:39:24', '2023-05-04 14:39:24'),
(2, 'まき', NULL, 'bbb@example.jp', '$2y$10$eK3MnWBAtxeAgPbIxY/8RO8Azw9zFSE1nE95XtqEgzCAAOdWJR51O', NULL, NULL, '2023-05-04 16:40:13', '2023-05-04 16:40:13'),
(3, 'はれ', NULL, 'aaa@example.jp', '$2y$10$01dnKBQ00gk4yw4J2s7j.epm835djwD3kvK86UJ1JIZ5mLyJ7Tgmi', NULL, NULL, '2023-05-04 16:40:36', '2023-05-04 16:40:36'),
(4, 'みらい', NULL, 'mirai@example.jp', '$2y$10$Ad4Bc5xRlul3N6R7WAidIeqcV1Lgerm4nmhLK.7ZRCIOfsYoft0LW', NULL, 'sraMtYEwIQ4uIdrFZ1vf21fPNBD5uWmncFTeleWabI3F7ja1V6dN4GAmlNUA', '2023-05-04 16:41:03', '2023-05-04 16:41:03');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_google_book_id_unique` (`google_book_id`),
  ADD UNIQUE KEY `books_isbn_unique` (`isbn`);

--
-- テーブルのインデックス `book_records`
--
ALTER TABLE `book_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_records_book_id_foreign` (`book_id`),
  ADD KEY `book_records_user_id_foreign` (`user_id`),
  ADD KEY `book_records_category_id_foreign` (`category_id`);

--
-- テーブルのインデックス `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`name`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`user_id`,`book_record_id`),
  ADD KEY `likes_book_record_id_foreign` (`book_record_id`),
  ADD KEY `likes_user_id_foreign` (`user_id`) USING BTREE;

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`),
  ADD KEY `telescope_entries_created_at_index` (`created_at`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`);

--
-- テーブルのインデックス `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_user_name_unique` (`user_name`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- テーブルの AUTO_INCREMENT `book_records`
--
ALTER TABLE `book_records`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- テーブルの AUTO_INCREMENT `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26128;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `book_records`
--
ALTER TABLE `book_records`
  ADD CONSTRAINT `book_records_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `book_records_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `book_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- テーブルの制約 `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_book_record_id_foreign` FOREIGN KEY (`book_record_id`) REFERENCES `book_records` (`id`),
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- テーブルの制約 `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
