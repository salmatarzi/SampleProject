//
//  CleanCommand.swift
//  CommandLineTool
//
//  Created by Salma ElTarzi on 8/27/18.
//

import Foundation
import SwiftCLI
import SwiftShell
import FileUtils

class CleanCommand: Command {
    let name = "clean"
    let shortDescription = "Cleans native android project."
    
    func execute() throws {
        do {
            try main.runAndPrint("./gradlew", "clean");
        } catch {
            print("Whoops! An error occurred!")
        }
    }
}
