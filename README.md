## Flutter CustomPaint Demo

This Flutter project demonstrates the usage of different paint commands in Flutter's CustomPaint widget. CustomPaint allows you to create custom graphics and animations by defining a custom painter.

### Getting Started

Follow the steps below to get started with this project:

1. Ensure that you have Flutter installed on your machine. For installation instructions, refer to the official Flutter documentation: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

2. Clone this repository to your local machine using the following command:

git clone https://github.com/KasunSudharaka/Custom-Painter

3. Change your current directory to the project directory:

cd Custom-Painter

4. Fetch the dependencies by running the following command:

flutter pub get

5. Connect your device or start an emulator, then run the app using the following command:

flutter run

### Overview

The main purpose of this project is to demonstrate the various paint commands available in Flutter's CustomPaint widget. The app displays a canvas where you can draw different shapes and patterns by utilizing the custom painter.

The custom painter is defined in the `custom_painter.dart` file. It implements the `CustomPainter` class and overrides the `paint` and `shouldRepaint` methods.

#### Paint Commands

1. **drawLine**: Demonstrates how to draw a straight line on the canvas.

2. **drawRect**: Demonstrates how to draw a rectangle on the canvas.

3. **drawCircle**: Demonstrates how to draw a circle on the canvas.

4. **drawPath**: Demonstrates how to draw a custom path on the canvas.

5. **drawArc**: Demonstrates how to draw an arc on the canvas.

6. **drawOval**: Demonstrates how to draw an oval on the canvas.

7. **drawPoints**: Demonstrates how to draw points on the canvas.

![1686436731981 (3)](https://github.com/KasunSudharaka/Custom-Painter/assets/38934215/b630a8e5-ff93-4add-95e1-3e4c2bdbcad2)
![1686436731876 (1)](https://github.com/KasunSudharaka/Custom-Painter/assets/38934215/dc4d0612-9479-44f7-a377-1ee8fe4c7768)
![1686436731927 (1)](https://github.com/KasunSudharaka/Custom-Painter/assets/38934215/1271d3a0-f2fe-47ac-8cda-b8180e19044f)
![1686436731822 (1)](https://github.com/KasunSudharaka/Custom-Painter/assets/38934215/6b04d1fa-d47e-4b45-9f8b-bda57a6cd0dd)
![1686436731772 (1)](https://github.com/KasunSudharaka/Custom-Painter/assets/38934215/8051d6c7-fb55-467d-8128-797ac0063411)
![1686436731724 (1)](https://github.com/KasunSudharaka/Custom-Painter/assets/38934215/708455f4-0523-4958-b8d3-368ac7f3122c)
![1686436731673 (1)](https://github.com/KasunSudharaka/Custom-Painter/assets/38934215/961c0ed6-052b-4e92-8b30-3cd850c36c9e)


Each paint command is implemented as a separate function in the `custom_painter.dart` file. You can explore and modify these functions to understand how to use different paint commands.

### Resources

The following resources provide more information about Flutter and the concepts used in this project:

- [Flutter Documentation](https://flutter.dev/docs)
- [CustomPaint class](https://api.flutter.dev/flutter/rendering/CustomPaint-class.html)
- [CustomPainter class](https://api.flutter.dev/flutter/rendering/CustomPainter-class.html)

Happy Coding :)
