//
//  SummerMediaFileInfo.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 05/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation
import Photos

open class SummerMediaFileInfo  {
  
  // MARK: Properties
  
  open var summerFiles: [SummerFile]?
  
  fileprivate var options: SummerMediaFileInfoCustomizable! {
    didSet {
    }
  }
  
  
  
  // MARK: Properties
  fileprivate var allPhotos: PHFetchResult<PHAsset>!
  
  
  public  init() {
    
  }
  
  open func setup(_ options: SummerMediaFileInfoCustomizable) {
    
    print("Default Value Test extractMode \(options.extractMode)")
    print("Default Value Test fileTypes \(options.fileType)")
    print("Default Value Test isUnknown\(options.isBringUnknownFile)")
    
    setupFileInfo()
  }
  
  
  fileprivate func setupFileInfo() {
    print("Test")
    
    let allPhotosOptions = PHFetchOptions()
    allPhotosOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]
    allPhotos = PHAsset.fetchAssets(with: allPhotosOptions)
    
    print("count : \(allPhotos.count)")
    
    if allPhotos != nil {
      for i in 0 ..< allPhotos.count {
        let asset = allPhotos[i]
        
        
        let filename = asset.value(forKey: "filename") as! String
        let fileFormat = asset.value(forKey: "uniformTypeIdentifier") as! String
        print("fileName = \(filename)")
        print("fileFormat = \(fileFormat)")
        
        
      }
     
      //for number in 0..<(numbers.count-1)
    }
  }
  
  fileprivate func getFiles() {
    
  }
  

  
}


