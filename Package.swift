import PackageDescription

var package = Package(
    name: "MongoKitten",
    targets: [
        Target(name: "MongoKitten")
        ],
    dependencies: [
        // For MongoDB Documents
        .Package(url: "https://github.com/OpenKitten/BSON.git", Version(0,0,44)),

        // Authentication
        .Package(url: "https://github.com/OpenKitten/CryptoKitten.git", Version(0,0,2)),
        
        // Provides sockets
        .Package(url: "https://github.com/vapor/socks.git", majorVersion: 1),

	// Provide TLS
	.Package(url: "https://github.com/vapor/tls.git", majorVersion: 1),
        ]
)

let lib = Product(name: "MongoKitten", type: .Library(.Dynamic), modules: "MongoKitten")
