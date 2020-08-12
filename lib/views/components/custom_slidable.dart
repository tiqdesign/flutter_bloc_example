import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CustomSlidable extends StatelessWidget {
  const CustomSlidable({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(color: Colors.grey[300], blurRadius: 6, offset: Offset(0, -2))
        ]),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor:Colors.red[800],
            radius: 26,
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              radius: 24,
            ),
          ),
          trailing: Icon(Icons.arrow_left),
          title: Text('Tarık KAYA', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
          subtitle: Text('Flutter Applications Developer'),
        ),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Logout',
          color: Colors.red,
          icon: Icons.assignment_return,
          onTap: () {
            print('Logout');
          },
        ),
        IconSlideAction(
          caption: 'Edit Profile',
          color: Colors.amber,
          icon: Icons.edit,
          onTap: () {
            print('Edit');
          },
        ),
      ],
    );
  }
}

