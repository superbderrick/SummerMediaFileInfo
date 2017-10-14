//
//  ItunesUtils.swift
//  SummerMediaFileInfo
//
//  Created by Kang Jinyeoung on 11/10/2017.
//  Copyright © 2017 SuperbDerrick. All rights reserved.
//

import Foundation

public class ItunesUtils {
 
  
  public static func getFileNameAndFormat(_ name:String) ->(String , String) {
    
    let fullPath = name.components(separatedBy: ".")
    let name: String = fullPath[0]
    let type: String = fullPath[1]
    
    return (name,type)
  }

  public static func getFileIdentifier(_ identifier:String) ->String {
    var finalName = "test"
    
    return finalName
  }
  
  public static func getFileType(_ type:String) ->MediaType {
    
    let videoFormatRange = SupportFormats.videoFormats
    let audioFormatRange = SupportFormats.audioFormats
    
    var finalName = MediaType.unknown
    
    return finalName
  }
  
}
