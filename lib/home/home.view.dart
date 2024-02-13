part of '_index.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home View'),
          actions: [
            TextButton(
              onPressed: () {
                html.window.open('https://github.com/DheaNurlita/dhea_sm.git', 'newtab');
              },
              child: const Text('Go To Github'),
            )
          ],
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OnReactive(
                    () => Text(
                      dt.rxCounter.state.toString(),
                      textScaler: const TextScaler.linear(2),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ct.tambah();
                      // debugPrint(rxCount.toString());
                    },
                    child: const Text(
                      "Tambah",
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OnBuilder(
                    listenTo: dt.rxHitung,
                    builder: () => Text(
                      dt.rxHitung.state.toString(),
                      textScaler: const TextScaler.linear(2),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      ct.kurang();
                      // debugPrint(rxCount.toString());
                    },
                    child: const Text(
                      "Kurang",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
