import 'package:numdart/numdart.dart' as nd;

void main(List<String> arguments) {
  print(nd.extraction(
      [0.7, 0.8], [1.2, 1.7, 19])); // out: Array [-0.5, -0.8999999999999999]
  print(nd.sqrtArray([0.2], [0.1])); // out: Array [0.4472135954999579]
  print(nd.arange(1, 10, 2)); // out: Array [1, 3, 5, 7, 9]

  // Reshape Method:
  nd.Array newArray = nd.arange(0, 40, 5).reshape([4, 2]);
  print(newArray); // out: Array [[0, 5, 10, 15], [20, 25, 30, 35]]
  print(nd.sin([
    nd.pi,
    0.5,
    7.8,
    6.9
  ])); // Array [1.2246467991473532e-16, 0.479425538604203, 0.998543345374605, 0.5784397643882001]

  print(nd.arround([0.7, 1.2, 17, 23, 253],
      decimal: 1)); // out: Array [0.0, 0.0, 20.0, 20.0, 250.0]

  print(nd.linspace(0, 15, 3)); // out: Array [0.0, 5.0, 10.0, 15.0]

  print(nd.array([0, 1, 2, 3, 4, 5, 6])); // out: Array [0, 1, 2, 3, 4, 5, 6]

  print(nd.arround([0, 5, 7, 12, 0.8, 33, 7.8],
      decimal: 1)); // out: Array [0.0, 10.0, 10.0, 10.0, 0.0, 30.0, 10.0]

  print(nd.hypot(3, 4)); // out: 5.0
}
