extends Node

#if clamp1 does not work, default is clamp2
func multiClampf(aValue: float, aMin1: float, aMax1: float, aMin2: float, aMax2: float):
	var result = 0;
	var min1 = minf(aMin1,aMax1)
	var max1 = maxf(aMin1,aMax1)
	var min2 = minf(aMin2,aMax2)
	var max2 = maxf(aMin2,aMax2)	
	if aValue >= min1 and aValue <= max1:
		result = clamp(aValue,min1,max1)
	else:
		result = clamp(aValue,min2,max2)
	return result
