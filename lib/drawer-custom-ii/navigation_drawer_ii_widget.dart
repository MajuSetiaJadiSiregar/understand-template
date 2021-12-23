import 'package:flutter/material.dart';

class NavigationDrawerIiWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context)
  {
    const name = "Flutter Indonesia";
    const email = 'flutter@gmail.com';
    const urlImage = 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            _buildHeader(name: name, email: email, urlImage: urlImage, onClicked: (){}),
            const SizedBox(height: 24),
            Container(
              child: Column(
                children: [
                  const SizedBox(height: 12,),
                  _buildSearchField(),
                  _buildMenuItem(text: 'People', icon: Icons.people, onClicked: (){})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildHeader({required String urlImage, required String name, required String email, required VoidCallback onClicked})
  {
    return InkWell(
      onTap: onClicked,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          children: [
            CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage),),
            const SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 20, color: Colors.white),),
                const SizedBox(height: 4,),
                Text(email, style: const TextStyle(fontSize: 14, color: Colors.white),),
              ],
            ),
            const Spacer(),
            const CircleAvatar(
              radius: 24,
              backgroundColor: Color.fromRGBO(30, 60, 168, 1),
              child:  Icon(Icons.add_comment_outlined, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }


  Widget _buildSearchField()
  {
    final color = Colors.white;

    return TextField(
      style: TextStyle(color: color),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        hintText: 'Search',
        hintStyle: TextStyle(color: color),
        prefixIcon: Icon(Icons.search, color: color,),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35.0),
          borderSide: BorderSide(color: color.withOpacity(0.7))
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: BorderSide(color: color.withOpacity(0.7))
        )
      ),
    );
  }

  Widget _buildMenuItem({required String text, required IconData icon, VoidCallback? onClicked})
  {
    final color = Colors.white;
    final hoverColor = Colors.black;

    return ListTile(
      leading: Icon(icon, color: color,),
      title: Text(text, style: TextStyle(color: color),),
      // hoverColor: hoverColor,
      onTap: onClicked,
    );
  }


}