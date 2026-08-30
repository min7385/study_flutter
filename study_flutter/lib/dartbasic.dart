void main(){
  // 1. 데이터 타입
  int num1 = 10;
  double num2 = 3.0;
  String str = 'hello';
  bool isTrue = true;
  num num3 = 10;
  num num4 = 10.0;

  print(num1 is int); // true
  print(num2 is int); // false

  // type 확인
  print(num1.runtimeType);

  // 2. type 추론
  // 컴파일러가 코드를 해석할 때, 명시적인 타입 선언이 없어도,
  // 초기값이나 맥락을 바탕으로 변수나 함수의 타입을 자동으로 판단하여 부여하는 기능
  var i = 10;         // int
  var d = 19.2;       // double
  var str2 = 'hello'; // string

  // var와 비슷하나 특별한 경우가 아니면 사용하지 않는다.
  // var는 컴파일 타임에 타입을 추론하고, dynamic은 런타임에 타입을 추론한다.
  dynamic a = 10;
  dynamic b = 10.0;

  // 3. 상수: 값을 할당한 후 변경할 수 없는 변수
  // final: 런타임에 값이 결정된다.
  final String name = '준석';

  // const: 컴파일 시점에 이미 값이 정해져야 한다.
  const int age = 10;

  // 4. Null Safety
  // int age2 = null; 불가능
  int? age2; // nullable

}