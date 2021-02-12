import 'package:flutter/material.dart';

///This widget places its widgets in the same way that [Flex] does.
///Based on the orientation of the screen it will place widgets in vertical or horizontal axis
///In other words, widgets will behave like [Column] or a [Row] based on the orientation.
///When you declare two or more [ResponsiveAxis] widgets inside the [SimpleResponsiveGrid]
///They will be placed next to each other in the portrait mode and below each other in landscape mode
class SimpleResponsiveGrid extends StatelessWidget {
  final EdgeInsets pagePadding;
  final List<ResponsiveAxis> children;
  final Axis axisDirection;

  const SimpleResponsiveGrid({
    Key key,
    this.pagePadding,
    @required this.children,
    this.axisDirection,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return ListView(
      padding: pagePadding,
      shrinkWrap: true,
      scrollDirection: isPortrait ? Axis.vertical : Axis.horizontal,
      children: [
        Flex(
          mainAxisSize: MainAxisSize.min,
          direction: isPortrait ? Axis.horizontal : Axis.vertical,
          children: children,
        ),
      ],
    );
  }
}

///You can only declare [ResponsiveAxis] widgets inside the [SimpleResponsiveGrid]
///By adding multiple [ResponsiveAxis] widgets inside the [SimpleResponsiveGrid] you are adding more axis in your solution,
///or in other words, adding more [Column] or [Row] widgets depending on the orientation.
class ResponsiveAxis extends StatelessWidget {
  const ResponsiveAxis({
    Key key,
    @required this.children,
    this.flex,
  }) : super(key: key);

  final List<Widget> children;

  ///Declared flex value will affect the widget size if you have more than one [ResponsiveAxis] widget inside [SimpleResponsiveGrid]
  final int flex;

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Expanded(
      flex: flex ?? 1,
      child: Flex(
        direction: isPortrait ? Axis.vertical : Axis.horizontal,
        children: children,
      ),
    );
  }
}
