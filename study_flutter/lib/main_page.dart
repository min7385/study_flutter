import 'package:flutter/material.dart';

// CamelCase(낙타형)
// snake_case(뱀형)
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int count = 10;
  String _text = '';
  final _textController = TextEditingController();  // class 내부에서 컨트롤러 생성

  // 메모리 관리
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('카운트'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // main 방항 정렬
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '숫자',
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
              Text(
                '$count',
                style: TextStyle(color: Colors.red, fontSize: 70),
              ),
              ElevatedButton(
                onPressed: () {
                  print('ElevatedButton');
                },
                child: Text('ElevatedButton'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('TextButton'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('OutlinedButton'),
              ),
              Row(
                children: [
                  // 자식 위젯이 남은 영역을 자동으로 채우도록 하는 위젯
                  Expanded(
                    flex: 3,
                    // 생성한 컨트롤러를 TextField 와 연결
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: '글자',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (text) {
                        _text = text;
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        print(_textController.text);
                        
                        // 화면 갱신
                        setState(() {
                          
                        });
                      },
                      child: Text('login'),
                    ),
                  ),
                ],
              ),
              Text(_textController.text),
              // 인터넷상의 사진 가져오기
              Image.network(
                'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2Fdata28%2F2007%2F9%2F6%2F12%2F%25B9%25D9%25B4%25D9_1004gire.jpg&type=sc960_832',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 30,
              ),
              // 높이와 너비만을 가지는 위젯으로, 순수하게 공간을 확보하기 위한 용도로 사용한다.
              Container(
                height: 30,
              ),
              Container(
                color: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/다운로드.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 화면 갱신
          setState(() {
            count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
