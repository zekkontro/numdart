

# NumDart Package
![enter image description here](https://github.com/zekkontro/numdart/blob/main/logo.png?raw=true)

## Description
  
The NumDart package allows you to do advanced math with the dart language. The project is the dart language edition of the NumPy package.

## Example

    import 'package:numdart/numdart.dart' as nd;

  

	void  main(List<String> arguments) {
	print(nd.extraction(
	[0.7,  0.8], [1.2,  1.7,  19]));  // out: Array [-0.5, -0.8999999999999999]

	print(nd.sqrtArray([0.2], [0.1]));  // out: Array [0.4472135954999579]

	print(nd.arange(1,  10,  2));  // out: Array [1, 3, 5, 7, 9]

	  

	// Reshape Method:

	nd.Array newArray = nd.arange(0,  40,  5).reshape([4,  2]); // out: [[0, 5, 10, 15], [20, 25, 30, 35]]

	print(newArray);  // out: Array [[0, 5, 10, 15], [20, 25, 30, 35]]

	print(nd.sin([
	nd.pi,
	0.5,
	7.8,
	6.9]));  // Array [1.2246467991473532e-16, 0.479425538604203, 0.998543345374605, 0.5784397643882001]

	  

	print(nd.arround([0.7,  1.2,  17,  23,  253], sdecimal:  1));  // out: Array [0.0, 0.0, 20.0, 20.0, 250.0]

	print(nd.linspace(0,  15,  3));  // out: Array [0.0, 5.0, 10.0, 15.0]

	print(nd.array([0,  1,  2,  3,  4,  5,  6]));  // out: Array [0, 1, 2, 3, 4, 5, 6]

	print(nd.arround([0,  5,  7,  12,  0.8,  33,  7.8],

	decimal:  1));  // out: Array [0.0, 10.0, 10.0, 10.0, 0.0, 30.0, 10.0]	  

	print(nd.hypot(3,  4));  // out: 5.0
	}

# How to use?
	
	absolute() => Calculate the absolute value element-wise.
	addition() => Sum the elements from the two given lists
	arange() => Creates a list according to the number of steps between the two numbers given.
	arccos() => Trigonometric inverse cosine, element-wise.
	arcsin() => Inverse sine, element-wise.
	arctan() => Trigonometric inverse tangent, element-wise.
	array() => Return array class
	arround() => Trigonometric inverse tangent, element-wise.
	cos() => Cosine element-wise.
	degress() => Convert angles from radians to degrees.
	division() => Divise the elements from the two given lists
	exp() => Calculate the exponential of all elements in the input array.
	extraction() => Extract items from two given lists
	hypot() => Given the “legs” of a right triangle, return its hypotenuse.
	linspace() => the given start divides the stop points by the number of steps
	mean() => finds the average of the given list
	multiplication() => Multiply the items in the two given lists
	ones() => Creates a list full of given number of ones
	pow() => First array elements raised to powers from second array, element-wise.
	radians() => Convert angles from degrees to radians.
    sin() => Trigonometric sine, element-wise.
    sqrt() => Return the non-negative square-root of an array, element-wise.
    sum() => Sum of array elements over a given axis.
    tan() => Compute tangent element-wise.
    unwrap() => Unwrap by changing deltas between values to 2*pi complement.
    zeros() => Creates a list full of given number of zeros

#  Author
#### Mustafa Berat Kurt
#### [Github - Zekkontro](https://github.com/zekkontro)    
#### [Instagram - brtwlf](https://www.instagram.com/brtwlf/saved/)

# License

MIT License

Copyright (c) 2021 Berat Kurt

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
