// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import CoreXLSX

public struct SGShared: Decodable {
    
    public private(set) var text = "SGShared Library"

    public func readExcelDocument(filepath: String) {

        guard let file = XLSXFile(filepath: filepath) else {
            fatalError("XLSX file at \(filepath) is corrupted or does not exist")
        }

        for wbk in try! file.parseWorkbooks() {
            for (name, path) in try! file.parseWorksheetPathsAndNames(workbook: wbk) {
                if let worksheetName = name {
                    print("This worksheet has a name: \(worksheetName)")
                }
                let worksheet = try! file.parseWorksheet(at: path)
                for row in worksheet.data?.rows ?? [] {
                    for cell in row.cells {
                        print(cell)
                    }
                }
            }
        }
    }
}
