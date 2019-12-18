// Notes:
// 1. What's in ios?
//     Layers:
//     a. Core OS: unix OS, C, non-oop, closest to hardware
//     b. Core services: foundation, OOP layer, networking, file system, non UI layer
//     c. Media: 3D graphics, video, audio, PDF, JPEG ...
//     d. Cocoa touch layer: multi-touch, controls, camera, alerts... UI 
// 2. calculator demo
// 3. Topics
//     a. creating projects in Xcode 8
//     b. building a UI
//     c. print
//     d. actions and outlets
//     e. accessing ios docs from code
//     f. optionals
//     g. ios simulator
// 4. launching an app in Xcode (IDE for macos)
//     a. launch Xcode
//     b. choose ios
//     c. choose single view application
//     d. click 'next'

//     e. name application
//     f. organization identifier should be unique
//     g. select 'swift' for language
//     h. select 'universal' for devices (iphone and ipad)
//     i. select 'core data' IF using a database
//     j. click next

//     k. save to home directory, in a folder called developer
//     l. for teams, check 'source control'
// 5. files of interest in this lesson: 
//        a. ViewController.swift
//        b. Main.storyboard   (user interface)
//        c. for the remaining files:
//             - 'ctrl + shft' all files
//             - right click
//             - select 'New Group from Selection'
//             - name file 'Supporting Files'
// 6. running app on simulator (full iphone simulator)
//     a. select 'device'
//     b. click play button
//     c. go to 'window' > 'scale' to fit the simulator in screen
//     d. got to 'hardware' > 'home' to see the home screen (ctrl + shft + h)
// 7. Assistant editor button (overlapping circles): splits screen to have both .storyboard and .swift files on screen
// 8. Swift requires all properties (except optionals which are 'nil' by default) to be initialized, either directly or with a init()

// behaviour of button
import UIKit   // like include

class ViewController: UIViewController {   // class declaration, swift is a single inheritance language
    // ctrl + click button in .storyboard and drag into this function
    // outlet connection: make a property
    // action connection: make a method
    // set 'arguments' to sender and type to 'UI button' (or specified type - not 'any')

   @IBOutlet weak var display: UILabel?
   var userIsInTheMiddleOfTyping = false
   // @IBAction is an Xcode thing, that allows you to see what element the function refers to in the
   // .storyboard file, when hovering over the circle in the gutter.
   // '_' indicates that there are no external names, when calling function, you can 
   // use touchDigit() - versus below example. 
   // '_' is only used for first value and in specific cases(LOOK INTO THIS)
    @IBAction func touchDigit(_ sender: UIButton) {
       let digit = sender.currentTitle!     // local variables don't usually use type(i.e 'String') - use type inference
                                             // digit is a string optional, to unwrap it, use '!'
       // append digit to display when button is clicked
       let textCurrentlyInDisplay = display!.text!
       display!.text = textCurrentlyInDisplay + digit // you don't have to unwrap an optional to set it

    }
    // the parameters have 2 names: first names ('from','to','using') are external names (used when function is called), while
    // second names ('startX','endX','color') are internal names (accessible inside the function)
    func drawHorizontalLine(from startX: Double, to endX: Double, using color: UIColor) {
        // ....
    }
}
