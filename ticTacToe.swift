// This challenge incorporates the following topics
// 1. functions and closures
// 2. objects and classes
// 3. printing statements
// 4. simple values
// 5. control flow

class TicTacToe {
    var playerOne = false;
    var playerTwo = false;
    var grid = [
        [ "E", "E", "E" ],
        [ "E", "E", "E" ],
        [ "E", "E", "E" ]
    ]
    func instructions(){
        print("************************************")
        print("       Welcome to Tic Tac Toe")
        print("************************************")
        print("This is a two player game!")
        playerOne = true
    }
    func setPlayer() {
        if playerOne == false {
            playerOne = true
            playerTwo = false
        } else {
            playerTwo = true
            playerOne = false
        }
    }
    func play() {
        if playerOne == true {
            print("Player one, select a position")
        } else {
            print("Player two, select a position")
        }
    }
    func printGrid(){
        for row in 0..<3 {
            for column in 0..<3 {
                print("  \(grid[row][column])  ", terminator:"")
            }
            print("\n")
           
        }
    }
}

var ticTacToe = TicTacToe()
ticTacToe.instructions()
ticTacToe.printGrid()
