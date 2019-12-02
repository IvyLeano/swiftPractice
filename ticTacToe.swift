// This challenge incorporates the following topics
// 1. functions and closures
// 2. objects and classes
// 3. printing statements
// 4. simple values
// 5. control flow

class TicTacToe {
    
    var grid = [
        [ 'E', 'E', 'E' ],
        [ 'E', 'E', 'E' ],
        [ 'E', 'E', 'E' ]
    ]
    func printGrid(){
        for row in 0...<3 {
            for column in 0...<3 {
                print()
            }
        }
    }
}

var ticTacToe = TicTacToe()
