//
//  SBStringUtil.swift
//  GA_ReloadSection
//
//  Created by houjianan on 16/8/5.
//  Copyright © 2016年 houjianan. All rights reserved.
//

import UIKit

extension String  {
    
    //sha1加密算法
    var sha1: String {
        let data = self.data(using: String.Encoding.utf8)!
        var digest = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
        CC_SHA1((data as NSData).bytes, CC_LONG(data.count), &digest)
        let output = NSMutableString(capacity: Int(CC_SHA1_DIGEST_LENGTH))
        for byte in digest {
            output.appendFormat("%02x", byte)
        }
        return output as String
    }
  
    var md5: String! {
        let str = self.cString(using: String.Encoding.utf8)
        let strLen = CC_LONG(self.lengthOfBytes(using: String.Encoding.utf8))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
//        let result = UnsafeMutablePointer<CUnsignedChar>(allocatingCapacity: digestLen)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLen)
        CC_MD5(str!, strLen, result)
        
        let hash = NSMutableString()
        for i in 0 ..< digestLen {
            hash.appendFormat("%02x", result[i])
        }
        
        result.deallocate(capacity: digestLen)
        
        return String(format: hash as String)
    }
    
    var urlEncode: String! {
        return CFURLCreateStringByAddingPercentEscapes(nil, self as CFString!, nil, "!*'();:@&=+$,/?%#[]" as CFString!, CFStringBuiltInEncodings.UTF8.rawValue)! as String
    }
    
    var localized: String! {
        return NSLocalizedString(self, comment: "")
    }
    
    var color0X: UIColor! {
//        var cString:String = self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercased()
        var cString:String = self.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substring(from: 1)
        }
        
        if (cString.characters.count != 6) {
            return UIColor.gray
        }
        
        let rString = (cString as NSString).substring(to: 2)
        let gString = ((cString as NSString).substring(from: 2) as NSString).substring(to: 2)
        let bString = ((cString as NSString).substring(from: 4) as NSString).substring(to: 2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
    
    func color0X(alpha: CGFloat) -> UIColor {
//        var cString:String = self.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercased()
        var cString:String = self.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).uppercased()
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substring(from: 1)
        }
        
        if (cString.characters.count != 6) {
            return UIColor.gray
        }
        
        let rString = (cString as NSString).substring(to: 2)
        let gString = ((cString as NSString).substring(from: 2) as NSString).substring(to: 2)
        let bString = ((cString as NSString).substring(from: 4) as NSString).substring(to: 2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(alpha))
    }
    
    // 一个是评论，两个
    func newString(_ strings: [[String : AnyObject]], handler: (_ string: String, _ separatedCount: Int) -> ()) {
        var string = ""
        var count  = 0
        for i in 0 ..< strings.count {
            let dic = strings[i]
            if i == 0 {
                string = string + " "
            }
            string = string + (dic["key"] as! String)
            string = string + "（"
            string = string + String(dic["value"] as! Int)
            string = string + "）"
            if i == 0 {
                count = string.characters.count
            }
        }
        handler(string, count)
    }
    
    /// 判断手机号是否合法
    var validmobile: Bool {
        // 判断是否是手机号
        let patternString = "^1[3|4|5|7|8][0-9]\\d{8}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", patternString)
        return predicate.evaluate(with: self)
    }
    /// 判断密码是否合法
    var validPassword: Bool {
        // 验证密码是 6 - 16 位字母或数字
        // TODO: ===
//        let patternString = "[0-9A-Za-z.]"
//        let predicate = NSPredicate(format: "SELF MATCHES %@", patternString)
//        print(predicate.evaluate(with: self))
//        return predicate.evaluate(with: self)
        return true
    }
    
    var validLeterAndFigure: Bool {
        let patternString = "[0-9A-Za-z]"
        let predicate = NSPredicate(format: "SELF MATCHES %@", patternString)
        return predicate.evaluate(with: self)
    }
   
    var url: URL? {
        if let u = URL(string: self) {
            if self != "" {
                return u
            }
            return nil
        }
        return nil
    }
    
    var charCount: Int {
        var count: Int = 0
        for c in self.characters {
            let arr = c.debugDescription.components(separatedBy: "\"")
            if arr[1].validLeterAndFigure {
                count += 1
            } else {
                count += 2
            }
        }
        return count
    }
    
}


