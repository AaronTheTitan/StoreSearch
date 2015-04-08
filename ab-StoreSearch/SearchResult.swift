//
//  SearchResult.swift
//  ab-StoreSearch
//
//  Created by Aaron Bradley on 4/3/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import Foundation

func < (lhs: SearchResult, rhs: SearchResult) -> Bool {
    return lhs.name.localizedStandardCompare(rhs.name) == NSComparisonResult.OrderedAscending
}

class SearchResult {
    var name = ""
    var artistName = ""
    var artworkURL60 = ""
    var artworkURL100 = ""
    var storeURL = ""
    var kind = ""
    var currency = ""
    var price = 0.0
    var genre = ""

    private let displayNamesForKind = [
        "album": NSLocalizedString("Album", comment: "Localized kind: Album"),
        "audiobook": NSLocalizedString("Audio Book", comment: "Localized kind: Audio Book"),
        "book": NSLocalizedString("Book", comment: "Localized kind: Book"),
        "ebok": NSLocalizedString("E-Book", comment: "Localized kind: E-Book"),
        "feature-movie": NSLocalizedString("Feature Movie", comment: "Localized kind: Feature Movie"),
        "music-video": NSLocalizedString("Music Video", comment: "Localized kind: Music Video"),
        "podcast": NSLocalizedString("Podcast", comment: "Localized kind: Podcast"),
        "software": NSLocalizedString("App", comment: "Localized kind: Software"),
        "song": NSLocalizedString("Song", comment: "Localized kind: Song"),
        "tv-episode": NSLocalizedString("TV Episode", comment: "Localized kind: TV Episdoe"),
    ]

    func kindForDisplay() -> String {
        return displayNamesForKind[kind] ?? kind
//        switch kind {
//            case "album":
//                return NSLocalizedString("Album", comment: "Localized kind: Album")
//            case "audiobook":
//                return NSLocalizedString("Audio Book", comment: "Localized kind: Audio Book")
//            case "book":
//                return NSLocalizedString("Book", comment: "Localized kind: Book")
//            case "ebook":
//                return NSLocalizedString("E-Book", comment: "Localized kind: E-Book")
//            case "feature-movie":
//                return NSLocalizedString("Movie", comment: "Localized kind: Feature Movie")
//            case "music-video":
//                return NSLocalizedString("Music Video", comment: "Localized kind: Music Video")
//            case "podcast":
//                return NSLocalizedString("Podcast", comment: "Localized kind: Podcast")
//            case "software":
//                return NSLocalizedString("App", comment: "Localized kind: Podcast")
//            case "song":
//                return NSLocalizedString("Song", comment: "Localized kind: Song")
//            case "tv-episode":
//                return NSLocalizedString("TV Episode", comment: "Localized kind: TV Episode")
//            default:
//                return kind
//        }
    }

}

