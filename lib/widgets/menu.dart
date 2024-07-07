import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  Widget buildHeader(BuildContext context) => Container(
      color: Colors.deepPurpleAccent,
      child: InkWell(
        onTap: () {
          //Fecha o navigation Drawer antes
          Navigator.pop(context);

          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) =>
          //         const WesleySite(), //TROCAR PRA PÁGINA DE USUÁRIO
          //   ),
          // );
        },
        child: Container(
          padding: EdgeInsets.only(
            top: 24 + MediaQuery.of(context).padding.top,
            bottom: 24,
          ),
          child: const Column(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundImage: AssetImage(
                    "images/profile.jpeg"), // futuramente trocar NetworkImage(url),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Wesley Takatsu',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              Text(
                'Admin',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ],
          ),
        ),
      ));

  Widget buildMenuItens(BuildContext context) => Container(
      padding: const EdgeInsets.all(20),
      child: Wrap(
        runSpacing: 10,
        children: [
          ListTile(
            leading: const Icon(FontAwesomeIcons.user),
            title: const Text('Dados Pessoais'),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => const MyApp(),
              // ));
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.house),
            title: const Text('Home'),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => const WesleySite(),
              // ));
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.users),
            title: const Text('Grupos'),
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(
              //   builder: (context) => const FilmesPage(),
              // ));
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.cogs),
            title: const Text('Permissões'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.building),
            title: const Text('Empresa'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.handshake),
            title: const Text('Parceiros'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.wallet),
            title: const Text('Financeiro'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.userPlus),
            title: const Text('Funcionários'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.qrcode),
            title: const Text('QR Code'),
            onTap: () {},
          ),

          const Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configurações'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text('Sair'),
            onTap: () {},
          ),
        ],
      ));

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildMenuItens(context),
          ]),
    )

        /*
       ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Meu aplicativo'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Página 1'),
            onTap: () {
              // Navegar para a página 1
            },
          ),
          ListTile(
            title: Text('Página 2'),
            onTap: () {
              // Navegar para a página 2
            },
          ),
          ListTile(
            title: Text('Página 3'),
            onTap: () {
              // Navegar para a página 3
            },
          ),
        ],
      ),
      */
        );
  }
}
