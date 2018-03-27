RWTexture2D<float4> uavOutput : register(u0);
RaytracingAccelerationStructure Scene : register(t0, space0);

struct HitData
{
	uint index : INDEX;
};

[shader("raygeneration")]
void raygen()
{
	float2 vLerpValues = (float2)DispatchRaysIndex() / DispatchRaysDimensions();

	float3 vRayDir = float3(0.0, 0.0, 1);
	float3 vRayOrigin = float3(vLerpValues.x, vLerpValues.y, 0);
	vRayOrigin.xy = vRayOrigin.xy * 2.0 - 1.0;

	RayDesc myRay = { vRayOrigin, 0.0f, vRayDir, 10000.0f };
	HitData payload = { 0 };
	TraceRay(Scene, RAY_FLAG_CULL_BACK_FACING_TRIANGLES, ~0, 0, 1, 0, myRay, payload);
}

[shader("miss")]
void raymiss(inout HitData payload : SV_RayPayload)
{
	uavOutput[DispatchRaysIndex()] = float4(1, 0, 0, 1);
}

[shader("closesthit")]
void rayhit(inout HitData payload : SV_RayPayload, in BuiltInTriangleIntersectionAttributes attr : SV_IntersectionAttributes)
{
	float3 barycentrics = float3(1.0 - attr.barycentrics.x - attr.barycentrics.y, attr.barycentrics.x, attr.barycentrics.y);
	uavOutput[DispatchRaysIndex()] = float4(barycentrics, 1);
}

