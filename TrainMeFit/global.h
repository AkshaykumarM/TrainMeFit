//
//  global.h
//  TrainMeFit
//
//  Created by Jayesh Kitukale on 5/4/15.
//  Copyright (c) 2015 Tungsten. All rights reserved.
//

#import <Foundation/Foundation.h>
#define ec2maschineIP @"http://192.168.1.121:8000/"
#define SSOUSING @"SSOUsing"
#define USERNAME @"Username"
#define PASSWORD @"Password"
#define LOGGEDIN @"LoggedIn"
#define GOOGLEPLUS @"GP"
#define FACEBOOK @"FB"
#define TMF @"TMF"
#define ERROR_MSG @"error_message"
#define REGEX_USERNAME @"[a-zA-Z\\s]*"
#define REGEX_USER_NAME_LIMIT @"^.{3,10}$"
#define REGEX_USER_NAME @"[A-Za-z0-9]{3,10}"
#define REGEX_EMAIL @"[A-Z0-9a-z._%+-]{3,}+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
#define REGEX_PASSWORD_LIMIT @"^.{6,20}$"
#define REGEX_PASSWORD @"[A-Za-z0-9]{6,20}"
#define REGEX_PHONE_DEFAULT @"([1-9][0-9]{9})||([1-9][0-9]{11})"
extern NSString *ssousing;

@interface global : NSObject
+(void)showAllertMsg:(NSString*)title Message:(NSString*)msg;
+(BOOL)isConnected;
+(NSData*)makePostRequest:(NSData*)body requestURL:(NSString*)url;
@end
