-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Дек 12 2016 г., 07:17
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `msite`
--
CREATE DATABASE `msite` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `msite`;

-- --------------------------------------------------------

--
-- Структура таблицы `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `img_src` varchar(300) NOT NULL,
  `cat` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `article`
--

INSERT INTO `article` (`id`, `title`, `description`, `text`, `date`, `img_src`, `cat`) VALUES
(4, 'Деталі будівництва дерев''яних будинків', '<p>З хвойних порід в будівництві використовуються сосна, ялина, ялиця, модрина, кедр, тощо. Для виготовлення несучих конструкцій більше підходять сосна і модрина: на відміну від ялини та ялиці вони менше схильні до гниття. У Європі найбільш широке поширення набула сосна, як найдоступніший будівельний матеріал. Листяні породи використовуються значно рідше, з них найбільш застосовні дуб, ясен, бук, береза, осика.</p>', '<p>З хвойних порід в будівництві використовуються сосна, ялина, ялиця, модрина, кедр, тощо. Для виготовлення несучих конструкцій більше підходять сосна і модрина: на відміну від ялини та ялиці вони менше схильні до гниття. У Європі найбільш широке поширення набула сосна, як найдоступніший будівельний матеріал. Листяні породи використовуються значно рідше, з них найбільш застосовні дуб, ясен, бук, береза, осика.</p>\r\n<p><img itemprop="image" style="border: 0px #303030; margin-top: 10px; margin-right: 10px; margin-bottom: 10px; float: left; width: 320px; height: 250px;" src="img/vazhlivi-detali-budivnitstva-derevianih-budinkiv_1.jpg" alt="будівництво дерев''яного будинку з брусу" /></p>\r\n<p>За структурою деревина є природним полімером, її клітинні волокна мають трубчасту форму і направлені уздовж стовбура. Завдяки цьому вона володіє цілим рядом переваг: високою міцністю, пружністю, малою щільністю, а, отже, і малою вагою, низькою теплопровідністю, стійкістю до дії хімічно агресивних середовищ, природною декоративністю, легкістю і простотою обробки і монтажу. Особливе значення має низька теплопровідність деревини, яка чим нижче, тим тепліше будинок. А нижче вона, в середньому, ніж у цегли &#8211; в 3-4 рази і в 5 разів &#8211; ніж у бетона.</p>\r\n<p>Найбільш істотно на експлуатаційних властивостях дерев&#8217;яних конструкцій позначаються гігроскопічність, займистість, схильність впливу грибків і бактерій. Для зменшення їх негативного впливу, в першу чергу, застосовують сушку, просочення деревини антисептиками та антипіренами, а також заходи щодо запобігання зволоження конструкцій в процесі експлуатації (захист від атмосферних опадів, ізоляція від ґрунту, каменю, бетону).</p>\r\n<p>Маленький відступ з приводу обробки дерева. З кінця 90-х років фінами була впроваджена нова технологія, що отримала назву «термообробка». При цьому технологічному процесі сушку ведуть при температурі 150-230С. Чим вище температура, тим більше втрата ваги за рахунок випаровування летючих сполук і води. Залежно від умов термообробки і породи дерева залишкова вологість деревини на 40-60% менше, ніж у висушеної звичайним способом. Процес термообробки зазвичай триває близько 24 годин. Вологість деревини після термообробки зменшується на 80-90%. Як наслідок, суттєво зменшується її теплоємність: пройшовша термообробку деревина нагрівається значно повільніше необробленої. Поверхня такої деревини не пориста, а щільна, що значно знижує здатність дерева вбирати вологу з повітря (на 30-90% в залежності від температури і часу сушки).</p>\r\n<p><img itemprop="image" style="border: 0px #000000; margin-left: 10px; margin-top: 0px; margin-bottom: 10px; float: right; width: 320px; height: 250px;" src="img/vazhlivi-detali-budivnitstva-derevianih-budinkiv_2.jpg" alt="будівництво дерев''яного будинку з брусу" /></p>\r\n<p>При термічній обробці розкладаються деревні цукри, що є живильним середовищем для мікроорганізмів, що сприяють гниттю дерева, і воно за цими показниками наближається до модрини, тієї самої, яку свого часу прославила Венеція. Особливо слід відзначити, що хвойні породи дерева практично повністю втрачають смолу, зберігаючи чудовий аромат, що посилюється при підвищенні вологості і температури повітря.</p>\r\n<p>При термообробці деревина змінює колір, набуваючи красивий коричневий відтінок. Слід зазначити, що зміна кольору &#8211; наскрізне, що добре видно на зрізі. Подряпини на такій поверхні практично непомітні. Змінюючи температуру термообробки можна домагатися бажаного відтінку деревини і ступеня стійкості до умов навколишнього середовища.</p>\r\n<p>Традиційна колода, з якої протягом десятків століть зводили будинки наші предки, поступово відходить у минуле. Тепер це всього лише сировина для створення сучасних, набагато досконаліших матеріалів. Зараз в будівництві дерев&#8217;яних будинків в основному застосовують оциліндровану колоду або профільований брус (цілісний або клеєний).</p>\r\n<p>Механізовані технології оциліндровки колод застосовувалися за кордоном вже на початку XX століття. Дерев&#8217;яні будинки через скорочення числа операцій при складанні стало простіше і швидше будувати. Крім того, використання оциліндрованої колоди дозволило при збірці створити жорсткішу конструкцію. Так як колода до колоди підганяється щільніше, покращилися теплоізоляційні властивості стін, а сама будівля стало виглядати естетичніше. Для виготовлення оциліндрованої колоди і профільованого бруса в основному використовується сосна.</p>\r\n<p>Гідність оциліндрованої колоди &#8211; рівна, округла форма, що дозволяє досягти щільного з&#8217;єднання. В основному, діаметр пропонованих для будівництва колод коливається від 160 до 240 мм, іноді досягаючи 260 мм. Висока точність виготовлення дозволяє уникнути характерного для звичайних колод чергування в обов&#8217;язковій послідовності &#8211; комель до вершини &#8211; і їх клопіткої підгонки один до одного.</p>\r\n<p><img itemprop="image" style="border: 0px #303030; margin-right: 10px; width: 320px; height: 250px; float: left; margin-bottom: 10px;" src="img/vazhlivi-detali-budivnitstva-derevianih-budinkiv_3.jpg" alt="Дерев''яний будинок з оциліндрованого брусу" /></p>\r\n<p>Щоб перетворити дерево в оциліндровану колоду, його стовбур попередньо очищають від кори, після чого пропускають через систему фрез, перетворюючи в ідеальний циліндр з ретельно обробленою поверхнею. Потім роблять торцювання колод, виготовлення пазів, замків, свердління технологічних отворів, обробка антисептиками і антипіренами.</p>\r\n<p>Необхідні пази і замки в сучасних оциліндрованих колодах мають математично вивірену поверхню й виконуються з дуже високою точністю. В результаті, вінці з таких колод мають мінімальні зазори, а колоди можуть з&#8217;єднуватися під будь-яким необхідним кутом. Перед будівлею будинку у фінському  стилі зі звичайних колод потрібно переконатися в доброякісності деревини, в тому, що вона не заражена шашелем або грибком.</p>\r\n<p>Крім оциліндрованої колоди для будівництва дерев&#8217;яних будинків широко використовують брус. Матеріал &#8211; хвойні породи деревини. Брус можна зустріти наступних основних розмірів: 100&#215;100 мм, 100&#215;150 мм і 150&#215;150 мм. Довжина &#8211; 6 м (довший брус обійдеться на 10-15% дорожче). Найпростіший варіант &#8211; це цільний брус. Його виготовляють в заводських умовах з колоди, відпилюючи чотири канти.</p>\r\n<p>Особливості звичайного бруса наступні. З нього, зрозуміло, набагато простіше скласти будинок, але при його виробництві часто стикаються з тим, що при зрізанні з усіх боків під кутом 90 градусів брус дуже скоро починає крутити, вести. Передбачити долю цільного бруса досить важко. На ринку різновидом пиломатеріалів є профільований брус. При його виготовленні звичайному брусу надається строго певна стандартна форма (профіль). Природно він відрізняється за ціною від звичайного бруса в більшу сторону.</p>\r\n<p>Серед переваг струганого профільованого бруса потрібно відзначити в першу чергу те, що будинки з нього швидко і легко збираються, тому що всі вироби виготовлені на верстатах з високою точністю. Як правило, після осідання зрубу, виконаного з профільованого бруса, конопатити утеплювачем не потрібно. Крім того, профіль бруса розраховується так, що дощова вода не потрапляє між колодами, що охороняє стіни від виникнення вогнищ гниття.</p>\r\n<p><img itemprop="image" style="border: 0px #303030; width: 320px; height: 250px; margin-left: 10px; margin-top: 10px; float: right; margin-bottom: 10px;" src="img/vazhlivi-detali-budivnitstva-derevianih-budinkiv_4.jpg" alt="Дерев''яний будинок з оциліндрованого брусу" /></p>\r\n<p>Ну і звичайно, будинок з струганого бруса відразу після зведення має охайний і привабливий зовнішній вигляд і не вимагає додаткової обробки. Однак, говорячи про профільований брус, не можна забувати, що це об&#8217;ємний матеріал, і просушити його до того стану, коли усадка й деформації будуть мінімальними, досить складно &#8211; при недотриманні технології обробки його може, як кажуть будівельники, «повести».</p>\r\n<p>Щоб позбутися від проблем усадки й деформацій, останнім часом у дерев&#8217;яному будівництві усе ширше використовують клеєний профільований брус.  Клеєний брус не має недоліків, характерних для масивних цілісних колод і бруса. Він ретельно висушений, його вологість зазвичай становить 9 ± 1%, він більш готується і менш схильний до різних несприятливих дій (гниттю і т.п.). Усадка клеєного бруса не перевищує 1%, що дає можливість значно скоротити терміни зведення дерев&#8217;яного будинку, тому що не вимагається тривалого очікування опади зрубу.</p>\r\n<p>Поверхня клеєного бруса, виконаного з дотриманням всіх технологічних вимог, рівна і гладка; стіна, зібрана з клеєного бруса, виглядає монолітною, що надає будинкам ще одна перевага: вони не потребують зовнішньої і внутрішньої обробки. Завдяки цьому, вартість будівництва знижується на 50 і більше відсотків у порівнянні, наприклад, з цегляним будинком. Будинки з клеєного бруса, як і всі дерев&#8217;яні, значно легше кам&#8217;яних або цегляних і тому не вимагають глибоких і важких фундаментів; будинку з клеєного бруса взагалі можна зводити на вже готових фундаментах. Переваги технології клеєного бруса дають великий простір в розробці проектів і будівництві будинків, наприклад, збільшення розмірів несучих конструкцій, прольотів і віконних прорізів. Іншими перевагами будинків з клеєного бруса фахівці називають відсутність деформування конструкцій будинку, стійкість до гниття і ураження комахами, високі показники пожежостійкості (з досліджень цей матеріал за показниками близький до металоконструкцій).</p>', '2016-12-08', 'img/derevjanuy_budunok.jpg', 2),
(5, 'Будинок з оциліндрованого брусу: запитання та відповіді', '<p>Ця стаття містить корисну інформацію для людей, які вже розпочали будівництво дому з бруса або ж лише планує це зробити. Вона допоможе обрати найкращий матеріал, найоптимальнішу товщину стін і тип фундаменту для будинку з дерева. Тут Ви знайдете відомості стосовно вартості та гарантій якості на дім з бруса тощо. І все це для того, щоби зробити Вашу оселю довговічною, а життя в ній – максимально комфортним.</p>', '<p>Ця стаття містить корисну інформацію для людей, які вже розпочали будівництво дому з бруса або ж лише планує це зробити. Вона допоможе обрати найкращий матеріал, найоптимальнішу товщину стін і тип фундаменту для будинку з дерева. Тут Ви знайдете відомості стосовно вартості та гарантій якості на дім з бруса тощо. І все це для того, щоби зробити Вашу оселю довговічною, а життя в ній – максимально комфортним.</p>\r\n<p><strong>1. Якою повинна бути товщина стін дому з оциліндрованого бруса?</strong></p>\r\n<p>Компанія <strong>«ДеревоДім»</strong> використовує лише найкращу деревину для спорудження будинків з оциліндрованого брусу – сосну або смереку. Для того, щоб Ви могли самостійно порівняти ці матеріали, нижче наводимо таблицю. Вона наочно зображує їхні основні будівельні характеристики. Сосна і смерека володіють високими показниками міцності та щільності. Проте, як будівельний матеріал, сосна надійніша та краща в експлуатації. Вона містить велику кількість смол, тому більш стійка до гниття. Цей матеріал вирізняється своїми приємними, насиченими відтінками й надасть будь-яким апартаментам розкішного та респектабельного вигляду.</p>\r\n<p class="text-center"><img itemprop="image" src="img/t1.jpg" alt="Сосна і смерека - основні будівельні характеристики" /></p>\r\n<p>Товщина колоди й тип її обробки (ручна чи механічна) – фактори, які впливають на ціну будинку з дерева. Діаметр оциліндрованого бруса зазвичай становить 160-240мм. Він залежить від функціонального призначення споруди. Для дач, літніх будиночків і лазень достатньо буде бруса завширшки 160-200мм. Для житлових будинків оптимальний розмір колод становить 200-240мм. Завдяки цьому можна уникнути зайвих витрат на опалення помешкання взимку.</p>\r\n<p>У таблиці, поданій нижче, відображено показники теплопровідності різних будівельних матеріалів. Це допоможе об’єктивно оцінити всі їхні переваги та недоліки.</p>\r\n<p class="text-center"><img itemprop="image" src="img/t2.jpg" alt="Показники теплопровідності різних будівельних матеріалів" /></p>\r\n<p>Дані графіка демонструють який стіновий матеріал найкраще зберігає тепло при найменшій товщині. Ознайомившись із ним, можна переконатися &#8211; незважаючи на найменшу товщину стін, деревина володіє найвищою теплопровідністю.</p>\r\n<p class="text-center"><img itemprop="image" src="img/s1.jpg" alt="Показники теплопровідності різних будівельних матеріалів" /></p>\r\n<p>Наступний графік відображає співвідношення ваги та щільності будматеріалів. Ці показники дуже важливі, тому їх обов’язково варто враховувати при спорудженні дому з бруса. Будівельні матеріали потрібно вибирати відповідно до типу фундаменту та ґрунту. Якщо будинок зводити на піщаному ґрунті, а матеріал буде надто важким, то вся споруда осідатиме. Графік яскраво показує &#8211; деревина, маючи найменшу вагу, володіє високим рівнем щільності.</p>\r\n<pclass="text-center"><img itemprop="image" src="img/s2.jpg" alt="Графік співвідношення ваги та щільності будматеріалів" /></p>\r\n<p><strong>2. Який фундамент обрати для дерев’яного будинку?</strong></p>\r\n<p>Фундамент для будинку з дерева не обов’язково повинен бути масивним. Для зведення двоповерхового будинку з бруса площею 150-200м<sup>2</sup>, достатньо буде стрічкового фундаменту завширшки 300мм або стовпчастого з кроком 2-2,5м й перетином 300х300мм. Глибина закладання стовпців залежить від глибини промерзання ґрунту й здебільшого становить 1100мм. З метою економії коштів під час будівництва, можливе комбінування різних типів фундаменту: для спорудження будинків використовують стрічковий, а для прибудов, терас і мансард – стовпчастий або монолітний.</p>\r\n<p><strong>3. Які розчини необхідні для захисту поверхні будинку з дерева?</strong></p>\r\n<p>Ми покриваємо оциліндрований брус кількома шарами антисептика. Це сприяє надійному захисту деревини від негативного впливу зовнішніх чинників (вологи, морозу, сонячних променів), запобігає загорянню, гниттю й ураженню колод грибком і цвіллю.</p>\r\n<p>Перше покриття здійснюється одразу після виточення бруса. Це дозволяє уникнути посиніння й загнивання заготовок в процесі їх зберігання та перевезення. Перед монтажем бруса безпосередньо в стіни будинку, у ньому вирізають так звані «півчашки» (місця перетину колод). Зони вирізу втрачають захист і після монтажу заготовок добратися до них неможливо. Тому перед складанням будинку ці півчашки додатково обробляють антисептиком. Наостанок здійснюється лакування фасаду готового дому. Для того, щоб брус мав красивий вигляд, а лак рівномірно ліг на стіни, поверхню очищують від пилу й шліфують. В процесі шліфування знімається верхній шар деревини разом із антисептиком. Тому перед лакуванням стін брус ще раз обробляють.</p>\r\n<p>Сьогодні провідні виробники лакофарбової продукції для дерев’яних будинків включають антисептуючі речовини безпосередньо в ґрунтовку. Тому, якщо збираєтеся лакувати стіни одразу після шліфування зрубу, зверніть увагу на характеристики лакофарбової продукції. Якщо ґрунтовка містить антисептуючі речовини, можна не наносити додатковий шар антисептика перед лакуванням стін.</p>\r\n<p><strong>4. Скільки буде коштувати будинок з оциліндрованого бруса?</strong></p>\r\n<p>Вартість помешкання в компанії <strong>«ДеревоДім»</strong> залежить від таких факторів, як діаметр колоди, технологія складання, комплектація тощо. Детальніше ознайомитися з цінами дерев&#8217;яних будинків можна в розділі<strong> «Прайс».</strong></p>\r\n<p><strong>5. Який термін передбачає гарантія на дерев’яний будинок?</strong></p>\r\n<p>Ми пропонуємо своїм клієнтам п’ятирічну гарантію якості на готовий будинок з оциліндрованого бруса. Після завершення гарантійного терміну можливе укладання договору на сервісне обслуговування, яке включає проведення робіт по герметизації швів, законопачення та усадку стін, тощо.</p>\r\n<p>Компанія <strong>«ДеревоДім»</strong> виготовляє будинки з дерева виключно з найякісніших матеріалів, з урахуванням усіх вимог і використанням новітніх технологій виробництва. Завдяки цьому, наші будинки затишні, довговічні й мають привабливий естетичний вигляд.</p>', '2016-12-08', 'img/derevjanuy_budunok.jpg', 2),
(6, 'Внутрішні роботи в дерев''яному будинку', '<p>У вашому будинку повинно бути затишно, комфортно та зручно. Внутрішні оздоблювальні роботи, які виконують наші фахівці, включають в себе весь комплекс обробки дерев&#8217;яних приміщень.</p>\r\n<p>Сюди входять і підготовка стін до подальшого лакування, укладання підлог і так далі. Будь-які оздоблювальні роботи, які стосуються внутрішніх житлових приміщень вимагають самого ретельного і професійного підходу. Найчастіше, розцінки на такі види робіт, необґрунтовано завищені. Але ми, маючи великий досвід у подібних питаннях готові за прийнятними цінами надавати подібні послуги.</p>', '<h5>Етап виконання внутрішніх робіт в дерев&#8217;яному будинку передбачає:</h5>\r\n<ul>\r\n<li> шліфування стін;</li>\r\n<li> шліфування та фрезерування торців;</li>\r\n<li> влаштування підлог та перекриттів;</li>\r\n<li> розводку інженерних комунікацій;</li>\r\n<li> водопостачання та відведення, електропроводка, опалення;</li>\r\n<li> монтаж плінтусів, обналічки та розшивочних планок;</li>\r\n<li> монтаж сходових маршів;</li>\r\n<li> шліфування, циклювання та лакування дерев&#8217;яних поверхонь.</li></ul>\r\n<p class="text-center"><img itemprop="image" title="Внутрішні роботи в дерев''яному будинку" src="img/vnutrishni-roboti_1.jpg" alt="Внутрішні роботи в дерев''яному будинку" /></p>\r\n', '2016-12-08', 'img/derevjanuy_budunok.jpg', 3),
(7, 'Кошторис будівництва дерев''яного будинку', '<p>Після того, як проект майбутнього будинку (бані чи альтанки) погоджено з клієнтом, складається деталізований кошторис будівництва з переліком усіх видів робіт та матеріалів.</p>', '<p>Після того, як проект майбутнього будинку (бані чи альтанки) погоджено з клієнтом, складається деталізований кошторис будівництва з переліком усіх видів робіт та матеріалів. Компанія &#8220;ДеревоДім&#8221; володіє потужностями, що дозволяють здійснювати повний цикл виробництва &#8211; від заготовки лісоматеріалів і до здачі об&#8217;єкта &#8220;під ключ&#8221;. Тому на цьому етапі відбувається обговорення та уточнення &#8211; які саме роботи повинні бути виконані, які матеріали будуть використані, узгоджуються терміни будівництва, специфіка оплати тощо.</p>\r\n<p><img itemprop="image" title="Склад пиломатеріалів" src="img/koshtoris-budivnitstva_1.jpg" alt="Склад пиломатеріалів" /></p>\r\n<p>Клієнтам слід бути особливо пильними на цьому етапі та належним чином підготуватися, адже багато недобросовісних будівельників користуються необізнаністю людей із специфікою дерев&#8217;яного будівництва. Як свідчить практика, дуже часто будівельні фірми і окремі &#8220;майстри&#8221; приваблюють потенційних замовників обіцянками побудувати дерев&#8217;яний будинок за дуже невисокою ціною. Клієнт, погоджується, не уточнюючи деталей, і потім в процесі будівництва виявляється, що &#8220;невисока ціна&#8221; не включає в себе металочерепиці, системи для відведення дощових вод, снігозатримувачів, захисних та протипожежних покриттів, монтажу стель та підлог, розведення комунікацій та електрики, шліфування та торцювання коробки, герметизації швів, шумоізоляційних, гідро- і пароізоляційних матеріалів, проте в свою чергу містить такі неприємні сюрпризи, як неякісно підігнані стіни, надто звужені теплові замки, щілини між брусами (особливо плачевно коли ці щілини запінюють монтажною піною), глибокі поздовжні тріщини у брусах, через використання неякісної сировини, зависання брусів над дверима та вікнами внаслідок неправильного їх монтажу,тощо.</p>\r\n<p>Усунення всіх цих недоліків потребує значних вкладень, інколи співмірних із вже затраченою на будівництво сумою, а в окремих випадках повністю виправити їх взагалі неможливо. Для того, аби уникнути подібних непорозумінь, ми надаємо клієнту деталізований кошторис на будівництво, чітко прописуємо в договорі усі роботи, матеріали та їх вартість, терміни виконання, тощо.</p>', '2016-12-08', 'img/derevjanuy_budunok.jpg', 3),
(8, 'Монтаж перестінків в дерев’яному будинку', '<p>Оптимальним матеріалом для перестінків дерев&#8217;яного будинку являється брус (оциліндрований чи профільний, в залежності від конструкції будинку). Такий перестінок надійний, має хорошу звукоізоляцію, не порушує загальної естетики будинку, а також виступає додатковим ребром жорсткості для коробки будинку.</p>', '<p>Оптимальним матеріалом для перестінків дерев&#8217;яного будинку являється брус (оциліндрований чи профільний, в залежності від конструкції будинку). Такий перестінок надійний, має хорошу звукоізоляцію, не порушує загальної естетики будинку, а також виступає додатковим ребром жорсткості для коробки будинку.</p>\r\n<p>Проте, виникає цілий ряд ситуацій, коли використовувати для внутрішніх перегородок стіни з брусу недоцільно. У першу чергу це пов&#8217;язано з можливістю зекономити кошти та збільшити простір приміщень зрубу. Зазвичай для перестінків використовують дерев&#8217;яні перегородки каркасного типу або перегородки з гіпсокартону. Проте монтаж таких перестінків в дерев&#8217;яному будинку має свої тонкощі. Як відомо зруб дає усадку, у той же час розміри перегородки, залишаються без змін. У випадку ж, якщо будинок складений з оциліндрованого брусу, постає ще й питання, як уникнути щілин в місцях, де перегородка стикатиметься зі стіною будинку.</p>\r\n<p>Для того, аби уникнути зазорів між стіною дерев&#8217;яного будинку та внутрішніми перестінками, в стіні здійснюється вертикальний пропил, в який і вставляється лист гіпсокартону, фанери, OSB, або іншого матеріалу. До підлоги перегородка кріпиться стандартно, а до стелі, як і у випадку зі сходами і кроквами, застосовується ковзна система. При цьому, необхідно залишити компенсаційний зазор. Детальніше з особливостями монтажу перестінків ви можете ознайомитися на відео, приведеному нижче.<br /></p><p class="text-center">\r\n<iframe class="iframe_vid" src="https://www.youtube.com/embed/Tny91K2yA8M" width="645" height="484" style="border-width:0px"></iframe></p>', '2016-12-08', 'img/derevjanuy_budunok.jpg', 4),
(9, 'Проект дерев''яної лазні №1', '<p>Проект дерев''яної лазні, загальною площею - 85м<sup>2</sup>, стане прикрасою будь-якої заміської ділянки. Згідно проекту передбачено камінний зал, кухня-столова з аркою, санвузол, парна, вихід на криту терасу та технічне приміщення з окремим входом. Планування відповідає найвищим вимогам до комфорту і функціональності.</p>', '<p>Проект дерев''яної лазні, загальною площею - 85м<sup>2</sup>, стане прикрасою будь-якої заміської ділянки. Згідно проекту передбачено камінний зал, кухня-столова з аркою, санвузол, парна, вихід на криту терасу та технічне приміщення з окремим входом. Планування відповідає найвищим вимогам до комфорту і функціональності.</p>\r\n<p><strong>Конструктивні рішення </strong></p>\r\n<p>Несучі стіни та балки перекриття передбачено дерев''яними.</p>\r\n<p>Матеріал - сосновий брус діаметром 200 мм.</p>\r\n<p>Зовнішні двері та вікна - металопластикові з п''ятикамерними рамами та подвійними склопакетами.</p>\r\n<p>Внутрішні двері - соснові, столярні.</p>\r\n<p>Січення кроков 180Х60мм.</p>\r\n<p>Покрівельний матеріал - металочерепиця або бітумна черепиця.</p>\r\n<p><strong>Дерев''яну лазню можна замовити у різних комплектаціях. </strong></p>\r\n<p>Детальніше ознайомитись з особливостями кожної комплектації можна у розділі «<a href="" target="_blank">Прайс</a>».</p>\r\n<p class="text-center"><iframe src="https://www.youtube.com/embed/CkptkZ1_2NQ" width="645" height="484" style="border-width:0px"></iframe></p>', '2016-12-10', 'img/derevjanuy_budunok.jpg', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id_category` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name_category` varchar(255) NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id_category`, `name_category`) VALUES
(1, 'Новини'),
(2, 'Статті'),
(3, 'Технології'),
(4, 'Відео');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name_menu` varchar(255) NOT NULL,
  `text_menu` text NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id_menu`, `name_menu`, `text_menu`) VALUES
(1, 'Про компанію', '<h1 style="font-size: 30px;">Проектування і будівництво дерев&#8217;яних будинків «під ключ»</h1>\n<p>Компанія <strong>«ДеревоДім»</strong> займає провідні позиції на ринку будівництва дерев&#8217;яних будинків і бань з оциліндрованого брусу. Ми володіємо повним циклом виробництва, і здатні забезпечити всі етапи реалізації проекту &#8211; від створення ескізної документації до здачі будинків під ключ, гарантуючи максимально якісний кінцевий результат за прийнятними цінами.</p>\n<h5>Пропонуємо такі послуги:</h5>\n<h5>• проектування та будівництво котеджів, лазень з брусу;</h5>\n<h5>• виготовлення малих архітектурних форм: альтанок, пергол, криниць тощо;</h5>\n<h5>• дизайн інтер&#8217;єру та екстер&#8217;єру;</h5>\n<h5>• ландшафтний дизайн;</h5>\n<h5>• сервісне обслуговування будинків та бань із брусу;</h5>\n<h5>• тюнінг та реставрація дерев&#8217;яних зрубів;</h5>\n<h5>• реалізація будівельних матеріалів.</h5>\n<p>Якщо Ви мрієте про дім сповнений тепла і затишку, в якому комфортно відпочивати, проводити час з рідними та друзями, радіти кожній хвилині, життя &#8211; будинок з брусу стане для Вас ідеальним вибором. Вміст фітонцидів та смол в сосновій деревині зміцнює імунітет, а її здатність &#8220;дихати&#8221; створює особливий, ні з чим незрівнянний мікроклімат. М&#8217;який природний колір зрубу заспокоює нерви та зцілює душу. Пам&#8217;ятайте, стіни помешкання впливають на самопочуття людини не менше ніж харчування або фізичні вправи.<br />\n<strong>Зведений з дотриманням усіх технологій, дерев&#8217;яний будинок стане надійною фортецею для Вашої родини на довгі роки. </strong></p>\n<div class="thumbnail"><img itemprop="image" title="Інтер''єр дерев''яного будинку" src="img/015.jpg" alt="Інтер''єр дерев''яного будинку" /></div>\n<h2 class="text-center">Чому варто будувати з «ДеревоДім»</h2>\n<h5><strong>Власне виробництво.</strong></h5>\n<p>Ми володіємо лісозаготівельними та деревообробними потужностями у Тернопільській та Львівській областях із штатом 40 чоловік.</p>\n<h5><strong>Логістика.</strong></h5>\n<p>Наявність великогабаритного автотранспорту дозволяє нам вирішувати усі завдання з перевезення та монтажу домокомплектів у будь-який регіон України.</p>\n<h5><strong>Взаємовідносини з клієнтом відбуваються лише на підставі угоди.</strong></h5>\n<p>Ми відповідаємо за якість і терміни виконання робіт, і готові підтверджувати це юридично.</p>\n<h5><strong>Професіоналізм.</strong></h5>\n<p>Наша компанія не користується послугами сезонних робітників. У нас працюють п&#8217;ять бригад кваліфікованих будівельників, чий професійний рівень підтверджений десятками реалізованих об&#8217;єктів.</p>\n<h5><strong>Цінова політика.</strong></h5>\n<p>Ми працюємо без посередників, а тому можемо запропонувати адекватну ціну, не економлячи на якості. В нас завжди діє гнучка система сезонних знижок.</p>\n<h5><strong>Проектування та дизайн. </strong></h5>\n<p>Для нас кожен будинок &#8211; витвір мистецтва. Наші архітектори та інженери ретельно продумують усі планувальні та конструктивні рішення. Ми співпрацюємо з кращими дизайнерами, ведемо авторський нагляд в процесі реалізації проектів.</p>\n<h5><strong>Будівництво дерев&#8217;яних бань та будинків під ключ.</strong></h5>\n<p>Ми надаємо весь комплекс будівельних послуг. Підбираємо оптимальну комплектацію, в залежності від Ваших побажань. Здійснюємо гарантійне та постгарантійне обслуговування зрубів.</p>\n<h5><strong>«ДеревоДім» є дистриб&#8217;ютором усіх основних груп будматеріалів.</strong></h5>\n<p>Нашим замовникам ми пропонуємо лише перевірену досвідом продукцію за гуртовими цінами.</p>\n<h5><strong>Поєднання досвіду та інновацій.</strong></h5>\n<p>Наше підприємство займається виготовленням котеджів і бань з дерева понад десять років. Ми постійно відстежуємо нові тенденції в цій області. Впроваджуємо найсучасніші технології і використовуємо лише краще для будівництва дерев&#8217;яних будинків.</p>\n<h5><strong>Ми дорожимо своєю репутацією, тому якість наше кредо!</strong></h5>\n\n<div class="thumbnail"><img itemprop="image" src="img/014.jpg" alt="Інтер''єр дерев''яного будинку" /></div>\n\n<p>Якщо Ви збираєтеся будуватися, обов&#8217;язково відвідайте наш головний офіс в Тернополі, який є гордістю компанії <strong>«ДеревоДім»</strong>. Запрошуємо Вас на власні очі переконатися наскільки комфортним, зручним та сучасним може бути зруб, відчути на дотик магію дерева. Ми з радістю проведемо для Вас екскурсію тому що впевнені &#8211; після прогулянки Ви обов&#8217;язково зробите вибір на користь дерев&#8217;яного будинку.<strong>Нам немає чого приховувати, адже задоволені клієнти &#8211; наша найдієвіша реклама!</strong></p>\n<p>На сторінках нашого сайту, ми постаралися зібрати та донести базові знання, пояснення, приклади та поради у сфері дерев&#8217;яного домобудівництва. З нами Ви уникнете помилок та заощадите кошти, а збудований Вами дім справді стане втіленням Вашої мрії.</p>\n\n<div class="thumbnail"><img itemprop="image" src="img/13.jpg" alt="Інтер''єр дерев''яного будинку" /></div>\n'),
(3, 'Галерея', '<div id="galery-full">\r\n<div class="thumbnail"> <img title="Фасад дерев''яного будинку" src="/img/budynok-3/Location-999.jpg" alt="Фасад дерев''яного будинку"></div>\r\n<div class="thumbnail"> <img title="Камін в дерев''яному будинку" src="/img/budynok-3/002.jpg" alt="Камін в дерев''яному будинку"></div>\r\n</div>'),
(4, 'Ціни на будівництво', '<table class="table table-hover">\r\n<tbody>\r\n<tr>\r\n<td class="text-center success"><h4>Комплектація «База» - 140-180$ м<sup>2</sup></h4></td>\r\n</tr>\r\n<tr>\r\n<td>Ескізний план</td>\r\n</tr>\r\n<tr>\r\n<td>Підвалини</td>\r\n</tr>\r\n<tr>\r\n<td>Стіновий матеріал: брус оциліндрований сосновий</td>\r\n</tr>\r\n<tr>\r\n<td>Базовий антисептик</td>\r\n</tr>\r\n<tr>\r\n<td>Синтепоновий утеплювач</td>\r\n</tr>\r\n<tr>\r\n<td>Крокви</td>\r\n</tr>\r\n<tr>\r\n<td>Гідробар''єрна плівка</td>\r\n</tr>\r\n<tr>\r\n<td>Лати</td>\r\n</tr>\r\n<tr>\r\n<td>Контррейки</td>\r\n</tr>\r\n<tr>\r\n<td>Болти, цвяхи, шпильки, гайки, анкери</td>\r\n</tr>\r\n<tr>\r\n<td>Базове антисептування стінового матеріалу та кроков</td>\r\n</tr>\r\n<tr>\r\n<td>Базове антисептування підвалин</td>\r\n</tr>\r\n<tr>\r\n<td>Зарізання чашок та посадочних місць у брусах</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж підвалин</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж стінових конструкцій (коробки)</td>\r\n</tr>\r\n<tr>\r\n<td>Вирізка та вирівнювання дверних і віконних отворів</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж балок перекриття</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж кроков</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж гідробар''єрної плівки</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж лат</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж контррейок</td>\r\n</tr>\r\n<tr>\r\n<td>Підшивка звісів даху</td>\r\n</tr>\r\n<tr>\r\n<td class="text-center success"><h4>Комплектація «Стандарт» - 240-350$ м<sup>2</sup></h4></td>\r\n</tr>\r\n<tr>\r\n<td>Металочерепиця</td>\r\n</tr>\r\n<tr>\r\n<td>Планка металічна лобова</td>\r\n</tr>\r\n<tr>\r\n<td>Планка металічна фронтонна</td>\r\n</tr>\r\n<tr>\r\n<td>Планка металічна конькова</td>\r\n</tr>\r\n<tr>\r\n<td>Планка металічна капельник</td>\r\n</tr>\r\n<tr>\r\n<td>Дошка вітрова стругана</td>\r\n</tr>\r\n<tr>\r\n<td>Рейка для фіксації обсадних коробок</td>\r\n</tr>\r\n<tr>\r\n<td>Обсадні коробки для вікон і дверей</td>\r\n</tr>\r\n<tr>\r\n<td>Обналічка широка (зовнішня)</td>\r\n</tr>\r\n<tr>\r\n<td>Лак текстурний для видимих кроков</td>\r\n</tr>\r\n<tr>\r\n<td>Лак текстурний для піддашшя</td>\r\n</tr>\r\n<tr>\r\n<td>Лак текстурний для зовнішніх стін</td>\r\n</tr>\r\n<tr>\r\n<td>Лак текстурний для зовнішньої обналічки</td>\r\n</tr>\r\n<tr>\r\n<td>Грунт-антисептик для зовнішніх конструкцій</td>\r\n</tr>\r\n<tr>\r\n<td>Герметик для зовнішніх стінових швів</td>\r\n</tr>\r\n<tr>\r\n<td>Двері вхідні дерев''яні/металеві/металопластикові</td>\r\n</tr>\r\n<tr>\r\n<td>Вікна металопластикові/дерев''яні склопакети</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж металочерепиці</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж лобової металічної планки</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж фронтонної металічної планки</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж конькової металічної планки</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж металічної планки - капельника</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж вітрової дошки</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж обсадних віконних і дверних коробок</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж вхідних дверей</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж вікон</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж зовнішньої обналічки</td>\r\n</tr>\r\n<tr>\r\n<td>Шліфування зовнішніх стін</td>\r\n</tr>\r\n<tr>\r\n<td>Фрезерування торців зовнішніх стін</td>\r\n</tr>\r\n<tr>\r\n<td>Шліфування торців зовнішніх стін</td>\r\n</tr>\r\n<tr>\r\n<td>Покриття грунтом-антисептиком зовнішніх конструкцій</td>\r\n</tr>\r\n<tr>\r\n<td>Лакування видимих кроков - 2 шари + грунт</td>\r\n</tr>\r\n<tr>\r\n<td>Лакування піддашшя - 2 шари + грунт</td>\r\n</tr>\r\n<tr>\r\n<td>Лакування зовнішніх стін - 2 шари + грунт</td>\r\n</tr>\r\n<tr>\r\n<td>Лакування зовнішньої обналічки - 2 шари + грунт</td>\r\n</tr>\r\n<tr>\r\n<td>Герметизація зовнішніх стінових швів</td>\r\n</tr>\r\n<tr>\r\n<td class="text-center success"><h4>Комплектація «Преміум» - 350-500$ м<sup>2</sup></h4></td>\r\n</tr>\r\n<tr>\r\n<td>Мінеральна вата</td>\r\n</tr>\r\n<tr>\r\n<td>Рейка для фіксації мінеральної вати</td>\r\n</tr>\r\n<tr>\r\n<td>Паробар''єрна плівка</td>\r\n</tr>\r\n<tr>\r\n<td>Міжкімнатні двері</td>\r\n</tr>\r\n<tr>\r\n<td>Рейка для фіксації обсадних коробок</td>\r\n</tr>\r\n<tr>\r\n<td>Обсадні коробки для міжкімнатних дверей</td>\r\n</tr>\r\n<tr>\r\n<td>Обналічка вузька (внутрішня)</td>\r\n</tr>\r\n<tr>\r\n<td>Плінтус</td>\r\n</tr>\r\n<tr>\r\n<td>Розшивочна планка</td>\r\n</tr>\r\n<tr>\r\n<td>Підлога соснова</td>\r\n</tr>\r\n<tr>\r\n<td>Вагонка соснова</td>\r\n</tr>\r\n<tr>\r\n<td>Лак паркетний для підлоги</td>\r\n</tr>\r\n<tr>\r\n<td>Лак текстурний для внутрішніх стін</td>\r\n</tr>\r\n<tr>\r\n<td>Лак текстурний для стель</td>\r\n</tr>\r\n<tr>\r\n<td>Лак текстурний для внутрішньої обналічки</td>\r\n</tr>\r\n<tr>\r\n<td>Герметик</td>\r\n</tr>\r\n<tr>\r\n<td>Електрообладнання (гофра, кабелі, автомати, щиток)</td>\r\n</tr>\r\n<tr>\r\n<td>Труби пластикові для прокладки комунікацій</td>\r\n</tr>\r\n<tr>\r\n<td>Утеплення даху мінеральною ватою</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж паробар''єрної плівки</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж комунікацій з водопостачання</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж комунікацій з водовідведення</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж електропроводки за викл. розеток і вимикачів</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж підлоги</td>\r\n</tr>\r\n<tr>\r\n<td>Обшивка вагонкою стель</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж розшивочних планок</td>\r\n</tr>\r\n<tr>\r\n<td>Монтаж плінтусів</td>\r\n</tr>\r\n<tr>\r\n<td>Шліфування внутрішніх стін</td>\r\n</tr>\r\n<tr>\r\n<td>Фрезерування торців внутрішніх стін</td>\r\n</tr>\r\n<tr>\r\n<td>Шліфування торців внутрішніх стін</td>\r\n</tr>\r\n<tr>\r\n<td>Шліфування підлоги</td>\r\n</tr>\r\n<tr>\r\n<td>Лакування підлоги - 2 шари + грунт</td>\r\n</tr>\r\n<tr>\r\n<td>Лакування вагонки - 2 шари + грунт</td>\r\n</tr>\r\n<tr>\r\n<td>Лакування внутрішніх стін - 2 шари + грунт</td>\r\n</tr>\r\n<tr>\r\n<td>Лакування обналічки внутрішньої - 2 шари + грунт</td>\r\n</tr>\r\n<tr>\r\n<td>Герметизація внутрішніх стінових швів</td>\r\n</tr>\r\n<tr>\r\n<td>Прибирання</td>\r\n</tr>\r\n</tbody>\r\n</table>'),
(5, 'Контакти', '<table class="table table-hover">\r\n<tr class="success">\r\n<th colspan="2" class="text-center"><h4>Центральний офіс</h4></th>\r\n</tr>\r\n<tr>\r\n<td>Адреса</td>\r\n<td>Україна, м. Тернопіль, вул.Текстильна, 44</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Приймальня</td>\r\n<td>+38 (0352) 55-02-77 (тел./факс)</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Електронна пошта</td>\r\n<td>derevodim@gmail.com</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Сайт</td>\r\n<td>derevodim.com.ua</td>\r\n</tr>\r\n\r\n<tr class="success">\r\n<th colspan="2" class="text-center"><h4>Директор: Якимець Роман Володимирович</h4></th>\r\n</tr>\r\n\r\n<tr>\r\n<td>Адреса</td>\r\n<td>Україна, м. Тернопіль, вул.Текстильна, 44</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Електронна пошта</td>\r\n<td>derevodim@gmail.com</td>\r\n</tr>\r\n\r\n<tr class="success">\r\n<th colspan="2" class="text-center"><h4>Склад пиломатеріалів</h4></th>\r\n</tr>\r\n\r\n<tr>\r\n<td>Адреса</td>\r\n<td>Україна, м. Тернопіль, вул.Текстильна, 44</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Телефон</td>\r\n<td>+38 (097) 934-34-02</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Електронна пошта</td>\r\n<td>derevodim@gmail.com</td>\r\n</tr>\r\n\r\n<tr class="success">\r\n<th colspan="2" class="text-center"><h4>Склад сухої продукції</h4></th>\r\n</tr>\r\n\r\n<tr>\r\n<td>Адреса</td>\r\n<td>Україна, м. Тернопіль, вул.Текстильна, 30-А</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Телефон</td>\r\n<td>+38 (097) 841-58-12</td>\r\n</tr>\r\n<tr>\r\n<td>Електронна пошта</td>\r\n<td>derevodim@gmail.com</td>\r\n</tr>\r\n\r\n<tr class="success">\r\n<th colspan="2" class="text-center"><h4>Відділ з продажу</h4></th>\r\n</tr>\r\n\r\n<tr>\r\n<td>Адреса</td>\r\n<td>Україна, м. Тернопіль, вул.Текстильна, 44</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Телефон</td>\r\n<td>+38 (0352) 55-02-77</td>\r\n</tr>\r\n\r\n<tr>\r\n<td></td>\r\n<td>+38 (067) 67-97-928</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Електронна пошта</td>\r\n<td>derevodim@gmail.com</td>\r\n</tr>\r\n</table>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
