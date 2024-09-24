-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 24. Sep 2024 um 04:46
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `euo_cms`
--
CREATE DATABASE IF NOT EXISTS `euo_cms` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `euo_cms`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `content`
--

CREATE TABLE `content` (
  `cont_id` int(11) NOT NULL,
  `page` tinytext NOT NULL,
  `container` tinytext NOT NULL,
  `cont_order` int(11) NOT NULL,
  `heading` tinytext NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `content`
--

INSERT INTO `content` (`cont_id`, `page`, `container`, `cont_order`, `heading`, `content`) VALUES
(1, 'start', 'main', 2, 'Die Vielfalt der Essige', 'Essig ist weit mehr als nur ein saurer Zusatz. Von Balsamico-Essig über Apfelessig bis hin zu Weinessig – jede Sorte bringt ihre eigenen Aromen und Eigenschaften mit. Balsamico-Essig, zum Beispiel, ist bekannt für seine süß-saure Note und eignet sich hervorragend für Salate und Marinaden. Apfelessig hingegen wird oft für seine gesundheitlichen Vorteile geschätzt und kann sowohl in der Küche als auch als Hausmittel verwendet werden.'),
(2, 'start', 'main', 1, 'Die Alleskönner in der Küche', 'Essig und Öl sind unverzichtbare Zutaten in jeder Küche. Sie verleihen unseren Gerichten nicht nur Geschmack, sondern auch eine besondere Note, die das kulinarische Erlebnis bereichert.'),
(3, 'start', 'main', 3, 'Die Welt der Öle', 'Öle sind ebenso vielfältig und bieten eine breite Palette an Geschmacksrichtungen und Anwendungsmöglichkeiten. Olivenöl ist wohl das bekannteste und wird in der mediterranen Küche häufig verwendet. Es gibt jedoch auch viele andere Öle wie Leinöl, Walnussöl und Kürbiskernöl, die jeweils ihre eigenen einzigartigen Aromen und gesundheitlichen Vorteile bieten.'),
(4, 'start', 'main', 4, 'Perfekte Kombinationen', 'Die Kombination von Essig und Öl ist das Geheimnis vieler köstlicher Dressings und Marinaden. Ein einfaches Vinaigrette-Rezept besteht aus drei Teilen Öl und einem Teil Essig, gewürzt mit Salz, Pfeffer und eventuell etwas Senf oder Honig. Diese Mischung kann nach Belieben angepasst werden, um den Geschmack zu variieren und perfekt auf das jeweilige Gericht abzustimmen.'),
(5, 'start', 'main', 5, 'Gesundheitliche Vorteile', 'Sowohl Essig als auch Öl bieten zahlreiche gesundheitliche Vorteile. Essig kann die Verdauung fördern und den Blutzuckerspiegel regulieren, während hochwertige Öle reich an ungesättigten Fettsäuren sind, die gut für das Herz-Kreislauf-System sind.'),
(6, 'start', 'extra', 1, 'Unser Tipp!', 'Lassen Sie sich inspirieren und bringen Sie neuen Schwung in Ihre Küche mit unseren exklusiven Essig- und Öl-Spezialitäten. Bestellen Sie noch heute und genießen Sie den Unterschied!'),
(7, 'ueberuns', 'main', 1, '', 'Willkommen bei Essig und Öl, Ihrem Experten für erlesene Essige und Öle. Unsere Leidenschaft für hochwertige, natürliche Produkte treibt uns an, die besten Zutaten aus der ganzen Welt auszuwählen und sie in unvergleichliche Geschmackserlebnisse zu verwandeln.'),
(8, 'ueberuns', 'main', 2, '', 'Unsere Geschichte beginnt mit einer einfachen Idee: Genuss und Qualität zu vereinen. Seitdem haben wir es uns zur Aufgabe gemacht, unsere Kunden mit einer handverlesenen Auswahl an Essigen und Ölen zu begeistern, die sowohl in der heimischen Küche als auch in der gehobenen Gastronomie geschätzt werden.'),
(9, 'ueberuns', 'main', 3, '', 'Wir glauben daran, dass der wahre Geschmack nur durch die perfekte Balance zwischen Tradition und Innovation erreicht wird. Deshalb setzen wir auf traditionelle Herstellungsverfahren und kombinieren diese mit modernster Technik, um Essige und Öle von höchster Reinheit und Intensität zu kreieren. Jeder Tropfen erzählt eine Geschichte – von sonnengereiften Olivenhainen in Italien bis hin zu aromatischen Weinfeldern in Frankreich.'),
(10, 'ueberuns', 'main', 4, '', 'Bei uns steht der Kunde im Mittelpunkt. Unser Ziel ist es, Ihnen nicht nur qualitativ hochwertige Produkte anzubieten, sondern auch einen exzellenten Service zu bieten. Unsere Expertise, gepaart mit unserer Liebe zum Detail, garantiert Ihnen eine Beratung, die Ihre kulinarischen Wünsche wahr werden lässt.'),
(11, 'ueberuns', 'extra', 1, '', 'Erleben Sie den Unterschied, den Qualität macht. Tauchen Sie ein in die Welt der Essige und Öle und lassen Sie sich von unseren Produkten inspirieren. Wir freuen uns darauf, Sie auf dieser Genussreise zu begleiten!'),
(12, 'essig', 'main', 1, 'Die Essenz des Essigs', 'Essig – ein unverzichtbares Element in jeder Küche, das seit Jahrtausenden geschätzt wird. Ob als Zutat in Dressings, zum Verfeinern von Gerichten oder als natürliches Konservierungsmittel – Essig ist vielseitig, gesund und voller Geschmack.'),
(13, 'essig', 'main', 2, 'Die Kunst der Herstellung', 'Die Herstellung von Essig ist ein Kunsthandwerk, das auf einer einfachen, aber faszinierenden biologischen Reaktion beruht. Essig entsteht durch die Fermentation von alkoholischen Flüssigkeiten wie Wein, Apfelwein oder Bier. Essigsäurebakterien wandeln den Alkohol in Essigsäure um, was dem Essig seinen charakteristischen sauren Geschmack verleiht. Doch Essig ist viel mehr als nur sauer. Je nach Ausgangsprodukt und Herstellungsverfahren können Essige eine Vielzahl von Aromen entfalten – von mild und fruchtig bis hin zu intensiv und würzig.'),
(14, 'essig', 'main', 3, 'Vielfalt der Essigsorten', 'Es gibt unzählige Essigsorten, die jeweils ihre eigene Geschichte und Tradition haben. Balsamico-Essig aus Modena ist wohl einer der bekanntesten und beliebtesten Essige weltweit. Mit seiner dichten, süß-sauren Note verleiht er Salaten, Fleischgerichten und Desserts eine unverwechselbare Tiefe. Apfelessig hingegen, hergestellt aus vergorenem Apfelsaft, ist bekannt für seinen frischen Geschmack und seine gesundheitsfördernden Eigenschaften.'),
(15, 'essig', 'main', 4, 'Essig in der Küche', 'Essig ist nicht nur ein Geschmacksträger, sondern auch ein wahrer Alleskönner in der Küche. Er kann Fleisch zart machen, Aromen intensivieren und sogar als natürlicher Reiniger im Haushalt dienen. In Kombination mit hochwertigen Ölen entsteht aus Essig die perfekte Grundlage für Dressings und Marinaden, die jedes Gericht veredeln.'),
(16, 'essig', 'main', 5, 'Historische und kulturelle Bedeutung', 'Doch Essig ist nicht nur ein kulinarisches Highlight, sondern auch ein Produkt mit kultureller und historischer Bedeutung. Seit der Antike wird Essig für seine heilenden Eigenschaften geschätzt. Schon Hippokrates, der Vater der modernen Medizin, erkannte die wohltuenden Effekte von Essig und setzte ihn zur Wundheilung und Desinfektion ein.'),
(17, 'essig', 'main', 6, 'Gesundheitliche Vorteile', 'In der modernen Ernährung wird Essig zunehmend als gesundes Lebensmittel angesehen. Apfelessig beispielsweise wird eine positive Wirkung auf den Blutzuckerspiegel und die Verdauung nachgesagt. Auch als Bestandteil einer ausgewogenen Ernährung kann Essig dazu beitragen, den Körper gesund zu halten.'),
(18, 'essig', 'main', 7, 'Essig: Ein Erlebnis für die Sinne', 'Essig ist mehr als nur eine Zutat – er ist ein Erlebnis für die Sinne und ein Stück gelebte Tradition. In jedem Tropfen steckt die Essenz der Natur, kombiniert mit dem handwerklichen Können und der Leidenschaft der Menschen, die ihn herstellen. Entdecken Sie die Vielfalt und die Geschichte des Essigs und lassen Sie sich von seiner Vielseitigkeit inspirieren.'),
(19, 'impressum', 'main', 1, 'Angaben gemäß § 5 TMG:', 'Firma: Essig & Öl GmbH<br><br>\r\nVertreten durch: Max Mustermann (Geschäftsführer)<br>\r\nAnschrift: Musterstraße 12, 12345 Musterstadt, Deutschland<br>\r\nTelefon: +49 (0)123 4567890<br>\r\nE-Mail: info@essig-und-oel.de<br>\r\nWebsite: www.essig-und-oel.de'),
(20, 'impressum', 'main', 2, 'Handelsregister:', 'Eintragung im Handelsregister.<br>\r\nRegistergericht: Amtsgericht Musterstadt<br>\r\nRegisternummer: HRB 123456'),
(21, 'impressum', 'main', 3, 'Umsatzsteuer-ID:', 'Umsatzsteuer-Identifikationsnummer gemäß § 27 a Umsatzsteuergesetz: DE123456789'),
(22, 'impressum', 'main', 4, 'Inhaltlich Verantwortlicher:', 'gemäß § 55 Abs. 2 RStV:<br><br>\r\n\r\nMax Mustermann<br>\r\nMusterstraße 12<br>\r\n12345 Musterstadt<br>\r\nDeutschland'),
(23, 'impressum', 'main', 5, 'Haftung für Inhalte:', 'Die Inhalte unserer Seiten wurden mit größter Sorgfalt erstellt. Für die Richtigkeit, Vollständigkeit und Aktualität der Inhalte können wir jedoch keine Gewähr übernehmen. Als Diensteanbieter sind wir gemäß § 7 Abs.1 TMG für eigene Inhalte auf diesen Seiten nach den allgemeinen Gesetzen verantwortlich. Nach §§ 8 bis 10 TMG sind wir als Diensteanbieter jedoch nicht verpflichtet, übermittelte oder gespeicherte fremde Informationen zu überwachen oder nach Umständen zu forschen, die auf eine rechtswidrige Tätigkeit hinweisen. Verpflichtungen zur Entfernung oder Sperrung der Nutzung von Informationen nach den allgemeinen Gesetzen bleiben hiervon unberührt.'),
(24, 'impressum', 'main', 6, 'Haftung für Links:', 'Unser Angebot enthält Links zu externen Webseiten Dritter, auf deren Inhalte wir keinen Einfluss haben. Deshalb können wir für diese fremden Inhalte auch keine Gewähr übernehmen. Für die Inhalte der verlinkten Seiten ist stets der jeweilige Anbieter oder Betreiber der Seiten verantwortlich.'),
(25, 'impressum', 'main', 7, 'Urheberrecht:', 'Die durch die Seitenbetreiber erstellten Inhalte und Werke auf diesen Seiten unterliegen dem deutschen Urheberrecht. Die Vervielfältigung, Bearbeitung, Verbreitung und jede Art der Verwertung außerhalb der Grenzen des Urheberrechtes bedürfen der schriftlichen Zustimmung des jeweiligen Autors bzw. Erstellers.'),
(26, 'impressum', 'main', 8, 'Streitschlichtung:', 'Die Europäische Kommission stellt eine Plattform zur Online-Streitbeilegung (OS) bereit: <a href=\"ec.europa.eu/consumers/odr\">ec.europa.eu/consumers/odr</a>. Unsere E-Mail-Adresse finden Sie oben im Impressum.'),
(27, 'impressum', 'extra', 1, '', 'Wir sind nicht bereit oder verpflichtet, an Streitbeilegungsverfahren vor einer Verbraucherschlichtungsstelle teilzunehmen.'),
(28, 'oel', 'main', 1, 'Die Welt der Öle', 'Öle sind mehr als nur flüssige Fette – sie sind essentielle Begleiter in der Küche und wertvolle Zutaten, die jedes Gericht bereichern. Vom Olivenöl, das in der mediterranen Küche unverzichtbar ist, bis hin zu exotischen Nussölen – die Vielfalt der Öle ist ebenso beeindruckend wie ihre Einsatzmöglichkeiten.'),
(29, 'oel', 'main', 2, 'Herstellung und Qualität', 'Die Herstellung von hochwertigen Ölen beginnt bei der Auswahl der besten Rohstoffe. Ob Oliven, Nüsse oder Samen – die Qualität der Ausgangsprodukte bestimmt maßgeblich den Geschmack und die Nährstoffe des Endprodukts. Traditionelle Kaltpressverfahren sind besonders schonend und bewahren die wertvollen Inhaltsstoffe der Öle. So entstehen naturbelassene Öle, die reich an Vitaminen, ungesättigten Fettsäuren und Antioxidantien sind.'),
(30, 'main', 'main', 3, 'Vielseitigkeit in der Küche', 'Öle sind in der Küche wahre Allrounder. Ob zum Braten, Backen, Marinieren oder als Basis für Salatdressings – für jede Anwendung gibt es das passende Öl. Olivenöl extra vergine ist beispielsweise ideal für kalte Speisen und zum Verfeinern von Gerichten, während hoch erhitzbare Öle wie Rapsöl oder Erdnussöl perfekt zum Braten und Frittieren geeignet sind. Nussöle wie Walnuss- oder Haselnussöl verleihen Speisen eine feine, nussige Note und eignen sich hervorragend für Salate, Desserts und besondere Anlässe.'),
(31, 'oel', 'main', 4, 'Gesundheitliche Vorteile', 'Viele pflanzliche Öle sind wahre Kraftpakete für die Gesundheit. Olivenöl ist bekannt für seinen hohen Gehalt an einfach ungesättigten Fettsäuren, die das Herz-Kreislauf-System unterstützen können. Leinöl ist reich an Omega-3-Fettsäuren, die entzündungshemmend wirken und die Gehirnfunktion fördern. Nussöle sind nicht nur geschmacklich einzigartig, sondern liefern auch wertvolle Vitamine und Mineralstoffe, die zur allgemeinen Gesundheit beitragen.'),
(32, 'oel', 'main', 5, 'Kulturelle und kulinarische Bedeutung', 'Öle spielen in vielen Kulturen eine zentrale Rolle in der Küche. In der mediterranen Ernährung ist Olivenöl nicht nur ein Geschmacksträger, sondern auch ein Symbol für Gesundheit und Lebensfreude. In der asiatischen Küche sind Sesam- und Erdnussöl wesentliche Zutaten, die den typischen Geschmack vieler Gerichte prägen. Die kulturelle Bedeutung von Ölen spiegelt sich in den traditionellen Herstellungsverfahren und der Wertschätzung wider, die ihnen in verschiedenen Regionen entgegengebracht wird.'),
(33, 'oel', 'main', 6, 'Nachhaltigkeit und Herkunft', 'Die Herkunft und die Art der Herstellung von Ölen spielen eine entscheidende Rolle für ihre Qualität und Nachhaltigkeit. Regional produzierte Öle aus biologischem Anbau sind nicht nur besser für die Umwelt, sondern oft auch geschmacklich überlegen. Nachhaltiger Anbau und faire Handelspraktiken sorgen dafür, dass die Produktion von Ölen Mensch und Natur gleichermaßen respektiert.'),
(34, 'oel', 'main', 7, 'Öle: Ein Genuss für die Sinne', 'Jedes Öl hat seinen eigenen Charakter, seine eigene Geschichte und seine eigenen Einsatzmöglichkeiten. Ob in der alltäglichen Küche oder bei besonderen Anlässen – hochwertige Öle bereichern unsere Ernährung und unser Leben. Entdecken Sie die Vielfalt der Öle und lassen Sie sich von den unzähligen Aromen und gesundheitlichen Vorteilen inspirieren.'),
(35, 'essig', 'extra', 1, '', 'Essig ist ein vielseitiges Naturprodukt, das durch seine komplexen Aromen und gesundheitsfördernden Eigenschaften sowohl in der Küche als auch im Alltag unverzichtbar ist'),
(36, 'oel', 'extra', 1, 'Essenzielle Begleiter in der Küche', 'Öle sind unverzichtbare Geschmacksträger und Nährstofflieferanten, die mit ihrer Vielfalt an Aromen und gesundheitlichen Vorteilen jedes Gericht veredeln.'),
(37, 'geschenkartikel', 'main', 1, 'Geschenkartikel aus Essig und Öl:', 'Geschenke sind eine wunderbare Möglichkeit, Wertschätzung, Zuneigung und Dankbarkeit auszudrücken. In einer Zeit, in der die Qualität und Herkunft von Produkten immer mehr an Bedeutung gewinnen, sind Geschenkartikel aus hochwertigen Essigen und Ölen eine exquisite Wahl, die sowohl Geschmack als auch Stil vereint. Diese edlen Genussmittel stehen für Authentizität, Tradition und handwerkliche Kunst – Eigenschaften, die in jedem Geschenk mitschwingen und es zu etwas ganz Besonderem machen. In diesem Artikel stellen wir Ihnen eine Auswahl an Geschenkartikeln vor, die aus Essigen und Ölen gefertigt sind und sich hervorragend als durchdachte und raffinierte Präsente eignen.'),
(38, 'geschenkartikel', 'main', 2, '1. Deluxe-Geschenkboxen:', 'Eine Deluxe-Geschenkbox, gefüllt mit einer Auswahl feinster Essige und Öle, ist ein echter Hingucker und das perfekte Geschenk für Feinschmecker. Diese Boxen können verschiedene Sorten enthalten, die harmonisch aufeinander abgestimmt sind – vom milden Olivenöl bis zum intensiven Balsamico-Essig. Verpackt in einer eleganten Holz- oder Kartonbox mit edlem Design, wirkt das Geschenk nicht nur geschmacklich, sondern auch optisch hochwertig. Einige Boxen bieten zusätzlich Platz für passende Beigaben wie handgemachte Gewürzmischungen, edle Salze oder kleine Kochbücher, die den Genuss komplettieren.'),
(39, 'geschenkartikel', 'main', 3, '2. Geschenkkörbe:', 'Geschenkkörbe sind ein klassisches Präsent, das immer gut ankommt. Ein Korb, gefüllt mit hochwertigen Essigen und Ölen, bietet eine vielfältige Auswahl an Aromen und Einsatzmöglichkeiten. Stellen Sie den Korb individuell zusammen – zum Beispiel mit einem fruchtigen Himbeeressig, einem kräftigen Walnussöl und einem aromatischen Trüffelöl. Ergänzen Sie den Korb mit regionalen Spezialitäten, wie Käse, Brot oder Oliven, und schaffen Sie so ein rundes Geschenk, das die kulinarische Vielfalt betont und zum sofortigen Genießen einlädt.'),
(40, 'geschenkartikel', 'main', 4, '3. Edle Einzelprodukte:', 'Manchmal ist weniger mehr – ein einzelnes, besonders hochwertiges Produkt kann als Geschenk genauso viel Eindruck machen wie eine ganze Auswahl. Ein exklusiver Balsamico-Essig, der über Jahre in Holzfässern gereift ist, oder ein seltenes Olivenöl aus einer bestimmten Region kann für sich alleinstehen und den Beschenkten begeistern. Diese Einzelprodukte sind oft in dekorativen Flaschen erhältlich, die das Geschenk zusätzlich veredeln. Eine handschriftliche Notiz oder ein kleiner Geschenkanhänger, der die Herkunft und die besonderen Eigenschaften des Produkts erklärt, rundet das Präsent ab.'),
(41, 'geschenkartikel', 'main', 5, '4. Geschenkgutscheine: ', 'Ein Geschenkgutschein für eine Auswahl an Essigen und Ölen ist eine flexible und dennoch persönliche Geschenkidee. Mit einem Gutschein kann der Beschenkte selbst entscheiden, welche Sorten er oder sie bevorzugt und entdeckt dabei vielleicht sogar neue Lieblingsprodukte. Diese Art von Geschenk ist besonders praktisch, wenn Sie unsicher sind, welche Geschmacksrichtungen am besten ankommen oder wenn Sie jemandem die Freude bereiten möchten, sich selbst durch das Sortiment zu probieren.'),
(42, 'geschenkartikel', 'main', 6, '5. Kochzubehör mit Essig und Öl:', 'Neben den Essigen und Ölen selbst gibt es eine Vielzahl von Zubehör, das sich hervorragend als Geschenk eignet und den Gebrauch dieser edlen Produkte noch angenehmer macht. Dazu gehören stilvolle Karaffen, in denen Essig und Öl aufbewahrt und präsentiert werden können, oder spezielle Sprühflaschen, die eine gleichmäßige Dosierung ermöglichen. Auch hochwertige Salatbestecke oder Pfannen, die für das Braten mit speziellen Ölen optimiert sind, sind praktische und durchdachte Geschenkideen, die den Genuss von Essig und Öl in der Küche perfektionieren.'),
(43, 'geschenkartikel', 'main', 7, '6. Verkostungssets: ', 'Verkostungssets sind eine spannende Möglichkeit, den Beschenkten in die Welt der Essige und Öle einzuführen. Diese Sets enthalten kleine Flaschen verschiedener Sorten, die es ermöglichen, sich durch unterschiedliche Geschmacksprofile zu probieren. Ergänzen Sie das Set mit einer detaillierten Anleitung zur Verkostung und Tipps, wie die Aromen am besten zur Geltung kommen. Ein solches Geschenk ist nicht nur lehrreich, sondern auch unterhaltsam und eignet sich perfekt für gemeinsame Verkostungsabende oder als Einstieg in die Welt der feinen Essige und Öle.'),
(44, 'geschenkartikel', 'main', 8, '7. Thematische Geschenksets:', 'Ein thematisches Geschenkset ist eine wunderbare Möglichkeit, Essig und Öl in einem größeren Kontext zu präsentieren. Stellen Sie beispielsweise ein Set unter dem Motto „Mediterrane Küche“ zusammen, das neben einem hochwertigen Olivenöl und einem würzigen Rotweinessig auch Zutaten wie getrocknete Tomaten, Oliven und Pasta enthält. Oder kreieren Sie ein „Salat-Liebhaber-Set“ mit verschiedenen Essigen, Ölen und Gewürzmischungen, die perfekt für Salatdressings geeignet sind. Solche thematischen Sets sind nicht nur kreativ, sondern bieten dem Beschenkten auch Inspiration für neue kulinarische Erlebnisse.'),
(45, 'geschenkartikel', 'main', 9, '8. Geschenkideen für besondere Anlässe:', 'Essige und Öle sind auch ideale Geschenke für besondere Anlässe wie Hochzeiten, Jubiläen oder Feiertage. Ein Set aus besonders edlen Produkten, wie ein Balsamico-Essig, der 25 Jahre gereift ist, oder ein Trüffelöl, kann das perfekte Geschenk für ein Jubiläum oder einen runden Geburtstag sein. Für Hochzeiten bieten sich personalisierte Flaschen mit dem Namen des Brautpaares und dem Hochzeitsdatum an – ein unvergessliches und stilvolles Geschenk, das den besonderen Tag in Erinnerung hält.'),
(46, 'geschenkartikel', 'extra', 1, 'Fazit: Essig und Öl als stilvolle Geschenkartikel', 'Essig und Öl sind mehr als nur Zutaten – sie sind Ausdruck von Qualität, Geschmack und Stil. Als Geschenkartikel eignen sie sich hervorragend, um Freude und Wertschätzung auszudrücken. Ob als Teil eines sorgfältig zusammengestellten Sets, als edles Einzelprodukt oder in Verbindung mit stilvollem Zubehör – mit diesen kulinarischen Schätzen schenken Sie mehr als nur ein Produkt. Sie schenken Genuss, Qualität und das Erlebnis, die Vielfalt der Aromen und Traditionen zu entdecken. Lassen Sie sich von diesen Ideen inspirieren und finden Sie das perfekte Geschenk für jeden Anlass.');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `content`
--
ALTER TABLE `content`
  ADD UNIQUE KEY `cont_id` (`cont_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `content`
--
ALTER TABLE `content`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
