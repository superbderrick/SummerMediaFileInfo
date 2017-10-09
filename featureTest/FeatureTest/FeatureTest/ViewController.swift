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
    fileprivate let imageManager = PHCachingImageManager()

  override func viewDidLoad() {
    super.viewDidLoad()

    let allFilesOptions = PHFetchOptions()
    allFilesOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    allFilesOptions.predicate = NSPredicate(format: "mediaType = %d", PHAssetMediaType.video.rawValue)
    allFiles = PHAsset.fetchAssets(with: allFilesOptions)

    // Do any additional setup after loading the view, typically from a nib.
    if let files = self.allFiles {
        for i in 0 ..< files.count {
            let asset = files[i]
            let filename = asset.value(forKey: "filename") as! String
            let fileFormat = asset.value(forKey: "uniformTypeIdentifier") as! String
            let fileIdentifier = asset.value(forKey: "localIdentifier") as! String

            var astOption = PHImageRequestOptions()//.Type. = PHImageRequestOptionsResizeMode.fast
            astOption.resizeMode=PHImageRequestOptionsResizeMode.fast



            imageManager.requestImage(for: asset,
                                      targetSize:CGSize(width: 30, height: 30),
                                      contentMode: PHImageContentMode.aspectFit,
                                      options: astOption,
                                      resultHandler: { (image, _) in

                })

            print("fileName = \(filename)")
            print("fileFormat = \(fileFormat)")
            print("filelocal = \(fileIdentifier)")

            //Get FileSize
            let resources = PHAssetResource.assetResources(for: asset) // your PHAsset
            var sizeOnDisk: Int64? = 0
            if let resource = resources.first {
                let unsignedInt64 = resource.value(forKey: "fileSize") as? CLong
                sizeOnDisk = Int64(bitPattern: UInt64(unsignedInt64!))
                print("fileSize = \(self.transformedValue( Double(sizeOnDisk!) ))")
            }
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

    //get Size Convert
    func transformedValue(_ value : Double) -> String {
        var convertedValue = value
        var multiplyFactor = 0
        let tokens = ["bytes","KB","MB","GB","TB"]



        while (convertedValue > 1024) {
            convertedValue = convertedValue/1024;
            multiplyFactor = multiplyFactor+1;
        }

        return String .localizedStringWithFormat("%4.2f %@",convertedValue, tokens[multiplyFactor])
    }


}

