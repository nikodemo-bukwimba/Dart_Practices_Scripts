void main() {
  print("=== STARTING EXPERIMENT ===\n");

  // -------- BAD LAZY INITIALIZATION --------
  print("🚨 Bad Lazy Initialization (cost happens early)");

  final stopwatch1 = Stopwatch()..start();

  // Top-level-like bad lazy simulation (cost paid immediately)
  BadLazy.db = BadLazy.connect(); // heavy work runs now

  stopwatch1.stop();
  print("Time taken for bad lazy: ${stopwatch1.elapsedMilliseconds} ms\n");

  // -------- GOOD LAZY INITIALIZATION --------
  print("✅ Good Lazy Initialization (cost deferred until first access)");

  final stopwatch2 = Stopwatch()..start();

  // Lazy access: no heavy work yet
  var data = GoodLazy.getDatabase(); // heavy work runs now

  stopwatch2.stop();
  print("Time taken until first access: ${stopwatch2.elapsedMilliseconds} ms");

  // Access again: no extra cost
  stopwatch2.reset();
  stopwatch2.start();
  var data2 = GoodLazy.getDatabase(); // cached, no heavy work
  stopwatch2.stop();
  print(
    "Time for second access (cached): ${stopwatch2.elapsedMilliseconds} ms",
  );

  print("\n=== EXPERIMENT END ===");
}

// Simulate a "bad lazy" top-level variable
class BadLazy {
  static late Database db;

  static Database connect() {
    print("⏳ Connecting database (bad lazy)...");
    return Database();
  }
}

// Simulate a "good lazy" variable
class GoodLazy {
  static Database? _db;

  static Database getDatabase() {
    if (_db == null) {
      print("⏳ Connecting database (good lazy)...");
      _db = Database();
    }
    return _db!;
  }
}

// Simulated heavy work
class Database {
  Database() {
    print("💥 Database constructor running heavy work...");
    int sum = 0;
    for (int i = 0; i < 50000000; i++) {
      sum += i;
    }
    print("💥 Database constructor finished heavy work");
  }
}
