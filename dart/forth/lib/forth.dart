import 'dart:core';

class Forth {
  List<int> stack = [];

  Map<String, String> variables = {};

  void evaluate(String line) {
    try {
      final list = line.split(' ');
      int savingVar = 0;
      String varBeingSaved = "";
      for (var t in list) {
        final text = t.toUpperCase();
        if ((text == ':') | (text == ';')) {
          savingVar = text == ':' ? ++savingVar : 0;
          continue;
        }
        if (savingVar == 1) {
          if (!text.startsWith(RegExp(r'[A-Z]')))
            throw Exception('Invalid definition');
          varBeingSaved = text;
          savingVar++;
          continue;
        }
        if (savingVar > 1) {
          _declare_var(varBeingSaved, text);
          continue;
        }
        _operate(text);
      }
    } catch (e) {
      throw e;
    }
  }

  void _declare_var(String key, String t) {
    final value = t + " ";
    final predef = variables[key];
    if (variables.containsKey(value)) {
      final existingKey = variables[value] ?? value;
      variables[key] = predef == null ? value : predef + existingKey;
      return;
    }
    variables[key] = predef == null ? value : predef + value;
  }

  void _read_var(String t) {
    final knownVars = variables[t]?.toString().split(" ") ?? <String>[];
    for (var v in knownVars) {
      _operate(v);
    }
  }

  void _operate(String t) {
    final regex = RegExp(r'^-?[0-9]+$');
    if (regex.hasMatch(t)) {
      stack.add(int.parse(t));
      return;
    }
    if (variables.containsKey(t)) {
      _read_var(t);
      return;
    }
    switch (t) {
      case 'DUP':
        _dup();
        break;
      case 'DROP':
        _drop();
        break;
      case 'SWAP':
        _swap();
        break;
      case 'OVER':
        _over();
        break;
      case '+':
        _sum();
        break;
      case '-':
        _minus();
        break;
      case '*':
        _multiply();
        break;
      case '/':
        _divide();
        break;
      default:
        throw Exception('Unknown command');
    }
  }

  void _dup() {
    if (stack.length == 0) throw Exception('Stack empty');
    stack.add(stack.last);
  }

  void _drop() {
    if (stack.length == 0) throw Exception('Stack empty');
    stack.removeLast();
  }

  void _swap() {
    if (stack.length < 2) throw Exception('Stack empty');
    int elem = stack.last;
    stack.last = stack[stack.length - 2];
    stack[stack.length - 2] = elem;
  }

  void _over() {
    if (stack.length < 2) throw Exception('Stack empty');
    stack.add(stack[stack.length - 2]);
  }

  void _sum() {
    if (stack.length < 2) throw Exception('Stack empty');
    final elem1 = stack.removeAt(stack.length - 2);
    final elem2 = stack.removeAt(stack.length - 1);
    stack.add(elem1 + elem2);
  }

  void _minus() {
    if (stack.length < 2) throw Exception('Stack empty');
    final elem1 = stack.removeAt(stack.length - 2);
    final elem2 = stack.removeAt(stack.length - 1);
    stack.add(elem1 - elem2);
  }

  void _multiply() {
    if (stack.length < 2) throw Exception('Stack empty');
    final elem1 = stack.removeAt(stack.length - 2);
    final elem2 = stack.removeAt(stack.length - 1);
    stack.add(elem1 * elem2);
  }

  void _divide() {
    if (stack.length < 2) throw Exception('Stack empty');
    final elem1 = stack.removeAt(stack.length - 2);
    final elem2 = stack.removeAt(stack.length - 1);
    if (elem2 == 0) throw Exception('Division by zero');
    stack.add(elem1 ~/ elem2);
  }
}
