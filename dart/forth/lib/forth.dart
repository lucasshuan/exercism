import 'dart:core';

class Forth {
  List<int> stack = [];

  Map<String, String> definitions = {};

  String newDefinition = "";

  void evaluate(String line) {
    final list = line.split(' ');
    int savingDef = 0;
    String defBeingSaved = "";
    for (var t in list) {
      final text = t.toUpperCase();
      if (text == ':') {
        savingDef++;
        continue;
      }
      if (text == ';') {
        savingDef = 0;
        definitions[defBeingSaved] = newDefinition;
        defBeingSaved = "";
        newDefinition = "";
        continue;
      }
      if (savingDef == 1) {
        if (int.tryParse(text) != null) throw Exception('Invalid definition');
        defBeingSaved = text;
        savingDef++;
        continue;
      }
      if (savingDef > 1) {
        _makeDefinition(defBeingSaved, text);
        continue;
      }
      _operate(text);
    }
  }

  void _makeDefinition(String key, String value) {
    if (newDefinition != "") newDefinition += " ";
    if (definitions[value] != null) {
      newDefinition += (definitions[value] ?? "");
      return;
    }
    newDefinition += value;
  }

  void _operate(String t) {
    final regex = RegExp(r'^-?[0-9]+$');
    if (regex.hasMatch(t)) {
      stack.add(int.parse(t));
      return;
    }
    if (definitions[t] != null) {
      final knownDefs = definitions[t]?.toString().split(" ") ?? <String>[];
      for (var v in knownDefs) {
        _operate(v);
      }
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
