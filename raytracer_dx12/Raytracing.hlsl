RWTexture2D<float4> uavOutput : register(u0);
RaytracingAccelerationStructure Scene : register(t0);

struct HitData
{
	uint index : INDEX;
};

[shader("raygeneration")]
void raygen()
{
	float2 vLerpValues = (float2)DispatchRaysIndex() / DispatchRaysDimensions();

	float3 vRayDir = float3(0.0, 0.0, 1);
	float3 vRayOrigin = float3(0.0, 0.0, 0);
	
	// Cast rays
	RayDesc myRay = { vRayOrigin, 0.0f, vRayDir, 10000.0f };
	HitData payload = { 0 };
	TraceRay(Scene, RAY_FLAG_CULL_BACK_FACING_TRIANGLES, ~0, 0, 1, 0, myRay, payload);
}