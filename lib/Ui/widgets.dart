import 'package:flutter/cupertino.dart';

class TabCard extends StatelessWidget {
  final title;
  final color;
  final subTitle;
  final height;
  final image;
  final TextStyle textStyle;
  const TabCard(
      {Key key,
      @required this.title,
      this.height = 200.0,
      @required this.color,
      this.textStyle,
      this.subTitle,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: this.height,
          width: double.infinity,
          decoration: BoxDecoration(
            color: this.color,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Text(
              this.title,
              textAlign: TextAlign.left,
              style: this.textStyle,
            ),
          ),
        ),
      ],
    );
  }
}
