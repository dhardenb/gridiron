
#import "OffensiveFormationData.h"

static int myLeftWideReceiver;
static int myLeftSplitEnd;
static int myLeftTightEnd;
static int myRightTightEnd;
static int myRightSplitEnd;
static int myRightWideReceiver;
static int myQuarterBack;
static int myFullBack;
static int myLeftHalfBack;
static int myRightHalfBack;
static int myTailBack;

@implementation OffensiveFormationData

+(int)getLeftWideReceiver
{
	return myLeftWideReceiver;
}

+(void)setLeftWideReceiver:(int)count
{
	myLeftWideReceiver = count;
}

+(int)getLeftSplitEnd
{
	return myLeftSplitEnd;
}

+(void)setLeftSplitEnd:(int)count
{
	myLeftSplitEnd = count;
}

+(int)getLeftTightEnd
{
	return myLeftTightEnd;
}

+(void)setLeftTightEnd:(int)count
{
	myLeftTightEnd = count;
}

+(int)getRightTightEnd
{
	return myRightTightEnd;
}

+(void)setRightTightEnd:(int)count
{
	myRightTightEnd = count;
}

+(int)getRightSplitEnd
{
	return myRightSplitEnd;
}

+(void)setRightSplitEnd:(int)count
{
	myRightSplitEnd = count;
}

+(int)getRightWideReceiver
{
	return myRightWideReceiver;
}

+(void)setRightWideReceiver:(int)count
{
	myRightWideReceiver = count;
}

+(int)getQuarterBack
{
	return myQuarterBack;
}

+(void)setQuarterBack:(int)count
{
	myQuarterBack = count;
}

+(int)getFullBack
{
	return myFullBack;
}

+(void)setFullBack:(int)count
{
	myFullBack = count;
}

+(int)getLeftHalfBack
{
	return myLeftHalfBack;
}

+(void)setLeftHalfBack:(int)count
{
	myLeftHalfBack = count;
}

+(int)getRightHalfBack
{
	return myRightHalfBack;
}

+(void)setRightHalfBack:(int)count
{
	myRightHalfBack = count;
}

+(int)getTailBack
{
	return myTailBack;
}

+(void)setTailBack:(int)count
{
	myTailBack = count;
}

+ (int)getNumberOfRecieversAttackingZone
{
    int numberOfRecieversAttackingZone = 0;
    
    if ([GameManager getAttackZoneSelected] == SHORT_LEFT_PASSING_ZONE)
    {
        if ([OffensiveFormationData getLeftWideReceiver] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getLeftSplitEnd] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getLeftTightEnd] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getLeftHalfBack] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
    }
    
    else if ([GameManager getAttackZoneSelected] == SHORT_MIDDLE_PASSING_ZONE)
    {
        if ([OffensiveFormationData getLeftSplitEnd] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getLeftTightEnd] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getRightTightEnd] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getRightSplitEnd] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
    }
    
    else if ([GameManager getAttackZoneSelected] == SHORT_RIGHT_PASSING_ZONE)
    {
        if ([OffensiveFormationData getRightWideReceiver] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getRightSplitEnd] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getRightTightEnd] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getRightHalfBack] == 1)
        {
            numberOfRecieversAttackingZone++; 
        } 
    }
    
    else if ([GameManager getAttackZoneSelected] == MIDDLE_LEFT_PASSING_ZONE)
    {
        if ([OffensiveFormationData getLeftWideReceiver] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getLeftSplitEnd] == 1)
        {
            numberOfRecieversAttackingZone = numberOfRecieversAttackingZone + 2;
        }
        
        if ([OffensiveFormationData getLeftTightEnd] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
    }
    
    else if ([GameManager getAttackZoneSelected] == MIDDLE_RIGHT_PASSING_ZONE)
    {
        if ([OffensiveFormationData getRightWideReceiver] == 1)
        {
            numberOfRecieversAttackingZone++; 
        }
        
        if ([OffensiveFormationData getRightSplitEnd] == 1)
        {
            numberOfRecieversAttackingZone = numberOfRecieversAttackingZone + 2;
        }
        
        if ([OffensiveFormationData getRightTightEnd] == 1)
        {
            numberOfRecieversAttackingZone++; 
        } 
    }
    
    else if ([GameManager getAttackZoneSelected] == DEEP_PASSING_ZONE)
    {
        if ([OffensiveFormationData getLeftWideReceiver] == 1)
        {
            numberOfRecieversAttackingZone = numberOfRecieversAttackingZone + 2;
        }
        
        if ([OffensiveFormationData getRightWideReceiver] == 1)
        {
            numberOfRecieversAttackingZone = numberOfRecieversAttackingZone + 2;
        }
    }
    
    return numberOfRecieversAttackingZone;
}

@end
