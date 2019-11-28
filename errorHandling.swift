// Errors are represented using any tyoe that adopts the Error protocol
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

//Handling Errors

// use 'throw' to throw an error
// use 'throws' to mark a function that can throw an error
func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}

// do-catch
do {
    let printerResponse =  try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}

// multiple catch blocks
do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError)")        
} catch {
    print(error)
}

// try? 
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailer = try? send(job: 1885, toPrinter: "Never has toner")

print(printerSuccess!)
print(printerFailer!)