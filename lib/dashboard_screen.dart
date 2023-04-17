import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        drawer: Drawer(
          backgroundColor: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: MediaQuery.of(context).size.width * 0.3,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Wallet',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.sell,
                    color: Colors.white,
                  ),
                  title: Text(
                    'But/Sell',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.star_border_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Trade to Earn',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Sleeping Beauty',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.swap_horiz,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Swap',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.height,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Bridge',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Import Account',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.center_focus_strong,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Scan',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.fingerprint,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Fingerprint',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.face,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Face Scan',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Account',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          title: const Text(
            'Wallet',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromARGB(255, 52, 50, 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: const [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                'Total fund Value',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 20.0),
                              child: Text(
                                "\$0",
                                style: TextStyle(
                                    color: Colors.lightBlue,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset('assets/images/dashboard1.png',
                          width: MediaQuery.of(context).size.width * 0.35),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: const Color.fromARGB(255, 52, 50, 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Buy Cryptocurrency from FIAT',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 20.0),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: const Text('Buy Crypto'))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset('assets/images/dashboard2.png',
                          width: MediaQuery.of(context).size.width * 0.35),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
