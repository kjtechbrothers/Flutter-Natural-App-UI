import 'package:flutter/material.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blueGrey,
      child: ListView(
        padding: EdgeInsets.zero,
        children:  [
         const UserAccountsDrawerHeader(
              accountName:  Text('Kashif Javed'),
              accountEmail: Text('kashifjavedbhatti786@gmail.com'),
              currentAccountPicture: CircleAvatar(
               child: ClipOval(
                child: Image(image: AssetImage('assets/KJ.png'),
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(image: AssetImage('assets/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),

          ),
          ListTile(
            leading: const Icon(Icons.favorite),
            title: const Text('Favourite'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Friends'),
            onTap: () => {},
            trailing: ClipOval(
              child: Container(
                color: Colors.blue,
                height: 20,
                width: 20,
                child: const Center(
                  child: Text('90',style: TextStyle(color: Colors.white,fontSize: 12,),),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Request'),
            onTap: () => {} ,
            trailing: ClipOval(
              child: Container(
                color: Colors.blue,
                height: 20,
                width: 20,
                child: const Center(
                  child: Text('50',style: TextStyle(color: Colors.white,fontSize: 12,),),
                ),
              ),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.description),
            title: const Text('Policies'),
            onTap: () =>  {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit'),
            onTap: () => {},
          ),
        ],
      ),

    );
  }
}
