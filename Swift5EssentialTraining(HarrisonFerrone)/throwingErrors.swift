// REVIEW THIS TOPIC

// error enum
enum DataError: Error {
    case EmptyPath
    case InvalidPath
}
let playerDataPath = "/example/data.txt"

// throwing functions
func loadData(path: String) throws -> Bool? {
    guard path.contains("/") else {
        throw DataError.InvalidPath
    }
    guard !path.isEmpty else {
        throw DataError.EmptyPath
    }
    return true
}

// Do-catch statements
do {
    try loadData(path: playerDataPath)
    print("Data fetch successful!")
} catch is DataError {
    print("Invalid or empty path detected...")
} catch {
    print("Unknown error detected...")
}

if let dataLoaded = try? loadData(path: playerDataPath) {
    print("Data fetch went just fine...")
}

// propagating errors
func propagateDataError() throws {
    try loadData(path: playerDataPath)
}

do {
    try propagateDataError()
    print("Propagated data fetch successful")
} catch DataError.EmptyPath {
    print("Empty path detected...")
} catch DataError.InvalidPath {
    print("Invalid path detected...")
} catch {
    print("Unknown errer...")
}