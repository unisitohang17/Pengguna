part of 'screens.dart';

class DetailScreen extends StatelessWidget {
  final Reqres? data;
  const DetailScreen({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("data: ${data?.email}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail User"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ID: ${data?.id}"),
            const SizedBox(height: 10),
            Text("Email: ${data?.email}"),
            const SizedBox(height: 10),
            Text("Nama Lengkap: ${data?.firstName} ${data?.lastName}"),
          ],
        ),
      ),
    );
  }
}
