//
//  theme.swift
//  shenbian-1.1.0
//
//  Created by houjianan on 15/12/25.
//  Copyright © 2015年 houjianan. All rights reserved.
//

import UIKit
import AdSupport

public let NavigationH: CGFloat = 64
public let TabbarH: CGFloat = 49
public let AppWidth: CGFloat = UIScreen.main.bounds.size.width
public let AppHeight: CGFloat = UIScreen.main.bounds.size.height
public let MainBounds: CGRect = UIScreen.main.bounds
public let MainWindow = UIApplication.shared.delegate!.window!!
struct theme {
    
    static let MagicKey = "FROYIADU7UW340XA3VB234TF7TEENKLZ"
    static let WeChatKey = "wxe07b33009ae86e75"
    static let WeChatSecret = "a024f181bc14ee8d6e935fc8cba37eef"
    static let SinaKey = "2467498320"
    static let SinaSecret = "c6b06ab22f48d5c28584ee8c883ef93c"
    static let UmengKey = "57b8314b67e58eadee00206c"
    static let AMapKey = "e03e7b546087996a25a48fb14ccefdd3"
    static let PlacerKey = "592a5fc357fdbcb57988566745eeb2a4" // 请求接口唯一
    static let UMPushKey = "57b8314b67e58eadee00206c"
    /*
     一月：January 简写Jan.
     二月：February 简写Feb.
     三月：March 简写Mar.
     四月：April 简写Apr.
     五月：May 简写May.
     六月：June 简写Jun.
     七月：July 简写Jul.
     八月：August 简写Aug.
     九月：September 简写Sep. / Sept.
     十月：October 简写Oct.
     十一月：November 简写Nov.
     十二月：December 简写Dec.
     */
    
    enum LoadState {
        case success
        case failure(errorMessage: String)
    }
    
    struct SectionData {
        let nameEN: String!
        let imageName: String!
        let bgColors: String!
        let numbser: Int!
        let state: SectionState! = .Loading
    }
    
    enum SectionState: String {
        case Loading = "加载中",
        LookMore = "查看更多",
        NoData = "无结果"
    }
    
    static let sectionData = [
        SectionData(nameEN: "douban", imageName: "豆瓣同城", bgColors: "#48d961", numbser: 1),
        SectionData(nameEN: "xiancheng", imageName: "鲜城", bgColors: "#fbd22d", numbser: 2),
        SectionData(nameEN: "collect", imageName: "收藏", bgColors: "#faa7ef", numbser: 3),
        SectionData(nameEN: "weekend_where", imageName: "周末去哪儿", bgColors: "#5ac8fb", numbser: 4),
        SectionData(nameEN: "chengmi", imageName: "城觅", bgColors: "#16c7b8", numbser: 5),
        SectionData(nameEN: "damai", imageName: "大麦", bgColors: "#ff6d9a", numbser: 6),
        SectionData(nameEN: "enjoy", imageName: "ENJOY", bgColors: "#474747", numbser: 7),
        SectionData(nameEN: "yhouse", imageName: "YHOUSE", bgColors: "#c9a876", numbser: 8),
        SectionData(nameEN: "dz_dianpin", imageName: "大众点评", bgColors: "#ffaa33", numbser: 9),
        SectionData(nameEN: "breadtrip", imageName: "面包旅行", bgColors: "#55c3d2", numbser: 10),
        SectionData(nameEN: "mafengwo", imageName: "蚂蜂窝", bgColors: "#feae03", numbser: 11),
        SectionData(nameEN: "weibo", imageName: "新浪微博", bgColors: "#fd766d", numbser: 12)
    ]
    
    
    static let APIKinds = [APIKind(name: "全部", row: 0),
                           APIKind(name: "小憩", row: 1),
                           APIKind(name: "美食", row: 2),
                           APIKind(name: "文娱", row: 3),
                           APIKind(name: "闲逛", row: 4)]
    
    /**
     *  DOUBLE  故宫
     */
    static let kGuGongDefaultLng: Double = 116.397019000001
    static let kGuGongDefaultLat: Double = 39.9180450000001
    
    /**
     *  Storyboard Name
     */
    static let kMianStoryboard = "Main"
    
    /**
     *  NavigationController Name
     */
    static let kMainNavigationController = "GA_MainNavigationController"
    
    /**
     *  ViewController Name
     */
    /// 主页
    static let kHomeVC = "GA_HomeViewController"
    /// 新特性页
    static let kNewfeatureVC = "GA_NewfeatureViewController"
    /// 分屏滑动的List页
    static let kSplitScreenVC = "GA_SplitScreenViewController"
    
    /**
     *  INT
     */
    /// 新特性界面图片数量
    static let kNewFeatureCount: Int = 4
    /// 倒计时时间
    static let kCountdownTime: Int = 3
    /// 分屏页数
    static let kSplitScreenCount: Int = 15
    /// 过期时间
    static let kExpiry: Int = 7200
    // 活动和poi区分  // 分享
    static let kWebType: Int = 4
    static let kStrategyType: Int = 3
    static let kPOIType: Int = 2
    static let kActiveType: Int = 1
    static let kPlacer: Int = 5
    /// 登录-微博和微信区分和手机号
    static let kSinaType: Int = 2
    static let kWeChatType: Int = 1
    static let kPhoneType: Int = 3
    
    /**
     * UIColor
     */
    static let kTextColor = "282331".color0X
    static let kLineColor = "eeeeee".color0X
    static let kShadowColor = "d8d8d8".color0X
    static let kBackColor = "f5f5f5".color0X
    static let backColor = "f3f5f6".color0X
    
    /**
     *  CGFLOAT
     */
    /// 主页TOPVIEW高度
    static let kHomePageMainViewHeight: CGFloat = 255
    /// 导航按钮高度
    static let kNavigationBarViewHeight: CGFloat = 43
    ///
    static let kPOICellHeightScale: CGFloat = 2.6
    
    // NSNotificationCenter name
    /// 进入第三方webView的链接
    static let sourceUrl = "sourceUrl"
    
    // String
    static let kHomePageTextFieldPlaceholder = "搜索地点、品类、店名"
    static let kFeedBackTextViewPlaceholder = "尽管提意见，我们保证Placer会变得更好（100字）"
    static let kSendCAPTCHA = "发送验证码"
    
    // APP版本
    static let kVersion = "1.0.5"
}

struct color {
    /**
     * UIColor
     */
    static let kTextColor = "282331".color0X
    static let kLineColor = "eeeeee".color0X
    static let kShadowColor = "d8d8d8".color0X
}

struct notificationCenter {
    static let toWebViewVC = "toWebViewVC"
    static let strategyDetailsVC = "strategyDetailsVC"
    static let sendImage = "sendImage"
    static let toNavigationPage = "toNavigationPage"
    static let changeNickname = "changeNickname"
    static let showMapsSheet = "showMapsSheet"
    static let homePageAlertMessage = "homePageAlertMessage"
    static let clickedHeadimageToMyVC = "clickedHeadimageToMyVC"
    static let applicationWillEnterForeground = "applicationWillEnterForeground"
    static let didFinishLaunchingWithOptions = "didFinishLaunchingWithOptions"
    static let applicationDidBecomeActive = "applicationDidBecomeActive"
    
    // 分享成功
    static let shareSucceed = "shareSucceed"
    // 登陆成功
    static let loginSucceed = "loginSucceed"
    static let logOut = "logOut"
    
    static let receiveRemoteNotification = "receiveRemoteNotification"
}

struct imageNamed {
    static let logo = "logo-b"
    static let userHead = "default"
    static let searchBack = "search－b"
    static let searchDown = "search1"
    static let searchRight = "search2"
    static let location = "location"
    static let background = "background"
    static let poiSortLong = "l" // 大众点评
    static let poiSort = "event-biao"
    static let searchPageSearchButton = "sousuo-souanjiu"
    static let newSearchPageSearchButton = "sousuo-shuaxin"
    static let collectSelected = "z"
    static let collectNormal = "Shape-22"
    static let homeActivePlaceholder = "shouye－event－wutu"
    static let homePOIPlaceholder = "shouye-poi-wutu"
    static let searchPlaceholder = "sousuo－wutu"
    static let detailsPlaceholder = "xiangqing-wutu"
    static let activePlaceholder = "activity－wutu"
}

struct APIKind {
    let name: String!
    let row: Int!
}

struct SettingCell {
    let type: Int
    let title: String
    var isHideLineView: Bool = false
    var data: String = ""
    var toVC: String?
}

struct IDFA {
    static let UUID = "UUID"
    static let IDFA = "IDFA"
    
    static var MY_IDFA: String {
        if let IDFA = UserDefaults.standard.value(forKey: IDFA) as? String {
            return IDFA
        } else {
            let IDFA = ASIdentifierManager.shared().advertisingIdentifier.uuidString
            UserDefaults.standard.set(IDFA, forKey: IDFA)
            return IDFA
        }
    }
}

struct userKey {
    // 第一次进入APP
    static let kFirstTimeEnterAPP = "FirstTimeEnterAPP"
    // 提醒定位开启
    static let isProposeLocation = "isProposeLocation"
    static let isProposeNotification = "isProposeNotification"
    
    // 通过 PlacerKey 请求成功获得
    static let kPlaceToken = "placeToken"
    // PlacerKey 过期时间key
    static let kExpiryStartDate = "expiryStartDate"
    
    static let kDeviceToken = "DeviceToken"
    static let kEnterForegroundDate = "EnterForegroundDate"
    static let kEnterBackgroundDate = "EnterBackgroundDate"
    static let kWillTerminateDate = "WillTerminateDate"
    static let kFeedIdOfLastDiedApp = "FeedIdOfLastDiedApp"
    
    //
    static let kIsSelectedLocationStatus = "isSelectedLocationStatus"
    
    // 是否登录
    static let kIsLogin = "isLogin"
    // 登录成功返回标示
    static let kLoginId = "loginId"
    // 用户id
    static let kUserId = "userId"
    // 用户密码
    static let kPassword = "password"
    // 用户昵称
    static let kNickname = "nickName"
    // 用户头像
    static let kHeadimage = "headimage"
    // 是否默认头像
    static let kHeadImageIsDefault = "headImageIsDefault"
    // 用户电话
    static let kPhoneNumber = "phoneNumber"
    // 用户性别
    static let kSex = "sex"
    static let kLoginType = "loginType"
    // 当前位置
    static let kMyLocationLng = "myLocation_lng"
    static let kMyLocationLat = "myLocation_lat"
    // 是否在城市范围内累计次数 五次
    static let kIsLocationCityCount = "isLocationCityCount"
    // 第一次进入搜索页
    static let kFirstInSearchPage = "firstInSearchPage"
    // 进入搜索页提醒一次
    static let kSearchPageIsRemind = "searchPageIsRemind"
    // 统计
    static let kSendStatisticsResult = "kSendStatisticsResult"
    // 第一次进入home页
    static let kFirstEnterHomePage = "firstEnterHomePage"
    static let kSetUMessage = "setUMessage"
    // 定位状态
    static let kLocationStatus = "kLocationStatus"
    
    static let kCityCode = "kCityCode"
}

enum FromPageEnum: Int {
    case home = 1
    case search = 2
    case activeList = 3
    case my = 4
    case otherMy = 5
    case other = 6
    case share = 7
    case cityLines = 8
    case listOne = 9
    case sceneList = 10
    case stategyDetails = 11
    case POIDetails = 12
    case push = 13
    case lookPast = 14
    case web = 15
    case url = 16 //mlink
    case instationLetter = 17
}

struct alert {
    
    static let shareSucceed = "分享成功"
    
    struct imageName {
        static let noCollect = "home_collection-remind"
        static let noLocation = "home_location-remind"
        static let noContent = "home_content-remind"
        static let noNet = "home_network-remind"
        // 建议开启通知的提醒
        static let notification = "tanchuang-information"
        // 建议开启定位的提醒
        static let location = "tanchuang-location"
        // 建议开启通知和定位下面的按钮按钮
        static let locationButton = "tanchuang-location-anniu"
        // 是否在数据源城市
        static let sameCity = "tanchuang-city"
    }
    
    struct password {
        // 当前密码错误或未填写
        static let kError = "当前密码错误"
        // 新密码格式错误
        static let kFormatError = "请设置6-18位新密码~"
        // 两次不一致
        static let kInconformityError = "新密码两次输入不一致"
        // 修改成功
        static let kReviseSucceed = "密码修改成功"
        // 重置成功
        static let kResetSucceed = "密码重置成功！"
        // 修改失败
        static let kReviseError = "密码修改失败"
        // 重置失败
        static let kResetError = "密码重置失败"
    }
    struct phone {
        // 手机号不正确或未填写
        static let kFormatError = "请填写正确的手机号~"
        // 修改成功
        static let kReviseSucceed = "手机号修改成功"
        static let kNoRegistration = "该手机号尚未注册Placer"
        static let kOccupied = "手机号已被占用"
        static let kSame = "与现使用手机号相同"
    }
    
    struct CAPTCHA {
        static let kError = "验证码错误"
        static let kCAPTCHA = "【Placer】你的手机验证码为：****，请在30分钟内填写" // 后端
        static let kSended = "验证码已发送"
        static let kSendedError = "验证码发送失败"
    }
    
    struct user {
        static let kNameLongLongLong = "用户名最多20个字符或10个汉字"
        static let knameRepeat = "用户名已被占用，换一个吧~"
    }
    
    static let kReviseSucceed = "修改成功"
    static let kReviseError = "修改失败"
    
    // 性别未选
    static let kSelectedSex = "Boy or Girl？"
    // 手机号或密码错误
    static let kClickedLoginError = "手机号或密码错误"
    // 第三方授权失败
    static let kAuthorizeError = "授权失败，请重试"
    // 注册失败
    static let kRegisterError = "注册失败"
    static let kRegisterSucceed = "注册成功"
    
    // 最多反馈100字
    static let kFeedBackWords = "最多反馈100字"
    
    // 退出成功
    static let kQuiteSucceed = "退出成功"
    // 登陆成功
    static let kLoginSucceed = "登录成功"
    static let kLoginError = "登录失败"
    
    // 头像上传成功
    struct headImage {
        static let kSucceed = "头像上传成功"
        static let kError = "头像上传失败"
    }
    
    // 反馈提交
    static let kSubmitSucceed = "提交成功"
    static let kSubmitError = "提交失败"
    
    static let kLocationError = "定位失败"
    static let kNetError = "网络出错"
    static let kNetSetError = "网络不给力"
    
    static let kSearchNoData = "抱歉，没有搜索到好去处"
    
    static let kGetCollectError = "获取收藏失败"
    
    static let kHomeLocationError = "定位失败了，再刷新一下试试吧"
}





/*
 static public $source = array(
 'dazhongdianping'=>'大众点评',
 'bread-trip'=>'面包旅行',
 'chengmi'=>'城觅',
 'douban'=>'豆瓣同城',
 'enjoy'=>'ENJOY',
 'xiancheng'=>'鲜城',
 'wanzhoumo'=>'周末去哪儿',
 'yhouse'=>'YHOUSE',
 'damai'=>'大麦',
 'mafengwo'=>'马蜂窝',
 'huodongxing'=>'活动行',
 'xiaojiangyou'=>'小酱油',
 'huodongshu'=>'活动树',
 'faxianzhoumo'=>'发现周末',
 'jtwsm'=>'今天玩什么',
 'breadtrip'=>'面包猎人',
 'ifindu'=>'六人行',
 'ganma'=>'干嘛',
 '108tian'=>'108天',
 'lanrenzhoumo'=>'懒人周末',
 'youyanchu'=>'有演出',
 'xiaorizi'=>'小日子',
 'huodongjia'=>'活动家',
 'tripadvisor'=>'猫途鹰',
 'ycombo'=>'Combo玩聚北京',
 'clubzone'=>'Club Zone',
 'dailyvitamin'=>'每日维他命',
 'mosh'=>'魔时网'
	);
 */
