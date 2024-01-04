import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage('assets/img/apartamento2.png'),
              fit: BoxFit.cover,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black26,
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 15,
                          ),
                          Text(
                            "1.8 km",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Raleway',
                                fontSize: 11),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: Colors.black12,
              child: Center(
                  child: Text(
                'Cadastre um novo apartamento',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Raleway', fontSize: 25),
              )),
            )
          ],
        ),
      ),
    );
  }
}
