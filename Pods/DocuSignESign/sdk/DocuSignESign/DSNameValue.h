#import <Foundation/Foundation.h>
#import "DSObject.h"

/**
 * NOTE: This class is auto generated by the swagger code generator program.
 * https://github.com/swagger-api/swagger-codegen
 * Do not edit the class manually.
 */

#import "DSErrorDetails.h"


@protocol DSNameValue
@end

@interface DSNameValue : DSObject

/*  [optional]
 */
@property(nonatomic) NSString* name;
/* Specifies the value of the tab. [optional]
 */
@property(nonatomic) NSString* value;

@property(nonatomic) DSErrorDetails* errorDetails;

@end
