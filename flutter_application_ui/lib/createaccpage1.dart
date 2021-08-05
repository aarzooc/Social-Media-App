import 'package:flutter/material.dart';

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = const Color(0xF200B8B5);
    Path path = Path()
      ..relativeLineTo(0, 130)
      ..quadraticBezierTo(size.width / 2, 200.0, size.width, 130)
      ..relativeLineTo(0, -130)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

Widget buildUserName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Username',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.name,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(10),
              // ),
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.account_circle_rounded,
                color: Color(0xffE2BC00),
              ),
              hintText: 'Username',
              hintStyle: TextStyle(
                color: Colors.black45,
              )),
        ),
      )
    ],
  );
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Email',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(10),
              // ),
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email_rounded,
                color: Color(0xffE2BC00),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(
                color: Colors.black45,
              )),
        ),
      )
    ],
  );
}

Widget buildPassword1() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.name,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(10),
              // ),
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xffE2BC00),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black45,
              )),
        ),
      )
    ],
  );
}

/*Widget buildPassword2() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Confirm Password',
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.name,
          style: TextStyle(color: Colors.black87),
          decoration: InputDecoration(
              border: InputBorder.none,
              // border: OutlineInputBorder(
              //   borderRadius: BorderRadius.circular(10),
              // ),
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Color(0xffE2BC00),
              ),
              hintText: 'Confirm Password',
              hintStyle: TextStyle(
                color: Colors.black45,
              )),
        ),
      )
    ],
  );
} */

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color(0xF200B8B5),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 540,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildUserName(),
                      buildEmail(),
                      buildPassword1(),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xffE2BC00),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text("Next",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            CustomPaint(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
                painter: HeaderCurvedContainer()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Create Profile",
                      style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1.5,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ),
                //profile image code
                Container(
                  padding: EdgeInsets.all(10.0),
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffE2BC00), width: 5),
                    shape: BoxShape.circle,
                    // color: Color(0xffE2BC00),
                    //color: Color(0xF200B8B5),
                    color: Colors.white,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/profile.PNG'),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 310, left: 110),
                child: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: IconButton(
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    )))
          ],
        ));
  }
}
