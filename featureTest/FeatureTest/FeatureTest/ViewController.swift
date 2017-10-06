//
//  ViewController.swift
//  FeatureTest
//
//  Created by Kang Jinyeoung on 06/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController {

    // MARK: Properties
    var allFiles: PHFetchResult<PHAsset>?

  override func viewDidLoad() {
    super.viewDidLoad()

    let allFilesOptions = PHFetchOptions()
    allFilesOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    allFilesOptions
    allFiles = PHAsset.fetchAssets(with: allFilesOptions)

    // Do any additional setup after loading the view, typically from a nib.
    if let files = self.allFiles {
        for i in 0 ..< files.count {
            let asset = files[i]
            let filename = asset.value(forKey: "filename") as! String
            let fileFormat = asset.value(forKey: "uniformTypeIdentifier") as! String
            let fileIdentifier = asset.value(forKey: "localIdentifier") as! String

            print("fileName = \(filename)")
            print("fileFormat = \(fileFormat)")
            print("filelocal = \(fileIdentifier)")
            //print("fileType = \(file.mediaType)")


        }

    } else {
        print("Nothing Files")
    }

    print("Count : \(self.allFiles!.count)")

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

