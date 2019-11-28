// Errors are represented using any tyoe that adopts the Error protocol
enum PrintError: Error {
    case outOfPaper
    case noToner
    case onFire
}