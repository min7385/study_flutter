void main() {
  // 1. dart에서 제공하는 특수한 연산자
  String? str;

  // 셋 모두 동일한 코드
  // if (str == null){
  //   str = 'Hello';
  // }

  str ??= 'Hello';

  // ??(Null coalescing): 왼쪽 값이 null이면 오른쪽 값을 할당
  str = str ?? 'Hello';

  // 2. type casting
  num i = 10;
  int ii = i as int;  // down casting
}