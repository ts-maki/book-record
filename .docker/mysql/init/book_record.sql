-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql
-- 生成日時: 2023 年 6 月 23 日 05:21
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
  `author` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '著者',
  `description` text COLLATE utf8mb4_unicode_ci COMMENT '本のあらすじ',
  `thumbnail_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '表紙画像のurl',
  `isbn` bigint UNSIGNED DEFAULT NULL COMMENT '本のISBN番号',
  `published_date` date DEFAULT NULL COMMENT '出版日',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `books`
--

INSERT INTO `books` (`id`, `google_book_id`, `title`, `author`, `description`, `thumbnail_path`, `isbn`, `published_date`) VALUES
(282, 'FyrNsgEACAAJ', 'レオ・アッティール伝', '杉原智則', '西のアリオン王国、東の聖ディティアーヌ連盟と二つの列強に挟まれたアトール公国。その公子レオ・アッティールはアリオンへ人質同然で送り出され、辺境の太守のもとで武芸と学問に励んでいた。そして時代は転換点を迎える。アトールと接する中立勢力・コンスコン寺院とアリオンの関係が悪化したのだ。アトールからの援軍パーシー、コンスコンの僧兵カミュ、僻地から来た傭兵クオンは協力して迫りくるアリオンの軍勢に対抗しようとする。その戦いの最中、三人とレオは運命の出会いを果たす―。若き主従が戦乱の世を駆け抜ける本格戦記ファンタジー、開幕!', 'http://books.google.com/books/content?id=FyrNsgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784048651967, '2015-06-10'),
(284, 'fbfcCwAAQBAJ', 'ブラッディ・ギアス', '杉原智則', 'ある夜、吸血鬼化したクラスメイトに襲われた黒宮尚輝は、危ないところを珠那という少女に救われる。尚輝は“ハンター”の珠那と行動を共にするが、ある戦いで命を落としてしまう。ところが同じ一日を繰り返して!?', 'http://books.google.com/books/content?id=fbfcCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, '2016-04-01'),
(285, 'N_wtDwAAQBAJ', '交響詩篇エウレカセブン3NEWWORLDORDER', '杉原智則', '連邦との対立が激化するにつれ、次々と危機に直面するゲッコーステイト。そのなかで思いもよらない人間の裏切りが発覚。彼の手引きでエウレカとレントンが連邦に拉致されてしまう。二人を待ち受ける苛烈な運命とは！ 注：紙版の巻末収録「解説 南 雅彦」は電子版には収録されておりません', 'http://books.google.com/books/content?id=N_wtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, '2006-04-28'),
(286, '0uklNwAACAAJ', 'てのひらのエネミー4', '杉原智則', '戦いで負傷したアウルを守りたい、その一心で彼を教会連合に連れてきたシーラ。しかしアウルを利用し戦線を拡大、さらにシーラ暗殺を企む勢力が連合内で暗躍する。一方、魔法使い軍でも教会側との全面戦争を主張する一派が台頭してきた。無駄な血が流れるのはもうたくさんだ!―アウルの魂の叫びが、彼の中に眠る大いなる力を目覚めさせた。無益な戦いを続ける者への怒りが大地を焦がす、ハンドメイドマジカルストーリーついに完結。', 'http://books.google.com/books/content?id=0uklNwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784044300043, '2005-02-01'),
(288, '_GTftgEACAAJ', '叛逆せよ!英雄、転じて邪神騎士2', '杉原智則', '英雄による邪神王国復興物語、第2弾!', 'http://books.google.com/books/content?id=_GTftgEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784048938310, '2018-05-01'),
(289, 'gFbtDwAAQBAJ', '叛逆せよ!英雄、転じて邪神騎士3', '杉原智則', '邪神を討ち倒した英雄ギュネイは、敗戦国ランドール王国の荒廃ぶりを見かねて手助けを重ねるうちに、救世主〈黒狼の騎士〉として祭り上げられてしまう。 そんななか、〈純潔の聖女〉エリシスの暗殺計画の情報を得るギュネイ。居ても立ってもいられず、ランドールの姫・ミネルバに暇を乞うが…… 「これまでよくぞ仕えてくれました、と言うと思いましたか？ 許しません！」 「ええっ！？」 時を同じくして、それまで沈黙を貫いていた不死騎士団残党が王都に押し寄せてきて――二人の王女の間に立つギュネイ、今こそ決断の時！？ 邪神王国復興物語、第３弾！', 'http://books.google.com/books/content?id=gFbtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, '2020-07-10'),
(290, 'XZNqQgAACAAJ', 'レギオン', '杉原智則', 'ぼく―風見徹は図書室で一冊のノートを拾った。その持ち主は美人だけどクラスで孤立している矢島葵で、中には不思議な物語が綴られていた。世間では奇妙な“眠り病”が流行しはじめ、同時に葵の物語に変化が訪れる。そしてぼくは世界に徴かな違和感を覚えはじめる―。おれ―トール・カザミは“異海”に唯一対抗できる兵器“騎体”を操る騎士になった。“眠り病”をもたらし世界を侵食する“異海”と戦ううちに、おれは自らの過去に疑念を抱きはじめる―。交錯する「ぼく」と「おれ」、そして二つの世界の繋がりとは。杉原智則が贈るツインワールド・ストーリー。', 'http://books.google.com/books/content?id=XZNqQgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784840238106, '2007-04-25'),
(293, 'qRBSAwAAQBAJ', '聖剣の姫と神盟騎士団IV', '杉原智則', '失われたもう一つの反魂珠の手がかりを求めて『皆殺しの島』へと旅立ったダークたち。なんとそこは死者の王国が支配する島だった。ダークとフィーネは死霊たちに襲われるが、美しい僧侶ロナに救われ——！？', 'http://books.google.com/books/content?id=qRBSAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, NULL),
(294, 'LfwtDwAAQBAJ', '交響詩篇エウレカセブン1BLUEMONDAY', '杉原智則', '先の見えてしまう将来、何も起こることのない日々。14歳の少年レントンの鬱々とした世界も、紫色の瞳を持つひとりの少女との出逢いによって、いま大きく変わろうとしている。新感覚ロボットアクションノベル登場！ 注：紙版の巻末収録「解説 京田知己」は電子版には収録されておりません', 'http://books.google.com/books/content?id=LfwtDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, '2005-10-29'),
(296, 'm9A5mQEACAAJ', 'V.T.R.', '辻村深月', '辻村深月の長編ミステリーから物語が飛び出した。「スロウハイツ」の住人を受け止め、支えたあの作家。物語に生きる彼らと同じ視線で、チヨダ・コーキのデビュー作を味わおう。『スロウハイツの神様』の世界へようこそ。', 'http://books.google.com/books/content?id=m9A5mQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784062774789, '2013-02-01'),
(297, 'V8YCDAAAQBAJ', 'ディズニー キセキの神様が教えてくれたこと', '鎌田洋', '【累計90万部突破！のベストセラーシリーズ！】 大切なことに気づく３つの物語 ディズニーランドで生まれる“奇跡”とも呼べるエピソードの数々。 これらはいかにして生み出されるのか？ その秘密を知っているのが“キセキの神様”だった。 本書は“夢と魔法の王国”を舞台に繰り広げられる「出会いと絆から生まれる奇跡」の物語。', 'http://books.google.com/books/content?id=V8YCDAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 4797386401, '2016-04-21'),
(298, 'qQ19DwAAQBAJ', 'なれる！SE162年目でわかる？SE入門', '夏海公司', '工兵、次郎丸、梅林 VS 立華、藤崎の対決となった総合商社二社のインフラ統合案件は、暗躍するスピリッティアの貝塚の介入もあり、業界全体を巻き込む事態に。国内の主要なIT企業を押えられ、案件を進める術を失った工兵が目を向けたのは……まさかのあの人物!? 一方、工兵の総務部への異動話も待ったなしの状況に。スルガシステムの未来と、立華のいるSE部を守ること、そして自身のエンジニアとしてのキャリアに悩む工兵の選ぶ道とは──。萌えるSE残酷物語、感動のシリーズ本編完結編！', 'http://books.google.com/books/content?id=qQ19DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, '2017-08-10'),
(299, 'nOx8DwAAQBAJ', '烙印の紋章XIあかつきの空を竜は翔ける(上)', '杉原智則', '勢力を増すオルバの軍勢。もはや看過できなくなった皇帝は、オルバを帝都へ招くという強行手段に出る。 一方、隣国エンデには、戦巧者の 『小覇王』 カセリア率いる東の大国・アリオン軍が迫るという事態に陥っていた。 アリオンの野心はエンデに留まらず、必ずやメフィウス、ガーベラにまで及ぶ ──。その危機を前に、オルバが、そして負傷をして祖国ガーベラに帰国したビリーナが行動を開始する！', 'http://books.google.com/books/content?id=nOx8DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, '2012-06-10'),
(301, 'He5IuwEACAAJ', '小説の神様', '相沢沙呼', '今、この文章を読んでいるあなたのおかげで、生み出された物語があるのだと、あなたに知ってほしい。', 'http://books.google.com/books/content?id=He5IuwEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784065125540, '2018-08-01'),
(302, 'xjuuyAEACAAJ', '精霊幻想記 14 復讐の叙情詩', '北山結莉', 'かくして因果は収束し――復讐の旅路は終局を迎える。', 'http://books.google.com/books/content?id=xjuuyAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784798619774, '2019-08-01'),
(303, 'aXSmDwAAQBAJ', 'NEW ACTION LEGEND 数学I＋A（本編）', '東京書籍編集部', '※この商品はタブレットなど大きいディスプレイを備えた端末で読むことに適しています。また、文字だけを拡大することや、文字列のハイライト、検索、辞書の参照、引用などの機能が使用できません。 ※本書には「練習」「問題」「チャレンジ」「Let\'s Try」「PERFECT MASTER」の詳細解答は含まれていません。 「NEW ACTION LEGEND 数学I＋A（解答編）」を合わせてご購入ください。 高校数学の系統性を重視し、思考力を磨く、他に類を見ない充実の参考書！ 【特長1】 全例題に、図解による「思考のプロセス」を掲載 「条件の言い換え」「既知の問題に帰着」「具体的に考える」などのキーワードで、数学的思考法を“見える化”しました。 試行錯誤の過程を図解で示したり、既習の例題と対比させたりしていて、“どうしてその解法を思いついたのか”がよく分かります。 【特長2】巻末「思考の戦略編」で、分野を越えた効果的な思考法を特集 思考力を高めるとともに、入試への対応力をさらに一歩引き上げます。 (例)「逆向きに考える」「対称性」「動かす・固定する」など 【特徴3】入試の重要テーマを整理した「特講」で、軽重つけた学習が可能 教科書では扱いが薄いが入試に頻出の内容をまとめています。 点と点であった個々の例題が線でつながって、思考を整理できます。 【特徴4】知識だけでなく、数学的思考法を鍛える「コラム」が充実 新入試を意識して、「解法の比較」「解法や性質の様々な見方」「定理の別証明」「性質の一般化」に関する題材を扱いました。 【特徴5】例題の問題文をまとめた「例題一覧」で、解答を見ずに挑戦 問題の検索性が高く、問題集としての活用もしやすい構成です。', 'http://books.google.com/books/content?id=aXSmDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, '2016-02-01'),
(306, 'JlYMPwAACAAJ', 'さいはての島へ', 'アーシュラ・K.ル=グウィン', 'ゲドのもとに、ある国の王子が知らせをもってきた。魔法の力が衰え、人々は無気力になり、死の訪れを待っているようだという。いったい何者のしわざか。ゲドと王子は敵を求めて旅立つが、その正体はわからない。ゲドは覚悟を決める。中学以上。', 'http://books.google.com/books/content?id=JlYMPwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784001145908, '2009-02-01'),
(309, 'dEc5AAAACAAJ', 'あいつもともだち', '内田麟太郎', 'ぼく、キツネ。オオカミさんとともだちです。イノシシさんもともだちです。イタチさんもクマさんも、ヤマネさんもともだちです。じゃあ、あいつは?あいつはともだちかな?あいつもともだちなのかな。かんがえてたらこんがらがって、わからなくなっちゃった。だから、あいにいったんだ!そしたらね...。3歳から。', 'http://books.google.com/books/content?id=dEc5AAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784032321500, '2004-10-01'),
(310, 'uOnKAwAAQBAJ', 'てのひらのエネミー（２）魔将覚醒', '杉原智則', 'パリス軍の手による大々的な“魔法使い狩り”、そして教会連合の手によるノールへの新たな陰謀。次々と蹂躙される罪なき人々を、アウルは魔王として救えるのか!? ハンドメイド・マジカルストーリー、第２弾登場！', 'http://books.google.com/books/content?id=uOnKAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, NULL),
(311, '8iF9DwAAQBAJ', 'レオ・アッティール伝III首なし公の肖像', '杉原智則', 'コンスコン寺院の攻防を制し、ひとまずは外敵を打ち払ったアトール公国第二公子レオ・アッティールは、依然残るアリオン、ディティアーヌ両大国の脅威に対抗するために動き出す。 民兵ばかりのアトールにおいて、常設軍たる親衛隊を組織、武装を整え練度をあげる。 その矛先は、アトール国内。王家に敵対的な有力貴族、ダーレンに向けられた。 「大事なのは、『速さ』だ」 速やかに国内を平定し、盤石な体制を築くべくレオは攻勢に出るが、思わぬ伏兵が待ち受けていて——!? 本格戦記ファンタジー、第３弾！', 'http://books.google.com/books/content?id=8iF9DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, '2016-01-09'),
(312, '7O7KAwAAQBAJ', 'てのひらのエネミー魔王城起動', '杉原智則', '魔法使いが唯一、安寧に生活できていた領土“ノール”。その場所もいまや異教徒からの侵略にさらされている。まったく偶然に魔王に選ばれた少年アウルが、生まれ故郷ノールを守るためひとり戦いの場に赴く！', 'http://books.google.com/books/content?id=7O7KAwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, NULL),
(313, 'W3XLPgAACAAJ', '烙印の紋章', '杉原智則', 'かつて高度な知能を持った竜が支配し、魔素を利用した文明に支えられた世界。十年の間、戦争を繰り広げてきたメフィウスとガーベラは王族同士の政略結婚により、その長い戦いに終止符を打とうとしていた。幼い頃、戦争により故郷を追われ剣闘士となったオルバは、瓜ふたつの容姿をしていることから、婚礼を控えた、うつけと噂されるメフィウスの皇子とすり替わることになる。一方、勝気なガーベラの姫、ビリーナは皇子を籠絡して自国の利益を図ろうとひそかに決意する。そんな二人の婚礼の途中、何者かの襲撃があり―!?二人の思惑と和平の行方は?杉原智則が贈るファンタジー登場。', 'http://books.google.com/books/content?id=W3XLPgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784048670630, '2008-05-01'),
(314, 'mcoBEAAAQBAJ', '声なきものの唄～瀬戸内の女郎小屋～（分冊版）【第54話】', '安武わたる', '最下層遊郭に売られた少女が見る、この世の地獄!! 明治後期、瀬戸内海の伊之島で生まれ育った活発な少女・チヌ。 母はなく、幼いころから父親と、美しい姉・サヨリとともに暮らしていた。 ある時、父が死に、姉妹は人買いの競りにかけられる。 サヨリは高級遊郭へ売られ、チヌは下層遊郭の「須賀屋」へ売られた。 生きていればいつか姉に会えると希望を持つチヌだったが……。 ※この作品は『ストーリーな女たち Vol.61』に収録されています。重複購入にご注意ください。', 'http://books.google.com/books/content?id=mcoBEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, NULL),
(315, 'kd_VbwAACAAJ', '海をわたる被爆ピアノ', '矢川光則', '矢川光則さんは、被爆二世として生まれながらも、原爆や平和についてまったく意識せずに育ちました。しかし、ピアノ調律師となり、ピアノの調律・修理・寄贈という活動をしていくなかで、偶然、「被爆ピアノ」に出会います。「被爆ピアノ」との出会いによって、彼がどのように平和への意識に目覚めていったのか、その足どりをたどります。', 'http://books.google.com/books/content?id=kd_VbwAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784062163514, NULL),
(316, 'RRa4EAAAQBAJ', '金色の眼の娘', 'バルザック', 'パキータとの恋において主人公ド・マルセーをつき動かしているものは、官能を通しての全能の夢である。同性愛は許せないものだった。それゆえにこそ彼は、自分がサン・レアル侯爵夫人の代役をさせられたという意識に耐えきれず、パキータの殺害を決意する。併載した「捨てられた女」はバルザックの中・短編の中でもおそらく最良のものの一つである。裏切られた女の苦悩と矜持、愛情の脆さと恐ろしさとをこれほど生き生きと、かつ簡潔に描いた作品は決して多くはない…これは訳者のことばだ。', 'http://books.google.com/books/content?id=RRa4EAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, '2023-03-09'),
(317, 'yENDAAAACAAJ', '私があなたに惚れたのは', '久世光彦', '向田邦子さんから田中真紀子さんまで、73人への熱い「ラヴレター」。', 'http://books.google.com/books/content?id=yENDAAAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784072333945, '2002-05-20'),
(318, 'vSs6AQAAQBAJ', '聖剣の姫と神盟騎士団 II', '杉原智則', 'ゲルウィンから巨大ゴーレムのゴンゴルを授かり調子付くダーク。一方、フィーネは聖剣団の初代メンバーが誰も戻らないことに焦りを覚えていた。そんな中、〈竜殺し〉ラッセルがカーラーン軍と共に現れて!?', 'http://books.google.com/books/content?id=vSs6AQAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, '2013-06-01'),
(319, 'DjFePgAACAAJ', 'あ', '大槻あかね', '見慣れた物との新しい出会いを描くすてきな絵本', 'http://books.google.com/books/content?id=DjFePgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784834023909, NULL),
(320, 'ie8rAQAAIAAJ', '鹿男(おとこ)あをによし', '万城目学', NULL, 'http://books.google.com/books/content?id=ie8rAQAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, NULL),
(321, 'GxfbswEACAAJ', 'ありがとうの魔法', '小林正観', '「人間関係」・「仕事」・「お金」・「病気」・「子ども」・「運」・「イライラ」・「男女」―ぜんぶの悩みが解決する、神様が味方になる習慣。40年の研究で正観さんが伝えたかった「ベスト・メッセージ集3」', 'http://books.google.com/books/content?id=GxfbswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784478103296, NULL),
(322, 'zCh9DwAAQBAJ', '烙印の紋章Vそして竜は荒野に降り立つ', '杉原智則', 'なり代わっていたメフィウス皇太子ギルの死を偽装して表舞台から姿を消し、タウーリアの傭兵となったオルバ。 折しもタウラン全域は魔道士ガルダの脅威に揺れていた。その次なる標的と目されるのは都市国家ヘリオ。だが、そこは謀反や妖艶な王妃マリレーヌの変節など、多くの内憂をも抱えていた。 オルバは援軍としてそのヘリオへと赴く。復讐を果たした後、確たる目的も定められずに一介の傭兵として戦うことになるが、運命はオルバを新たな挑戦へと駆り立てる！', 'http://books.google.com/books/content?id=zCh9DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, '2010-03-10'),
(323, 'TQfiAgAAQBAJ', 'あ～るママのかんたん！大人かわいいお弁当のおかず３０４', 'あ～るママ', 'パパッとかんたんに作れて、超絶かわいいお弁当のおかずが304レシピ。大人気お弁当ブロガー・あ～るママの第四弾は、自身初のお弁当のおかず集。おいしく、かわいく、彩りよく見せるお弁当のコツ、失敗しない詰め方テク、バランスいいおかずの組み合わせピタッと決まる、30日のおかず組み合わせカレンダーなどなど、明日のお弁当作りが楽しくなる工夫が満載です。', 'http://books.google.com/books/content?id=TQfiAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 4391635704, '2014-02-21'),
(324, 'Si19DwAAQBAJ', '烙印の紋章IX征野に竜の慟哭吹きすさぶ', '杉原智則', '西方より舞い戻り“皇太子ギル”として復活をとげたオルバ。ビリーナとも再会を遂げ戦いに向け準備をはじめる。 一方、皇帝グールは帰還したギルを偽物と断じ、一軍をアプターへ差し向ける。 圧倒的な戦力差のなか、皇太子として反皇帝の狼煙をあげなければいけないオルバは、寡兵をもってして鮮やかな勝利を得るべく策を練る。 両軍はついに激突の時を迎えるが──。', 'http://books.google.com/books/content?id=Si19DwAAQBAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, '2011-09-10'),
(325, 'Wgz4tgAACAAJ', '諜報の天才杉原千畝', '白石仁章', '国難をいち早く察知する驚異の諜報能力。この男にソ連は震えあがり、ユダヤ系情報ネットワークは危険を顧みず献身した―。日本の「耳」として戦火のヨーロッパを駆けずり回った情報士官の、失われたジグソーパズル。ミステリアスな外交電報の山にメスを入れ、厖大なピースを70年ぶりに完成させた本邦初の快挙。日本が忘れ去った英知の凡てがここにある。', 'http://books.google.com/books/content?id=Wgz4tgAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784106036736, NULL),
(326, 'py4FswEACAAJ', '杉原千畝', '著者不明', '英語に興味を持ったことから語学の道に進み、外交官となった杉原千畝。第二次世界大戦の折、ヨーロッパに赴任していた千畝は、ナチス・ドイツの迫害を受けるたくさんのユダヤ人の命を救うために彼らが日本へ渡るための「ビザ」を書くことになるのです―。', 'http://books.google.com/books/content?id=py4FswEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784591145883, NULL),
(327, '7kKdoAEACAAJ', '六千人の命を救え!外交官・杉原千畝', '白石仁章', '第二次世界大戦中、迫害された多くのユダヤ人に日本通過ビザ(「命のビザ」)を発給した杉原千畝。「諸国民の中の正義の人」の勇気と決断を紹介します。小学校高学年・中学生向け。', 'http://books.google.com/books/content?id=7kKdoAEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784569784106, NULL),
(328, 'JNueAAAAIAAJ', '真相・杉原ビザ', '渡辺勝正', '本書は、戦後の一時期、ユダヤ避難民に大量のビザを独断発給したことで海外でも注目され、教育の場においても広く取り上げられ始めた日本で誇る外交官である、歴史上の人物、杉原千畝の真相に迫り、史実を正しく伝えようとしたものである。', 'http://books.google.com/books/content?id=JNueAAAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', NULL, NULL),
(329, 'SxmgEAAAQBAJ', 'まいあ Maia 7巻', '有吉京子', 'パリ・オペラ座入団をかけた学校生徒対象の内部試験に落ちてしまったまいあは、外部試験に挑戦。「自分のバレエ」を求め、新たな旅が始まる! 2005年連載開始の人気作、遂に完結!', 'http://books.google.com/books/content?id=SxmgEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, '2022-12-06'),
(330, 'R6LuugAACAAJ', 'ありがとうっていいもんだ', '森山京', 'ブタのこはこうえんにでかけるとちゅうで、キツネのこがころがしたボールをひろってあげました。ちょっとおにいちゃんのキツネのこは「ありがとね」といってかけていきました。その「ありがとね」が、おにいちゃんぽくってとてもかっこよくて、ブタのこもまねしてみたくなりました。そして、いつものこうえんにむかったブタのこですが...。はじめてのひとりよみに。たのしくて、ほのぼのあたたかいおはなし。', 'http://books.google.com/books/content?id=R6LuugAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784894237674, NULL),
(331, 'XsyKPQAACAAJ', 'ありがとうともだち', '内田麟太郎', 'おれのともだち、キツネが、はじめてのおとまりにやってきた。うれしくってたのしくて、いいとこみせようってはりきって、ついいっちゃったんだ。でっかいウソを。だって「オオカミさん、すごいね」ってキツネがおれをみると、むくむくちからがわいてきて、なんでもできるきがするから。キツネ、みてろよー。ウソだってホントにしちゃえばいいよな。がっかりさせたくないからな...。3歳から。', 'http://books.google.com/books/content?id=XsyKPQAACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784032321203, NULL),
(332, '8SAnBgAAQBAJ', '52. Kongreß der Deutschen Gesellschaft für Gynäkologie und Geburtshilfe', 'D. Berg', 'Die Beiträge zum 52. Kongreß der Deutschen Gesellschaft für Gynäkologie und Geburtshilfe, die als Plenarveranstaltungen, Referate, Seminare oder als industrieassoziierte Symposien dargeboten wurden, sind in diesem Band schriftlich niedergelegt. Die Vorsitzenden der einzelnen Veranstaltungen, namhafte Vertreter der verschiedenen Fachgebiete, haben zusätzlich zu den Diskussionen auch Resümees verfasst. So spiegelt der Kongreßband den aktuellen Wissensstand der Forschung und Praxis auf den Gebieten Gynäkologie/Onkologie, Geburtshilfe/Perinatologie und Endokrinologie/Reproduktionsmedizin wider. Im Interesse eines besseren Gesamtüberblicks wurden die Beiträge themenorientiert geordnet und auch die Titel der Abstracts zu den wissenschaftlichen Publikation in die praktischen Kapitel integriert.', 'http://books.google.com/books/content?id=8SAnBgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 3642596886, '2013-03-07'),
(333, 'Y9WEDwAAQBAJ', 'Exotic Betting At The Racetrack', 'William T Ziemba', 'Exotic Betting at the Racetrack is unique as it covers the efficient-inefficient strategy to price and find profitable racetrack bets, along with handicapping that provides actual bets made by the author on essentially all of the major wagers offered at US racetracks. The book starts with efficiency, accuracy of the win odds, arbitrage, and optimal betting strategies. Examples and actual bets are shown for various wagers including win, place and show, exacta, quinella, double, trifecta, superfecta, Pick 3, 4 and 6 and rainbow pick 5 and 6. There are discussions of major races including the Breeders\' Cup, Pegasus, Dubai World Cup and the US Triple Crown from 2012-2018. Dosage analysis is also described and used. An additional feature concerns great horses such as the great mares Rachel Alexandra, Zenyatta, Goldikova, Treve, Beholder and Song Bird. There is a discussion of horse ownership and a tour through arguably the world\'s top trainer Frederico Tesio and his stables and horses in Italy.Related Link(s)', 'http://books.google.com/books/content?id=Y9WEDwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', 9813278803, '2018-12-21'),
(334, 'gLnxzQEACAAJ', '村上春樹が英語で楽しく読める本', '村上春樹が英語で楽しく読める本', '長編小説10作品にフォーカス!どこに世界中の読者が惹かれるのか。村上がMURAKAMIになった理由がわかる!', 'http://books.google.com/books/content?id=gLnxzQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784864541565, NULL),
(335, 'X_mUzQEACAAJ', '埼玉のトリセツ', '昭文社企画編集室', '江戸を支えた産業や文化の歩み知られざる地形の神秘に迫る!', 'http://books.google.com/books/content?id=X_mUzQEACAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api', 9784398148070, NULL),
(336, 'bo9fAgAAQBAJ', '埼玉ルール', '都会生活研究プロジェクト［埼玉チーム］', '埼玉とは？と問うたとき、この地にはどこか宙ぶらりんな印象もつきまとう。そして、歴史的に見て核となる都市が存在しなかったこと、東京のベッドタウンとして発展したために地元出身者の割合が少ないこと、などから個性や郷土意識の薄さが指摘されたりする。しかし、フシギなことに、というべきか。外からどう見えようと、この地の人々はどこかマイペースだ。「特徴がないのが、埼玉の特徴」「どうせダサイたまだし」といった自虐的なセリフも楽しみつつ、どこか余裕さえ漂わせつつ……。（「はじめに」より）', 'http://books.google.com/books/content?id=bo9fAgAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, NULL),
(337, 'yEFCEAAAQBAJ', 'ポコあポコ(1)', '小道迷子', '競馬好きな人も関心がない人も、思わず笑顔が出る作品です。ある日、競馬好きのじーちゃんと二人暮らしのよもぎは、魔法使いになんと女性ジョッキーに変身させられてしまいました!捨て馬（！？）だったハナジロー、名馬か、果たして迷馬なのか・・・そこの判断は読者の方々にお任せするとして、この珍コンビが目指すG1制覇への道はいかに・・・さあ、小道迷子が送るポコあポコ、レーススタートです！！', 'http://books.google.com/books/content?id=yEFCEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `book_records`
--

INSERT INTO `book_records` (`id`, `book_id`, `user_id`, `category_id`, `content`, `read_date`) VALUES
(14, 297, 3, 7, 'ディズニーのおもてなしの精神に感化される', '2023-05-11'),
(15, 298, 3, 7, '熱狂お仕事小説', '2023-05-11'),
(18, 302, 3, 1, '混在する2つの記憶', '2023-05-11'),
(19, 289, 3, 4, '同じ本を登録', '2023-05-11'),
(20, 309, 3, 3, 'ｇ', '2023-05-11'),
(70, 309, 2, 7, 'sss', '2023-06-17'),
(71, 299, 2, 7, 'ssss', '2023-06-17'),
(75, 309, 2, 6, 'ｓｄｓｄｄ', '2023-06-18'),
(110, 309, 4, 4, 's', '2023-06-22');

-- --------------------------------------------------------

--
-- テーブルの構造 `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '本のカテゴリー名',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'ファンタジー'),
(2, '恋愛'),
(3, '青春'),
(4, 'SF'),
(5, 'ミステリー'),
(6, 'ホラー'),
(7, '仕事'),
(8, '歴史');

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
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `likes`
--

INSERT INTO `likes` (`user_id`, `book_record_id`) VALUES
(2, 15),
(4, 15);

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
(19, '2023_05_08_160826_change_name_culumn', 13),
(21, '2023_06_18_134141_change_column_users_email_to_user_id', 14);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('bbb@example.jp', '$2y$10$aZfyXVGSYmJu2y3lLKCxq.ju3ILlmhPbG6pNMNHM/o6qHacBb9PXG', '2023-06-18 12:40:27');

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

-- --------------------------------------------------------

--
-- テーブルの構造 `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '画像のURL',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ログイン保持',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `email`, `password`, `image_path`, `remember_token`) VALUES
(1, 'hare', NULL, 'ptk.sakamaki@gmail.com', '$2y$10$FuLr2y/pyDHNher1CpIaPe9MrR2OCqqIztumaYY3xoGhEQqkqTBN6', NULL, NULL),
(2, 'まき', NULL, 'bbb@example.jp', '$2y$10$gxCDyiYnPL/3dXB2ww/JE.yrqDpFHiWu84XHc.lj89pTViB669hqC', NULL, 'XbNQy4fCJ5k5oTSUJuEsGElhvYF1PraERe4cwZzs8p8B7oUsYZIQDLLRMd6l'),
(3, 'はれ', NULL, 'aaa@example.jp', '$2y$10$01dnKBQ00gk4yw4J2s7j.epm835djwD3kvK86UJ1JIZ5mLyJ7Tgmi', NULL, NULL),
(4, 'みらい', NULL, 'mirai@example.jp', '$2y$10$Ad4Bc5xRlul3N6R7WAidIeqcV1Lgerm4nmhLK.7ZRCIOfsYoft0LW', NULL, '71St5M0cJ6bIsznRZJZ3GGvhJiieSv70Pzi3ZxVHhTc7ojJojzXVLhrK8tpG'),
(5, 'わたし', NULL, 'watashi@gamil.com', '$2y$10$ubQd9LXO4qmzos4rBWbU.e52HDZ3Jc9cxuX.TJQ/QzXscxhqKtMpu', NULL, NULL),
(6, 'fgfg', NULL, 'jhgjjjjjjjjjjj', '$2y$10$w/bbDBZuLOoDbhISEVZfKOgUHPpC8FifihWJ/5JZws6HfjZMR4yTq', NULL, NULL);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- テーブルの AUTO_INCREMENT `book_records`
--
ALTER TABLE `book_records`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
