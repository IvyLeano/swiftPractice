// Errors are represented using any tyoe that adopts the Error protocol
enum PrintError: Error {
    case outOfPaper
    case noToner
    case onFire
}

// use 'throw' to throw an error
// use 'throws' to mark a function that can throw an error
func send(job: Int, toPrinterName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrintError.noToner
    }
    return "Job sent"
}