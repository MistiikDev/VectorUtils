local VectorUtils = {}

function VectorUtils.GetPiercingVector(part : BasePart, _incidentVector : Vector3, _normal : Vector3, _axis : string)
	local _computedVectorB = Vector3.new()
	local width = part.Size[_axis]
	
	local theta = math.acos(-_normal.Unit:Dot(_incidentVector))
	local offset = math.tan(theta) * width
	
	_computedVectorB = (_incidentVector + Vector3.new(0,offset,0)).Unit
	
	return _computedVectorB
end

return VectorUtils
