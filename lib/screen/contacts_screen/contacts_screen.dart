// import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:soccer_shop_web/screen/components/side_bar.dart';
import '../components/app_bar.dart';

class ContactsScreen extends StatefulWidget {
  ContactsScreen({Key? key}) : super(key: key);
  static const routName = '/contact';

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  var controllerOne = TextEditingController();

  var controllerTwo = TextEditingController();

  var controllerThree = TextEditingController();

  var controllerFour = TextEditingController();

  var focusOne = FocusNode();

  var focusTwo = FocusNode();

  var focusThree = FocusNode();

  var focusFour = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/1387971.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            CustomAppBar(witgets: SizedBox(),),
            Container(
              height: size.height / 1.3,
              child: ListView(
                addSemanticIndexes: false,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Text(
                          ' Контактна форма'.toUpperCase(),
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              backgroundColor: Colors.black,
                              color: Colors.white),
                        ),
                      ),
                      Scrollbar(
                        isAlwaysShown: false,
                        child: Scrollbar(
                          hoverThickness: 0.1,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                SideBar(),
                                Container(
                                  height: size.height / 1.5,
                                  width: size.width / 1.6,
                                  child: Scrollbar(
                                    hoverThickness: 0.1,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.85),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: TextField(
                                              controller: controllerOne,
                                              focusNode: focusOne,
                                              onEditingComplete: () {
                                                focusOne.nextFocus();
                                              },
                                              cursorColor: Colors.black,
                                              keyboardType: TextInputType.name,
                                              decoration: InputDecoration(
                                                hintText: '''Ваше ім'я''',
                                                border: OutlineInputBorder(),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                disabledBorder:
                                                    OutlineInputBorder(),
                                              ),
                                            ),
                                          ), //textfield2 name
                                          Container(
                                            margin: EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.85),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: TextField(
                                              controller: controllerTwo,
                                              focusNode: focusTwo,
                                              onEditingComplete: () {
                                                focusTwo.nextFocus();
                                              },
                                              cursorColor: Colors.black,
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              decoration: InputDecoration(
                                                hintText: 'Email@com',
                                                border: OutlineInputBorder(),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                disabledBorder:
                                                    OutlineInputBorder(),
                                              ),
                                            ),
                                          ), //textfield1 email
                                          Container(
                                            margin: EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.85),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: TextField(
                                              controller: controllerThree,
                                              focusNode: focusThree,
                                              onEditingComplete: () {
                                                focusThree.nextFocus();
                                              },
                                              cursorColor: Colors.black,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                hintText: '''Номер телефона''',
                                                border: OutlineInputBorder(),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                disabledBorder:
                                                    OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.all(20),
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                                color: Colors.white
                                                    .withOpacity(0.85),
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: TextField(
                                              cursorColor: Colors.black,
                                              controller: controllerFour,
                                              focusNode: focusFour,
                                              minLines: 1,
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Напиши відгук або побажання',
                                                focusedBorder:
                                                    OutlineInputBorder(),
                                                disabledBorder:
                                                    OutlineInputBorder(),
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.black)),
                                              ),
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 25),
                                              maxLines: 10,
                                              maxLength: 1000,
                                            ),
                                          ), //textfield2
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  var value1 = '$controllerOne';
                                                  var value2 = '$controllerTwo';
                                                  var value3 =
                                                      '$controllerThree';
                                                  var value4 =
                                                      '$controllerFour';
                                                  if (value1.isEmpty) {
                                                    controllerOne.text =
                                                        'Error';
                                                  } else {
                                                    controllerOne.clear();
                                                  }
                                                  if (value2.isEmpty) {
                                                  } else {
                                                    controllerTwo.clear();
                                                  }
                                                  if (value3.isEmpty) {
                                                  } else {
                                                    controllerThree.clear();
                                                  }
                                                  if (value4.isEmpty) {
                                                  } else {
                                                    controllerFour.clear();
                                                  }
                                                },
                                                child: Text('Відправити'),
                                              ),
                                              SizedBox(
                                                width: 100,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Padding(
//                                       padding: const EdgeInsets.only(left: 25),
//                                       child: Text('Кто мы?', style: TextStyle(color: Colors.white,fontSize: 25),),
//                                     ),
//                                     SizedBox(height: 20),
//                                     Text('''Наш адрес сайта: http://a97045vg.beget.tech. В нас є мережа спорт магазині під назвою Soccer shop, понад 3 магазина.
// На даний момент сайт працює в тестовому режимі. Також будь які побажання
// або відгуки можна залити в контактній форма''', style: TextStyle(color: Colors.white,fontSize: 25),),
//                                     Text(''' ''', style: TextStyle(color: Colors.white,fontSize: 25,),),

//                           child: Text(
//                             '''
//
//                             Кто мы
// Предлагаемый текст: Наш адрес сайта: http:///a97045vg.beget.tech.
//
// Комментарии
// Предлагаемый текст: Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.
//
// Анонимизированная строка создаваемая из вашего адреса email («хеш») может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.
//
// Медиафайлы
// Предлагаемый текст: Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.
//
// Куки
// Предлагаемый текст: Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.
//
// Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.
//
// При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана — год. Если вы выберете возможность «Запомнить меня», данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.
//
// При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.
//
// Встраиваемое содержимое других вебсайтов
// Предлагаемый текст: Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.
//
// Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.
//
// С кем мы делимся вашими данными
// Предлагаемый текст: Если вы запросите сброс пароля, ваш IP будет указан в email-сообщении о сбросе.
//
// Как долго мы храним ваши данные
// Предлагаемый текст: Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.
//
// Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.
//
// Какие у вас права на ваши данные
// Предлагаемый текст: При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.
//
// Куда мы отправляем ваши данные
// Предлагаемый текст: Комментарии пользователей могут проверяться автоматическим сервисом определения спама.''',
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20),
//                           ),
