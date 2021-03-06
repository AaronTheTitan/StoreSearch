//
//  SearchResultCell.swift
//  ab-StoreSearch
//
//  Created by Aaron Bradley on 4/4/15.
//  Copyright (c) 2015 Aaron Bradley. All rights reserved.
//

import UIKit

class SearchResultCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var artworkImageView: UIImageView!

    var downloadTask: NSURLSessionDownloadTask?


// MARK: - BEGIN CODE -------------------------------------------- //

    override func awakeFromNib() {
        super.awakeFromNib()

        let selectedView = UIView(frame: CGRect.zeroRect)
        selectedView.backgroundColor = UIColor(red: 20/255, green: 160/255, blue: 160/255, alpha: 0.5)
        selectedBackgroundView = selectedView
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureForSearchResult(searchResult: SearchResult) {
        nameLabel.text = searchResult.name

        if searchResult.artistName.isEmpty {
            artistNameLabel.text = NSLocalizedString("Unknown", comment: "Unknown artist name")
        } else {
            artistNameLabel.text = String(format: NSLocalizedString("%@ (%@)", comment: "Format for artist name label"), searchResult.artistName, searchResult.kindForDisplay())
        }

        artworkImageView.image = UIImage(named: "Placeholder")
        if let url = NSURL(string: searchResult.artworkURL60) {
            downloadTask = artworkImageView.loadImageWithURL(url)
        }
    }

    // cancels image download still in progress when it doesn't need to be
    override func prepareForReuse() {
        super.prepareForReuse()

        downloadTask?.cancel()
        downloadTask = nil

        nameLabel.text = nil
        artistNameLabel.text = nil
        artworkImageView.image = nil
    }
}
