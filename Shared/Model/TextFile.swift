//
//  TextFile.swift
//  Speech
//
//  Created by Dino Curic on 25.06.21.
//

import Foundation

struct TextFile: Hashable {
    
    var title: String
    var author: String
    var textContent: String
    var language: String
    
}

let dummyData: [TextFile] = [
    TextFile(title: "Statusängste in Deutschland", author: "Jan Delhey und Leonie C. Steckermeier", textContent: "Das subjektive Wohlbefinden der Menschen besteht, so paradox das auf den ersten Blick erscheinen mag, nicht nur aus positiven Aspekten wie Glücksempfinden und Zufriedenheit, sondern auch aus negativen wie z. B. Ängsten und Sorgen (Glatzer et al. 2015).\n\nDieser Aufschwung gilt auch für solche Ängste und Sorgen, die sich aus der sozialen Schichtung und der Ungleichverteilung von »power, privilege and prestige« (Lenski 1984) ergeben – den Statusängsten.", language: "🇩🇪male"),
    TextFile(title: "Foreign Aid and Undeserved Credit Claiming", author: "Cruz and Schneider", textContent: "Politicians in developing countries misuse foreign aid to get reelected by fiscally manipulating foreign aid resources or domestic budgets. Our article suggests another mechanism that does not require politicians to have any control over foreign aid in order to make use of it for electoral purposes: undeserved credit claiming.\n\nWe analyze the conditions under which local politicians can undeservedly take credit for the receipt of foreign aid and thereby boost their chances of reelection. ", language: "🇬🇧male"),
    TextFile(title: "Short Audio Tests", author: "Dino", textContent: "This is a simple test.", language: "🇬🇧male")
    
]
