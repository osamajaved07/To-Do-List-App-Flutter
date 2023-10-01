import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('   WhatsApp '),
        backgroundColor:Color.fromARGB(255, 0, 159, 50),

        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Implement more options
            },
          ),
        ],
      ),
      body: 
      ListView.builder(
        itemCount: 20, // Replace with your chat list size
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            title: Text('Contact Name $index'),
            subtitle: Text('Last message from contact $index'),
            trailing: Text('9:00 AM'), // Replace with last message timestamp
            onTap: () {
              // Implement chat screen navigation
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement new chat action
        },
        child: Icon(Icons.chat),
      ),
    );
  }
}
