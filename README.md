# SGShared
 Shared Library

# Reference
Handling Excel documents: https://github.com/CoreOffice/CoreXLSX

# Examples
Here's how you can get all strings in column "C" for example:

`
    if let sharedStrings = try file.parseSharedStrings() {
    let columnCStrings = worksheet.cells(
        atColumns: [ColumnReference("C")!]
    ).compactMap { 
        $0.stringValue(sharedStrings) 
    }}
`

To parse a date value from a cell, use dateValue property on the Cell type:

`
    let columnCDates = worksheet.cells(
        atColumns: [ColumnReference("C")!]
    ).compactMap { $0.dateValue }
`



