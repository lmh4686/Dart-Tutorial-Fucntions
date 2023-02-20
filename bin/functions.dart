void main(List<String> arguments) {
  //Function
  returnInt(a, b, c) {
    return a + b + c;
  }

  print(returnInt('a', 'b', 'c'));
  print(returnInt(3, 5, 6));

  //TYPE SAFE FUNCTIONS
  String specifyTypes(int a, int b, String c) {
    return 'ff';
  }

  int optionalParams(int a, double v, [String? greeting]) {
    return 3;
  }

  //Wrap in {} to force type name of parameter on call
  bool namedOptionalParams({int? x, double? y, String greeting = 'hi'}) {
    print(greeting);
    return true;
  }

  namedOptionalParams(x: 3);
  namedOptionalParams(x: 3, greeting: 'hi');
  namedOptionalParams(greeting: 'hi');
  namedOptionalParams(greeting: 'ccc');

  double mixedParams(int positional, {required int x, required double y, String? greeting}) {
    return 3.3;
  }

  //Higher order functions
  //Return function that accepts int, return int and will be called twice
  //f is the name of 'int Function(int)' and it's a parameter.
  int Function(int) twice(int Function(int) f) {
    return (int x) {
      return f(f(x));
    };
  }

  final twicePlusFive = twice((x) => x + 5);
  final result = twicePlusFive(3);
  print(result);
}