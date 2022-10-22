import 'package:flutter/material.dart';

// void main() => runApp(const FaQApp());
// void main() => runApp(const AppBarApp());
// void main() => runApp(const CallApp());
// void main() => runApp(const Call2App());
void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Person> persons = <Person>[
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워.."),
      Person("마이고미피셜 제공", "(단독) 사람이 모기한테 물리면 간지러워..")
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: const [
            Icon(Icons.settings, color: Colors.pink ,size: 32),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/200"),
                backgroundColor: Colors.black,
                // child: Icon(Icons.person),
              ),
            ),
          ],
          shadowColor: Colors.transparent,
          centerTitle: false,
          title: const Text(
            "마이고미피셜",
            style: TextStyle(color: Colors.pink, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: persons.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(persons[index].name),
              subtitle: Text(
                persons[index].number,
              ),
              trailing: const CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/210"),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) => const Divider(height: 0),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.heart_broken_rounded), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
          ],
          selectedItemColor: Colors.pink,
          // selectedLabelStyle: TextStyle(b),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          backgroundColor: Colors.pink,
          child: Icon(Icons.note_alt_outlined),
        ),
        // floatingActionButton: FloatingActionButton.extended(
        //   onPressed: () {
        //     // Add your onPressed code here!
        //   },
        //   label: const Text('지금 바로 예약하기'),
        //   backgroundColor: Colors.pink,
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}

class Call2App extends StatelessWidget {
  const Call2App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          centerTitle: false,
          title: const Text(
            "연락처",
            style: TextStyle(color: Colors.black87, fontSize: 18),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://picsum.photos/200"),
                    radius: 64,
                  ),
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "이마이고미",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Text("강사")
                ],
              ),
            ),
            const ListTile(
                title: Text("이마이고미"),
                subtitle: Text("010-1234-1234"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://picsum.photos/200"),
                  backgroundColor: Colors.black,
                  // child: Icon(Icons.person),
                )),
            const ListTile(
                title: Text("문의하기"),
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.content_copy_sharp),
                )),
            const ListTile(
                title: Text("우리집 위치 설정"),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.location_city_sharp),
                )),
            const ListTile(
                title: Text("구독 설정 변경"),
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.add_card),
                )),
            const ListTile(
                title: Text("알림 설정"),
                leading: CircleAvatar(
                  backgroundColor: Colors.black54,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.alarm),
                )),
            const ListTile(
                title: Text("로그아웃"),
                subtitle: Text("앱에서 완전히 로그아웃 합니다"),
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.door_back_door_outlined),
                )),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "연락처"),
            BottomNavigationBarItem(icon: Icon(Icons.block), label: "차단"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "세팅"),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          child: Icon(Icons.add_card),
        ),
      ),
    );
  }
}

class Person2 {
  String title;
  Icon icon;
  String contents;

  Person2(this.title, this.icon, this.contents);
}

class CallApp extends StatelessWidget {
  const CallApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Person> persons = <Person>[
      Person("고미정", "010-1234-1234"),
      Person("이마이고미", "010-1234-1234"),
      Person("유아인", "010-1234-1234"),
      Person("송중기", "010-1234-1234"),
      Person("현빈", "010-1234-1234"),
      Person("손예진", "010-1234-1234"),
      Person("공효진", "010-1234-1234"),
      Person("이효리", "010-1234-1234"),
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            shadowColor: Colors.transparent,
            centerTitle: false,
            backgroundColor: Colors.white,
            title: const Text(
              "연락처",
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: persons.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(persons[index].name),
                subtitle: Text(persons[index].number),
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage("https://picsum.photos/200"),
                  backgroundColor: Colors.black,
                  // child: Icon(Icons.person),
                ),
                trailing: const Icon(Icons.call),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(height: 0),
          )),
    );
  }
}

class Person {
  String name;
  String number;

  Person(this.name, this.number);
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.white,
          actions: [Icon(Icons.settings, color: Colors.pink), Icon(Icons.settings, color: Colors.pink), Icon(Icons.settings, color: Colors.pink)],
          shadowColor: Colors.transparent,
          title: const Text(
            "마이고미피셜",
            style: TextStyle(color: Colors.pink, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class FaQApp extends StatelessWidget {
  const FaQApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Faq> faqs = <Faq>[
      Faq("공지사항", "반갑습니다 여러분"),
      Faq("공지사항", "반갑습니다 여러분"),
      Faq("공지사항", "반갑습니다 여러분"),
      Faq("공지사항", "반갑습니다 여러분"),
      Faq("공지사항", "반갑습니다 여러분"),
      Faq("공지사항", "반갑습니다 여러분"),
      Faq("공지사항", "반갑습니다 여러분"),
      Faq("공지사항", "반갑습니다 여러분"),
      Faq("공지사항", "반갑습니다 여러분"),
      Faq("공지사항", "반갑습니다 여러분"),
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(backgroundColor: Colors.black54, titleTextStyle: const TextStyle(color: Colors.black87), shadowColor: Colors.transparent, centerTitle: true, title: const Text("비밀게시판")),
          body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: faqs.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(faqs[index].title),
                subtitle: Text(
                  faqs[index].content,
                  style: const TextStyle(color: Colors.green, fontSize: 12, fontWeight: FontWeight.bold),
                ),
                leading: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.announcement),
                ),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(height: 0),
          )),
    );
  }
}

class Faq {
  String title;
  String content;

  Faq(this.title, this.content);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("재밌겠다"),
        ),
        body: ListView(
          children: [Text("오늘 수업도 재밌을 것 같아")],
        ),
      ),
    );
  }
}
