import 'package:flutter/material.dart';

class BottomNavBarRaisedInsetFb1 extends StatefulWidget {
  final Function(int) onNavBarItemTapped;
  final int selectedIndex;

  const BottomNavBarRaisedInsetFb1({
    super.key,
    required this.onNavBarItemTapped,
    required this.selectedIndex,
  });

  @override
  _BottomNavBarRaisedInsetFb1State createState() =>
      _BottomNavBarRaisedInsetFb1State();
}

class _BottomNavBarRaisedInsetFb1State
    extends State<BottomNavBarRaisedInsetFb1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 56;

    final primaryColor = Color(0xFFFF2449);
    final secondaryColor = Colors.black54;
    final accentColor = const Color(0xffffffff);
    final backgroundColor = Colors.white;
    final shadowColor = Colors.grey;
    double elevation = 0;

    return BottomAppBar(
      color: Colors.white,
      elevation: 0,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, height),
            painter: BottomNavCurvePainter(
              backgroundColor: backgroundColor,
              shadowColor: shadowColor,
              elevation: elevation,
            ),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              backgroundColor: primaryColor,
              foregroundColor: accentColor,
              elevation: 0.1,
              onPressed: () {},
              child: Icon(Icons.qr_code_scanner_outlined),
            ),
          ),
          SizedBox(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavBarIcon(
                  text: "Dashboard",
                  icon: Icons.home_outlined,
                  selected: widget.selectedIndex == 0,
                  onPressed: () => widget.onNavBarItemTapped(0),
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                NavBarIcon(
                  text: "Activity",
                  icon: Icons.local_activity_outlined,
                  selected: widget.selectedIndex == 1,
                  onPressed: () => widget.onNavBarItemTapped(1),
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                const SizedBox(width: 56),
                NavBarIcon(
                  text: "Notifications",
                  icon: Icons.notifications_outlined,
                  selected: widget.selectedIndex == 2,
                  onPressed: () => widget.onNavBarItemTapped(2),
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                NavBarIcon(
                  text: "Profile",
                  icon: Icons.person_outline,
                  selected: widget.selectedIndex == 3,
                  onPressed: () => widget.onNavBarItemTapped(3),
                  selectedColor: primaryColor,
                  defaultColor: secondaryColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter({
    this.backgroundColor = Colors.white,
    this.insetRadius = 38,
    this.shadowColor = Colors.grey,
    this.elevation = 10,
  });

  final Color backgroundColor;
  final Color shadowColor;
  final double elevation;
  final double insetRadius;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint =
        Paint()
          ..color = backgroundColor
          ..style = PaintingStyle.fill;
    Path path = Path();

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;

    path.lineTo(insetCurveBeginnningX, 0);
    path.arcToPoint(
      Offset(insetCurveEndX, 0),
      radius: Radius.circular(41),
      clockwise: true,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height + 56);
    path.lineTo(0, size.height + 56);

    canvas.drawShadow(path, shadowColor, elevation, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    super.key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
    this.selectedColor = const Color(0xffFF8527),
    this.defaultColor = Colors.black54,
  });

  final String text;
  final IconData icon;
  final bool selected;
  final VoidCallback onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
      ],
    );
  }
}
