; ModuleID = 'merged_lib'
target triple = "dxil-ms-dx"

%struct.RWByteAddressBuffer = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%AccelerationStructureList = type { <2 x i32> }
%Constants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%struct.RaytracingAccelerationStructure = type { i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Handle = type { i8* }
%struct.BuiltInTriangleIntersectionAttributes = type { <2 x float> }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%class.matrix.float.3.4 = type { [3 x <4 x float>] }
%struct.HitData = type { i32 }
%struct.RaytracingInstanceDesc = type { [3 x <4 x float>], i32, i32, <2 x i32> }
%struct.RWByteAddressBufferPointer = type { %struct.RWByteAddressBuffer, i32 }
%struct.BVHMetadata = type { %struct.RaytracingInstanceDesc, [3 x <4 x float>] }
%struct.BoundingBox = type { <3 x float>, <3 x float> }
%struct.TriangleMetaData = type { i32, i32 }
%struct.AABB = type { <3 x float>, <3 x float> }
%struct.RayData = type { <3 x float>, <3 x float>, <3 x float>, <3 x float>, <3 x float>, <3 x i32> }

@"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A" = external global [0 x %struct.RWByteAddressBuffer]
@"\01?HitGroupShaderTable@@3UByteAddressBuffer@@A" = external global %struct.ByteAddressBuffer
@AccelerationStructureList = external constant %AccelerationStructureList
@"\01?MissShaderTable@@3UByteAddressBuffer@@A" = external global %struct.ByteAddressBuffer
@"\01?stack@@3PAIA" = addrspace(3) global [2048 x i32] zeroinitializer
@Constants = external constant %Constants
@"\01?uavOutput@@3V?$RWTexture2D@V?$vector@M$03@@@@A" = external global %"class.RWTexture2D<vector<float, 4> >"
@"\01?Scene@@3URaytracingAccelerationStructure@@A" = external global %struct.RaytracingAccelerationStructure
@"1boxVertices.3.hca" = internal constant [8 x float] [float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00]
@"\01?RayGenShaderTable@@3UByteAddressBuffer@@A" = external global %struct.ByteAddressBuffer

; Function Attrs: alwaysinline
declare void @"\01?Fallback_TraceRayBegin@@YAXV?$vector@M$02@@M0M@Z"(<3 x float>, float, <3 x float>, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RaytracingAccelerationStructure(i32, %struct.RaytracingAccelerationStructure) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #2

; Function Attrs: alwaysinline
declare i32 @"\01?Fallback_GroupIndex@@YAIXZ"() #0

; Function Attrs: alwaysinline
declare void @"\01?Fallback_SetPendingTriVals@@YAXMIIIII@Z"(float, i32, i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.worldRayOrigin.f32(i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.ByteAddressBuffer(i32, %struct.ByteAddressBuffer) #1

; Function Attrs: alwaysinline
declare i32 @"\01?Fallback_AnyHitResult@@YAHXZ"() #0

; Function Attrs: alwaysinline
declare void @"\01?Fallback_SetObjectRayOrigin@@YAXV?$vector@M$02@@@Z"(<3 x float>) #0

; Function Attrs: nounwind readonly
declare float @dx.op.rayTCurrent.f32(i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.rayTMin.f32(i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32, %struct.RWByteAddressBuffer) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @"dx.op.createHandleFromResourceStructForLib.class.RWTexture2D<vector<float, 4> >"(i32, %"class.RWTexture2D<vector<float, 4> >") #1

; Function Attrs: alwaysinline
declare void @"\01?Fallback_Scheduler@@YAXHII@Z"(i32, i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #3

; Function Attrs: alwaysinline
declare void @"\01?Fallback_SetAnyHitResult@@YAXH@Z"(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.AccelerationStructureList(i32, %AccelerationStructureList) #1

; Function Attrs: alwaysinline
declare void @"\01?Fallback_SetInstanceIndex@@YAXI@Z"(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.instanceIndex.i32(i32) #2

; Function Attrs: alwaysinline
declare void @"\01?Fallback_CommitHit@@YAXXZ"() #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.Constants(i32, %Constants) #1

; Function Attrs: nounwind readnone
declare float @dx.op.worldRayDirection.f32(i32, i8) #2

; Function Attrs: alwaysinline
declare void @"\01?Fallback_SetPendingAttr@@YAXUBuiltInTriangleIntersectionAttributes@@@Z"(%struct.BuiltInTriangleIntersectionAttributes*) #0

; Function Attrs: alwaysinline
declare i32 @"\01?Fallback_GeometryIndex@@YAIXZ"() #0

; Function Attrs: alwaysinline
declare void @"\01?Fallback_SetRayFlags@@YAXI@Z"(i32) #0

; Function Attrs: alwaysinline
declare void @"\01?Fallback_SetObjectRayDirection@@YAXV?$vector@M$02@@@Z"(<3 x float>) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.rayFlags.i32(i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: alwaysinline
declare void @"\01?Fallback_SetObjectToWorld@@YAXV?$matrix@M$02$03@@@Z"(%class.matrix.float.3.4) #0

; Function Attrs: alwaysinline
declare void @"\01?Fallback_CallIndirect@@YAXH@Z"(i32) #0

; Function Attrs: alwaysinline
declare i32 @"\01?Fallback_SetPayloadOffset@@YAII@Z"(i32) #0

; Function Attrs: alwaysinline
declare void @"\01?Fallback_SetWorldToObject@@YAXV?$matrix@M$02$03@@@Z"(%class.matrix.float.3.4) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #2

; Function Attrs: nounwind
declare void @dx.op.traceRay.struct.HitData(i32, %dx.types.Handle, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, %struct.HitData*) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.dispatchRaysDimensions.i32(i32, i8) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.dispatchRaysIndex.i32(i32, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #2

; Function Attrs: alwaysinline nounwind
define void @"\01?Fallback_TraceRay@@YAXIIIIIMMMMMMMMI@Z"(i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, i32) #4 {
  %15 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?MissShaderTable@@3UByteAddressBuffer@@A", align 4
  %16 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?HitGroupShaderTable@@3UByteAddressBuffer@@A", align 4
  %17 = load %AccelerationStructureList, %AccelerationStructureList* @AccelerationStructureList, align 4
  %18 = load %Constants, %Constants* @Constants, align 4
  %AccelerationStructureList = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.AccelerationStructureList(i32 160, %AccelerationStructureList %17)
  %Constants249 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.Constants(i32 160, %Constants %18)
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca [3 x float], align 4
  %23 = alloca [3 x float], align 4
  %nodesToProcess.i.i = alloca [2 x i32], align 4
  %attr.i.i = alloca %struct.BuiltInTriangleIntersectionAttributes, align 4
  %24 = call i32 @"\01?Fallback_SetPayloadOffset@@YAII@Z"(i32 %13) #3
  call void @"\01?Fallback_SetRayFlags@@YAXI@Z"(i32 %0) #3
  %25 = insertelement <3 x float> undef, float %9, i64 0
  %26 = insertelement <3 x float> %25, float %10, i64 1
  %27 = insertelement <3 x float> %26, float %11, i64 2
  %28 = insertelement <3 x float> undef, float %5, i64 0
  %29 = insertelement <3 x float> %28, float %6, i64 1
  %30 = insertelement <3 x float> %29, float %7, i64 2
  call void @"\01?Fallback_TraceRayBegin@@YAXV?$vector@M$02@@M0M@Z"(<3 x float> %30, float %8, <3 x float> %27, float %12) #3
  %31 = call i32 @"\01?Fallback_GroupIndex@@YAIXZ"() #3
  %WorldRayDirection220 = call float @dx.op.worldRayDirection.f32(i32 148, i8 0)
  %WorldRayDirection221 = call float @dx.op.worldRayDirection.f32(i32 148, i8 1)
  %WorldRayDirection222 = call float @dx.op.worldRayDirection.f32(i32 148, i8 2)
  %WorldRayOrigin217 = call float @dx.op.worldRayOrigin.f32(i32 147, i8 0)
  %WorldRayOrigin218 = call float @dx.op.worldRayOrigin.f32(i32 147, i8 1)
  %WorldRayOrigin219 = call float @dx.op.worldRayOrigin.f32(i32 147, i8 2)
  %32 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 0
  store float %WorldRayDirection220, float* %32, align 4
  %33 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 1
  store float %WorldRayDirection221, float* %33, align 4
  %34 = getelementptr inbounds [3 x float], [3 x float]* %23, i32 0, i32 2
  store float %WorldRayDirection222, float* %34, align 4
  %.i0 = fdiv fast float 1.000000e+00, %WorldRayDirection220
  %.i1 = fdiv fast float 1.000000e+00, %WorldRayDirection221
  %.i2 = fdiv fast float 1.000000e+00, %WorldRayDirection222
  %.i0250 = fmul fast float %.i0, %WorldRayOrigin217
  %.i1251 = fmul fast float %.i1, %WorldRayOrigin218
  %.i2252 = fmul fast float %.i2, %WorldRayOrigin219
  %FAbs210 = call float @dx.op.unary.f32(i32 6, float %WorldRayDirection220)
  %FAbs211 = call float @dx.op.unary.f32(i32 6, float %WorldRayDirection221)
  %FAbs212 = call float @dx.op.unary.f32(i32 6, float %WorldRayDirection222)
  %35 = fcmp fast ogt float %FAbs210, %FAbs211
  %36 = fcmp fast ogt float %FAbs210, %FAbs212
  %37 = and i1 %35, %36
  br i1 %37, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i", label %38

; <label>:38                                      ; preds = %14
  %39 = fcmp fast ogt float %FAbs211, %FAbs212
  br i1 %39, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i", label %40

; <label>:40                                      ; preds = %38
  br label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i"

"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i": ; preds = %40, %38, %14
  %.0171 = phi i32 [ 2, %40 ], [ 0, %14 ], [ 1, %38 ]
  %41 = add nuw nsw i32 %.0171, 1
  %42 = urem i32 %41, 3
  %43 = add nuw nsw i32 %.0171, 2
  %44 = urem i32 %43, 3
  %45 = getelementptr [3 x float], [3 x float]* %23, i32 0, i32 %.0171
  %46 = load float, float* %45, align 4, !tbaa !151, !noalias !155
  %47 = fcmp fast olt float %46, 0.000000e+00
  %worldRayData.i.i.5.0.i0 = select i1 %47, i32 %44, i32 %42
  %worldRayData.i.i.5.0.i1 = select i1 %47, i32 %42, i32 %44
  %48 = getelementptr [3 x float], [3 x float]* %23, i32 0, i32 %worldRayData.i.i.5.0.i0
  %49 = load float, float* %48, align 4, !tbaa !151, !noalias !155
  %50 = fdiv float %49, %46
  %51 = getelementptr [3 x float], [3 x float]* %23, i32 0, i32 %worldRayData.i.i.5.0.i1
  %52 = load float, float* %51, align 4, !tbaa !151, !noalias !155
  %53 = fdiv float %52, %46
  %54 = fdiv float 1.000000e+00, %46
  %55 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList, i32 0)
  %56 = extractvalue %dx.types.CBufRet.i32 %55, 0
  %57 = extractvalue %dx.types.CBufRet.i32 %55, 1
  %58 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %31
  store i32 0, i32 addrspace(3)* %58, align 4, !tbaa !158, !noalias !160
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i.i, i32 0, i32 0
  store i32 1, i32* %59, align 4, !tbaa !158
  %60 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList, i32 0)
  %61 = extractvalue %dx.types.CBufRet.i32 %60, 0
  %62 = extractvalue %dx.types.CBufRet.i32 %60, 1
  %63 = getelementptr inbounds [0 x %struct.RWByteAddressBuffer], [0 x %struct.RWByteAddressBuffer]* @"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A", i32 0, i32 %62, !dx.nonuniform !163
  %64 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %63, align 4, !noalias !164
  %65 = add i32 %61, 4
  %66 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %64)
  %67 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %66, i32 %65, i32 undef)
  %68 = extractvalue %dx.types.ResRet.i32 %67, 0
  %69 = add i32 %68, %61
  call void @"\01?Fallback_SetInstanceIndex@@YAXI@Z"(i32 -1) #3
  %70 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 0
  %71 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 1
  %72 = getelementptr inbounds [3 x float], [3 x float]* %22, i32 0, i32 2
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i.i, i32 0, i32 1
  %74 = getelementptr inbounds %struct.BuiltInTriangleIntersectionAttributes, %struct.BuiltInTriangleIntersectionAttributes* %attr.i.i, i32 0, i32 0
  %75 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 0
  %76 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 1
  %77 = getelementptr inbounds [3 x float], [3 x float]* %21, i32 0, i32 2
  %78 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 0
  %79 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 1
  %80 = getelementptr inbounds [3 x float], [3 x float]* %19, i32 0, i32 2
  %81 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 0
  %82 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 1
  %83 = getelementptr inbounds [3 x float], [3 x float]* %20, i32 0, i32 2
  br label %.backedge

.backedge:                                        ; preds = %393, %397, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i"
  %.0174.i0 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %.3.i0, %397 ], [ %.3.i0, %393 ]
  %.0174.i1 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %.3.i1, %397 ], [ %.3.i1, %393 ]
  %currentRayData.i.i.0.0.i0 = phi float [ %WorldRayOrigin217, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.0.1.i0, %393 ], [ %WorldRayOrigin217, %397 ]
  %currentRayData.i.i.0.0.i1 = phi float [ %WorldRayOrigin218, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.0.1.i1, %393 ], [ %WorldRayOrigin218, %397 ]
  %currentRayData.i.i.0.0.i2 = phi float [ %WorldRayOrigin219, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.0.1.i2, %393 ], [ %WorldRayOrigin219, %397 ]
  %currentRayData.i.i.1.0.i0 = phi float [ %WorldRayDirection220, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.1.1.i0, %393 ], [ %WorldRayDirection220, %397 ]
  %currentRayData.i.i.1.0.i1 = phi float [ %WorldRayDirection221, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.1.1.i1, %393 ], [ %WorldRayDirection221, %397 ]
  %currentRayData.i.i.1.0.i2 = phi float [ %WorldRayDirection222, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.1.1.i2, %393 ], [ %WorldRayDirection222, %397 ]
  %currentRayData.i.i.2.0.i0 = phi float [ %.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.2.1.i0, %393 ], [ %.i0, %397 ]
  %currentRayData.i.i.2.0.i1 = phi float [ %.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.2.1.i1, %393 ], [ %.i1, %397 ]
  %currentRayData.i.i.2.0.i2 = phi float [ %.i2, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.2.1.i2, %393 ], [ %.i2, %397 ]
  %currentRayData.i.i.3.0.i0 = phi float [ %.i0250, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.3.1.i0, %393 ], [ %.i0250, %397 ]
  %currentRayData.i.i.3.0.i1 = phi float [ %.i1251, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.3.1.i1, %393 ], [ %.i1251, %397 ]
  %currentRayData.i.i.3.0.i2 = phi float [ %.i2252, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.3.1.i2, %393 ], [ %.i2252, %397 ]
  %currentRayData.i.i.4.0.i0 = phi float [ %50, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.4.1.i0, %393 ], [ %50, %397 ]
  %currentRayData.i.i.4.0.i1 = phi float [ %53, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.4.1.i1, %393 ], [ %53, %397 ]
  %currentRayData.i.i.4.0.i2 = phi float [ %54, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.4.1.i2, %393 ], [ %54, %397 ]
  %currentRayData.i.i.5.0.i0 = phi i32 [ %worldRayData.i.i.5.0.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.5.1.i0, %393 ], [ %worldRayData.i.i.5.0.i0, %397 ]
  %currentRayData.i.i.5.0.i1 = phi i32 [ %worldRayData.i.i.5.0.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.5.1.i1, %393 ], [ %worldRayData.i.i.5.0.i1, %397 ]
  %currentRayData.i.i.5.0.i2 = phi i32 [ %.0171, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentRayData.i.i.5.1.i2, %393 ], [ %.0171, %397 ]
  %CurrentObjectToWorld.i.i167.0.i0 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i0, %397 ], [ %CurrentObjectToWorld.i.i167.1.i0, %393 ]
  %CurrentObjectToWorld.i.i167.0.i1 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i1, %397 ], [ %CurrentObjectToWorld.i.i167.1.i1, %393 ]
  %CurrentObjectToWorld.i.i167.0.i2 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i2, %397 ], [ %CurrentObjectToWorld.i.i167.1.i2, %393 ]
  %CurrentObjectToWorld.i.i167.0.i3 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i3, %397 ], [ %CurrentObjectToWorld.i.i167.1.i3, %393 ]
  %CurrentObjectToWorld.i.i167.0.i4 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i4, %397 ], [ %CurrentObjectToWorld.i.i167.1.i4, %393 ]
  %CurrentObjectToWorld.i.i167.0.i5 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i5, %397 ], [ %CurrentObjectToWorld.i.i167.1.i5, %393 ]
  %CurrentObjectToWorld.i.i167.0.i6 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i6, %397 ], [ %CurrentObjectToWorld.i.i167.1.i6, %393 ]
  %CurrentObjectToWorld.i.i167.0.i7 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i7, %397 ], [ %CurrentObjectToWorld.i.i167.1.i7, %393 ]
  %CurrentObjectToWorld.i.i167.0.i8 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i8, %397 ], [ %CurrentObjectToWorld.i.i167.1.i8, %393 ]
  %CurrentObjectToWorld.i.i167.0.i9 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i9, %397 ], [ %CurrentObjectToWorld.i.i167.1.i9, %393 ]
  %CurrentObjectToWorld.i.i167.0.i10 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i10, %397 ], [ %CurrentObjectToWorld.i.i167.1.i10, %393 ]
  %CurrentObjectToWorld.i.i167.0.i11 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i11, %397 ], [ %CurrentObjectToWorld.i.i167.1.i11, %393 ]
  %CurrentWorldToObject.i.i168.0.i0 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i0, %397 ], [ %CurrentWorldToObject.i.i168.1.i0, %393 ]
  %CurrentWorldToObject.i.i168.0.i1 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i1, %397 ], [ %CurrentWorldToObject.i.i168.1.i1, %393 ]
  %CurrentWorldToObject.i.i168.0.i2 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i2, %397 ], [ %CurrentWorldToObject.i.i168.1.i2, %393 ]
  %CurrentWorldToObject.i.i168.0.i3 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i3, %397 ], [ %CurrentWorldToObject.i.i168.1.i3, %393 ]
  %CurrentWorldToObject.i.i168.0.i4 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i4, %397 ], [ %CurrentWorldToObject.i.i168.1.i4, %393 ]
  %CurrentWorldToObject.i.i168.0.i5 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i5, %397 ], [ %CurrentWorldToObject.i.i168.1.i5, %393 ]
  %CurrentWorldToObject.i.i168.0.i6 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i6, %397 ], [ %CurrentWorldToObject.i.i168.1.i6, %393 ]
  %CurrentWorldToObject.i.i168.0.i7 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i7, %397 ], [ %CurrentWorldToObject.i.i168.1.i7, %393 ]
  %CurrentWorldToObject.i.i168.0.i8 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i8, %397 ], [ %CurrentWorldToObject.i.i168.1.i8, %393 ]
  %CurrentWorldToObject.i.i168.0.i9 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i9, %397 ], [ %CurrentWorldToObject.i.i168.1.i9, %393 ]
  %CurrentWorldToObject.i.i168.0.i10 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i10, %397 ], [ %CurrentWorldToObject.i.i168.1.i10, %393 ]
  %CurrentWorldToObject.i.i168.0.i11 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i11, %397 ], [ %CurrentWorldToObject.i.i168.1.i11, %393 ]
  %ResetMatrices.i.i.0 = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %ResetMatrices.i.i.2, %393 ], [ 1, %397 ]
  %currentBVHIndex.i.i.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentBVHIndex.i.i.1, %393 ], [ %398, %397 ]
  %currentGpuVA.i.i.0.i0 = phi i32 [ %56, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentGpuVA.i.i.1.i0, %393 ], [ %400, %397 ]
  %currentGpuVA.i.i.0.i1 = phi i32 [ %57, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %currentGpuVA.i.i.1.i1, %393 ], [ %401, %397 ]
  %instIdx.i.i.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %instIdx.i.i.1, %397 ], [ %instIdx.i.i.1, %393 ]
  %instFlags.i.i.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %instFlags.i.i.1, %397 ], [ %instFlags.i.i.1, %393 ]
  %instOffset.i.i.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %instOffset.i.i.1, %397 ], [ %instOffset.i.i.1, %393 ]
  %instId.i.i.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %instId.i.i.1, %397 ], [ %instId.i.i.1, %393 ]
  %stackPointer.i.i.0 = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %stackPointer.i.i.1, %397 ], [ %stackPointer.i.i.1, %393 ]
  %resultBary.i.i.0.i0 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %resultBary.i.i.1.i0, %397 ], [ %resultBary.i.i.1.i0, %393 ]
  %resultBary.i.i.0.i1 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %resultBary.i.i.1.i1, %397 ], [ %resultBary.i.i.1.i1, %393 ]
  %resultTriId.i.i.0 = phi i32 [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i" ], [ %resultTriId.i.i.1, %397 ], [ %resultTriId.i.i.1, %393 ]
  %currentRayData.i.i.1.0.upto0 = insertelement <3 x float> undef, float %currentRayData.i.i.1.0.i0, i32 0
  %currentRayData.i.i.1.0.upto1 = insertelement <3 x float> %currentRayData.i.i.1.0.upto0, float %currentRayData.i.i.1.0.i1, i32 1
  %currentRayData.i.i.1.0 = insertelement <3 x float> %currentRayData.i.i.1.0.upto1, float %currentRayData.i.i.1.0.i2, i32 2
  %currentRayData.i.i.0.0.upto0 = insertelement <3 x float> undef, float %currentRayData.i.i.0.0.i0, i32 0
  %currentRayData.i.i.0.0.upto1 = insertelement <3 x float> %currentRayData.i.i.0.0.upto0, float %currentRayData.i.i.0.0.i1, i32 1
  %currentRayData.i.i.0.0 = insertelement <3 x float> %currentRayData.i.i.0.0.upto1, float %currentRayData.i.i.0.0.i2, i32 2
  %84 = add nsw i32 %stackPointer.i.i.0, -1
  %85 = shl i32 %84, 6
  %86 = add i32 %85, %31
  %87 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %86
  %88 = load i32, i32 addrspace(3)* %87, align 4, !tbaa !158, !noalias !169
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i.i, i32 0, i32 %currentBVHIndex.i.i.0
  %90 = load i32, i32* %89, align 4, !tbaa !158
  %91 = add i32 %90, -1
  store i32 %91, i32* %89, align 4, !tbaa !158
  %92 = getelementptr inbounds [0 x %struct.RWByteAddressBuffer], [0 x %struct.RWByteAddressBuffer]* @"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A", i32 0, i32 %currentGpuVA.i.i.0.i1, !dx.nonuniform !163
  %93 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %92, align 4, !noalias !172
  %94 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %93)
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %94, i32 %currentGpuVA.i.i.0.i0, i32 undef)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = shl i32 %88, 5
  %98 = add i32 %97, %currentGpuVA.i.i.0.i0
  %99 = add i32 %98, %96
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %94, i32 %99, i32 undef)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = extractvalue %dx.types.ResRet.i32 %100, 1
  %103 = extractvalue %dx.types.ResRet.i32 %100, 2
  %104 = extractvalue %dx.types.ResRet.i32 %100, 3
  %105 = add i32 %99, 16
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %94, i32 %105, i32 undef)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = extractvalue %dx.types.ResRet.i32 %106, 1
  %109 = extractvalue %dx.types.ResRet.i32 %106, 2
  %110 = extractvalue %dx.types.ResRet.i32 %106, 3
  %111 = bitcast i32 %101 to float
  %112 = bitcast i32 %102 to float
  %113 = bitcast i32 %103 to float
  %114 = bitcast i32 %107 to float
  %115 = bitcast i32 %108 to float
  %116 = bitcast i32 %109 to float
  %RayTCurrent201 = call float @dx.op.rayTCurrent.f32(i32 154)
  %.i0253 = fmul fast float %111, %currentRayData.i.i.2.0.i0
  %.i1254 = fmul fast float %112, %currentRayData.i.i.2.0.i1
  %.i2255 = fmul fast float %113, %currentRayData.i.i.2.0.i2
  %.i0256 = fsub fast float %.i0253, %currentRayData.i.i.3.0.i0
  %.i1257 = fsub fast float %.i1254, %currentRayData.i.i.3.0.i1
  %.i2258 = fsub fast float %.i2255, %currentRayData.i.i.3.0.i2
  %FAbs207 = call float @dx.op.unary.f32(i32 6, float %currentRayData.i.i.2.0.i0)
  %FAbs208 = call float @dx.op.unary.f32(i32 6, float %currentRayData.i.i.2.0.i1)
  %FAbs209 = call float @dx.op.unary.f32(i32 6, float %currentRayData.i.i.2.0.i2)
  %.i0259 = fmul fast float %114, %FAbs207
  %.i1260 = fmul fast float %FAbs208, %115
  %.i2261 = fmul fast float %FAbs209, %116
  %.i0262 = fadd fast float %.i0259, %.i0256
  %.i1263 = fadd fast float %.i1260, %.i1257
  %.i2264 = fadd fast float %.i2261, %.i2258
  %.i0268 = fsub fast float %.i0256, %.i0259
  %.i1269 = fsub fast float %.i1257, %.i1260
  %.i2270 = fsub fast float %.i2258, %.i2261
  %FMax231 = call float @dx.op.binary.f32(i32 35, float %.i0268, float %.i1269)
  %FMax230 = call float @dx.op.binary.f32(i32 35, float %FMax231, float %.i2270)
  %FMin229 = call float @dx.op.binary.f32(i32 36, float %.i0262, float %.i1263)
  %FMin228 = call float @dx.op.binary.f32(i32 36, float %FMin229, float %.i2264)
  %FMax = call float @dx.op.binary.f32(i32 35, float %FMax230, float 0.000000e+00)
  %FMin = call float @dx.op.binary.f32(i32 36, float %FMin228, float %RayTCurrent201)
  %117 = fcmp fast olt float %FMax, %FMin
  br i1 %117, label %118, label %393

; <label>:118                                     ; preds = %.backedge
  %119 = icmp slt i32 %104, 0
  br i1 %119, label %120, label %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i"

; <label>:120                                     ; preds = %118
  %121 = icmp eq i32 %currentBVHIndex.i.i.0, 0
  br i1 %121, label %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176", label %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i"

"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176": ; preds = %120
  %122 = and i32 %104, 2147483647
  %123 = mul i32 %122, 112
  %124 = add i32 %69, %123
  %125 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %64)
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %125, i32 %124, i32 undef)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = extractvalue %dx.types.ResRet.i32 %126, 1
  %129 = extractvalue %dx.types.ResRet.i32 %126, 2
  %130 = extractvalue %dx.types.ResRet.i32 %126, 3
  %131 = add i32 %124, 16
  %132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %125, i32 %131, i32 undef)
  %133 = extractvalue %dx.types.ResRet.i32 %132, 0
  %134 = extractvalue %dx.types.ResRet.i32 %132, 1
  %135 = extractvalue %dx.types.ResRet.i32 %132, 2
  %136 = extractvalue %dx.types.ResRet.i32 %132, 3
  %137 = add i32 %124, 32
  %138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %125, i32 %137, i32 undef)
  %139 = extractvalue %dx.types.ResRet.i32 %138, 0
  %140 = extractvalue %dx.types.ResRet.i32 %138, 1
  %141 = extractvalue %dx.types.ResRet.i32 %138, 2
  %142 = extractvalue %dx.types.ResRet.i32 %138, 3
  %143 = add i32 %124, 48
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %125, i32 %143, i32 undef)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = extractvalue %dx.types.ResRet.i32 %144, 1
  %147 = extractvalue %dx.types.ResRet.i32 %144, 2
  %148 = extractvalue %dx.types.ResRet.i32 %144, 3
  %149 = add i32 %124, 64
  %150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %125, i32 %149, i32 undef)
  %151 = extractvalue %dx.types.ResRet.i32 %150, 0
  %152 = extractvalue %dx.types.ResRet.i32 %150, 1
  %153 = extractvalue %dx.types.ResRet.i32 %150, 2
  %154 = extractvalue %dx.types.ResRet.i32 %150, 3
  %155 = add i32 %124, 80
  %156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %125, i32 %155, i32 undef)
  %157 = extractvalue %dx.types.ResRet.i32 %156, 0
  %158 = extractvalue %dx.types.ResRet.i32 %156, 1
  %159 = extractvalue %dx.types.ResRet.i32 %156, 2
  %160 = extractvalue %dx.types.ResRet.i32 %156, 3
  %161 = add i32 %124, 96
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %125, i32 %161, i32 undef)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = extractvalue %dx.types.ResRet.i32 %162, 1
  %165 = extractvalue %dx.types.ResRet.i32 %162, 2
  %166 = extractvalue %dx.types.ResRet.i32 %162, 3
  %167 = bitcast i32 %127 to float
  %168 = bitcast i32 %128 to float
  %169 = bitcast i32 %129 to float
  %170 = bitcast i32 %130 to float
  %171 = bitcast i32 %133 to float
  %172 = bitcast i32 %134 to float
  %173 = bitcast i32 %135 to float
  %174 = bitcast i32 %136 to float
  %175 = bitcast i32 %139 to float
  %176 = bitcast i32 %140 to float
  %177 = bitcast i32 %141 to float
  %178 = bitcast i32 %142 to float
  %179 = and i32 %146, 16777215
  %180 = and i32 %145, 16777215
  %181 = lshr i32 %145, 24
  %182 = and i32 %181, %1
  %183 = icmp eq i32 %182, 0
  %184 = bitcast i32 %151 to float
  %185 = bitcast i32 %152 to float
  %186 = bitcast i32 %153 to float
  %187 = bitcast i32 %154 to float
  %188 = bitcast i32 %157 to float
  %189 = bitcast i32 %158 to float
  %190 = bitcast i32 %159 to float
  %191 = bitcast i32 %160 to float
  %192 = bitcast i32 %163 to float
  %193 = bitcast i32 %164 to float
  %194 = bitcast i32 %165 to float
  %195 = bitcast i32 %166 to float
  br i1 %183, label %393, label %196

; <label>:196                                     ; preds = %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176"
  store i32 0, i32 addrspace(3)* %87, align 4, !tbaa !158, !noalias !177
  %197 = lshr i32 %146, 24
  %198 = fmul fast float %WorldRayDirection220, %167
  %FMad248 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection221, float %168, float %198)
  %FMad247 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection222, float %169, float %FMad248)
  %FMad246 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %170, float %FMad247)
  %199 = fmul fast float %WorldRayDirection220, %171
  %FMad245 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection221, float %172, float %199)
  %FMad244 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection222, float %173, float %FMad245)
  %FMad243 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %174, float %FMad244)
  %200 = fmul fast float %WorldRayDirection220, %175
  %FMad242 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection221, float %176, float %200)
  %FMad241 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection222, float %177, float %FMad242)
  %FMad240 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %178, float %FMad241)
  %201 = fmul fast float %WorldRayOrigin217, %167
  %FMad239 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin218, float %168, float %201)
  %FMad238 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin219, float %169, float %FMad239)
  %FMad237 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %170, float %FMad238)
  %202 = fmul fast float %WorldRayOrigin217, %171
  %FMad236 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin218, float %172, float %202)
  %FMad235 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin219, float %173, float %FMad236)
  %FMad234 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %174, float %FMad235)
  %203 = fmul fast float %WorldRayOrigin217, %175
  %FMad233 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin218, float %176, float %203)
  %FMad232 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin219, float %177, float %FMad233)
  %FMad = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %178, float %FMad232)
  store float %FMad246, float* %70, align 4
  store float %FMad243, float* %71, align 4
  store float %FMad240, float* %72, align 4
  %.i0294 = fdiv fast float 1.000000e+00, %FMad246
  %.i1295 = fdiv fast float 1.000000e+00, %FMad243
  %.i2296 = fdiv fast float 1.000000e+00, %FMad240
  %.i0297 = fmul fast float %.i0294, %FMad237
  %.i1298 = fmul fast float %.i1295, %FMad234
  %.i2299 = fmul fast float %.i2296, %FMad
  %FAbs = call float @dx.op.unary.f32(i32 6, float %FMad246)
  %FAbs202 = call float @dx.op.unary.f32(i32 6, float %FMad243)
  %FAbs203 = call float @dx.op.unary.f32(i32 6, float %FMad240)
  %204 = fcmp fast ogt float %FAbs, %FAbs202
  %205 = fcmp fast ogt float %FAbs, %FAbs203
  %206 = and i1 %204, %205
  br i1 %206, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i", label %207

; <label>:207                                     ; preds = %196
  %208 = fcmp fast ogt float %FAbs202, %FAbs203
  br i1 %208, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i", label %209

; <label>:209                                     ; preds = %207
  br label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i"

"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i": ; preds = %209, %207, %196
  %.0172 = phi i32 [ 2, %209 ], [ 0, %196 ], [ 1, %207 ]
  %210 = add nuw nsw i32 %.0172, 1
  %211 = urem i32 %210, 3
  %212 = add nuw nsw i32 %.0172, 2
  %213 = urem i32 %212, 3
  %214 = getelementptr [3 x float], [3 x float]* %22, i32 0, i32 %.0172
  %215 = load float, float* %214, align 4, !tbaa !151, !noalias !180
  %216 = fcmp fast olt float %215, 0.000000e+00
  %.5.0.i0 = select i1 %216, i32 %213, i32 %211
  %.5.0.i1 = select i1 %216, i32 %211, i32 %213
  %217 = getelementptr [3 x float], [3 x float]* %22, i32 0, i32 %.5.0.i0
  %218 = load float, float* %217, align 4, !tbaa !151, !noalias !180
  %219 = fdiv float %218, %215
  %220 = getelementptr [3 x float], [3 x float]* %22, i32 0, i32 %.5.0.i1
  %221 = load float, float* %220, align 4, !tbaa !151, !noalias !180
  %222 = fdiv float %221, %215
  %223 = fdiv float 1.000000e+00, %215
  store i32 1, i32* %73, align 4, !tbaa !158
  br label %393

"\01?IsOpaque@@YA_N_NII@Z.exit.i.i":              ; preds = %120
  %RayFlags225 = call i32 @dx.op.rayFlags.i32(i32 144)
  %224 = and i32 %RayFlags225, 64
  %225 = icmp eq i32 %224, 0
  %226 = and i32 %104, 16777215
  %227 = and i32 %110, 1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i", label %229

; <label>:229                                     ; preds = %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i"
  %230 = add i32 %currentGpuVA.i.i.0.i0, 4
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %94, i32 %230, i32 undef)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = mul nuw nsw i32 %226, 36
  %234 = add i32 %233, %currentGpuVA.i.i.0.i0
  %235 = add i32 %234, %232
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %94, i32 %235, i32 undef)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = extractvalue %dx.types.ResRet.i32 %236, 1
  %239 = extractvalue %dx.types.ResRet.i32 %236, 2
  %240 = extractvalue %dx.types.ResRet.i32 %236, 3
  %.i0300 = bitcast i32 %237 to float
  %.i1301 = bitcast i32 %238 to float
  %.i2302 = bitcast i32 %239 to float
  %.i3303 = bitcast i32 %240 to float
  %241 = add i32 %235, 16
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %94, i32 %241, i32 undef)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = extractvalue %dx.types.ResRet.i32 %242, 1
  %245 = extractvalue %dx.types.ResRet.i32 %242, 2
  %246 = extractvalue %dx.types.ResRet.i32 %242, 3
  %.i0304 = bitcast i32 %243 to float
  %.i1305 = bitcast i32 %244 to float
  %.i2306 = bitcast i32 %245 to float
  %.i3307 = bitcast i32 %246 to float
  %247 = add i32 %235, 32
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %94, i32 %247, i32 undef)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = bitcast i32 %249 to float
  %251 = and i32 %instFlags.i.i.0, 1
  %252 = icmp eq i32 %251, 0
  %253 = shl i32 %instFlags.i.i.0, 3
  %254 = and i32 %253, 16
  %255 = add nuw nsw i32 %254, 16
  %256 = xor i32 %254, 16
  %257 = add nuw nsw i32 %256, 16
  %258 = and i32 %RayFlags225, %255
  %259 = icmp ne i32 %258, 0
  %260 = and i1 %252, %259
  %261 = and i32 %RayFlags225, %257
  %262 = icmp ne i32 %261, 0
  %263 = and i1 %252, %262
  %.i0308 = fsub fast float %.i0300, %currentRayData.i.i.0.0.i0
  %.i1309 = fsub fast float %.i1301, %currentRayData.i.i.0.0.i1
  %.i2310 = fsub fast float %.i2302, %currentRayData.i.i.0.0.i2
  store float %.i0308, float* %75, align 4
  store float %.i1309, float* %76, align 4
  store float %.i2310, float* %77, align 4
  %264 = getelementptr [3 x float], [3 x float]* %21, i32 0, i32 %currentRayData.i.i.5.0.i0
  %265 = load float, float* %264, align 4, !tbaa !151, !noalias !183
  %266 = getelementptr [3 x float], [3 x float]* %21, i32 0, i32 %currentRayData.i.i.5.0.i1
  %267 = load float, float* %266, align 4, !tbaa !151, !noalias !183
  %268 = getelementptr [3 x float], [3 x float]* %21, i32 0, i32 %currentRayData.i.i.5.0.i2
  %269 = load float, float* %268, align 4, !tbaa !151, !noalias !183
  %.i0311 = fsub fast float %.i3303, %currentRayData.i.i.0.0.i0
  %.i1312 = fsub fast float %.i0304, %currentRayData.i.i.0.0.i1
  %.i2313 = fsub fast float %.i1305, %currentRayData.i.i.0.0.i2
  store float %.i0311, float* %78, align 4
  store float %.i1312, float* %79, align 4
  store float %.i2313, float* %80, align 4
  %270 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %currentRayData.i.i.5.0.i0
  %271 = load float, float* %270, align 4, !tbaa !151, !noalias !183
  %272 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %currentRayData.i.i.5.0.i1
  %273 = load float, float* %272, align 4, !tbaa !151, !noalias !183
  %274 = getelementptr [3 x float], [3 x float]* %19, i32 0, i32 %currentRayData.i.i.5.0.i2
  %275 = load float, float* %274, align 4, !tbaa !151, !noalias !183
  %.i0314 = fsub fast float %.i2306, %currentRayData.i.i.0.0.i0
  %.i1315 = fsub fast float %.i3307, %currentRayData.i.i.0.0.i1
  %.i2316 = fsub fast float %250, %currentRayData.i.i.0.0.i2
  store float %.i0314, float* %81, align 4
  store float %.i1315, float* %82, align 4
  store float %.i2316, float* %83, align 4
  %276 = getelementptr [3 x float], [3 x float]* %20, i32 0, i32 %currentRayData.i.i.5.0.i0
  %277 = load float, float* %276, align 4, !tbaa !151, !noalias !183
  %278 = getelementptr [3 x float], [3 x float]* %20, i32 0, i32 %currentRayData.i.i.5.0.i1
  %279 = load float, float* %278, align 4, !tbaa !151, !noalias !183
  %280 = getelementptr [3 x float], [3 x float]* %20, i32 0, i32 %currentRayData.i.i.5.0.i2
  %281 = load float, float* %280, align 4, !tbaa !151, !noalias !183
  %.i0317 = fmul float %currentRayData.i.i.4.0.i0, %269
  %.i1318 = fmul float %currentRayData.i.i.4.0.i1, %269
  %.i0320 = fsub float %265, %.i0317
  %.i1321 = fsub float %267, %.i1318
  %.i0322 = fmul float %currentRayData.i.i.4.0.i0, %275
  %.i1323 = fmul float %currentRayData.i.i.4.0.i1, %275
  %.i0325 = fsub float %271, %.i0322
  %.i1326 = fsub float %273, %.i1323
  %.i0327 = fmul float %currentRayData.i.i.4.0.i0, %281
  %.i1328 = fmul float %currentRayData.i.i.4.0.i1, %281
  %.i0330 = fsub float %277, %.i0327
  %.i1331 = fsub float %279, %.i1328
  %282 = fmul float %.i1326, %.i0330
  %283 = fmul float %.i0325, %.i1331
  %284 = fsub float %282, %283
  %285 = fmul float %.i0320, %.i1331
  %286 = fmul float %.i1321, %.i0330
  %287 = fsub float %285, %286
  %288 = fmul float %.i1321, %.i0325
  %289 = fmul float %.i0320, %.i1326
  %290 = fsub float %288, %289
  %291 = fadd fast float %287, %290
  %292 = fadd fast float %291, %284
  br i1 %263, label %293, label %299

; <label>:293                                     ; preds = %229
  %294 = fcmp fast ogt float %284, 0.000000e+00
  %295 = fcmp fast ogt float %287, 0.000000e+00
  %296 = or i1 %294, %295
  %297 = fcmp fast ogt float %290, 0.000000e+00
  %298 = or i1 %297, %296
  %.old.old = fcmp fast oeq float %292, 0.000000e+00
  %or.cond182 = or i1 %298, %.old.old
  br i1 %or.cond182, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i", label %319

; <label>:299                                     ; preds = %229
  br i1 %260, label %300, label %306

; <label>:300                                     ; preds = %299
  %301 = fcmp fast olt float %284, 0.000000e+00
  %302 = fcmp fast olt float %287, 0.000000e+00
  %303 = or i1 %301, %302
  %304 = fcmp fast olt float %290, 0.000000e+00
  %305 = or i1 %304, %303
  %.old = fcmp fast oeq float %292, 0.000000e+00
  %or.cond181 = or i1 %305, %.old
  br i1 %or.cond181, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i", label %319

; <label>:306                                     ; preds = %299
  %307 = fcmp fast olt float %284, 0.000000e+00
  %308 = fcmp fast olt float %287, 0.000000e+00
  %309 = or i1 %307, %308
  %310 = fcmp fast olt float %290, 0.000000e+00
  %311 = or i1 %310, %309
  %312 = fcmp fast ogt float %284, 0.000000e+00
  %313 = fcmp fast ogt float %287, 0.000000e+00
  %314 = or i1 %312, %313
  %315 = fcmp fast ogt float %290, 0.000000e+00
  %316 = or i1 %315, %314
  %317 = and i1 %311, %316
  %318 = fcmp fast oeq float %292, 0.000000e+00
  %or.cond180 = or i1 %318, %317
  br i1 %or.cond180, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i", label %319

; <label>:319                                     ; preds = %306, %300, %293
  %320 = fmul fast float %284, %269
  %321 = fmul fast float %287, %275
  %322 = fmul fast float %290, %281
  %tmp = fadd fast float %321, %322
  %tmp421 = fadd fast float %tmp, %320
  %tmp422 = fmul fast float %tmp421, %currentRayData.i.i.4.0.i2
  br i1 %263, label %323, label %328

; <label>:323                                     ; preds = %319
  %324 = fcmp fast ogt float %tmp422, 0.000000e+00
  %325 = fmul fast float %292, %RayTCurrent201
  %326 = fcmp fast olt float %tmp422, %325
  %327 = or i1 %324, %326
  br i1 %327, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i", label %345

; <label>:328                                     ; preds = %319
  br i1 %260, label %329, label %334

; <label>:329                                     ; preds = %328
  %330 = fcmp fast olt float %tmp422, 0.000000e+00
  %331 = fmul fast float %292, %RayTCurrent201
  %332 = fcmp fast ogt float %tmp422, %331
  %333 = or i1 %330, %332
  br i1 %333, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i", label %345

; <label>:334                                     ; preds = %328
  %335 = fcmp fast ogt float %292, 0.000000e+00
  %336 = select i1 %335, i32 1, i32 -1
  %337 = bitcast float %tmp422 to i32
  %338 = xor i32 %337, %336
  %339 = uitofp i32 %338 to float
  %340 = bitcast float %292 to i32
  %341 = xor i32 %336, %340
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, %RayTCurrent201
  %344 = fcmp fast ogt float %339, %343
  br i1 %344, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i", label %345

; <label>:345                                     ; preds = %334, %329, %323
  %346 = fdiv fast float 1.000000e+00, %292
  %347 = fmul fast float %346, %284
  %348 = fmul fast float %346, %287
  %349 = fmul fast float %346, %tmp422
  br label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i"

"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i": ; preds = %345, %334, %329, %323, %306, %300, %293
  %.1.i0 = phi float [ %.0174.i0, %293 ], [ %.0174.i0, %323 ], [ %347, %345 ], [ %.0174.i0, %329 ], [ %.0174.i0, %334 ], [ %.0174.i0, %300 ], [ %.0174.i0, %306 ]
  %.1.i1 = phi float [ %.0174.i1, %293 ], [ %.0174.i1, %323 ], [ %348, %345 ], [ %.0174.i1, %329 ], [ %.0174.i1, %334 ], [ %.0174.i1, %300 ], [ %.0174.i1, %306 ]
  %.0173 = phi float [ %RayTCurrent201, %293 ], [ %RayTCurrent201, %323 ], [ %349, %345 ], [ %RayTCurrent201, %329 ], [ %RayTCurrent201, %334 ], [ %RayTCurrent201, %300 ], [ %RayTCurrent201, %306 ]
  %350 = fcmp fast olt float %.0173, %RayTCurrent201
  %RayTMin = call float @dx.op.rayTMin.f32(i32 153)
  %351 = fcmp fast ogt float %.0173, %RayTMin
  %352 = and i1 %350, %351
  %. = select i1 %352, i1 true, i1 false
  %.resultTriId.i.i.0 = select i1 %352, i32 %226, i32 %resultTriId.i.i.0
  %.0173.RayTCurrent201 = select i1 %352, float %.0173, float %RayTCurrent201
  %.1.i0.resultBary.i.i.0.i0 = select i1 %352, float %.1.i0, float %resultBary.i.i.0.i0
  %.1.i1.resultBary.i.i.0.i1 = select i1 %352, float %.1.i1, float %resultBary.i.i.0.i1
  br label %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i"

"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i": ; preds = %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i", %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i"
  %.2.i0 = phi float [ %.0174.i0, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i" ], [ %.1.i0, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i" ]
  %.2.i1 = phi float [ %.0174.i1, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i" ], [ %.1.i1, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i" ]
  %bIsIntersect.i.i.i.0 = phi i1 [ false, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i" ], [ %., %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i" ]
  %.0170 = phi i32 [ %resultTriId.i.i.0, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i" ], [ %.resultTriId.i.i.0, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i" ]
  %.0169 = phi float [ %RayTCurrent201, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i" ], [ %.0173.RayTCurrent201, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i" ]
  %.0.i0 = phi float [ %resultBary.i.i.0.i0, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i" ], [ %.1.i0.resultBary.i.i.0.i0, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i" ]
  %.0.i1 = phi float [ %resultBary.i.i.0.i1, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i" ], [ %.1.i1.resultBary.i.i.0.i1, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i" ]
  %353 = and i1 %225, %bIsIntersect.i.i.i.0
  br i1 %353, label %354, label %393

; <label>:354                                     ; preds = %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i"
  %.0.upto0 = insertelement <2 x float> undef, float %.0.i0, i32 0
  %.0 = insertelement <2 x float> %.0.upto0, float %.0.i1, i32 1
  %355 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %92, align 4, !noalias !191
  %356 = add i32 %currentGpuVA.i.i.0.i0, 8
  %357 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %355)
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %357, i32 %356, i32 undef)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = shl i32 %.0170, 3
  %361 = add i32 %360, %currentGpuVA.i.i.0.i0
  %362 = add i32 %361, %359
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %357, i32 %362, i32 undef)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = extractvalue %dx.types.ResRet.i32 %363, 1
  %366 = mul i32 %364, %3
  %367 = add i32 %instOffset.i.i.0, %2
  %368 = add i32 %367, %366
  store <2 x float> %.0, <2 x float>* %74, align 4, !tbaa !196
  call void @"\01?Fallback_SetPendingAttr@@YAXUBuiltInTriangleIntersectionAttributes@@@Z"(%struct.BuiltInTriangleIntersectionAttributes* nonnull %attr.i.i) #3
  call void @"\01?Fallback_SetPendingTriVals@@YAXMIIIII@Z"(float %.0169, i32 %365, i32 %368, i32 %instIdx.i.i.0, i32 %instId.i.i.0, i32 254) #3
  %369 = icmp eq i32 %ResetMatrices.i.i.0, 0
  br i1 %369, label %383, label %370

; <label>:370                                     ; preds = %354
  call void @"\01?Fallback_SetObjectRayOrigin@@YAXV?$vector@M$02@@@Z"(<3 x float> %currentRayData.i.i.0.0) #3
  call void @"\01?Fallback_SetObjectRayDirection@@YAXV?$vector@M$02@@@Z"(<3 x float> %currentRayData.i.i.1.0) #3
  %.upto0 = insertelement <4 x float> undef, float %CurrentWorldToObject.i.i168.0.i0, i32 0
  %.upto1 = insertelement <4 x float> %.upto0, float %CurrentWorldToObject.i.i168.0.i1, i32 1
  %.upto2 = insertelement <4 x float> %.upto1, float %CurrentWorldToObject.i.i168.0.i2, i32 2
  %371 = insertelement <4 x float> %.upto2, float %CurrentWorldToObject.i.i168.0.i3, i32 3
  %372 = insertvalue %class.matrix.float.3.4 undef, <4 x float> %371, 0, 0
  %.upto01 = insertelement <4 x float> undef, float %CurrentWorldToObject.i.i168.0.i4, i32 0
  %.upto12 = insertelement <4 x float> %.upto01, float %CurrentWorldToObject.i.i168.0.i5, i32 1
  %.upto23 = insertelement <4 x float> %.upto12, float %CurrentWorldToObject.i.i168.0.i6, i32 2
  %373 = insertelement <4 x float> %.upto23, float %CurrentWorldToObject.i.i168.0.i7, i32 3
  %374 = insertvalue %class.matrix.float.3.4 %372, <4 x float> %373, 0, 1
  %.upto04 = insertelement <4 x float> undef, float %CurrentWorldToObject.i.i168.0.i8, i32 0
  %.upto15 = insertelement <4 x float> %.upto04, float %CurrentWorldToObject.i.i168.0.i9, i32 1
  %.upto26 = insertelement <4 x float> %.upto15, float %CurrentWorldToObject.i.i168.0.i10, i32 2
  %375 = insertelement <4 x float> %.upto26, float %CurrentWorldToObject.i.i168.0.i11, i32 3
  %376 = insertvalue %class.matrix.float.3.4 %374, <4 x float> %375, 0, 2
  call void @"\01?Fallback_SetWorldToObject@@YAXV?$matrix@M$02$03@@@Z"(%class.matrix.float.3.4 %376) #3
  %.upto07 = insertelement <4 x float> undef, float %CurrentObjectToWorld.i.i167.0.i0, i32 0
  %.upto18 = insertelement <4 x float> %.upto07, float %CurrentObjectToWorld.i.i167.0.i1, i32 1
  %.upto29 = insertelement <4 x float> %.upto18, float %CurrentObjectToWorld.i.i167.0.i2, i32 2
  %377 = insertelement <4 x float> %.upto29, float %CurrentObjectToWorld.i.i167.0.i3, i32 3
  %378 = insertvalue %class.matrix.float.3.4 undef, <4 x float> %377, 0, 0
  %.upto010 = insertelement <4 x float> undef, float %CurrentObjectToWorld.i.i167.0.i4, i32 0
  %.upto111 = insertelement <4 x float> %.upto010, float %CurrentObjectToWorld.i.i167.0.i5, i32 1
  %.upto212 = insertelement <4 x float> %.upto111, float %CurrentObjectToWorld.i.i167.0.i6, i32 2
  %379 = insertelement <4 x float> %.upto212, float %CurrentObjectToWorld.i.i167.0.i7, i32 3
  %380 = insertvalue %class.matrix.float.3.4 %378, <4 x float> %379, 0, 1
  %.upto013 = insertelement <4 x float> undef, float %CurrentObjectToWorld.i.i167.0.i8, i32 0
  %.upto114 = insertelement <4 x float> %.upto013, float %CurrentObjectToWorld.i.i167.0.i9, i32 1
  %.upto215 = insertelement <4 x float> %.upto114, float %CurrentObjectToWorld.i.i167.0.i10, i32 2
  %381 = insertelement <4 x float> %.upto215, float %CurrentObjectToWorld.i.i167.0.i11, i32 3
  %382 = insertvalue %class.matrix.float.3.4 %380, <4 x float> %381, 0, 2
  call void @"\01?Fallback_SetObjectToWorld@@YAXV?$matrix@M$02$03@@@Z"(%class.matrix.float.3.4 %382) #3
  br label %383

; <label>:383                                     ; preds = %370, %354
  call void @"\01?Fallback_CommitHit@@YAXXZ"() #3
  %384 = and i32 %RayFlags225, 4
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %393, label %386

; <label>:386                                     ; preds = %383
  store i32 0, i32* %73, align 4, !tbaa !158
  store i32 0, i32* %59, align 4, !tbaa !158
  br label %393

"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i":        ; preds = %118
  %387 = and i32 %104, 16777215
  store i32 %387, i32 addrspace(3)* %87, align 4, !tbaa !158, !noalias !197
  %388 = shl i32 %stackPointer.i.i.0, 6
  %389 = add i32 %388, %31
  %390 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %389
  store i32 %110, i32 addrspace(3)* %390, align 4, !tbaa !158, !noalias !197
  %391 = add nsw i32 %stackPointer.i.i.0, 1
  %392 = add i32 %90, 1
  store i32 %392, i32* %89, align 4, !tbaa !158
  br label %393

; <label>:393                                     ; preds = %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i", %386, %383, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i", %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i", %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176", %.backedge
  %.3.i0 = phi float [ %.0174.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %.0174.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %.2.i0, %386 ], [ %.2.i0, %383 ], [ %.2.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %.0174.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %.0174.i0, %.backedge ]
  %.3.i1 = phi float [ %.0174.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %.0174.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %.2.i1, %386 ], [ %.2.i1, %383 ], [ %.2.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %.0174.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %.0174.i1, %.backedge ]
  %currentRayData.i.i.0.1.i0 = phi float [ %FMad237, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.0.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.0.0.i0, %386 ], [ %currentRayData.i.i.0.0.i0, %383 ], [ %currentRayData.i.i.0.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.0.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.0.0.i0, %.backedge ]
  %currentRayData.i.i.0.1.i1 = phi float [ %FMad234, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.0.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.0.0.i1, %386 ], [ %currentRayData.i.i.0.0.i1, %383 ], [ %currentRayData.i.i.0.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.0.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.0.0.i1, %.backedge ]
  %currentRayData.i.i.0.1.i2 = phi float [ %FMad, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.0.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.0.0.i2, %386 ], [ %currentRayData.i.i.0.0.i2, %383 ], [ %currentRayData.i.i.0.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.0.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.0.0.i2, %.backedge ]
  %currentRayData.i.i.1.1.i0 = phi float [ %FMad246, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.1.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.1.0.i0, %386 ], [ %currentRayData.i.i.1.0.i0, %383 ], [ %currentRayData.i.i.1.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.1.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.1.0.i0, %.backedge ]
  %currentRayData.i.i.1.1.i1 = phi float [ %FMad243, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.1.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.1.0.i1, %386 ], [ %currentRayData.i.i.1.0.i1, %383 ], [ %currentRayData.i.i.1.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.1.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.1.0.i1, %.backedge ]
  %currentRayData.i.i.1.1.i2 = phi float [ %FMad240, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.1.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.1.0.i2, %386 ], [ %currentRayData.i.i.1.0.i2, %383 ], [ %currentRayData.i.i.1.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.1.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.1.0.i2, %.backedge ]
  %currentRayData.i.i.2.1.i0 = phi float [ %.i0294, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.2.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.2.0.i0, %386 ], [ %currentRayData.i.i.2.0.i0, %383 ], [ %currentRayData.i.i.2.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.2.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.2.0.i0, %.backedge ]
  %currentRayData.i.i.2.1.i1 = phi float [ %.i1295, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.2.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.2.0.i1, %386 ], [ %currentRayData.i.i.2.0.i1, %383 ], [ %currentRayData.i.i.2.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.2.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.2.0.i1, %.backedge ]
  %currentRayData.i.i.2.1.i2 = phi float [ %.i2296, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.2.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.2.0.i2, %386 ], [ %currentRayData.i.i.2.0.i2, %383 ], [ %currentRayData.i.i.2.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.2.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.2.0.i2, %.backedge ]
  %currentRayData.i.i.3.1.i0 = phi float [ %.i0297, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.3.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.3.0.i0, %386 ], [ %currentRayData.i.i.3.0.i0, %383 ], [ %currentRayData.i.i.3.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.3.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.3.0.i0, %.backedge ]
  %currentRayData.i.i.3.1.i1 = phi float [ %.i1298, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.3.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.3.0.i1, %386 ], [ %currentRayData.i.i.3.0.i1, %383 ], [ %currentRayData.i.i.3.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.3.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.3.0.i1, %.backedge ]
  %currentRayData.i.i.3.1.i2 = phi float [ %.i2299, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.3.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.3.0.i2, %386 ], [ %currentRayData.i.i.3.0.i2, %383 ], [ %currentRayData.i.i.3.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.3.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.3.0.i2, %.backedge ]
  %currentRayData.i.i.4.1.i0 = phi float [ %219, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.4.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.4.0.i0, %386 ], [ %currentRayData.i.i.4.0.i0, %383 ], [ %currentRayData.i.i.4.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.4.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.4.0.i0, %.backedge ]
  %currentRayData.i.i.4.1.i1 = phi float [ %222, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.4.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.4.0.i1, %386 ], [ %currentRayData.i.i.4.0.i1, %383 ], [ %currentRayData.i.i.4.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.4.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.4.0.i1, %.backedge ]
  %currentRayData.i.i.4.1.i2 = phi float [ %223, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.4.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.4.0.i2, %386 ], [ %currentRayData.i.i.4.0.i2, %383 ], [ %currentRayData.i.i.4.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.4.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.4.0.i2, %.backedge ]
  %currentRayData.i.i.5.1.i0 = phi i32 [ %.5.0.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.5.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.5.0.i0, %386 ], [ %currentRayData.i.i.5.0.i0, %383 ], [ %currentRayData.i.i.5.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.5.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.5.0.i0, %.backedge ]
  %currentRayData.i.i.5.1.i1 = phi i32 [ %.5.0.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.5.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.5.0.i1, %386 ], [ %currentRayData.i.i.5.0.i1, %383 ], [ %currentRayData.i.i.5.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.5.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.5.0.i1, %.backedge ]
  %currentRayData.i.i.5.1.i2 = phi i32 [ %.0172, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentRayData.i.i.5.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentRayData.i.i.5.0.i2, %386 ], [ %currentRayData.i.i.5.0.i2, %383 ], [ %currentRayData.i.i.5.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentRayData.i.i.5.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentRayData.i.i.5.0.i2, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i0 = phi float [ %184, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i0, %386 ], [ %CurrentObjectToWorld.i.i167.0.i0, %383 ], [ %CurrentObjectToWorld.i.i167.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i0, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i1 = phi float [ %185, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i1, %386 ], [ %CurrentObjectToWorld.i.i167.0.i1, %383 ], [ %CurrentObjectToWorld.i.i167.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i1, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i2 = phi float [ %186, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i2, %386 ], [ %CurrentObjectToWorld.i.i167.0.i2, %383 ], [ %CurrentObjectToWorld.i.i167.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i2, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i3 = phi float [ %187, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i3, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i3, %386 ], [ %CurrentObjectToWorld.i.i167.0.i3, %383 ], [ %CurrentObjectToWorld.i.i167.0.i3, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i3, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i3, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i4 = phi float [ %188, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i4, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i4, %386 ], [ %CurrentObjectToWorld.i.i167.0.i4, %383 ], [ %CurrentObjectToWorld.i.i167.0.i4, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i4, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i4, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i5 = phi float [ %189, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i5, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i5, %386 ], [ %CurrentObjectToWorld.i.i167.0.i5, %383 ], [ %CurrentObjectToWorld.i.i167.0.i5, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i5, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i5, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i6 = phi float [ %190, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i6, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i6, %386 ], [ %CurrentObjectToWorld.i.i167.0.i6, %383 ], [ %CurrentObjectToWorld.i.i167.0.i6, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i6, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i6, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i7 = phi float [ %191, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i7, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i7, %386 ], [ %CurrentObjectToWorld.i.i167.0.i7, %383 ], [ %CurrentObjectToWorld.i.i167.0.i7, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i7, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i7, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i8 = phi float [ %192, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i8, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i8, %386 ], [ %CurrentObjectToWorld.i.i167.0.i8, %383 ], [ %CurrentObjectToWorld.i.i167.0.i8, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i8, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i8, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i9 = phi float [ %193, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i9, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i9, %386 ], [ %CurrentObjectToWorld.i.i167.0.i9, %383 ], [ %CurrentObjectToWorld.i.i167.0.i9, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i9, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i9, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i10 = phi float [ %194, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i10, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i10, %386 ], [ %CurrentObjectToWorld.i.i167.0.i10, %383 ], [ %CurrentObjectToWorld.i.i167.0.i10, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i10, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i10, %.backedge ]
  %CurrentObjectToWorld.i.i167.1.i11 = phi float [ %195, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i11, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentObjectToWorld.i.i167.0.i11, %386 ], [ %CurrentObjectToWorld.i.i167.0.i11, %383 ], [ %CurrentObjectToWorld.i.i167.0.i11, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i11, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i11, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i0 = phi float [ %167, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i0, %386 ], [ %CurrentWorldToObject.i.i168.0.i0, %383 ], [ %CurrentWorldToObject.i.i168.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i0, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i1 = phi float [ %168, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i1, %386 ], [ %CurrentWorldToObject.i.i168.0.i1, %383 ], [ %CurrentWorldToObject.i.i168.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i1, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i2 = phi float [ %169, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i2, %386 ], [ %CurrentWorldToObject.i.i168.0.i2, %383 ], [ %CurrentWorldToObject.i.i168.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i2, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i3 = phi float [ %170, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i3, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i3, %386 ], [ %CurrentWorldToObject.i.i168.0.i3, %383 ], [ %CurrentWorldToObject.i.i168.0.i3, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i3, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i3, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i4 = phi float [ %171, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i4, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i4, %386 ], [ %CurrentWorldToObject.i.i168.0.i4, %383 ], [ %CurrentWorldToObject.i.i168.0.i4, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i4, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i4, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i5 = phi float [ %172, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i5, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i5, %386 ], [ %CurrentWorldToObject.i.i168.0.i5, %383 ], [ %CurrentWorldToObject.i.i168.0.i5, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i5, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i5, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i6 = phi float [ %173, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i6, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i6, %386 ], [ %CurrentWorldToObject.i.i168.0.i6, %383 ], [ %CurrentWorldToObject.i.i168.0.i6, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i6, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i6, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i7 = phi float [ %174, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i7, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i7, %386 ], [ %CurrentWorldToObject.i.i168.0.i7, %383 ], [ %CurrentWorldToObject.i.i168.0.i7, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i7, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i7, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i8 = phi float [ %175, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i8, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i8, %386 ], [ %CurrentWorldToObject.i.i168.0.i8, %383 ], [ %CurrentWorldToObject.i.i168.0.i8, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i8, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i8, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i9 = phi float [ %176, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i9, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i9, %386 ], [ %CurrentWorldToObject.i.i168.0.i9, %383 ], [ %CurrentWorldToObject.i.i168.0.i9, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i9, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i9, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i10 = phi float [ %177, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i10, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i10, %386 ], [ %CurrentWorldToObject.i.i168.0.i10, %383 ], [ %CurrentWorldToObject.i.i168.0.i10, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i10, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i10, %.backedge ]
  %CurrentWorldToObject.i.i168.1.i11 = phi float [ %178, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %CurrentWorldToObject.i.i168.0.i11, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %CurrentWorldToObject.i.i168.0.i11, %386 ], [ %CurrentWorldToObject.i.i168.0.i11, %383 ], [ %CurrentWorldToObject.i.i168.0.i11, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i11, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %CurrentWorldToObject.i.i168.0.i11, %.backedge ]
  %ResetMatrices.i.i.2 = phi i32 [ %ResetMatrices.i.i.0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %ResetMatrices.i.i.0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ 0, %386 ], [ 0, %383 ], [ %ResetMatrices.i.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %ResetMatrices.i.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %ResetMatrices.i.i.0, %.backedge ]
  %currentBVHIndex.i.i.1 = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ 0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentBVHIndex.i.i.0, %386 ], [ %currentBVHIndex.i.i.0, %383 ], [ %currentBVHIndex.i.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentBVHIndex.i.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentBVHIndex.i.i.0, %.backedge ]
  %currentGpuVA.i.i.1.i0 = phi i32 [ %147, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentGpuVA.i.i.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentGpuVA.i.i.0.i0, %386 ], [ %currentGpuVA.i.i.0.i0, %383 ], [ %currentGpuVA.i.i.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentGpuVA.i.i.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentGpuVA.i.i.0.i0, %.backedge ]
  %currentGpuVA.i.i.1.i1 = phi i32 [ %148, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %currentGpuVA.i.i.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %currentGpuVA.i.i.0.i1, %386 ], [ %currentGpuVA.i.i.0.i1, %383 ], [ %currentGpuVA.i.i.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %currentGpuVA.i.i.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %currentGpuVA.i.i.0.i1, %.backedge ]
  %instIdx.i.i.1 = phi i32 [ %122, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %122, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %instIdx.i.i.0, %386 ], [ %instIdx.i.i.0, %383 ], [ %instIdx.i.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %instIdx.i.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %instIdx.i.i.0, %.backedge ]
  %instFlags.i.i.1 = phi i32 [ %197, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %instFlags.i.i.0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %instFlags.i.i.0, %386 ], [ %instFlags.i.i.0, %383 ], [ %instFlags.i.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %instFlags.i.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %instFlags.i.i.0, %.backedge ]
  %instOffset.i.i.1 = phi i32 [ %179, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %179, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %instOffset.i.i.0, %386 ], [ %instOffset.i.i.0, %383 ], [ %instOffset.i.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %instOffset.i.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %instOffset.i.i.0, %.backedge ]
  %instId.i.i.1 = phi i32 [ %180, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %180, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %instId.i.i.0, %386 ], [ %instId.i.i.0, %383 ], [ %instId.i.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %instId.i.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %instId.i.i.0, %.backedge ]
  %stackPointer.i.i.1 = phi i32 [ %stackPointer.i.i.0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %84, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %84, %386 ], [ %84, %383 ], [ %84, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %391, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %84, %.backedge ]
  %resultBary.i.i.1.i0 = phi float [ %resultBary.i.i.0.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %resultBary.i.i.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %.0.i0, %386 ], [ %.0.i0, %383 ], [ %.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %resultBary.i.i.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %resultBary.i.i.0.i0, %.backedge ]
  %resultBary.i.i.1.i1 = phi float [ %resultBary.i.i.0.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %resultBary.i.i.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %.0.i1, %386 ], [ %.0.i1, %383 ], [ %.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %resultBary.i.i.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %resultBary.i.i.0.i1, %.backedge ]
  %resultTriId.i.i.1 = phi i32 [ %resultTriId.i.i.0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i" ], [ %resultTriId.i.i.0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176" ], [ %.0170, %386 ], [ %.0170, %383 ], [ %.0170, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i" ], [ %resultTriId.i.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i" ], [ %resultTriId.i.i.0, %.backedge ]
  %394 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i.i, i32 0, i32 %currentBVHIndex.i.i.1
  %395 = load i32, i32* %394, align 4, !tbaa !158
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %.backedge

; <label>:397                                     ; preds = %393
  %398 = add i32 %currentBVHIndex.i.i.1, -1
  %399 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList, i32 0)
  %400 = extractvalue %dx.types.CBufRet.i32 %399, 0
  %401 = extractvalue %dx.types.CBufRet.i32 %399, 1
  %402 = load i32, i32* %59, align 4, !tbaa !158
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %"\01?Traverse@@YA_NIII@Z.exit.i", label %.backedge

"\01?Traverse@@YA_NIII@Z.exit.i":                 ; preds = %397
  %InstanceIndex = call i32 @dx.op.instanceIndex.i32(i32 142)
  %404 = icmp eq i32 %InstanceIndex, -1
  br i1 %404, label %416, label %405

; <label>:405                                     ; preds = %"\01?Traverse@@YA_NIII@Z.exit.i"
  %RayFlags227 = call i32 @dx.op.rayFlags.i32(i32 144)
  %406 = and i32 %RayFlags227, 8
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %"\01?Traverse@@YAHIIII@Z.exit"

; <label>:408                                     ; preds = %405
  %409 = call i32 @"\01?Fallback_GeometryIndex@@YAIXZ"() #3
  %410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %Constants249, i32 0)
  %411 = extractvalue %dx.types.CBufRet.i32 %410, 2
  %412 = mul i32 %411, %409
  %413 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %16)
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %413, i32 %412, i32 undef)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  br label %"\01?Traverse@@YAHIIII@Z.exit"

; <label>:416                                     ; preds = %"\01?Traverse@@YA_NIII@Z.exit.i"
  %417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %Constants249, i32 0)
  %418 = extractvalue %dx.types.CBufRet.i32 %417, 3
  %419 = mul i32 %418, %4
  %420 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %15)
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %420, i32 %419, i32 undef)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  br label %"\01?Traverse@@YAHIIII@Z.exit"

"\01?Traverse@@YAHIIII@Z.exit":                   ; preds = %416, %408, %405
  %stateID.i.0 = phi i32 [ %415, %408 ], [ %422, %416 ], [ 0, %405 ]
  %423 = icmp eq i32 %stateID.i.0, 0
  br i1 %423, label %425, label %424

; <label>:424                                     ; preds = %"\01?Traverse@@YAHIIII@Z.exit"
  call void @"\01?Fallback_CallIndirect@@YAXH@Z"(i32 %stateID.i.0) #3
  br label %425

; <label>:425                                     ; preds = %424, %"\01?Traverse@@YAHIIII@Z.exit"
  %426 = call i32 @"\01?Fallback_SetPayloadOffset@@YAII@Z"(i32 %24) #3
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?LoadRaytracingInstanceDesc@@YA?AURaytracingInstanceDesc@@UByteAddressBuffer@@I@Z"(%struct.RaytracingInstanceDesc* noalias nocapture sret, %struct.ByteAddressBuffer* nocapture readonly, i32) #5 {
  %4 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* %1, align 4
  %5 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %4)
  %6 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2, i32 undef)
  %7 = extractvalue %dx.types.ResRet.i32 %6, 0
  %8 = extractvalue %dx.types.ResRet.i32 %6, 1
  %9 = extractvalue %dx.types.ResRet.i32 %6, 2
  %10 = extractvalue %dx.types.ResRet.i32 %6, 3
  %11 = add i32 %2, 16
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %11, i32 undef)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = extractvalue %dx.types.ResRet.i32 %12, 1
  %15 = extractvalue %dx.types.ResRet.i32 %12, 2
  %16 = extractvalue %dx.types.ResRet.i32 %12, 3
  %17 = add i32 %2, 32
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %17, i32 undef)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = extractvalue %dx.types.ResRet.i32 %18, 1
  %21 = extractvalue %dx.types.ResRet.i32 %18, 2
  %22 = extractvalue %dx.types.ResRet.i32 %18, 3
  %23 = add i32 %2, 48
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %23, i32 undef)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = extractvalue %dx.types.ResRet.i32 %24, 1
  %27 = extractvalue %dx.types.ResRet.i32 %24, 2
  %28 = extractvalue %dx.types.ResRet.i32 %24, 3
  %.i0 = bitcast i32 %7 to float
  %.i1 = bitcast i32 %8 to float
  %.i2 = bitcast i32 %9 to float
  %.i3 = bitcast i32 %10 to float
  %.upto0 = insertelement <4 x float> undef, float %.i0, i32 0
  %.upto1 = insertelement <4 x float> %.upto0, float %.i1, i32 1
  %.upto2 = insertelement <4 x float> %.upto1, float %.i2, i32 2
  %29 = insertelement <4 x float> %.upto2, float %.i3, i32 3
  %30 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 0, i32 0
  store <4 x float> %29, <4 x float>* %30, align 4, !tbaa !196, !alias.scope !200
  %.i035 = bitcast i32 %13 to float
  %.i136 = bitcast i32 %14 to float
  %.i237 = bitcast i32 %15 to float
  %.i338 = bitcast i32 %16 to float
  %.upto043 = insertelement <4 x float> undef, float %.i035, i32 0
  %.upto144 = insertelement <4 x float> %.upto043, float %.i136, i32 1
  %.upto245 = insertelement <4 x float> %.upto144, float %.i237, i32 2
  %31 = insertelement <4 x float> %.upto245, float %.i338, i32 3
  %32 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 0, i32 1
  store <4 x float> %31, <4 x float>* %32, align 4, !tbaa !196, !alias.scope !200
  %.i039 = bitcast i32 %19 to float
  %.i140 = bitcast i32 %20 to float
  %.i241 = bitcast i32 %21 to float
  %.i342 = bitcast i32 %22 to float
  %.upto046 = insertelement <4 x float> undef, float %.i039, i32 0
  %.upto147 = insertelement <4 x float> %.upto046, float %.i140, i32 1
  %.upto248 = insertelement <4 x float> %.upto147, float %.i241, i32 2
  %33 = insertelement <4 x float> %.upto248, float %.i342, i32 3
  %34 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 0, i32 2
  store <4 x float> %33, <4 x float>* %34, align 4, !tbaa !196, !alias.scope !200
  %35 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 1
  store i32 %25, i32* %35, align 4, !tbaa !158, !alias.scope !200
  %36 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 2
  store i32 %26, i32* %36, align 4, !tbaa !158, !alias.scope !200
  %.upto049 = insertelement <2 x i32> undef, i32 %27, i32 0
  %37 = insertelement <2 x i32> %.upto049, i32 %28, i32 1
  %38 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 3
  store <2 x i32> %37, <2 x i32>* %38, align 4, !tbaa !196, !alias.scope !200
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define <2 x i32> @"\01?PointerAdd@@YA?AV?$vector@I$01@@V1@I@Z"(<2 x i32>, i32) #6 {
  %3 = extractelement <2 x i32> %0, i32 0
  %4 = add i32 %3, %1
  %5 = insertelement <2 x i32> %0, i32 %4, i32 0
  ret <2 x i32> %5
}

; Function Attrs: alwaysinline nounwind
define void @"\01?CreateRWByteAddressBufferPointer@@YA?AURWByteAddressBufferPointer@@URWByteAddressBuffer@@I@Z"(%struct.RWByteAddressBufferPointer* noalias nocapture sret, %struct.RWByteAddressBuffer* nocapture readonly, i32) #5 {
  %4 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 0
  %5 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %1, align 4
  store %struct.RWByteAddressBuffer %5, %struct.RWByteAddressBuffer* %4, align 4
  %6 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 1
  store i32 %2, i32* %6, align 4, !tbaa !158
  ret void
}

; Function Attrs: alwaysinline nounwind readonly
define %class.matrix.float.3.4 @"\01?CreateMatrix@@YA?AV?$matrix@M$02$03@@Y02V?$vector@M$03@@@Z"([3 x <4 x float>]* nocapture readonly) #7 {
  %2 = getelementptr inbounds [3 x <4 x float>], [3 x <4 x float>]* %0, i32 0, i32 0
  %3 = load <4 x float>, <4 x float>* %2, align 4, !tbaa !196
  %4 = getelementptr inbounds [3 x <4 x float>], [3 x <4 x float>]* %0, i32 0, i32 1
  %5 = load <4 x float>, <4 x float>* %4, align 4, !tbaa !196
  %6 = getelementptr inbounds [3 x <4 x float>], [3 x <4 x float>]* %0, i32 0, i32 2
  %7 = load <4 x float>, <4 x float>* %6, align 4, !tbaa !196
  %.upto0 = insertelement <4 x float> undef, float %12, i32 0
  %.upto1 = insertelement <4 x float> %.upto0, float %11, i32 1
  %.upto2 = insertelement <4 x float> %.upto1, float %10, i32 2
  %8 = insertelement <4 x float> %.upto2, float %9, i32 3
  %9 = extractelement <4 x float> %3, i64 3
  %10 = extractelement <4 x float> %3, i64 2
  %11 = extractelement <4 x float> %3, i64 1
  %12 = extractelement <4 x float> %3, i64 0
  %13 = insertvalue %class.matrix.float.3.4 undef, <4 x float> %8, 0, 0
  %.upto01 = insertelement <4 x float> undef, float %18, i32 0
  %.upto12 = insertelement <4 x float> %.upto01, float %17, i32 1
  %.upto23 = insertelement <4 x float> %.upto12, float %16, i32 2
  %14 = insertelement <4 x float> %.upto23, float %15, i32 3
  %15 = extractelement <4 x float> %5, i64 3
  %16 = extractelement <4 x float> %5, i64 2
  %17 = extractelement <4 x float> %5, i64 1
  %18 = extractelement <4 x float> %5, i64 0
  %19 = insertvalue %class.matrix.float.3.4 %13, <4 x float> %14, 0, 1
  %.upto04 = insertelement <4 x float> undef, float %24, i32 0
  %.upto15 = insertelement <4 x float> %.upto04, float %23, i32 1
  %.upto26 = insertelement <4 x float> %.upto15, float %22, i32 2
  %20 = insertelement <4 x float> %.upto26, float %21, i32 3
  %21 = extractelement <4 x float> %7, i64 3
  %22 = extractelement <4 x float> %7, i64 2
  %23 = extractelement <4 x float> %7, i64 1
  %24 = extractelement <4 x float> %7, i64 0
  %25 = insertvalue %class.matrix.float.3.4 %19, <4 x float> %20, 0, 2
  ret %class.matrix.float.3.4 %25
}

; Function Attrs: alwaysinline nounwind readnone
define i32 @"\01?GetLeftNodeIndex@@YAIV?$vector@I$01@@@Z"(<2 x i32>) #6 {
  %2 = extractelement <2 x i32> %0, i32 0
  %3 = and i32 %2, 16777215
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind
define void @"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z"(%struct.BVHMetadata* noalias nocapture sret, %struct.RWByteAddressBuffer* nocapture readonly, i32) #5 {
  %4 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %1, align 4
  %5 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %4)
  %6 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2, i32 undef)
  %7 = extractvalue %dx.types.ResRet.i32 %6, 0
  %8 = extractvalue %dx.types.ResRet.i32 %6, 1
  %9 = extractvalue %dx.types.ResRet.i32 %6, 2
  %10 = extractvalue %dx.types.ResRet.i32 %6, 3
  %11 = add i32 %2, 16
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %11, i32 undef)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = extractvalue %dx.types.ResRet.i32 %12, 1
  %15 = extractvalue %dx.types.ResRet.i32 %12, 2
  %16 = extractvalue %dx.types.ResRet.i32 %12, 3
  %17 = add i32 %2, 32
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %17, i32 undef)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = extractvalue %dx.types.ResRet.i32 %18, 1
  %21 = extractvalue %dx.types.ResRet.i32 %18, 2
  %22 = extractvalue %dx.types.ResRet.i32 %18, 3
  %23 = add i32 %2, 48
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %23, i32 undef)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = extractvalue %dx.types.ResRet.i32 %24, 1
  %27 = extractvalue %dx.types.ResRet.i32 %24, 2
  %28 = extractvalue %dx.types.ResRet.i32 %24, 3
  %29 = add i32 %2, 64
  %30 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %29, i32 undef)
  %31 = extractvalue %dx.types.ResRet.i32 %30, 0
  %32 = extractvalue %dx.types.ResRet.i32 %30, 1
  %33 = extractvalue %dx.types.ResRet.i32 %30, 2
  %34 = extractvalue %dx.types.ResRet.i32 %30, 3
  %35 = add i32 %2, 80
  %36 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %35, i32 undef)
  %37 = extractvalue %dx.types.ResRet.i32 %36, 0
  %38 = extractvalue %dx.types.ResRet.i32 %36, 1
  %39 = extractvalue %dx.types.ResRet.i32 %36, 2
  %40 = extractvalue %dx.types.ResRet.i32 %36, 3
  %41 = add i32 %2, 96
  %42 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %41, i32 undef)
  %43 = extractvalue %dx.types.ResRet.i32 %42, 0
  %44 = extractvalue %dx.types.ResRet.i32 %42, 1
  %45 = extractvalue %dx.types.ResRet.i32 %42, 2
  %46 = extractvalue %dx.types.ResRet.i32 %42, 3
  %.upto0112 = insertelement <2 x i32> undef, i32 %27, i32 0
  %47 = insertelement <2 x i32> %.upto0112, i32 %28, i32 1
  %48 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %0, i32 0, i32 0, i32 0, i32 0
  %49 = bitcast i32 %7 to float
  %insert56 = insertelement <4 x float> undef, float %49, i64 0
  %50 = bitcast i32 %8 to float
  %insert58 = insertelement <4 x float> %insert56, float %50, i64 1
  %51 = bitcast i32 %9 to float
  %insert60 = insertelement <4 x float> %insert58, float %51, i64 2
  %52 = bitcast i32 %10 to float
  %insert62 = insertelement <4 x float> %insert60, float %52, i64 3
  store <4 x float> %insert62, <4 x float>* %48, align 4
  %53 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %0, i32 0, i32 0, i32 0, i32 1
  %54 = bitcast i32 %13 to float
  %insert64 = insertelement <4 x float> undef, float %54, i64 0
  %55 = bitcast i32 %14 to float
  %insert66 = insertelement <4 x float> %insert64, float %55, i64 1
  %56 = bitcast i32 %15 to float
  %insert68 = insertelement <4 x float> %insert66, float %56, i64 2
  %57 = bitcast i32 %16 to float
  %insert70 = insertelement <4 x float> %insert68, float %57, i64 3
  store <4 x float> %insert70, <4 x float>* %53, align 4
  %58 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %0, i32 0, i32 0, i32 0, i32 2
  %59 = bitcast i32 %19 to float
  %insert72 = insertelement <4 x float> undef, float %59, i64 0
  %60 = bitcast i32 %20 to float
  %insert74 = insertelement <4 x float> %insert72, float %60, i64 1
  %61 = bitcast i32 %21 to float
  %insert76 = insertelement <4 x float> %insert74, float %61, i64 2
  %62 = bitcast i32 %22 to float
  %insert78 = insertelement <4 x float> %insert76, float %62, i64 3
  store <4 x float> %insert78, <4 x float>* %58, align 4
  %63 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %0, i32 0, i32 0, i32 1
  store i32 %25, i32* %63, align 4
  %64 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %0, i32 0, i32 0, i32 2
  store i32 %26, i32* %64, align 4
  %65 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %0, i32 0, i32 0, i32 3
  store <2 x i32> %47, <2 x i32>* %65, align 4
  %.i094 = bitcast i32 %31 to float
  %.i195 = bitcast i32 %32 to float
  %.i296 = bitcast i32 %33 to float
  %.i397 = bitcast i32 %34 to float
  %.upto0114 = insertelement <4 x float> undef, float %.i094, i32 0
  %.upto1115 = insertelement <4 x float> %.upto0114, float %.i195, i32 1
  %.upto2116 = insertelement <4 x float> %.upto1115, float %.i296, i32 2
  %66 = insertelement <4 x float> %.upto2116, float %.i397, i32 3
  %67 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %0, i32 0, i32 1, i32 0
  store <4 x float> %66, <4 x float>* %67, align 4, !tbaa !196
  %.i098 = bitcast i32 %37 to float
  %.i199 = bitcast i32 %38 to float
  %.i2100 = bitcast i32 %39 to float
  %.i3101 = bitcast i32 %40 to float
  %.upto0117 = insertelement <4 x float> undef, float %.i098, i32 0
  %.upto1118 = insertelement <4 x float> %.upto0117, float %.i199, i32 1
  %.upto2119 = insertelement <4 x float> %.upto1118, float %.i2100, i32 2
  %68 = insertelement <4 x float> %.upto2119, float %.i3101, i32 3
  %69 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %0, i32 0, i32 1, i32 1
  store <4 x float> %68, <4 x float>* %69, align 4, !tbaa !196
  %.i0102 = bitcast i32 %43 to float
  %.i1103 = bitcast i32 %44 to float
  %.i2104 = bitcast i32 %45 to float
  %.i3105 = bitcast i32 %46 to float
  %.upto0120 = insertelement <4 x float> undef, float %.i0102, i32 0
  %.upto1121 = insertelement <4 x float> %.upto0120, float %.i1103, i32 1
  %.upto2122 = insertelement <4 x float> %.upto1121, float %.i2104, i32 2
  %70 = insertelement <4 x float> %.upto2122, float %.i3105, i32 3
  %71 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %0, i32 0, i32 1, i32 2
  store <4 x float> %70, <4 x float>* %71, align 4, !tbaa !196
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"(%struct.RWByteAddressBuffer* noalias nocapture sret, <2 x i32>) #5 {
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?GetBoxFromBuffer@@YA?AUBoundingBox@@URWByteAddressBuffer@@II@Z"(%struct.BoundingBox* noalias nocapture sret, %struct.RWByteAddressBuffer* nocapture readonly, i32, i32) #5 {
  %5 = shl i32 %3, 5
  %6 = add i32 %5, %2
  %7 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %1, align 4
  %8 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %7)
  %9 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6, i32 undef)
  %10 = extractvalue %dx.types.ResRet.i32 %9, 0
  %11 = extractvalue %dx.types.ResRet.i32 %9, 1
  %12 = extractvalue %dx.types.ResRet.i32 %9, 2
  %13 = add i32 %6, 16
  %14 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %13, i32 undef)
  %15 = extractvalue %dx.types.ResRet.i32 %14, 0
  %16 = extractvalue %dx.types.ResRet.i32 %14, 1
  %17 = extractvalue %dx.types.ResRet.i32 %14, 2
  %18 = bitcast i32 %10 to float
  %19 = insertelement <3 x float> undef, float %18, i32 0
  %20 = bitcast i32 %11 to float
  %21 = insertelement <3 x float> %19, float %20, i32 1
  %22 = bitcast i32 %12 to float
  %23 = insertelement <3 x float> %21, float %22, i32 2
  %24 = bitcast i32 %15 to float
  %25 = insertelement <3 x float> undef, float %24, i32 0
  %26 = bitcast i32 %16 to float
  %27 = insertelement <3 x float> %25, float %26, i32 1
  %28 = bitcast i32 %17 to float
  %29 = insertelement <3 x float> %27, float %28, i32 2
  %30 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 0
  store <3 x float> %23, <3 x float>* %30, align 4
  %31 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 1
  store <3 x float> %29, <3 x float>* %31, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define float @"\01?Determinant@@YAMV?$matrix@M$02$03@@@Z"(%class.matrix.float.3.4) #6 {
  %2 = extractvalue %class.matrix.float.3.4 %0, 0, 0
  %3 = extractelement <4 x float> %2, i32 2
  %4 = extractelement <4 x float> %2, i32 1
  %5 = extractelement <4 x float> %2, i32 0
  %6 = extractvalue %class.matrix.float.3.4 %0, 0, 1
  %7 = extractelement <4 x float> %6, i32 2
  %8 = extractelement <4 x float> %6, i32 1
  %9 = extractelement <4 x float> %6, i32 0
  %10 = extractvalue %class.matrix.float.3.4 %0, 0, 2
  %11 = extractelement <4 x float> %10, i32 2
  %12 = extractelement <4 x float> %10, i32 1
  %13 = extractelement <4 x float> %10, i32 0
  %14 = fmul fast float %5, %8
  %15 = fmul fast float %14, %11
  %16 = fmul fast float %5, %12
  %17 = fmul fast float %16, %7
  %18 = fsub fast float %15, %17
  %19 = fmul fast float %9, %4
  %20 = fmul fast float %19, %11
  %21 = fsub fast float %18, %20
  %22 = fmul fast float %9, %12
  %23 = fmul fast float %22, %3
  %24 = fadd fast float %21, %23
  %25 = fmul fast float %13, %4
  %26 = fmul fast float %25, %7
  %27 = fadd fast float %24, %26
  %28 = fmul fast float %13, %8
  %29 = fmul fast float %28, %3
  %30 = fsub fast float %27, %29
  ret float %30
}

; Function Attrs: alwaysinline nounwind readnone
define i1 @"\01?Cull@@YA_N_NI@Z"(i1 zeroext, i32) #6 {
  %3 = and i32 %1, 64
  %4 = icmp ne i32 %3, 0
  %5 = and i1 %4, %0
  %6 = xor i1 %0, true
  %7 = and i32 %1, 128
  %8 = icmp ne i32 %7, 0
  %9 = and i1 %8, %6
  %10 = or i1 %5, %9
  ret i1 %10
}

; Function Attrs: alwaysinline nounwind
define void @"\01?BVHReadBoundingBox@@YA?AUBoundingBox@@URWByteAddressBufferPointer@@HAIAV?$vector@I$01@@@Z"(%struct.BoundingBox* noalias nocapture sret, %struct.RWByteAddressBufferPointer* nocapture readonly, i32, <2 x i32>* noalias nocapture dereferenceable(8)) #5 {
  %5 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %1, i32 0, i32 1
  %6 = load i32, i32* %5, align 4, !tbaa !158
  %7 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %1, i32 0, i32 0
  %8 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %7, align 4
  %9 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %8)
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6, i32 undef)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = shl i32 %2, 5
  %13 = add i32 %6, %12
  %14 = add i32 %13, %11
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %14, i32 undef)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = extractvalue %dx.types.ResRet.i32 %15, 1
  %18 = extractvalue %dx.types.ResRet.i32 %15, 2
  %19 = extractvalue %dx.types.ResRet.i32 %15, 3
  %20 = add i32 %14, 16
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %20, i32 undef)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = extractvalue %dx.types.ResRet.i32 %21, 1
  %24 = extractvalue %dx.types.ResRet.i32 %21, 2
  %25 = extractvalue %dx.types.ResRet.i32 %21, 3
  %26 = bitcast i32 %16 to float
  %27 = insertelement <3 x float> undef, float %26, i32 0
  %28 = bitcast i32 %17 to float
  %29 = insertelement <3 x float> %27, float %28, i32 1
  %30 = bitcast i32 %18 to float
  %31 = insertelement <3 x float> %29, float %30, i32 2
  %32 = bitcast i32 %22 to float
  %33 = insertelement <3 x float> undef, float %32, i32 0
  %34 = bitcast i32 %23 to float
  %35 = insertelement <3 x float> %33, float %34, i32 1
  %36 = bitcast i32 %24 to float
  %37 = insertelement <3 x float> %35, float %36, i32 2
  %38 = insertelement <2 x i32> undef, i32 %19, i64 0
  %39 = insertelement <2 x i32> %38, i32 %25, i64 1
  store <2 x i32> %39, <2 x i32>* %3, align 4, !tbaa !196
  %40 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 0
  store <3 x float> %31, <3 x float>* %40, align 4
  %41 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 1
  store <3 x float> %37, <3 x float>* %41, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?StackPush@@YAXAIAHII@Z"(i32* noalias nocapture dereferenceable(4), i32, i32) #5 {
  %4 = load i32, i32* %0, align 4, !tbaa !158
  %5 = shl i32 %4, 6
  %6 = add i32 %5, %2
  %7 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %6
  store i32 %1, i32 addrspace(3)* %7, align 4, !tbaa !158
  %8 = add nsw i32 %4, 1
  store i32 %8, i32* %0, align 4, !tbaa !158
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?BVHReadTriangle@@YAXURWByteAddressBufferPointer@@AIAV?$vector@M$02@@11I@Z"(%struct.RWByteAddressBufferPointer* nocapture readonly, <3 x float>* noalias nocapture dereferenceable(12), <3 x float>* noalias nocapture dereferenceable(12), <3 x float>* noalias nocapture dereferenceable(12), i32) #5 {
  %6 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 1
  %7 = load i32, i32* %6, align 4, !tbaa !158
  %8 = add i32 %7, 4
  %9 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 0
  %10 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %9, align 4
  %11 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %10)
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %8, i32 undef)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = mul i32 %4, 36
  %15 = add i32 %7, %14
  %16 = add i32 %15, %13
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %16, i32 undef)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = extractvalue %dx.types.ResRet.i32 %17, 1
  %20 = extractvalue %dx.types.ResRet.i32 %17, 2
  %21 = extractvalue %dx.types.ResRet.i32 %17, 3
  %.i0 = bitcast i32 %18 to float
  %.i1 = bitcast i32 %19 to float
  %.i2 = bitcast i32 %20 to float
  %.i3 = bitcast i32 %21 to float
  %22 = add i32 %16, 16
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %22, i32 undef)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = extractvalue %dx.types.ResRet.i32 %23, 1
  %26 = extractvalue %dx.types.ResRet.i32 %23, 2
  %27 = extractvalue %dx.types.ResRet.i32 %23, 3
  %.i04 = bitcast i32 %24 to float
  %.i15 = bitcast i32 %25 to float
  %.i26 = bitcast i32 %26 to float
  %.i37 = bitcast i32 %27 to float
  %28 = add i32 %16, 32
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %28, i32 undef)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = bitcast i32 %30 to float
  %.upto08 = insertelement <3 x float> undef, float %.i0, i32 0
  %.upto19 = insertelement <3 x float> %.upto08, float %.i1, i32 1
  %32 = insertelement <3 x float> %.upto19, float %.i2, i32 2
  store <3 x float> %32, <3 x float>* %1, align 4, !tbaa !196
  %33 = insertelement <3 x float> undef, float %.i3, i64 0
  %34 = insertelement <3 x float> %33, float %.i04, i64 1
  %35 = insertelement <3 x float> %34, float %.i15, i64 2
  store <3 x float> %35, <3 x float>* %2, align 4, !tbaa !196
  %36 = insertelement <3 x float> undef, float %.i26, i64 0
  %37 = insertelement <3 x float> %36, float %.i37, i64 1
  %38 = insertelement <3 x float> %37, float %31, i64 2
  store <3 x float> %38, <3 x float>* %3, align 4, !tbaa !196
  ret void
}

; Function Attrs: alwaysinline nounwind
define i32 @"\01?Traverse@@YAHIIII@Z"(i32, i32, i32, i32) #5 {
  %5 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?MissShaderTable@@3UByteAddressBuffer@@A", align 4
  %6 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?HitGroupShaderTable@@3UByteAddressBuffer@@A", align 4
  %7 = load %AccelerationStructureList, %AccelerationStructureList* @AccelerationStructureList, align 4
  %8 = load %Constants, %Constants* @Constants, align 4
  %AccelerationStructureList = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.AccelerationStructureList(i32 160, %AccelerationStructureList %7)
  %Constants249 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.Constants(i32 160, %Constants %8)
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %nodesToProcess.i = alloca [2 x i32], align 4
  %attr.i = alloca %struct.BuiltInTriangleIntersectionAttributes, align 4
  %14 = call i32 @"\01?Fallback_GroupIndex@@YAIXZ"() #3
  %WorldRayDirection220 = call float @dx.op.worldRayDirection.f32(i32 148, i8 0)
  %WorldRayDirection221 = call float @dx.op.worldRayDirection.f32(i32 148, i8 1)
  %WorldRayDirection222 = call float @dx.op.worldRayDirection.f32(i32 148, i8 2)
  %WorldRayOrigin217 = call float @dx.op.worldRayOrigin.f32(i32 147, i8 0)
  %WorldRayOrigin218 = call float @dx.op.worldRayOrigin.f32(i32 147, i8 1)
  %WorldRayOrigin219 = call float @dx.op.worldRayOrigin.f32(i32 147, i8 2)
  %15 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 0
  store float %WorldRayDirection220, float* %15, align 4
  %16 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 1
  store float %WorldRayDirection221, float* %16, align 4
  %17 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 2
  store float %WorldRayDirection222, float* %17, align 4
  %.i0 = fdiv fast float 1.000000e+00, %WorldRayDirection220
  %.i1 = fdiv fast float 1.000000e+00, %WorldRayDirection221
  %.i2 = fdiv fast float 1.000000e+00, %WorldRayDirection222
  %.i0250 = fmul fast float %.i0, %WorldRayOrigin217
  %.i1251 = fmul fast float %.i1, %WorldRayOrigin218
  %.i2252 = fmul fast float %.i2, %WorldRayOrigin219
  %FAbs210 = call float @dx.op.unary.f32(i32 6, float %WorldRayDirection220)
  %FAbs211 = call float @dx.op.unary.f32(i32 6, float %WorldRayDirection221)
  %FAbs212 = call float @dx.op.unary.f32(i32 6, float %WorldRayDirection222)
  %18 = fcmp fast ogt float %FAbs210, %FAbs211
  %19 = fcmp fast ogt float %FAbs210, %FAbs212
  %20 = and i1 %18, %19
  br i1 %20, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i", label %21

; <label>:21                                      ; preds = %4
  %22 = fcmp fast ogt float %FAbs211, %FAbs212
  br i1 %22, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i", label %23

; <label>:23                                      ; preds = %21
  br label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i"

"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i": ; preds = %23, %21, %4
  %.0171 = phi i32 [ 2, %23 ], [ 0, %4 ], [ 1, %21 ]
  %24 = add nuw nsw i32 %.0171, 1
  %25 = urem i32 %24, 3
  %26 = add nuw nsw i32 %.0171, 2
  %27 = urem i32 %26, 3
  %28 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %.0171
  %29 = load float, float* %28, align 4, !tbaa !151, !noalias !203
  %30 = fcmp fast olt float %29, 0.000000e+00
  %worldRayData.i.5.0.i0 = select i1 %30, i32 %27, i32 %25
  %worldRayData.i.5.0.i1 = select i1 %30, i32 %25, i32 %27
  %31 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %worldRayData.i.5.0.i0
  %32 = load float, float* %31, align 4, !tbaa !151, !noalias !203
  %33 = fdiv float %32, %29
  %34 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %worldRayData.i.5.0.i1
  %35 = load float, float* %34, align 4, !tbaa !151, !noalias !203
  %36 = fdiv float %35, %29
  %37 = fdiv float 1.000000e+00, %29
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList, i32 0)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 0
  %40 = extractvalue %dx.types.CBufRet.i32 %38, 1
  %41 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %14
  store i32 0, i32 addrspace(3)* %41, align 4, !tbaa !158, !noalias !206
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i, i32 0, i32 0
  store i32 1, i32* %42, align 4, !tbaa !158
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList, i32 0)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.i32 %43, 1
  %46 = getelementptr inbounds [0 x %struct.RWByteAddressBuffer], [0 x %struct.RWByteAddressBuffer]* @"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A", i32 0, i32 %45, !dx.nonuniform !163
  %47 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %46, align 4, !noalias !209
  %48 = add i32 %44, 4
  %49 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %47)
  %50 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %48, i32 undef)
  %51 = extractvalue %dx.types.ResRet.i32 %50, 0
  %52 = add i32 %51, %44
  call void @"\01?Fallback_SetInstanceIndex@@YAXI@Z"(i32 -1) #3
  %53 = getelementptr inbounds [3 x float], [3 x float]* %12, i32 0, i32 0
  %54 = getelementptr inbounds [3 x float], [3 x float]* %12, i32 0, i32 1
  %55 = getelementptr inbounds [3 x float], [3 x float]* %12, i32 0, i32 2
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i, i32 0, i32 1
  %57 = getelementptr inbounds %struct.BuiltInTriangleIntersectionAttributes, %struct.BuiltInTriangleIntersectionAttributes* %attr.i, i32 0, i32 0
  %58 = getelementptr inbounds [3 x float], [3 x float]* %11, i32 0, i32 0
  %59 = getelementptr inbounds [3 x float], [3 x float]* %11, i32 0, i32 1
  %60 = getelementptr inbounds [3 x float], [3 x float]* %11, i32 0, i32 2
  %61 = getelementptr inbounds [3 x float], [3 x float]* %9, i32 0, i32 0
  %62 = getelementptr inbounds [3 x float], [3 x float]* %9, i32 0, i32 1
  %63 = getelementptr inbounds [3 x float], [3 x float]* %9, i32 0, i32 2
  %64 = getelementptr inbounds [3 x float], [3 x float]* %10, i32 0, i32 0
  %65 = getelementptr inbounds [3 x float], [3 x float]* %10, i32 0, i32 1
  %66 = getelementptr inbounds [3 x float], [3 x float]* %10, i32 0, i32 2
  br label %.backedge

.backedge:                                        ; preds = %376, %380, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i"
  %.0174.i0 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %.3.i0, %380 ], [ %.3.i0, %376 ]
  %.0174.i1 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %.3.i1, %380 ], [ %.3.i1, %376 ]
  %currentRayData.i.0.0.i0 = phi float [ %WorldRayOrigin217, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.0.1.i0, %376 ], [ %WorldRayOrigin217, %380 ]
  %currentRayData.i.0.0.i1 = phi float [ %WorldRayOrigin218, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.0.1.i1, %376 ], [ %WorldRayOrigin218, %380 ]
  %currentRayData.i.0.0.i2 = phi float [ %WorldRayOrigin219, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.0.1.i2, %376 ], [ %WorldRayOrigin219, %380 ]
  %currentRayData.i.1.0.i0 = phi float [ %WorldRayDirection220, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.1.1.i0, %376 ], [ %WorldRayDirection220, %380 ]
  %currentRayData.i.1.0.i1 = phi float [ %WorldRayDirection221, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.1.1.i1, %376 ], [ %WorldRayDirection221, %380 ]
  %currentRayData.i.1.0.i2 = phi float [ %WorldRayDirection222, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.1.1.i2, %376 ], [ %WorldRayDirection222, %380 ]
  %currentRayData.i.2.0.i0 = phi float [ %.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.2.1.i0, %376 ], [ %.i0, %380 ]
  %currentRayData.i.2.0.i1 = phi float [ %.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.2.1.i1, %376 ], [ %.i1, %380 ]
  %currentRayData.i.2.0.i2 = phi float [ %.i2, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.2.1.i2, %376 ], [ %.i2, %380 ]
  %currentRayData.i.3.0.i0 = phi float [ %.i0250, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.3.1.i0, %376 ], [ %.i0250, %380 ]
  %currentRayData.i.3.0.i1 = phi float [ %.i1251, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.3.1.i1, %376 ], [ %.i1251, %380 ]
  %currentRayData.i.3.0.i2 = phi float [ %.i2252, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.3.1.i2, %376 ], [ %.i2252, %380 ]
  %currentRayData.i.4.0.i0 = phi float [ %33, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.4.1.i0, %376 ], [ %33, %380 ]
  %currentRayData.i.4.0.i1 = phi float [ %36, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.4.1.i1, %376 ], [ %36, %380 ]
  %currentRayData.i.4.0.i2 = phi float [ %37, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.4.1.i2, %376 ], [ %37, %380 ]
  %currentRayData.i.5.0.i0 = phi i32 [ %worldRayData.i.5.0.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.5.1.i0, %376 ], [ %worldRayData.i.5.0.i0, %380 ]
  %currentRayData.i.5.0.i1 = phi i32 [ %worldRayData.i.5.0.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.5.1.i1, %376 ], [ %worldRayData.i.5.0.i1, %380 ]
  %currentRayData.i.5.0.i2 = phi i32 [ %.0171, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentRayData.i.5.1.i2, %376 ], [ %.0171, %380 ]
  %CurrentObjectToWorld.i167.0.i0 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i0, %380 ], [ %CurrentObjectToWorld.i167.1.i0, %376 ]
  %CurrentObjectToWorld.i167.0.i1 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i1, %380 ], [ %CurrentObjectToWorld.i167.1.i1, %376 ]
  %CurrentObjectToWorld.i167.0.i2 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i2, %380 ], [ %CurrentObjectToWorld.i167.1.i2, %376 ]
  %CurrentObjectToWorld.i167.0.i3 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i3, %380 ], [ %CurrentObjectToWorld.i167.1.i3, %376 ]
  %CurrentObjectToWorld.i167.0.i4 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i4, %380 ], [ %CurrentObjectToWorld.i167.1.i4, %376 ]
  %CurrentObjectToWorld.i167.0.i5 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i5, %380 ], [ %CurrentObjectToWorld.i167.1.i5, %376 ]
  %CurrentObjectToWorld.i167.0.i6 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i6, %380 ], [ %CurrentObjectToWorld.i167.1.i6, %376 ]
  %CurrentObjectToWorld.i167.0.i7 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i7, %380 ], [ %CurrentObjectToWorld.i167.1.i7, %376 ]
  %CurrentObjectToWorld.i167.0.i8 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i8, %380 ], [ %CurrentObjectToWorld.i167.1.i8, %376 ]
  %CurrentObjectToWorld.i167.0.i9 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i9, %380 ], [ %CurrentObjectToWorld.i167.1.i9, %376 ]
  %CurrentObjectToWorld.i167.0.i10 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i10, %380 ], [ %CurrentObjectToWorld.i167.1.i10, %376 ]
  %CurrentObjectToWorld.i167.0.i11 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentObjectToWorld.i167.1.i11, %380 ], [ %CurrentObjectToWorld.i167.1.i11, %376 ]
  %CurrentWorldToObject.i168.0.i0 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i0, %380 ], [ %CurrentWorldToObject.i168.1.i0, %376 ]
  %CurrentWorldToObject.i168.0.i1 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i1, %380 ], [ %CurrentWorldToObject.i168.1.i1, %376 ]
  %CurrentWorldToObject.i168.0.i2 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i2, %380 ], [ %CurrentWorldToObject.i168.1.i2, %376 ]
  %CurrentWorldToObject.i168.0.i3 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i3, %380 ], [ %CurrentWorldToObject.i168.1.i3, %376 ]
  %CurrentWorldToObject.i168.0.i4 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i4, %380 ], [ %CurrentWorldToObject.i168.1.i4, %376 ]
  %CurrentWorldToObject.i168.0.i5 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i5, %380 ], [ %CurrentWorldToObject.i168.1.i5, %376 ]
  %CurrentWorldToObject.i168.0.i6 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i6, %380 ], [ %CurrentWorldToObject.i168.1.i6, %376 ]
  %CurrentWorldToObject.i168.0.i7 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i7, %380 ], [ %CurrentWorldToObject.i168.1.i7, %376 ]
  %CurrentWorldToObject.i168.0.i8 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i8, %380 ], [ %CurrentWorldToObject.i168.1.i8, %376 ]
  %CurrentWorldToObject.i168.0.i9 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i9, %380 ], [ %CurrentWorldToObject.i168.1.i9, %376 ]
  %CurrentWorldToObject.i168.0.i10 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i10, %380 ], [ %CurrentWorldToObject.i168.1.i10, %376 ]
  %CurrentWorldToObject.i168.0.i11 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %CurrentWorldToObject.i168.1.i11, %380 ], [ %CurrentWorldToObject.i168.1.i11, %376 ]
  %ResetMatrices.i.0 = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %ResetMatrices.i.2, %376 ], [ 1, %380 ]
  %currentBVHIndex.i.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentBVHIndex.i.1, %376 ], [ %381, %380 ]
  %currentGpuVA.i.0.i0 = phi i32 [ %39, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentGpuVA.i.1.i0, %376 ], [ %383, %380 ]
  %currentGpuVA.i.0.i1 = phi i32 [ %40, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %currentGpuVA.i.1.i1, %376 ], [ %384, %380 ]
  %instIdx.i.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %instIdx.i.1, %380 ], [ %instIdx.i.1, %376 ]
  %instFlags.i.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %instFlags.i.1, %380 ], [ %instFlags.i.1, %376 ]
  %instOffset.i.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %instOffset.i.1, %380 ], [ %instOffset.i.1, %376 ]
  %instId.i.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %instId.i.1, %380 ], [ %instId.i.1, %376 ]
  %stackPointer.i.0 = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %stackPointer.i.1, %380 ], [ %stackPointer.i.1, %376 ]
  %resultBary.i.0.i0 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %resultBary.i.1.i0, %380 ], [ %resultBary.i.1.i0, %376 ]
  %resultBary.i.0.i1 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %resultBary.i.1.i1, %380 ], [ %resultBary.i.1.i1, %376 ]
  %resultTriId.i.0 = phi i32 [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i" ], [ %resultTriId.i.1, %380 ], [ %resultTriId.i.1, %376 ]
  %currentRayData.i.1.0.upto0 = insertelement <3 x float> undef, float %currentRayData.i.1.0.i0, i32 0
  %currentRayData.i.1.0.upto1 = insertelement <3 x float> %currentRayData.i.1.0.upto0, float %currentRayData.i.1.0.i1, i32 1
  %currentRayData.i.1.0 = insertelement <3 x float> %currentRayData.i.1.0.upto1, float %currentRayData.i.1.0.i2, i32 2
  %currentRayData.i.0.0.upto0 = insertelement <3 x float> undef, float %currentRayData.i.0.0.i0, i32 0
  %currentRayData.i.0.0.upto1 = insertelement <3 x float> %currentRayData.i.0.0.upto0, float %currentRayData.i.0.0.i1, i32 1
  %currentRayData.i.0.0 = insertelement <3 x float> %currentRayData.i.0.0.upto1, float %currentRayData.i.0.0.i2, i32 2
  %67 = add nsw i32 %stackPointer.i.0, -1
  %68 = shl i32 %67, 6
  %69 = add i32 %68, %14
  %70 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %69
  %71 = load i32, i32 addrspace(3)* %70, align 4, !tbaa !158, !noalias !214
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i, i32 0, i32 %currentBVHIndex.i.0
  %73 = load i32, i32* %72, align 4, !tbaa !158
  %74 = add i32 %73, -1
  store i32 %74, i32* %72, align 4, !tbaa !158
  %75 = getelementptr inbounds [0 x %struct.RWByteAddressBuffer], [0 x %struct.RWByteAddressBuffer]* @"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A", i32 0, i32 %currentGpuVA.i.0.i1, !dx.nonuniform !163
  %76 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %75, align 4, !noalias !217
  %77 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %76)
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %77, i32 %currentGpuVA.i.0.i0, i32 undef)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = shl i32 %71, 5
  %81 = add i32 %80, %currentGpuVA.i.0.i0
  %82 = add i32 %81, %79
  %83 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %77, i32 %82, i32 undef)
  %84 = extractvalue %dx.types.ResRet.i32 %83, 0
  %85 = extractvalue %dx.types.ResRet.i32 %83, 1
  %86 = extractvalue %dx.types.ResRet.i32 %83, 2
  %87 = extractvalue %dx.types.ResRet.i32 %83, 3
  %88 = add i32 %82, 16
  %89 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %77, i32 %88, i32 undef)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = extractvalue %dx.types.ResRet.i32 %89, 1
  %92 = extractvalue %dx.types.ResRet.i32 %89, 2
  %93 = extractvalue %dx.types.ResRet.i32 %89, 3
  %94 = bitcast i32 %84 to float
  %95 = bitcast i32 %85 to float
  %96 = bitcast i32 %86 to float
  %97 = bitcast i32 %90 to float
  %98 = bitcast i32 %91 to float
  %99 = bitcast i32 %92 to float
  %RayTCurrent201 = call float @dx.op.rayTCurrent.f32(i32 154)
  %.i0253 = fmul fast float %94, %currentRayData.i.2.0.i0
  %.i1254 = fmul fast float %95, %currentRayData.i.2.0.i1
  %.i2255 = fmul fast float %96, %currentRayData.i.2.0.i2
  %.i0256 = fsub fast float %.i0253, %currentRayData.i.3.0.i0
  %.i1257 = fsub fast float %.i1254, %currentRayData.i.3.0.i1
  %.i2258 = fsub fast float %.i2255, %currentRayData.i.3.0.i2
  %FAbs207 = call float @dx.op.unary.f32(i32 6, float %currentRayData.i.2.0.i0)
  %FAbs208 = call float @dx.op.unary.f32(i32 6, float %currentRayData.i.2.0.i1)
  %FAbs209 = call float @dx.op.unary.f32(i32 6, float %currentRayData.i.2.0.i2)
  %.i0259 = fmul fast float %97, %FAbs207
  %.i1260 = fmul fast float %FAbs208, %98
  %.i2261 = fmul fast float %FAbs209, %99
  %.i0262 = fadd fast float %.i0259, %.i0256
  %.i1263 = fadd fast float %.i1260, %.i1257
  %.i2264 = fadd fast float %.i2261, %.i2258
  %.i0268 = fsub fast float %.i0256, %.i0259
  %.i1269 = fsub fast float %.i1257, %.i1260
  %.i2270 = fsub fast float %.i2258, %.i2261
  %FMax231 = call float @dx.op.binary.f32(i32 35, float %.i0268, float %.i1269)
  %FMax230 = call float @dx.op.binary.f32(i32 35, float %FMax231, float %.i2270)
  %FMin229 = call float @dx.op.binary.f32(i32 36, float %.i0262, float %.i1263)
  %FMin228 = call float @dx.op.binary.f32(i32 36, float %FMin229, float %.i2264)
  %FMax = call float @dx.op.binary.f32(i32 35, float %FMax230, float 0.000000e+00)
  %FMin = call float @dx.op.binary.f32(i32 36, float %FMin228, float %RayTCurrent201)
  %100 = fcmp fast olt float %FMax, %FMin
  br i1 %100, label %101, label %376

; <label>:101                                     ; preds = %.backedge
  %102 = icmp slt i32 %87, 0
  br i1 %102, label %103, label %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i"

; <label>:103                                     ; preds = %101
  %104 = icmp eq i32 %currentBVHIndex.i.0, 0
  br i1 %104, label %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176", label %"\01?IsOpaque@@YA_N_NII@Z.exit.i"

"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176": ; preds = %103
  %105 = and i32 %87, 2147483647
  %106 = mul i32 %105, 112
  %107 = add i32 %52, %106
  %108 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %47)
  %109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %108, i32 %107, i32 undef)
  %110 = extractvalue %dx.types.ResRet.i32 %109, 0
  %111 = extractvalue %dx.types.ResRet.i32 %109, 1
  %112 = extractvalue %dx.types.ResRet.i32 %109, 2
  %113 = extractvalue %dx.types.ResRet.i32 %109, 3
  %114 = add i32 %107, 16
  %115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %108, i32 %114, i32 undef)
  %116 = extractvalue %dx.types.ResRet.i32 %115, 0
  %117 = extractvalue %dx.types.ResRet.i32 %115, 1
  %118 = extractvalue %dx.types.ResRet.i32 %115, 2
  %119 = extractvalue %dx.types.ResRet.i32 %115, 3
  %120 = add i32 %107, 32
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %108, i32 %120, i32 undef)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = extractvalue %dx.types.ResRet.i32 %121, 1
  %124 = extractvalue %dx.types.ResRet.i32 %121, 2
  %125 = extractvalue %dx.types.ResRet.i32 %121, 3
  %126 = add i32 %107, 48
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %108, i32 %126, i32 undef)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = extractvalue %dx.types.ResRet.i32 %127, 1
  %130 = extractvalue %dx.types.ResRet.i32 %127, 2
  %131 = extractvalue %dx.types.ResRet.i32 %127, 3
  %132 = add i32 %107, 64
  %133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %108, i32 %132, i32 undef)
  %134 = extractvalue %dx.types.ResRet.i32 %133, 0
  %135 = extractvalue %dx.types.ResRet.i32 %133, 1
  %136 = extractvalue %dx.types.ResRet.i32 %133, 2
  %137 = extractvalue %dx.types.ResRet.i32 %133, 3
  %138 = add i32 %107, 80
  %139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %108, i32 %138, i32 undef)
  %140 = extractvalue %dx.types.ResRet.i32 %139, 0
  %141 = extractvalue %dx.types.ResRet.i32 %139, 1
  %142 = extractvalue %dx.types.ResRet.i32 %139, 2
  %143 = extractvalue %dx.types.ResRet.i32 %139, 3
  %144 = add i32 %107, 96
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %108, i32 %144, i32 undef)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = extractvalue %dx.types.ResRet.i32 %145, 1
  %148 = extractvalue %dx.types.ResRet.i32 %145, 2
  %149 = extractvalue %dx.types.ResRet.i32 %145, 3
  %150 = bitcast i32 %110 to float
  %151 = bitcast i32 %111 to float
  %152 = bitcast i32 %112 to float
  %153 = bitcast i32 %113 to float
  %154 = bitcast i32 %116 to float
  %155 = bitcast i32 %117 to float
  %156 = bitcast i32 %118 to float
  %157 = bitcast i32 %119 to float
  %158 = bitcast i32 %122 to float
  %159 = bitcast i32 %123 to float
  %160 = bitcast i32 %124 to float
  %161 = bitcast i32 %125 to float
  %162 = and i32 %129, 16777215
  %163 = and i32 %128, 16777215
  %164 = lshr i32 %128, 24
  %165 = and i32 %164, %0
  %166 = icmp eq i32 %165, 0
  %167 = bitcast i32 %134 to float
  %168 = bitcast i32 %135 to float
  %169 = bitcast i32 %136 to float
  %170 = bitcast i32 %137 to float
  %171 = bitcast i32 %140 to float
  %172 = bitcast i32 %141 to float
  %173 = bitcast i32 %142 to float
  %174 = bitcast i32 %143 to float
  %175 = bitcast i32 %146 to float
  %176 = bitcast i32 %147 to float
  %177 = bitcast i32 %148 to float
  %178 = bitcast i32 %149 to float
  br i1 %166, label %376, label %179

; <label>:179                                     ; preds = %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176"
  store i32 0, i32 addrspace(3)* %70, align 4, !tbaa !158, !noalias !222
  %180 = lshr i32 %129, 24
  %181 = fmul fast float %WorldRayDirection220, %150
  %FMad248 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection221, float %151, float %181)
  %FMad247 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection222, float %152, float %FMad248)
  %FMad246 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %153, float %FMad247)
  %182 = fmul fast float %WorldRayDirection220, %154
  %FMad245 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection221, float %155, float %182)
  %FMad244 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection222, float %156, float %FMad245)
  %FMad243 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %157, float %FMad244)
  %183 = fmul fast float %WorldRayDirection220, %158
  %FMad242 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection221, float %159, float %183)
  %FMad241 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection222, float %160, float %FMad242)
  %FMad240 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %161, float %FMad241)
  %184 = fmul fast float %WorldRayOrigin217, %150
  %FMad239 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin218, float %151, float %184)
  %FMad238 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin219, float %152, float %FMad239)
  %FMad237 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %153, float %FMad238)
  %185 = fmul fast float %WorldRayOrigin217, %154
  %FMad236 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin218, float %155, float %185)
  %FMad235 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin219, float %156, float %FMad236)
  %FMad234 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %157, float %FMad235)
  %186 = fmul fast float %WorldRayOrigin217, %158
  %FMad233 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin218, float %159, float %186)
  %FMad232 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin219, float %160, float %FMad233)
  %FMad = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %161, float %FMad232)
  store float %FMad246, float* %53, align 4
  store float %FMad243, float* %54, align 4
  store float %FMad240, float* %55, align 4
  %.i0294 = fdiv fast float 1.000000e+00, %FMad246
  %.i1295 = fdiv fast float 1.000000e+00, %FMad243
  %.i2296 = fdiv fast float 1.000000e+00, %FMad240
  %.i0297 = fmul fast float %.i0294, %FMad237
  %.i1298 = fmul fast float %.i1295, %FMad234
  %.i2299 = fmul fast float %.i2296, %FMad
  %FAbs = call float @dx.op.unary.f32(i32 6, float %FMad246)
  %FAbs202 = call float @dx.op.unary.f32(i32 6, float %FMad243)
  %FAbs203 = call float @dx.op.unary.f32(i32 6, float %FMad240)
  %187 = fcmp fast ogt float %FAbs, %FAbs202
  %188 = fcmp fast ogt float %FAbs, %FAbs203
  %189 = and i1 %187, %188
  br i1 %189, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i", label %190

; <label>:190                                     ; preds = %179
  %191 = fcmp fast ogt float %FAbs202, %FAbs203
  br i1 %191, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i", label %192

; <label>:192                                     ; preds = %190
  br label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i"

"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i": ; preds = %192, %190, %179
  %.0172 = phi i32 [ 2, %192 ], [ 0, %179 ], [ 1, %190 ]
  %193 = add nuw nsw i32 %.0172, 1
  %194 = urem i32 %193, 3
  %195 = add nuw nsw i32 %.0172, 2
  %196 = urem i32 %195, 3
  %197 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %.0172
  %198 = load float, float* %197, align 4, !tbaa !151, !noalias !225
  %199 = fcmp fast olt float %198, 0.000000e+00
  %.5.0.i0 = select i1 %199, i32 %196, i32 %194
  %.5.0.i1 = select i1 %199, i32 %194, i32 %196
  %200 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %.5.0.i0
  %201 = load float, float* %200, align 4, !tbaa !151, !noalias !225
  %202 = fdiv float %201, %198
  %203 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %.5.0.i1
  %204 = load float, float* %203, align 4, !tbaa !151, !noalias !225
  %205 = fdiv float %204, %198
  %206 = fdiv float 1.000000e+00, %198
  store i32 1, i32* %56, align 4, !tbaa !158
  br label %376

"\01?IsOpaque@@YA_N_NII@Z.exit.i":                ; preds = %103
  %RayFlags225 = call i32 @dx.op.rayFlags.i32(i32 144)
  %207 = and i32 %RayFlags225, 64
  %208 = icmp eq i32 %207, 0
  %209 = and i32 %87, 16777215
  %210 = and i32 %93, 1
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i", label %212

; <label>:212                                     ; preds = %"\01?IsOpaque@@YA_N_NII@Z.exit.i"
  %213 = add i32 %currentGpuVA.i.0.i0, 4
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %77, i32 %213, i32 undef)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = mul nuw nsw i32 %209, 36
  %217 = add i32 %216, %currentGpuVA.i.0.i0
  %218 = add i32 %217, %215
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %77, i32 %218, i32 undef)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = extractvalue %dx.types.ResRet.i32 %219, 1
  %222 = extractvalue %dx.types.ResRet.i32 %219, 2
  %223 = extractvalue %dx.types.ResRet.i32 %219, 3
  %.i0300 = bitcast i32 %220 to float
  %.i1301 = bitcast i32 %221 to float
  %.i2302 = bitcast i32 %222 to float
  %.i3303 = bitcast i32 %223 to float
  %224 = add i32 %218, 16
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %77, i32 %224, i32 undef)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = extractvalue %dx.types.ResRet.i32 %225, 1
  %228 = extractvalue %dx.types.ResRet.i32 %225, 2
  %229 = extractvalue %dx.types.ResRet.i32 %225, 3
  %.i0304 = bitcast i32 %226 to float
  %.i1305 = bitcast i32 %227 to float
  %.i2306 = bitcast i32 %228 to float
  %.i3307 = bitcast i32 %229 to float
  %230 = add i32 %218, 32
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %77, i32 %230, i32 undef)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = bitcast i32 %232 to float
  %234 = and i32 %instFlags.i.0, 1
  %235 = icmp eq i32 %234, 0
  %236 = shl i32 %instFlags.i.0, 3
  %237 = and i32 %236, 16
  %238 = add nuw nsw i32 %237, 16
  %239 = xor i32 %237, 16
  %240 = add nuw nsw i32 %239, 16
  %241 = and i32 %RayFlags225, %238
  %242 = icmp ne i32 %241, 0
  %243 = and i1 %235, %242
  %244 = and i32 %RayFlags225, %240
  %245 = icmp ne i32 %244, 0
  %246 = and i1 %235, %245
  %.i0308 = fsub fast float %.i0300, %currentRayData.i.0.0.i0
  %.i1309 = fsub fast float %.i1301, %currentRayData.i.0.0.i1
  %.i2310 = fsub fast float %.i2302, %currentRayData.i.0.0.i2
  store float %.i0308, float* %58, align 4
  store float %.i1309, float* %59, align 4
  store float %.i2310, float* %60, align 4
  %247 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 %currentRayData.i.5.0.i0
  %248 = load float, float* %247, align 4, !tbaa !151, !noalias !228
  %249 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 %currentRayData.i.5.0.i1
  %250 = load float, float* %249, align 4, !tbaa !151, !noalias !228
  %251 = getelementptr [3 x float], [3 x float]* %11, i32 0, i32 %currentRayData.i.5.0.i2
  %252 = load float, float* %251, align 4, !tbaa !151, !noalias !228
  %.i0311 = fsub fast float %.i3303, %currentRayData.i.0.0.i0
  %.i1312 = fsub fast float %.i0304, %currentRayData.i.0.0.i1
  %.i2313 = fsub fast float %.i1305, %currentRayData.i.0.0.i2
  store float %.i0311, float* %61, align 4
  store float %.i1312, float* %62, align 4
  store float %.i2313, float* %63, align 4
  %253 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %currentRayData.i.5.0.i0
  %254 = load float, float* %253, align 4, !tbaa !151, !noalias !228
  %255 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %currentRayData.i.5.0.i1
  %256 = load float, float* %255, align 4, !tbaa !151, !noalias !228
  %257 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %currentRayData.i.5.0.i2
  %258 = load float, float* %257, align 4, !tbaa !151, !noalias !228
  %.i0314 = fsub fast float %.i2306, %currentRayData.i.0.0.i0
  %.i1315 = fsub fast float %.i3307, %currentRayData.i.0.0.i1
  %.i2316 = fsub fast float %233, %currentRayData.i.0.0.i2
  store float %.i0314, float* %64, align 4
  store float %.i1315, float* %65, align 4
  store float %.i2316, float* %66, align 4
  %259 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %currentRayData.i.5.0.i0
  %260 = load float, float* %259, align 4, !tbaa !151, !noalias !228
  %261 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %currentRayData.i.5.0.i1
  %262 = load float, float* %261, align 4, !tbaa !151, !noalias !228
  %263 = getelementptr [3 x float], [3 x float]* %10, i32 0, i32 %currentRayData.i.5.0.i2
  %264 = load float, float* %263, align 4, !tbaa !151, !noalias !228
  %.i0317 = fmul float %currentRayData.i.4.0.i0, %252
  %.i1318 = fmul float %currentRayData.i.4.0.i1, %252
  %.i0320 = fsub float %248, %.i0317
  %.i1321 = fsub float %250, %.i1318
  %.i0322 = fmul float %currentRayData.i.4.0.i0, %258
  %.i1323 = fmul float %currentRayData.i.4.0.i1, %258
  %.i0325 = fsub float %254, %.i0322
  %.i1326 = fsub float %256, %.i1323
  %.i0327 = fmul float %currentRayData.i.4.0.i0, %264
  %.i1328 = fmul float %currentRayData.i.4.0.i1, %264
  %.i0330 = fsub float %260, %.i0327
  %.i1331 = fsub float %262, %.i1328
  %265 = fmul float %.i1326, %.i0330
  %266 = fmul float %.i0325, %.i1331
  %267 = fsub float %265, %266
  %268 = fmul float %.i0320, %.i1331
  %269 = fmul float %.i1321, %.i0330
  %270 = fsub float %268, %269
  %271 = fmul float %.i1321, %.i0325
  %272 = fmul float %.i0320, %.i1326
  %273 = fsub float %271, %272
  %274 = fadd fast float %270, %273
  %275 = fadd fast float %274, %267
  br i1 %246, label %276, label %282

; <label>:276                                     ; preds = %212
  %277 = fcmp fast ogt float %267, 0.000000e+00
  %278 = fcmp fast ogt float %270, 0.000000e+00
  %279 = or i1 %277, %278
  %280 = fcmp fast ogt float %273, 0.000000e+00
  %281 = or i1 %280, %279
  %.old.old = fcmp fast oeq float %275, 0.000000e+00
  %or.cond182 = or i1 %281, %.old.old
  br i1 %or.cond182, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i", label %302

; <label>:282                                     ; preds = %212
  br i1 %243, label %283, label %289

; <label>:283                                     ; preds = %282
  %284 = fcmp fast olt float %267, 0.000000e+00
  %285 = fcmp fast olt float %270, 0.000000e+00
  %286 = or i1 %284, %285
  %287 = fcmp fast olt float %273, 0.000000e+00
  %288 = or i1 %287, %286
  %.old = fcmp fast oeq float %275, 0.000000e+00
  %or.cond181 = or i1 %288, %.old
  br i1 %or.cond181, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i", label %302

; <label>:289                                     ; preds = %282
  %290 = fcmp fast olt float %267, 0.000000e+00
  %291 = fcmp fast olt float %270, 0.000000e+00
  %292 = or i1 %290, %291
  %293 = fcmp fast olt float %273, 0.000000e+00
  %294 = or i1 %293, %292
  %295 = fcmp fast ogt float %267, 0.000000e+00
  %296 = fcmp fast ogt float %270, 0.000000e+00
  %297 = or i1 %295, %296
  %298 = fcmp fast ogt float %273, 0.000000e+00
  %299 = or i1 %298, %297
  %300 = and i1 %294, %299
  %301 = fcmp fast oeq float %275, 0.000000e+00
  %or.cond180 = or i1 %301, %300
  br i1 %or.cond180, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i", label %302

; <label>:302                                     ; preds = %289, %283, %276
  %303 = fmul fast float %267, %252
  %304 = fmul fast float %270, %258
  %305 = fmul fast float %273, %264
  %tmp = fadd fast float %304, %305
  %tmp421 = fadd fast float %tmp, %303
  %tmp422 = fmul fast float %tmp421, %currentRayData.i.4.0.i2
  br i1 %246, label %306, label %311

; <label>:306                                     ; preds = %302
  %307 = fcmp fast ogt float %tmp422, 0.000000e+00
  %308 = fmul fast float %275, %RayTCurrent201
  %309 = fcmp fast olt float %tmp422, %308
  %310 = or i1 %307, %309
  br i1 %310, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i", label %328

; <label>:311                                     ; preds = %302
  br i1 %243, label %312, label %317

; <label>:312                                     ; preds = %311
  %313 = fcmp fast olt float %tmp422, 0.000000e+00
  %314 = fmul fast float %275, %RayTCurrent201
  %315 = fcmp fast ogt float %tmp422, %314
  %316 = or i1 %313, %315
  br i1 %316, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i", label %328

; <label>:317                                     ; preds = %311
  %318 = fcmp fast ogt float %275, 0.000000e+00
  %319 = select i1 %318, i32 1, i32 -1
  %320 = bitcast float %tmp422 to i32
  %321 = xor i32 %320, %319
  %322 = uitofp i32 %321 to float
  %323 = bitcast float %275 to i32
  %324 = xor i32 %319, %323
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, %RayTCurrent201
  %327 = fcmp fast ogt float %322, %326
  br i1 %327, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i", label %328

; <label>:328                                     ; preds = %317, %312, %306
  %329 = fdiv fast float 1.000000e+00, %275
  %330 = fmul fast float %329, %267
  %331 = fmul fast float %329, %270
  %332 = fmul fast float %329, %tmp422
  br label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i"

"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i": ; preds = %328, %317, %312, %306, %289, %283, %276
  %.1.i0 = phi float [ %.0174.i0, %276 ], [ %.0174.i0, %306 ], [ %330, %328 ], [ %.0174.i0, %312 ], [ %.0174.i0, %317 ], [ %.0174.i0, %283 ], [ %.0174.i0, %289 ]
  %.1.i1 = phi float [ %.0174.i1, %276 ], [ %.0174.i1, %306 ], [ %331, %328 ], [ %.0174.i1, %312 ], [ %.0174.i1, %317 ], [ %.0174.i1, %283 ], [ %.0174.i1, %289 ]
  %.0173 = phi float [ %RayTCurrent201, %276 ], [ %RayTCurrent201, %306 ], [ %332, %328 ], [ %RayTCurrent201, %312 ], [ %RayTCurrent201, %317 ], [ %RayTCurrent201, %283 ], [ %RayTCurrent201, %289 ]
  %333 = fcmp fast olt float %.0173, %RayTCurrent201
  %RayTMin = call float @dx.op.rayTMin.f32(i32 153)
  %334 = fcmp fast ogt float %.0173, %RayTMin
  %335 = and i1 %333, %334
  %. = select i1 %335, i1 true, i1 false
  %.resultTriId.i.0 = select i1 %335, i32 %209, i32 %resultTriId.i.0
  %.0173.RayTCurrent201 = select i1 %335, float %.0173, float %RayTCurrent201
  %.1.i0.resultBary.i.0.i0 = select i1 %335, float %.1.i0, float %resultBary.i.0.i0
  %.1.i1.resultBary.i.0.i1 = select i1 %335, float %.1.i1, float %resultBary.i.0.i1
  br label %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i"

"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i": ; preds = %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i", %"\01?IsOpaque@@YA_N_NII@Z.exit.i"
  %.2.i0 = phi float [ %.0174.i0, %"\01?IsOpaque@@YA_N_NII@Z.exit.i" ], [ %.1.i0, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i" ]
  %.2.i1 = phi float [ %.0174.i1, %"\01?IsOpaque@@YA_N_NII@Z.exit.i" ], [ %.1.i1, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i" ]
  %bIsIntersect.i.i.0 = phi i1 [ false, %"\01?IsOpaque@@YA_N_NII@Z.exit.i" ], [ %., %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i" ]
  %.0170 = phi i32 [ %resultTriId.i.0, %"\01?IsOpaque@@YA_N_NII@Z.exit.i" ], [ %.resultTriId.i.0, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i" ]
  %.0169 = phi float [ %RayTCurrent201, %"\01?IsOpaque@@YA_N_NII@Z.exit.i" ], [ %.0173.RayTCurrent201, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i" ]
  %.0.i0 = phi float [ %resultBary.i.0.i0, %"\01?IsOpaque@@YA_N_NII@Z.exit.i" ], [ %.1.i0.resultBary.i.0.i0, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i" ]
  %.0.i1 = phi float [ %resultBary.i.0.i1, %"\01?IsOpaque@@YA_N_NII@Z.exit.i" ], [ %.1.i1.resultBary.i.0.i1, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i" ]
  %336 = and i1 %208, %bIsIntersect.i.i.0
  br i1 %336, label %337, label %376

; <label>:337                                     ; preds = %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i"
  %.0.upto0 = insertelement <2 x float> undef, float %.0.i0, i32 0
  %.0 = insertelement <2 x float> %.0.upto0, float %.0.i1, i32 1
  %338 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %75, align 4, !noalias !236
  %339 = add i32 %currentGpuVA.i.0.i0, 8
  %340 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %338)
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %340, i32 %339, i32 undef)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = shl i32 %.0170, 3
  %344 = add i32 %343, %currentGpuVA.i.0.i0
  %345 = add i32 %344, %342
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %340, i32 %345, i32 undef)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = extractvalue %dx.types.ResRet.i32 %346, 1
  %349 = mul i32 %347, %2
  %350 = add i32 %instOffset.i.0, %1
  %351 = add i32 %350, %349
  store <2 x float> %.0, <2 x float>* %57, align 4, !tbaa !196
  call void @"\01?Fallback_SetPendingAttr@@YAXUBuiltInTriangleIntersectionAttributes@@@Z"(%struct.BuiltInTriangleIntersectionAttributes* nonnull %attr.i) #3
  call void @"\01?Fallback_SetPendingTriVals@@YAXMIIIII@Z"(float %.0169, i32 %348, i32 %351, i32 %instIdx.i.0, i32 %instId.i.0, i32 254) #3
  %352 = icmp eq i32 %ResetMatrices.i.0, 0
  br i1 %352, label %366, label %353

; <label>:353                                     ; preds = %337
  call void @"\01?Fallback_SetObjectRayOrigin@@YAXV?$vector@M$02@@@Z"(<3 x float> %currentRayData.i.0.0) #3
  call void @"\01?Fallback_SetObjectRayDirection@@YAXV?$vector@M$02@@@Z"(<3 x float> %currentRayData.i.1.0) #3
  %.upto0 = insertelement <4 x float> undef, float %CurrentWorldToObject.i168.0.i0, i32 0
  %.upto1 = insertelement <4 x float> %.upto0, float %CurrentWorldToObject.i168.0.i1, i32 1
  %.upto2 = insertelement <4 x float> %.upto1, float %CurrentWorldToObject.i168.0.i2, i32 2
  %354 = insertelement <4 x float> %.upto2, float %CurrentWorldToObject.i168.0.i3, i32 3
  %355 = insertvalue %class.matrix.float.3.4 undef, <4 x float> %354, 0, 0
  %.upto01 = insertelement <4 x float> undef, float %CurrentWorldToObject.i168.0.i4, i32 0
  %.upto12 = insertelement <4 x float> %.upto01, float %CurrentWorldToObject.i168.0.i5, i32 1
  %.upto23 = insertelement <4 x float> %.upto12, float %CurrentWorldToObject.i168.0.i6, i32 2
  %356 = insertelement <4 x float> %.upto23, float %CurrentWorldToObject.i168.0.i7, i32 3
  %357 = insertvalue %class.matrix.float.3.4 %355, <4 x float> %356, 0, 1
  %.upto04 = insertelement <4 x float> undef, float %CurrentWorldToObject.i168.0.i8, i32 0
  %.upto15 = insertelement <4 x float> %.upto04, float %CurrentWorldToObject.i168.0.i9, i32 1
  %.upto26 = insertelement <4 x float> %.upto15, float %CurrentWorldToObject.i168.0.i10, i32 2
  %358 = insertelement <4 x float> %.upto26, float %CurrentWorldToObject.i168.0.i11, i32 3
  %359 = insertvalue %class.matrix.float.3.4 %357, <4 x float> %358, 0, 2
  call void @"\01?Fallback_SetWorldToObject@@YAXV?$matrix@M$02$03@@@Z"(%class.matrix.float.3.4 %359) #3
  %.upto07 = insertelement <4 x float> undef, float %CurrentObjectToWorld.i167.0.i0, i32 0
  %.upto18 = insertelement <4 x float> %.upto07, float %CurrentObjectToWorld.i167.0.i1, i32 1
  %.upto29 = insertelement <4 x float> %.upto18, float %CurrentObjectToWorld.i167.0.i2, i32 2
  %360 = insertelement <4 x float> %.upto29, float %CurrentObjectToWorld.i167.0.i3, i32 3
  %361 = insertvalue %class.matrix.float.3.4 undef, <4 x float> %360, 0, 0
  %.upto010 = insertelement <4 x float> undef, float %CurrentObjectToWorld.i167.0.i4, i32 0
  %.upto111 = insertelement <4 x float> %.upto010, float %CurrentObjectToWorld.i167.0.i5, i32 1
  %.upto212 = insertelement <4 x float> %.upto111, float %CurrentObjectToWorld.i167.0.i6, i32 2
  %362 = insertelement <4 x float> %.upto212, float %CurrentObjectToWorld.i167.0.i7, i32 3
  %363 = insertvalue %class.matrix.float.3.4 %361, <4 x float> %362, 0, 1
  %.upto013 = insertelement <4 x float> undef, float %CurrentObjectToWorld.i167.0.i8, i32 0
  %.upto114 = insertelement <4 x float> %.upto013, float %CurrentObjectToWorld.i167.0.i9, i32 1
  %.upto215 = insertelement <4 x float> %.upto114, float %CurrentObjectToWorld.i167.0.i10, i32 2
  %364 = insertelement <4 x float> %.upto215, float %CurrentObjectToWorld.i167.0.i11, i32 3
  %365 = insertvalue %class.matrix.float.3.4 %363, <4 x float> %364, 0, 2
  call void @"\01?Fallback_SetObjectToWorld@@YAXV?$matrix@M$02$03@@@Z"(%class.matrix.float.3.4 %365) #3
  br label %366

; <label>:366                                     ; preds = %353, %337
  call void @"\01?Fallback_CommitHit@@YAXXZ"() #3
  %367 = and i32 %RayFlags225, 4
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %376, label %369

; <label>:369                                     ; preds = %366
  store i32 0, i32* %56, align 4, !tbaa !158
  store i32 0, i32* %42, align 4, !tbaa !158
  br label %376

"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i":          ; preds = %101
  %370 = and i32 %87, 16777215
  store i32 %370, i32 addrspace(3)* %70, align 4, !tbaa !158, !noalias !241
  %371 = shl i32 %stackPointer.i.0, 6
  %372 = add i32 %371, %14
  %373 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %372
  store i32 %93, i32 addrspace(3)* %373, align 4, !tbaa !158, !noalias !241
  %374 = add nsw i32 %stackPointer.i.0, 1
  %375 = add i32 %73, 1
  store i32 %375, i32* %72, align 4, !tbaa !158
  br label %376

; <label>:376                                     ; preds = %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i", %369, %366, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i", %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i", %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176", %.backedge
  %.3.i0 = phi float [ %.0174.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %.0174.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %.2.i0, %369 ], [ %.2.i0, %366 ], [ %.2.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %.0174.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %.0174.i0, %.backedge ]
  %.3.i1 = phi float [ %.0174.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %.0174.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %.2.i1, %369 ], [ %.2.i1, %366 ], [ %.2.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %.0174.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %.0174.i1, %.backedge ]
  %currentRayData.i.0.1.i0 = phi float [ %FMad237, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.0.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.0.0.i0, %369 ], [ %currentRayData.i.0.0.i0, %366 ], [ %currentRayData.i.0.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.0.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.0.0.i0, %.backedge ]
  %currentRayData.i.0.1.i1 = phi float [ %FMad234, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.0.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.0.0.i1, %369 ], [ %currentRayData.i.0.0.i1, %366 ], [ %currentRayData.i.0.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.0.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.0.0.i1, %.backedge ]
  %currentRayData.i.0.1.i2 = phi float [ %FMad, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.0.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.0.0.i2, %369 ], [ %currentRayData.i.0.0.i2, %366 ], [ %currentRayData.i.0.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.0.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.0.0.i2, %.backedge ]
  %currentRayData.i.1.1.i0 = phi float [ %FMad246, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.1.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.1.0.i0, %369 ], [ %currentRayData.i.1.0.i0, %366 ], [ %currentRayData.i.1.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.1.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.1.0.i0, %.backedge ]
  %currentRayData.i.1.1.i1 = phi float [ %FMad243, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.1.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.1.0.i1, %369 ], [ %currentRayData.i.1.0.i1, %366 ], [ %currentRayData.i.1.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.1.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.1.0.i1, %.backedge ]
  %currentRayData.i.1.1.i2 = phi float [ %FMad240, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.1.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.1.0.i2, %369 ], [ %currentRayData.i.1.0.i2, %366 ], [ %currentRayData.i.1.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.1.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.1.0.i2, %.backedge ]
  %currentRayData.i.2.1.i0 = phi float [ %.i0294, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.2.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.2.0.i0, %369 ], [ %currentRayData.i.2.0.i0, %366 ], [ %currentRayData.i.2.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.2.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.2.0.i0, %.backedge ]
  %currentRayData.i.2.1.i1 = phi float [ %.i1295, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.2.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.2.0.i1, %369 ], [ %currentRayData.i.2.0.i1, %366 ], [ %currentRayData.i.2.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.2.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.2.0.i1, %.backedge ]
  %currentRayData.i.2.1.i2 = phi float [ %.i2296, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.2.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.2.0.i2, %369 ], [ %currentRayData.i.2.0.i2, %366 ], [ %currentRayData.i.2.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.2.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.2.0.i2, %.backedge ]
  %currentRayData.i.3.1.i0 = phi float [ %.i0297, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.3.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.3.0.i0, %369 ], [ %currentRayData.i.3.0.i0, %366 ], [ %currentRayData.i.3.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.3.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.3.0.i0, %.backedge ]
  %currentRayData.i.3.1.i1 = phi float [ %.i1298, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.3.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.3.0.i1, %369 ], [ %currentRayData.i.3.0.i1, %366 ], [ %currentRayData.i.3.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.3.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.3.0.i1, %.backedge ]
  %currentRayData.i.3.1.i2 = phi float [ %.i2299, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.3.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.3.0.i2, %369 ], [ %currentRayData.i.3.0.i2, %366 ], [ %currentRayData.i.3.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.3.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.3.0.i2, %.backedge ]
  %currentRayData.i.4.1.i0 = phi float [ %202, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.4.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.4.0.i0, %369 ], [ %currentRayData.i.4.0.i0, %366 ], [ %currentRayData.i.4.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.4.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.4.0.i0, %.backedge ]
  %currentRayData.i.4.1.i1 = phi float [ %205, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.4.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.4.0.i1, %369 ], [ %currentRayData.i.4.0.i1, %366 ], [ %currentRayData.i.4.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.4.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.4.0.i1, %.backedge ]
  %currentRayData.i.4.1.i2 = phi float [ %206, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.4.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.4.0.i2, %369 ], [ %currentRayData.i.4.0.i2, %366 ], [ %currentRayData.i.4.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.4.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.4.0.i2, %.backedge ]
  %currentRayData.i.5.1.i0 = phi i32 [ %.5.0.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.5.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.5.0.i0, %369 ], [ %currentRayData.i.5.0.i0, %366 ], [ %currentRayData.i.5.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.5.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.5.0.i0, %.backedge ]
  %currentRayData.i.5.1.i1 = phi i32 [ %.5.0.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.5.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.5.0.i1, %369 ], [ %currentRayData.i.5.0.i1, %366 ], [ %currentRayData.i.5.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.5.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.5.0.i1, %.backedge ]
  %currentRayData.i.5.1.i2 = phi i32 [ %.0172, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentRayData.i.5.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentRayData.i.5.0.i2, %369 ], [ %currentRayData.i.5.0.i2, %366 ], [ %currentRayData.i.5.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentRayData.i.5.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentRayData.i.5.0.i2, %.backedge ]
  %CurrentObjectToWorld.i167.1.i0 = phi float [ %167, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i0, %369 ], [ %CurrentObjectToWorld.i167.0.i0, %366 ], [ %CurrentObjectToWorld.i167.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i0, %.backedge ]
  %CurrentObjectToWorld.i167.1.i1 = phi float [ %168, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i1, %369 ], [ %CurrentObjectToWorld.i167.0.i1, %366 ], [ %CurrentObjectToWorld.i167.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i1, %.backedge ]
  %CurrentObjectToWorld.i167.1.i2 = phi float [ %169, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i2, %369 ], [ %CurrentObjectToWorld.i167.0.i2, %366 ], [ %CurrentObjectToWorld.i167.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i2, %.backedge ]
  %CurrentObjectToWorld.i167.1.i3 = phi float [ %170, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i3, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i3, %369 ], [ %CurrentObjectToWorld.i167.0.i3, %366 ], [ %CurrentObjectToWorld.i167.0.i3, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i3, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i3, %.backedge ]
  %CurrentObjectToWorld.i167.1.i4 = phi float [ %171, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i4, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i4, %369 ], [ %CurrentObjectToWorld.i167.0.i4, %366 ], [ %CurrentObjectToWorld.i167.0.i4, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i4, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i4, %.backedge ]
  %CurrentObjectToWorld.i167.1.i5 = phi float [ %172, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i5, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i5, %369 ], [ %CurrentObjectToWorld.i167.0.i5, %366 ], [ %CurrentObjectToWorld.i167.0.i5, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i5, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i5, %.backedge ]
  %CurrentObjectToWorld.i167.1.i6 = phi float [ %173, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i6, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i6, %369 ], [ %CurrentObjectToWorld.i167.0.i6, %366 ], [ %CurrentObjectToWorld.i167.0.i6, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i6, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i6, %.backedge ]
  %CurrentObjectToWorld.i167.1.i7 = phi float [ %174, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i7, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i7, %369 ], [ %CurrentObjectToWorld.i167.0.i7, %366 ], [ %CurrentObjectToWorld.i167.0.i7, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i7, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i7, %.backedge ]
  %CurrentObjectToWorld.i167.1.i8 = phi float [ %175, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i8, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i8, %369 ], [ %CurrentObjectToWorld.i167.0.i8, %366 ], [ %CurrentObjectToWorld.i167.0.i8, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i8, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i8, %.backedge ]
  %CurrentObjectToWorld.i167.1.i9 = phi float [ %176, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i9, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i9, %369 ], [ %CurrentObjectToWorld.i167.0.i9, %366 ], [ %CurrentObjectToWorld.i167.0.i9, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i9, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i9, %.backedge ]
  %CurrentObjectToWorld.i167.1.i10 = phi float [ %177, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i10, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i10, %369 ], [ %CurrentObjectToWorld.i167.0.i10, %366 ], [ %CurrentObjectToWorld.i167.0.i10, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i10, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i10, %.backedge ]
  %CurrentObjectToWorld.i167.1.i11 = phi float [ %178, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentObjectToWorld.i167.0.i11, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentObjectToWorld.i167.0.i11, %369 ], [ %CurrentObjectToWorld.i167.0.i11, %366 ], [ %CurrentObjectToWorld.i167.0.i11, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i11, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentObjectToWorld.i167.0.i11, %.backedge ]
  %CurrentWorldToObject.i168.1.i0 = phi float [ %150, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i0, %369 ], [ %CurrentWorldToObject.i168.0.i0, %366 ], [ %CurrentWorldToObject.i168.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i0, %.backedge ]
  %CurrentWorldToObject.i168.1.i1 = phi float [ %151, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i1, %369 ], [ %CurrentWorldToObject.i168.0.i1, %366 ], [ %CurrentWorldToObject.i168.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i1, %.backedge ]
  %CurrentWorldToObject.i168.1.i2 = phi float [ %152, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i2, %369 ], [ %CurrentWorldToObject.i168.0.i2, %366 ], [ %CurrentWorldToObject.i168.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i2, %.backedge ]
  %CurrentWorldToObject.i168.1.i3 = phi float [ %153, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i3, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i3, %369 ], [ %CurrentWorldToObject.i168.0.i3, %366 ], [ %CurrentWorldToObject.i168.0.i3, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i3, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i3, %.backedge ]
  %CurrentWorldToObject.i168.1.i4 = phi float [ %154, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i4, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i4, %369 ], [ %CurrentWorldToObject.i168.0.i4, %366 ], [ %CurrentWorldToObject.i168.0.i4, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i4, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i4, %.backedge ]
  %CurrentWorldToObject.i168.1.i5 = phi float [ %155, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i5, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i5, %369 ], [ %CurrentWorldToObject.i168.0.i5, %366 ], [ %CurrentWorldToObject.i168.0.i5, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i5, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i5, %.backedge ]
  %CurrentWorldToObject.i168.1.i6 = phi float [ %156, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i6, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i6, %369 ], [ %CurrentWorldToObject.i168.0.i6, %366 ], [ %CurrentWorldToObject.i168.0.i6, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i6, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i6, %.backedge ]
  %CurrentWorldToObject.i168.1.i7 = phi float [ %157, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i7, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i7, %369 ], [ %CurrentWorldToObject.i168.0.i7, %366 ], [ %CurrentWorldToObject.i168.0.i7, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i7, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i7, %.backedge ]
  %CurrentWorldToObject.i168.1.i8 = phi float [ %158, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i8, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i8, %369 ], [ %CurrentWorldToObject.i168.0.i8, %366 ], [ %CurrentWorldToObject.i168.0.i8, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i8, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i8, %.backedge ]
  %CurrentWorldToObject.i168.1.i9 = phi float [ %159, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i9, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i9, %369 ], [ %CurrentWorldToObject.i168.0.i9, %366 ], [ %CurrentWorldToObject.i168.0.i9, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i9, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i9, %.backedge ]
  %CurrentWorldToObject.i168.1.i10 = phi float [ %160, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i10, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i10, %369 ], [ %CurrentWorldToObject.i168.0.i10, %366 ], [ %CurrentWorldToObject.i168.0.i10, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i10, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i10, %.backedge ]
  %CurrentWorldToObject.i168.1.i11 = phi float [ %161, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %CurrentWorldToObject.i168.0.i11, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %CurrentWorldToObject.i168.0.i11, %369 ], [ %CurrentWorldToObject.i168.0.i11, %366 ], [ %CurrentWorldToObject.i168.0.i11, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i11, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %CurrentWorldToObject.i168.0.i11, %.backedge ]
  %ResetMatrices.i.2 = phi i32 [ %ResetMatrices.i.0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %ResetMatrices.i.0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ 0, %369 ], [ 0, %366 ], [ %ResetMatrices.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %ResetMatrices.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %ResetMatrices.i.0, %.backedge ]
  %currentBVHIndex.i.1 = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ 0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentBVHIndex.i.0, %369 ], [ %currentBVHIndex.i.0, %366 ], [ %currentBVHIndex.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentBVHIndex.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentBVHIndex.i.0, %.backedge ]
  %currentGpuVA.i.1.i0 = phi i32 [ %130, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentGpuVA.i.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentGpuVA.i.0.i0, %369 ], [ %currentGpuVA.i.0.i0, %366 ], [ %currentGpuVA.i.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentGpuVA.i.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentGpuVA.i.0.i0, %.backedge ]
  %currentGpuVA.i.1.i1 = phi i32 [ %131, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %currentGpuVA.i.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %currentGpuVA.i.0.i1, %369 ], [ %currentGpuVA.i.0.i1, %366 ], [ %currentGpuVA.i.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %currentGpuVA.i.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %currentGpuVA.i.0.i1, %.backedge ]
  %instIdx.i.1 = phi i32 [ %105, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %105, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %instIdx.i.0, %369 ], [ %instIdx.i.0, %366 ], [ %instIdx.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %instIdx.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %instIdx.i.0, %.backedge ]
  %instFlags.i.1 = phi i32 [ %180, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %instFlags.i.0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %instFlags.i.0, %369 ], [ %instFlags.i.0, %366 ], [ %instFlags.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %instFlags.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %instFlags.i.0, %.backedge ]
  %instOffset.i.1 = phi i32 [ %162, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %162, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %instOffset.i.0, %369 ], [ %instOffset.i.0, %366 ], [ %instOffset.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %instOffset.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %instOffset.i.0, %.backedge ]
  %instId.i.1 = phi i32 [ %163, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %163, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %instId.i.0, %369 ], [ %instId.i.0, %366 ], [ %instId.i.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %instId.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %instId.i.0, %.backedge ]
  %stackPointer.i.1 = phi i32 [ %stackPointer.i.0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %67, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %67, %369 ], [ %67, %366 ], [ %67, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %374, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %67, %.backedge ]
  %resultBary.i.1.i0 = phi float [ %resultBary.i.0.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %resultBary.i.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %.0.i0, %369 ], [ %.0.i0, %366 ], [ %.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %resultBary.i.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %resultBary.i.0.i0, %.backedge ]
  %resultBary.i.1.i1 = phi float [ %resultBary.i.0.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %resultBary.i.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %.0.i1, %369 ], [ %.0.i1, %366 ], [ %.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %resultBary.i.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %resultBary.i.0.i1, %.backedge ]
  %resultTriId.i.1 = phi i32 [ %resultTriId.i.0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i" ], [ %resultTriId.i.0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i176" ], [ %.0170, %369 ], [ %.0170, %366 ], [ %.0170, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i" ], [ %resultTriId.i.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i" ], [ %resultTriId.i.0, %.backedge ]
  %377 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i, i32 0, i32 %currentBVHIndex.i.1
  %378 = load i32, i32* %377, align 4, !tbaa !158
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %.backedge

; <label>:380                                     ; preds = %376
  %381 = add i32 %currentBVHIndex.i.1, -1
  %382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList, i32 0)
  %383 = extractvalue %dx.types.CBufRet.i32 %382, 0
  %384 = extractvalue %dx.types.CBufRet.i32 %382, 1
  %385 = load i32, i32* %42, align 4, !tbaa !158
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %"\01?Traverse@@YA_NIII@Z.exit", label %.backedge

"\01?Traverse@@YA_NIII@Z.exit":                   ; preds = %380
  %InstanceIndex = call i32 @dx.op.instanceIndex.i32(i32 142)
  %387 = icmp eq i32 %InstanceIndex, -1
  br i1 %387, label %399, label %388

; <label>:388                                     ; preds = %"\01?Traverse@@YA_NIII@Z.exit"
  %RayFlags227 = call i32 @dx.op.rayFlags.i32(i32 144)
  %389 = and i32 %RayFlags227, 8
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %406

; <label>:391                                     ; preds = %388
  %392 = call i32 @"\01?Fallback_GeometryIndex@@YAIXZ"() #3
  %393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %Constants249, i32 0)
  %394 = extractvalue %dx.types.CBufRet.i32 %393, 2
  %395 = mul i32 %394, %392
  %396 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %6)
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %396, i32 %395, i32 undef)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  br label %406

; <label>:399                                     ; preds = %"\01?Traverse@@YA_NIII@Z.exit"
  %400 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %Constants249, i32 0)
  %401 = extractvalue %dx.types.CBufRet.i32 %400, 3
  %402 = mul i32 %401, %3
  %403 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %5)
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %403, i32 %402, i32 undef)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  br label %406

; <label>:406                                     ; preds = %399, %391, %388
  %stateID.0 = phi i32 [ %398, %391 ], [ %405, %399 ], [ 0, %388 ]
  ret i32 %stateID.0
}

; Function Attrs: alwaysinline nounwind readnone
define i32 @"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z"(<3 x float>) #6 {
  %2 = extractelement <3 x float> %0, i32 0
  %3 = extractelement <3 x float> %0, i32 1
  %4 = fcmp fast ogt float %2, %3
  %5 = extractelement <3 x float> %0, i32 2
  %6 = fcmp fast ogt float %2, %5
  %7 = and i1 %4, %6
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %1
  %9 = fcmp fast ogt float %3, %5
  br i1 %9, label %11, label %10

; <label>:10                                      ; preds = %8
  br label %11

; <label>:11                                      ; preds = %10, %8, %1
  %.0 = phi i32 [ 2, %10 ], [ 0, %1 ], [ 1, %8 ]
  ret i32 %.0
}

; Function Attrs: alwaysinline nounwind readnone
define void @"\01?LogTraceRayEnd@@YAXXZ"() #6 {
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?RawDataToRaytracingInstanceDesc@@YA?AURaytracingInstanceDesc@@V?$vector@I$03@@000@Z"(%struct.RaytracingInstanceDesc* noalias nocapture sret, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>) #5 {
  %c.i0 = extractelement <4 x i32> %3, i32 0
  %c.i1 = extractelement <4 x i32> %3, i32 1
  %c.i2 = extractelement <4 x i32> %3, i32 2
  %c.i3 = extractelement <4 x i32> %3, i32 3
  %b.i0 = extractelement <4 x i32> %2, i32 0
  %b.i1 = extractelement <4 x i32> %2, i32 1
  %b.i2 = extractelement <4 x i32> %2, i32 2
  %b.i3 = extractelement <4 x i32> %2, i32 3
  %a.i0 = extractelement <4 x i32> %1, i32 0
  %a.i1 = extractelement <4 x i32> %1, i32 1
  %a.i2 = extractelement <4 x i32> %1, i32 2
  %a.i3 = extractelement <4 x i32> %1, i32 3
  %.i0 = bitcast i32 %a.i0 to float
  %.i1 = bitcast i32 %a.i1 to float
  %.i2 = bitcast i32 %a.i2 to float
  %.i3 = bitcast i32 %a.i3 to float
  %.upto0 = insertelement <4 x float> undef, float %.i0, i32 0
  %.upto1 = insertelement <4 x float> %.upto0, float %.i1, i32 1
  %.upto2 = insertelement <4 x float> %.upto1, float %.i2, i32 2
  %6 = insertelement <4 x float> %.upto2, float %.i3, i32 3
  %7 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 0, i32 0
  store <4 x float> %6, <4 x float>* %7, align 4, !tbaa !196
  %.i01 = bitcast i32 %b.i0 to float
  %.i12 = bitcast i32 %b.i1 to float
  %.i23 = bitcast i32 %b.i2 to float
  %.i34 = bitcast i32 %b.i3 to float
  %.upto09 = insertelement <4 x float> undef, float %.i01, i32 0
  %.upto110 = insertelement <4 x float> %.upto09, float %.i12, i32 1
  %.upto211 = insertelement <4 x float> %.upto110, float %.i23, i32 2
  %8 = insertelement <4 x float> %.upto211, float %.i34, i32 3
  %9 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 0, i32 1
  store <4 x float> %8, <4 x float>* %9, align 4, !tbaa !196
  %.i05 = bitcast i32 %c.i0 to float
  %.i16 = bitcast i32 %c.i1 to float
  %.i27 = bitcast i32 %c.i2 to float
  %.i38 = bitcast i32 %c.i3 to float
  %.upto012 = insertelement <4 x float> undef, float %.i05, i32 0
  %.upto113 = insertelement <4 x float> %.upto012, float %.i16, i32 1
  %.upto214 = insertelement <4 x float> %.upto113, float %.i27, i32 2
  %10 = insertelement <4 x float> %.upto214, float %.i38, i32 3
  %11 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 0, i32 2
  store <4 x float> %10, <4 x float>* %11, align 4, !tbaa !196
  %12 = extractelement <4 x i32> %4, i32 0
  %13 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 1
  store i32 %12, i32* %13, align 4, !tbaa !158
  %14 = extractelement <4 x i32> %4, i32 1
  %15 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 2
  store i32 %14, i32* %15, align 4, !tbaa !158
  %.upto03 = insertelement <2 x i32> undef, i32 %18, i32 0
  %16 = insertelement <2 x i32> %.upto03, i32 %17, i32 1
  %17 = extractelement <4 x i32> %4, i32 3
  %18 = extractelement <4 x i32> %4, i32 2
  %19 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 3
  store <2 x i32> %16, <2 x i32>* %19, align 4, !tbaa !196
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define <2 x i32> @"\01?CreateFlag@@YA?AV?$vector@I$01@@II@Z"(i32, i32) #6 {
  %3 = and i32 %0, 16777215
  %4 = insertelement <2 x i32> undef, i32 %3, i32 0
  %5 = insertelement <2 x i32> %4, i32 %1, i32 1
  ret <2 x i32> %5
}

; Function Attrs: alwaysinline nounwind readonly
define <3 x float> @"\01?GetMinCorner@@YA?AV?$vector@M$02@@UBoundingBox@@@Z"(%struct.BoundingBox* nocapture readonly) #7 {
  %2 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 0
  %3 = load <3 x float>, <3 x float>* %2, align 4, !tbaa !196
  %.i01 = extractelement <3 x float> %3, i32 0
  %.i13 = extractelement <3 x float> %3, i32 1
  %.i25 = extractelement <3 x float> %3, i32 2
  %4 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 1
  %5 = load <3 x float>, <3 x float>* %4, align 4, !tbaa !196
  %.i0 = extractelement <3 x float> %5, i32 0
  %.i02 = fsub fast float %.i01, %.i0
  %.i1 = extractelement <3 x float> %5, i32 1
  %.i14 = fsub fast float %.i13, %.i1
  %.i2 = extractelement <3 x float> %5, i32 2
  %.i26 = fsub fast float %.i25, %.i2
  %.upto0 = insertelement <3 x float> undef, float %.i02, i32 0
  %.upto1 = insertelement <3 x float> %.upto0, float %.i14, i32 1
  %6 = insertelement <3 x float> %.upto1, float %.i26, i32 2
  ret <3 x float> %6
}

; Function Attrs: alwaysinline nounwind readnone
define void @"\01?LogInt@@YAXH@Z"(i32) #6 {
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?BVHReadTriangleMetadata@@YA?AUTriangleMetaData@@URWByteAddressBufferPointer@@H@Z"(%struct.TriangleMetaData* noalias nocapture sret, %struct.RWByteAddressBufferPointer* nocapture readonly, i32) #5 {
  %4 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %1, i32 0, i32 1
  %5 = load i32, i32* %4, align 4, !tbaa !158
  %6 = add i32 %5, 8
  %7 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %1, i32 0, i32 0
  %8 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %7, align 4
  %9 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %8)
  %10 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6, i32 undef)
  %11 = extractvalue %dx.types.ResRet.i32 %10, 0
  %12 = shl i32 %2, 3
  %13 = add i32 %5, %12
  %14 = add i32 %13, %11
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %14, i32 undef)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = extractvalue %dx.types.ResRet.i32 %15, 1
  %18 = getelementptr inbounds %struct.TriangleMetaData, %struct.TriangleMetaData* %0, i32 0, i32 0
  store i32 %16, i32* %18, align 4, !tbaa !158
  %19 = getelementptr inbounds %struct.TriangleMetaData, %struct.TriangleMetaData* %0, i32 0, i32 1
  store i32 %17, i32* %19, align 4, !tbaa !158
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?GetBoxFromChildBoxes@@YA?AUBoundingBox@@U1@H0HAIAV?$vector@I$01@@@Z"(%struct.BoundingBox* noalias nocapture sret, %struct.BoundingBox* nocapture readonly, i32, %struct.BoundingBox* nocapture readonly, i32, <2 x i32>* noalias nocapture dereferenceable(8)) #5 {
  %7 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %3, i32 0, i32 0
  %8 = load <3 x float>, <3 x float>* %7, align 4, !tbaa !196
  %.i05 = extractelement <3 x float> %8, i32 0
  %.i17 = extractelement <3 x float> %8, i32 1
  %.i29 = extractelement <3 x float> %8, i32 2
  %9 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %3, i32 0, i32 1
  %10 = load <3 x float>, <3 x float>* %9, align 4, !tbaa !196
  %.i0 = extractelement <3 x float> %10, i32 0
  %.i06 = fsub fast float %.i05, %.i0
  %.i1 = extractelement <3 x float> %10, i32 1
  %.i18 = fsub fast float %.i17, %.i1
  %.i2 = extractelement <3 x float> %10, i32 2
  %.i210 = fsub fast float %.i29, %.i2
  %11 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %1, i32 0, i32 0
  %12 = load <3 x float>, <3 x float>* %11, align 4, !tbaa !196
  %.i012 = extractelement <3 x float> %12, i32 0
  %.i115 = extractelement <3 x float> %12, i32 1
  %.i218 = extractelement <3 x float> %12, i32 2
  %13 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %1, i32 0, i32 1
  %14 = load <3 x float>, <3 x float>* %13, align 4, !tbaa !196
  %.i011 = extractelement <3 x float> %14, i32 0
  %.i013 = fsub fast float %.i012, %.i011
  %.i114 = extractelement <3 x float> %14, i32 1
  %.i116 = fsub fast float %.i115, %.i114
  %.i217 = extractelement <3 x float> %14, i32 2
  %.i219 = fsub fast float %.i218, %.i217
  %FMin = call float @dx.op.binary.f32(i32 36, float %.i013, float %.i06)
  %FMin3 = call float @dx.op.binary.f32(i32 36, float %.i116, float %.i18)
  %FMin4 = call float @dx.op.binary.f32(i32 36, float %.i219, float %.i210)
  %.i022 = fadd fast float %.i0, %.i05
  %.i125 = fadd fast float %.i1, %.i17
  %.i228 = fadd fast float %.i2, %.i29
  %.i031 = fadd fast float %.i011, %.i012
  %.i134 = fadd fast float %.i114, %.i115
  %.i237 = fadd fast float %.i217, %.i218
  %FMax = call float @dx.op.binary.f32(i32 35, float %.i031, float %.i022)
  %FMax1 = call float @dx.op.binary.f32(i32 35, float %.i134, float %.i125)
  %FMax2 = call float @dx.op.binary.f32(i32 35, float %.i237, float %.i228)
  %.i038 = fadd fast float %FMax, %FMin
  %.i139 = fadd fast float %FMax1, %FMin3
  %.i240 = fadd fast float %FMax2, %FMin4
  %.i041 = fmul fast float %.i038, 5.000000e-01
  %.i142 = fmul fast float %.i139, 5.000000e-01
  %.i243 = fmul fast float %.i240, 5.000000e-01
  %.upto053 = insertelement <3 x float> undef, float %.i041, i32 0
  %.upto154 = insertelement <3 x float> %.upto053, float %.i142, i32 1
  %15 = insertelement <3 x float> %.upto154, float %.i243, i32 2
  %.i044 = fsub fast float %FMax, %.i041
  %.i145 = fsub fast float %FMax1, %.i142
  %.i246 = fsub fast float %FMax2, %.i243
  %.upto055 = insertelement <3 x float> undef, float %.i044, i32 0
  %.upto156 = insertelement <3 x float> %.upto055, float %.i145, i32 1
  %16 = insertelement <3 x float> %.upto156, float %.i246, i32 2
  %17 = and i32 %2, 16777215
  %18 = insertelement <2 x i32> undef, i32 %17, i32 0
  %19 = insertelement <2 x i32> %18, i32 %4, i32 1
  store <2 x i32> %19, <2 x i32>* %5, align 4, !tbaa !196
  %20 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 0
  store <3 x float> %15, <3 x float>* %20, align 4
  %21 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 1
  store <3 x float> %16, <3 x float>* %21, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define void @"\01?dump@@YAXUBoundingBox@@V?$vector@I$01@@@Z"(%struct.BoundingBox* nocapture, <2 x i32>) #6 {
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?BoundingBoxToAABB@@YA?AUAABB@@UBoundingBox@@@Z"(%struct.AABB* noalias nocapture sret, %struct.BoundingBox* nocapture readonly) #5 {
  %3 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %1, i32 0, i32 0
  %4 = load <3 x float>, <3 x float>* %3, align 4, !tbaa !196
  %.i01 = extractelement <3 x float> %4, i32 0
  %.i13 = extractelement <3 x float> %4, i32 1
  %.i25 = extractelement <3 x float> %4, i32 2
  %5 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %1, i32 0, i32 1
  %6 = load <3 x float>, <3 x float>* %5, align 4, !tbaa !196
  %.i0 = extractelement <3 x float> %6, i32 0
  %.i02 = fsub fast float %.i01, %.i0
  %.i1 = extractelement <3 x float> %6, i32 1
  %.i14 = fsub fast float %.i13, %.i1
  %.i2 = extractelement <3 x float> %6, i32 2
  %.i26 = fsub fast float %.i25, %.i2
  %.upto0 = insertelement <3 x float> undef, float %.i02, i32 0
  %.upto1 = insertelement <3 x float> %.upto0, float %.i14, i32 1
  %7 = insertelement <3 x float> %.upto1, float %.i26, i32 2
  %8 = getelementptr inbounds %struct.AABB, %struct.AABB* %0, i32 0, i32 0
  store <3 x float> %7, <3 x float>* %8, align 4, !tbaa !196
  %.i09 = fadd fast float %.i0, %.i01
  %.i112 = fadd fast float %.i1, %.i13
  %.i215 = fadd fast float %.i2, %.i25
  %.upto016 = insertelement <3 x float> undef, float %.i09, i32 0
  %.upto117 = insertelement <3 x float> %.upto016, float %.i112, i32 1
  %9 = insertelement <3 x float> %.upto117, float %.i215, i32 2
  %10 = getelementptr inbounds %struct.AABB, %struct.AABB* %0, i32 0, i32 1
  store <3 x float> %9, <3 x float>* %10, align 4, !tbaa !196
  ret void
}

; Function Attrs: alwaysinline nounwind
define i1 @"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z"(%struct.RWByteAddressBufferPointer* nocapture readonly, <2 x i32>, i32, <3 x float>, <3 x float>, <3 x i32>, <3 x float>, <2 x float>* noalias nocapture dereferenceable(8), float* noalias nocapture dereferenceable(4), i32* noalias nocapture dereferenceable(4)) #5 {
  %shear.i0 = extractelement <3 x float> %6, i32 0
  %shear.i1 = extractelement <3 x float> %6, i32 1
  %rayOrigin.i0 = extractelement <3 x float> %3, i32 0
  %rayOrigin.i1 = extractelement <3 x float> %3, i32 1
  %rayOrigin.i2 = extractelement <3 x float> %3, i32 2
  %11 = load i32, i32* %9, align 4
  %12 = load <2 x float>, <2 x float>* %7, align 4
  %.i038 = extractelement <2 x float> %12, i32 0
  %.i139 = extractelement <2 x float> %12, i32 1
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = extractelement <2 x i32> %1, i32 0
  %17 = and i32 %16, 16777215
  %18 = extractelement <2 x i32> %1, i32 1
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %170, label %21

; <label>:21                                      ; preds = %10
  %22 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 4, !tbaa !158, !noalias !244
  %24 = add i32 %23, 4
  %25 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 0
  %26 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %25, align 4, !noalias !244
  %27 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %26)
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %24, i32 undef)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = mul nuw nsw i32 %17, 36
  %31 = add i32 %23, %30
  %32 = add i32 %31, %29
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %32, i32 undef)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = extractvalue %dx.types.ResRet.i32 %33, 1
  %36 = extractvalue %dx.types.ResRet.i32 %33, 2
  %37 = extractvalue %dx.types.ResRet.i32 %33, 3
  %.i0 = bitcast i32 %34 to float
  %.i1 = bitcast i32 %35 to float
  %.i2 = bitcast i32 %36 to float
  %.i3 = bitcast i32 %37 to float
  %38 = add i32 %32, 16
  %39 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %38, i32 undef)
  %40 = extractvalue %dx.types.ResRet.i32 %39, 0
  %41 = extractvalue %dx.types.ResRet.i32 %39, 1
  %42 = extractvalue %dx.types.ResRet.i32 %39, 2
  %43 = extractvalue %dx.types.ResRet.i32 %39, 3
  %.i010 = bitcast i32 %40 to float
  %.i111 = bitcast i32 %41 to float
  %.i212 = bitcast i32 %42 to float
  %.i313 = bitcast i32 %43 to float
  %44 = add i32 %32, 32
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %44, i32 undef)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = bitcast i32 %46 to float
  %48 = load float, float* %8, align 4, !tbaa !151
  %49 = and i32 %2, 1
  %50 = icmp eq i32 %49, 0
  %51 = shl i32 %2, 3
  %52 = and i32 %51, 16
  %53 = add nuw nsw i32 %52, 16
  %54 = xor i32 %52, 16
  %55 = add nuw nsw i32 %54, 16
  %RayFlags9 = call i32 @dx.op.rayFlags.i32(i32 144)
  %56 = and i32 %RayFlags9, %53
  %57 = icmp ne i32 %56, 0
  %58 = and i1 %50, %57
  %59 = and i32 %RayFlags9, %55
  %60 = icmp ne i32 %59, 0
  %61 = and i1 %50, %60
  %.i014 = fsub fast float %.i0, %rayOrigin.i0
  %.i115 = fsub fast float %.i1, %rayOrigin.i1
  %.i216 = fsub fast float %.i2, %rayOrigin.i2
  %62 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 0
  store float %.i014, float* %62, align 4
  %63 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 1
  store float %.i115, float* %63, align 4
  %64 = getelementptr inbounds [3 x float], [3 x float]* %15, i32 0, i32 2
  store float %.i216, float* %64, align 4
  %65 = extractelement <3 x i32> %5, i32 0
  %66 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %65
  %67 = load float, float* %66, align 4, !tbaa !151, !noalias !249
  %68 = extractelement <3 x i32> %5, i32 1
  %69 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %68
  %70 = load float, float* %69, align 4, !tbaa !151, !noalias !249
  %71 = extractelement <3 x i32> %5, i32 2
  %72 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %71
  %73 = load float, float* %72, align 4, !tbaa !151, !noalias !249
  %.i017 = fsub fast float %.i3, %rayOrigin.i0
  %.i118 = fsub fast float %.i010, %rayOrigin.i1
  %.i219 = fsub fast float %.i111, %rayOrigin.i2
  %74 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 0
  store float %.i017, float* %74, align 4
  %75 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 1
  store float %.i118, float* %75, align 4
  %76 = getelementptr inbounds [3 x float], [3 x float]* %13, i32 0, i32 2
  store float %.i219, float* %76, align 4
  %77 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %65
  %78 = load float, float* %77, align 4, !tbaa !151, !noalias !249
  %79 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %68
  %80 = load float, float* %79, align 4, !tbaa !151, !noalias !249
  %81 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %71
  %82 = load float, float* %81, align 4, !tbaa !151, !noalias !249
  %.i020 = fsub fast float %.i212, %rayOrigin.i0
  %.i121 = fsub fast float %.i313, %rayOrigin.i1
  %.i222 = fsub fast float %47, %rayOrigin.i2
  %83 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 0
  store float %.i020, float* %83, align 4
  %84 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 1
  store float %.i121, float* %84, align 4
  %85 = getelementptr inbounds [3 x float], [3 x float]* %14, i32 0, i32 2
  store float %.i222, float* %85, align 4
  %86 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %65
  %87 = load float, float* %86, align 4, !tbaa !151, !noalias !249
  %88 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %68
  %89 = load float, float* %88, align 4, !tbaa !151, !noalias !249
  %90 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %71
  %91 = load float, float* %90, align 4, !tbaa !151, !noalias !249
  %.i023 = fmul float %shear.i0, %73
  %.i124 = fmul float %shear.i1, %73
  %.i026 = fsub float %67, %.i023
  %.i127 = fsub float %70, %.i124
  %.i028 = fmul float %shear.i0, %82
  %.i129 = fmul float %shear.i1, %82
  %.i031 = fsub float %78, %.i028
  %.i132 = fsub float %80, %.i129
  %.i033 = fmul float %shear.i0, %91
  %.i134 = fmul float %shear.i1, %91
  %.i036 = fsub float %87, %.i033
  %.i137 = fsub float %89, %.i134
  %92 = fmul float %.i132, %.i036
  %93 = fmul float %.i031, %.i137
  %94 = fsub float %92, %93
  %95 = fmul float %.i026, %.i137
  %96 = fmul float %.i127, %.i036
  %97 = fsub float %95, %96
  %98 = fmul float %.i127, %.i031
  %99 = fmul float %.i026, %.i132
  %100 = fsub float %98, %99
  %101 = fadd fast float %97, %100
  %102 = fadd fast float %101, %94
  br i1 %61, label %103, label %109

; <label>:103                                     ; preds = %21
  %104 = fcmp fast ogt float %94, 0.000000e+00
  %105 = fcmp fast ogt float %97, 0.000000e+00
  %106 = or i1 %104, %105
  %107 = fcmp fast ogt float %100, 0.000000e+00
  %108 = or i1 %107, %106
  %.old.old = fcmp fast oeq float %102, 0.000000e+00
  %or.cond5 = or i1 %108, %.old.old
  br i1 %or.cond5, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit", label %129

; <label>:109                                     ; preds = %21
  br i1 %58, label %110, label %116

; <label>:110                                     ; preds = %109
  %111 = fcmp fast olt float %94, 0.000000e+00
  %112 = fcmp fast olt float %97, 0.000000e+00
  %113 = or i1 %111, %112
  %114 = fcmp fast olt float %100, 0.000000e+00
  %115 = or i1 %114, %113
  %.old = fcmp fast oeq float %102, 0.000000e+00
  %or.cond4 = or i1 %115, %.old
  br i1 %or.cond4, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit", label %129

; <label>:116                                     ; preds = %109
  %117 = fcmp fast olt float %94, 0.000000e+00
  %118 = fcmp fast olt float %97, 0.000000e+00
  %119 = or i1 %117, %118
  %120 = fcmp fast olt float %100, 0.000000e+00
  %121 = or i1 %120, %119
  %122 = fcmp fast ogt float %94, 0.000000e+00
  %123 = fcmp fast ogt float %97, 0.000000e+00
  %124 = or i1 %122, %123
  %125 = fcmp fast ogt float %100, 0.000000e+00
  %126 = or i1 %125, %124
  %127 = and i1 %121, %126
  %128 = fcmp fast oeq float %102, 0.000000e+00
  %or.cond = or i1 %128, %127
  br i1 %or.cond, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit", label %129

; <label>:129                                     ; preds = %116, %110, %103
  %130 = extractelement <3 x float> %6, i32 2
  %131 = fmul fast float %73, %130
  %132 = fmul fast float %82, %130
  %133 = fmul fast float %91, %130
  %134 = fmul fast float %131, %94
  %135 = fmul fast float %132, %97
  %136 = fmul fast float %133, %100
  %137 = fadd fast float %135, %136
  %138 = fadd fast float %137, %134
  br i1 %61, label %139, label %144

; <label>:139                                     ; preds = %129
  %140 = fcmp fast ogt float %138, 0.000000e+00
  %141 = fmul fast float %102, %48
  %142 = fcmp fast olt float %138, %141
  %143 = or i1 %140, %142
  br i1 %143, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit", label %161

; <label>:144                                     ; preds = %129
  br i1 %58, label %145, label %150

; <label>:145                                     ; preds = %144
  %146 = fcmp fast olt float %138, 0.000000e+00
  %147 = fmul fast float %102, %48
  %148 = fcmp fast ogt float %138, %147
  %149 = or i1 %146, %148
  br i1 %149, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit", label %161

; <label>:150                                     ; preds = %144
  %151 = fcmp fast ogt float %102, 0.000000e+00
  %152 = select i1 %151, i32 1, i32 -1
  %153 = bitcast float %138 to i32
  %154 = xor i32 %153, %152
  %155 = uitofp i32 %154 to float
  %156 = bitcast float %102 to i32
  %157 = xor i32 %152, %156
  %158 = uitofp i32 %157 to float
  %159 = fmul fast float %158, %48
  %160 = fcmp fast ogt float %155, %159
  br i1 %160, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit", label %161

; <label>:161                                     ; preds = %150, %145, %139
  %162 = fdiv fast float 1.000000e+00, %102
  %163 = fmul fast float %162, %94
  %164 = fmul fast float %162, %97
  %165 = fmul fast float %162, %138
  br label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit"

"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit": ; preds = %161, %150, %145, %139, %116, %110, %103
  %.03.i0 = phi float [ undef, %103 ], [ undef, %139 ], [ %163, %161 ], [ undef, %145 ], [ undef, %150 ], [ undef, %110 ], [ undef, %116 ]
  %.03.i1 = phi float [ undef, %103 ], [ undef, %139 ], [ %164, %161 ], [ undef, %145 ], [ undef, %150 ], [ undef, %110 ], [ undef, %116 ]
  %.02 = phi float [ %48, %103 ], [ %48, %139 ], [ %165, %161 ], [ %48, %145 ], [ %48, %150 ], [ %48, %110 ], [ %48, %116 ]
  %166 = fcmp fast olt float %.02, %48
  %RayTMin = call float @dx.op.rayTMin.f32(i32 153)
  %167 = fcmp fast ogt float %.02, %RayTMin
  %168 = and i1 %166, %167
  br i1 %168, label %169, label %170

; <label>:169                                     ; preds = %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit"
  store float %.02, float* %8, align 4, !tbaa !151
  br label %170

; <label>:170                                     ; preds = %169, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit", %10
  %bIsIntersect.0 = phi i1 [ true, %169 ], [ false, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit" ], [ false, %10 ]
  %.01.i0 = phi float [ %.03.i0, %169 ], [ %.i038, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit" ], [ %.i038, %10 ]
  %.01.i1 = phi float [ %.03.i1, %169 ], [ %.i139, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit" ], [ %.i139, %10 ]
  %.0 = phi i32 [ %17, %169 ], [ %11, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit" ], [ %11, %10 ]
  %.01.upto0 = insertelement <2 x float> undef, float %.01.i0, i32 0
  %.01 = insertelement <2 x float> %.01.upto0, float %.01.i1, i32 1
  store i32 %.0, i32* %9, align 4
  store <2 x float> %.01, <2 x float>* %7, align 4
  ret i1 %bIsIntersect.0
}

; Function Attrs: alwaysinline nounwind readnone
define void @"\01?LogInt3@@YAXV?$vector@H$02@@@Z"(<3 x i32>) #6 {
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define i32 @"\01?GetRightNodeIndex@@YAIV?$vector@I$01@@@Z"(<2 x i32>) #6 {
  %2 = extractelement <2 x i32> %0, i32 1
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind readonly
define i32 @"\01?GetOffsetToVertices@@YAHURWByteAddressBufferPointer@@@Z"(%struct.RWByteAddressBufferPointer* nocapture readonly) #7 {
  %2 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !158
  %4 = add i32 %3, 4
  %5 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 0
  %6 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %5, align 4
  %7 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %6)
  %8 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4, i32 undef)
  %9 = extractvalue %dx.types.ResRet.i32 %8, 0
  %10 = add i32 %9, %3
  ret i32 %10
}

; Function Attrs: alwaysinline nounwind readnone
define float @"\01?ComputeCullFaceDir@@YAMII@Z"(i32, i32) #6 {
  %3 = and i32 %1, 32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %2
  %6 = and i32 %1, 16
  %7 = icmp eq i32 %6, 0
  %. = select i1 %7, float 0.000000e+00, float -1.000000e+00
  br label %8

; <label>:8                                       ; preds = %5, %2
  %cullFaceDir.0 = phi float [ 1.000000e+00, %2 ], [ %., %5 ]
  %9 = and i32 %0, 1
  %10 = icmp eq i32 %9, 0
  %cullFaceDir.0. = select i1 %10, float %cullFaceDir.0, float 0.000000e+00
  ret float %cullFaceDir.0.
}

; Function Attrs: alwaysinline nounwind readonly
define i32 @"\01?GetInstanceMask@@YAIURaytracingInstanceDesc@@@Z"(%struct.RaytracingInstanceDesc* nocapture readonly) #7 {
  %2 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !158
  %4 = lshr i32 %3, 24
  ret i32 %4
}

; Function Attrs: alwaysinline nounwind
define void @"\01?Fallback_IgnoreHit@@YAXXZ"() #5 {
  call void @"\01?Fallback_SetAnyHitResult@@YAXH@Z"(i32 0) #3
  ret void
}

; Function Attrs: alwaysinline nounwind
define i32 @"\01?InvokeAnyHit@@YAHH@Z"(i32) #5 {
  call void @"\01?Fallback_SetAnyHitResult@@YAXH@Z"(i32 1) #3
  call void @"\01?Fallback_CallIndirect@@YAXH@Z"(i32 %0) #3
  %2 = call i32 @"\01?Fallback_AnyHitResult@@YAHXZ"() #3
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind readnone
define <3 x float> @"\01?Swizzle@@YA?AV?$vector@M$02@@V1@V?$vector@H$02@@@Z"(<3 x float>, <3 x i32>) #6 {
  %3 = alloca [3 x float], align 4
  %4 = extractelement <3 x float> %0, i64 0
  %5 = getelementptr inbounds [3 x float], [3 x float]* %3, i32 0, i32 0
  store float %4, float* %5, align 4
  %6 = extractelement <3 x float> %0, i64 1
  %7 = getelementptr inbounds [3 x float], [3 x float]* %3, i32 0, i32 1
  store float %6, float* %7, align 4
  %8 = extractelement <3 x float> %0, i64 2
  %9 = getelementptr inbounds [3 x float], [3 x float]* %3, i32 0, i32 2
  store float %8, float* %9, align 4
  %10 = extractelement <3 x i32> %1, i32 0
  %11 = getelementptr [3 x float], [3 x float]* %3, i32 0, i32 %10
  %12 = load float, float* %11, align 4, !tbaa !151
  %13 = extractelement <3 x i32> %1, i32 1
  %14 = getelementptr [3 x float], [3 x float]* %3, i32 0, i32 %13
  %15 = load float, float* %14, align 4, !tbaa !151
  %16 = extractelement <3 x i32> %1, i32 2
  %17 = getelementptr [3 x float], [3 x float]* %3, i32 0, i32 %16
  %18 = load float, float* %17, align 4, !tbaa !151
  %19 = insertelement <3 x float> undef, float %12, i64 0
  %20 = insertelement <3 x float> %19, float %15, i64 1
  %21 = insertelement <3 x float> %20, float %18, i64 2
  ret <3 x float> %21
}

; Function Attrs: alwaysinline nounwind readnone
define i32 @"\01?GetBoxAddress@@YAIII@Z"(i32, i32) #6 {
  %3 = shl i32 %1, 5
  %4 = add i32 %3, %0
  ret i32 %4
}

; Function Attrs: alwaysinline nounwind
define void @"\01?RawDataToAABB@@YA?AUAABB@@V?$vector@H$03@@0@Z"(%struct.AABB* noalias nocapture sret, <4 x i32>, <4 x i32>) #5 {
  %4 = extractelement <4 x i32> %1, i32 0
  %5 = bitcast i32 %4 to float
  %6 = extractelement <4 x i32> %1, i32 1
  %7 = bitcast i32 %6 to float
  %8 = extractelement <4 x i32> %1, i32 2
  %9 = bitcast i32 %8 to float
  %10 = extractelement <4 x i32> %2, i32 0
  %11 = bitcast i32 %10 to float
  %12 = extractelement <4 x i32> %2, i32 1
  %13 = bitcast i32 %12 to float
  %14 = extractelement <4 x i32> %2, i32 2
  %15 = bitcast i32 %14 to float
  %.i0 = fsub fast float %5, %11
  %.i1 = fsub fast float %7, %13
  %.i2 = fsub fast float %9, %15
  %.upto0 = insertelement <3 x float> undef, float %.i0, i32 0
  %.upto1 = insertelement <3 x float> %.upto0, float %.i1, i32 1
  %16 = insertelement <3 x float> %.upto1, float %.i2, i32 2
  %17 = getelementptr inbounds %struct.AABB, %struct.AABB* %0, i32 0, i32 0
  store <3 x float> %16, <3 x float>* %17, align 4, !tbaa !196, !alias.scope !253
  %.i03 = fadd fast float %11, %5
  %.i14 = fadd fast float %13, %7
  %.i25 = fadd fast float %15, %9
  %.upto06 = insertelement <3 x float> undef, float %.i03, i32 0
  %.upto17 = insertelement <3 x float> %.upto06, float %.i14, i32 1
  %18 = insertelement <3 x float> %.upto17, float %.i25, i32 2
  %19 = getelementptr inbounds %struct.AABB, %struct.AABB* %0, i32 0, i32 1
  store <3 x float> %18, <3 x float>* %19, align 4, !tbaa !196, !alias.scope !253
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?raymiss@@YAXUHitData@@@Z"(%struct.HitData* noalias nocapture) #5 {
  %2 = load %"class.RWTexture2D<vector<float, 4> >", %"class.RWTexture2D<vector<float, 4> >"* @"\01?uavOutput@@3V?$RWTexture2D@V?$vector@M$03@@@@A", align 4
  %DispatchRaysIndex = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 0)
  %DispatchRaysIndex1 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 1)
  %3 = call %dx.types.Handle @"dx.op.createHandleFromResourceStructForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %2)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %DispatchRaysIndex, i32 %DispatchRaysIndex1, i32 undef, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i8 15)
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?CompressBox@@YAXUBoundingBox@@V?$vector@I$01@@AIAV?$vector@I$03@@2@Z"(%struct.BoundingBox* nocapture readonly, <2 x i32>, <4 x i32>* noalias nocapture dereferenceable(16), <4 x i32>* noalias nocapture dereferenceable(16)) #5 {
  %5 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 0
  %6 = load <3 x float>, <3 x float>* %5, align 4
  %7 = extractelement <3 x float> %6, i32 0
  %8 = bitcast float %7 to i32
  %9 = insertelement <4 x i32> undef, i32 %8, i32 0
  %10 = extractelement <3 x float> %6, i32 1
  %11 = bitcast float %10 to i32
  %12 = insertelement <4 x i32> %9, i32 %11, i32 1
  %13 = extractelement <3 x float> %6, i32 2
  %14 = bitcast float %13 to i32
  %15 = insertelement <4 x i32> %12, i32 %14, i32 2
  %16 = extractelement <2 x i32> %1, i32 0
  %17 = insertelement <4 x i32> %15, i32 %16, i32 3
  %18 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 1
  %19 = load <3 x float>, <3 x float>* %18, align 4
  %20 = extractelement <3 x float> %19, i32 0
  %21 = bitcast float %20 to i32
  %22 = insertelement <4 x i32> undef, i32 %21, i32 0
  %23 = extractelement <3 x float> %19, i32 1
  %24 = bitcast float %23 to i32
  %25 = insertelement <4 x i32> %22, i32 %24, i32 1
  %26 = extractelement <3 x float> %19, i32 2
  %27 = bitcast float %26 to i32
  %28 = insertelement <4 x i32> %25, i32 %27, i32 2
  %29 = extractelement <2 x i32> %1, i32 1
  %30 = insertelement <4 x i32> %28, i32 %29, i32 3
  store <4 x i32> %30, <4 x i32>* %3, align 4
  store <4 x i32> %17, <4 x i32>* %2, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define void @"\01?LogFloat3@@YAXV?$vector@M$02@@@Z"(<3 x float>) #6 {
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?StoreBVHMetadataToRawData@@YAXURWByteAddressBuffer@@IUBVHMetadata@@@Z"(%struct.RWByteAddressBuffer* nocapture readonly, i32, %struct.BVHMetadata* nocapture readonly) #5 {
  %4 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %2, i32 0, i32 0, i32 0, i32 0
  %5 = load <4 x float>, <4 x float>* %4, align 4, !tbaa !196
  %.i0 = extractelement <4 x float> %5, i32 0
  %.i1 = extractelement <4 x float> %5, i32 1
  %.i2 = extractelement <4 x float> %5, i32 2
  %.i3 = extractelement <4 x float> %5, i32 3
  %6 = bitcast float %.i0 to i32
  %7 = bitcast float %.i1 to i32
  %8 = bitcast float %.i2 to i32
  %9 = bitcast float %.i3 to i32
  %10 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %2, i32 0, i32 0, i32 0, i32 1
  %11 = load <4 x float>, <4 x float>* %10, align 4, !tbaa !196
  %.i036 = extractelement <4 x float> %11, i32 0
  %.i138 = extractelement <4 x float> %11, i32 1
  %.i240 = extractelement <4 x float> %11, i32 2
  %.i342 = extractelement <4 x float> %11, i32 3
  %12 = bitcast float %.i036 to i32
  %13 = bitcast float %.i138 to i32
  %14 = bitcast float %.i240 to i32
  %15 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %2, i32 0, i32 0, i32 0, i32 2
  %16 = load <4 x float>, <4 x float>* %15, align 4, !tbaa !196
  %.i044 = extractelement <4 x float> %16, i32 0
  %.i146 = extractelement <4 x float> %16, i32 1
  %.i248 = extractelement <4 x float> %16, i32 2
  %.i350 = extractelement <4 x float> %16, i32 3
  %17 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %2, i32 0, i32 0, i32 1
  %18 = load i32, i32* %17, align 4, !tbaa !158
  %19 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %2, i32 0, i32 0, i32 2
  %20 = load i32, i32* %19, align 4, !tbaa !158
  %21 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %2, i32 0, i32 0, i32 3
  %22 = load <2 x i32>, <2 x i32>* %21, align 4, !tbaa !196
  %23 = extractelement <2 x i32> %22, i64 0
  %24 = extractelement <2 x i32> %22, i64 1
  %25 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %2, i32 0, i32 1, i32 0
  %26 = load <4 x float>, <4 x float>* %25, align 4, !tbaa !196
  %.i052 = extractelement <4 x float> %26, i32 0
  %.i154 = extractelement <4 x float> %26, i32 1
  %.i256 = extractelement <4 x float> %26, i32 2
  %.i358 = extractelement <4 x float> %26, i32 3
  %27 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %2, i32 0, i32 1, i32 1
  %28 = load <4 x float>, <4 x float>* %27, align 4, !tbaa !196
  %.i060 = extractelement <4 x float> %28, i32 0
  %.i162 = extractelement <4 x float> %28, i32 1
  %.i264 = extractelement <4 x float> %28, i32 2
  %.i366 = extractelement <4 x float> %28, i32 3
  %29 = getelementptr inbounds %struct.BVHMetadata, %struct.BVHMetadata* %2, i32 0, i32 1, i32 2
  %30 = load <4 x float>, <4 x float>* %29, align 4, !tbaa !196
  %.i068 = extractelement <4 x float> %30, i32 0
  %.i170 = extractelement <4 x float> %30, i32 1
  %.i272 = extractelement <4 x float> %30, i32 2
  %.i374 = extractelement <4 x float> %30, i32 3
  %31 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %32 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %31)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %32, i32 %1, i32 undef, i32 %6, i32 %7, i32 %8, i32 %9, i8 15)
  %33 = bitcast float %.i342 to i32
  %34 = add i32 %1, 16
  %35 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %36 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %35)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %36, i32 %34, i32 undef, i32 %12, i32 %13, i32 %14, i32 %33, i8 15)
  %37 = bitcast float %.i044 to i32
  %38 = bitcast float %.i146 to i32
  %39 = bitcast float %.i248 to i32
  %40 = bitcast float %.i350 to i32
  %41 = add i32 %1, 32
  %42 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %43 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %42)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %43, i32 %41, i32 undef, i32 %37, i32 %38, i32 %39, i32 %40, i8 15)
  %44 = add i32 %1, 48
  %45 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %46 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %45)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %46, i32 %44, i32 undef, i32 %18, i32 %20, i32 %23, i32 %24, i8 15)
  %47 = bitcast float %.i052 to i32
  %48 = bitcast float %.i154 to i32
  %49 = bitcast float %.i256 to i32
  %50 = bitcast float %.i358 to i32
  %51 = add i32 %1, 64
  %52 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %53 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %52)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %53, i32 %51, i32 undef, i32 %47, i32 %48, i32 %49, i32 %50, i8 15)
  %54 = bitcast float %.i060 to i32
  %55 = bitcast float %.i162 to i32
  %56 = bitcast float %.i264 to i32
  %57 = bitcast float %.i366 to i32
  %58 = add i32 %1, 80
  %59 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %60 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %59)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %60, i32 %58, i32 undef, i32 %54, i32 %55, i32 %56, i32 %57, i8 15)
  %61 = bitcast float %.i068 to i32
  %62 = bitcast float %.i170 to i32
  %63 = bitcast float %.i272 to i32
  %64 = bitcast float %.i374 to i32
  %65 = add i32 %1, 96
  %66 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %67 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %66)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %67, i32 %65, i32 undef, i32 %61, i32 %62, i32 %63, i32 %64, i8 15)
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?raygen@@YAXXZ"() #5 {
  %1 = load %struct.RaytracingAccelerationStructure, %struct.RaytracingAccelerationStructure* @"\01?Scene@@3URaytracingAccelerationStructure@@A", align 4
  %2 = alloca %struct.HitData, align 8
  %DispatchRaysIndex = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 0)
  %DispatchRaysIndex2 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 1)
  %.i0 = uitofp i32 %DispatchRaysIndex to float
  %.i1 = uitofp i32 %DispatchRaysIndex2 to float
  %DispatchRaysDimensions = call i32 @dx.op.dispatchRaysDimensions.i32(i32 146, i8 0)
  %DispatchRaysDimensions1 = call i32 @dx.op.dispatchRaysDimensions.i32(i32 146, i8 1)
  %.i03 = uitofp i32 %DispatchRaysDimensions to float
  %.i14 = uitofp i32 %DispatchRaysDimensions1 to float
  %.i05 = fdiv fast float %.i0, %.i03
  %.i16 = fdiv fast float %.i1, %.i14
  %.i07 = fmul fast float %.i05, 2.000000e+00
  %.i18 = fmul fast float %.i16, 2.000000e+00
  %.i09 = fadd fast float %.i07, -1.000000e+00
  %.i110 = fadd fast float %.i18, -1.000000e+00
  %3 = getelementptr inbounds %struct.HitData, %struct.HitData* %2, i32 0, i32 0
  store i32 0, i32* %3, align 8
  %4 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RaytracingAccelerationStructure(i32 160, %struct.RaytracingAccelerationStructure %1)
  call void @dx.op.traceRay.struct.HitData(i32 157, %dx.types.Handle %4, i32 16, i32 -1, i32 0, i32 1, i32 0, float %.i09, float %.i110, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+04, %struct.HitData* nonnull %2)
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z"(%struct.RWByteAddressBufferPointer* noalias nocapture sret, <2 x i32>) #5 {
  %3 = extractelement <2 x i32> %1, i32 0
  %4 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 1
  store i32 %3, i32* %4, align 4, !tbaa !158, !alias.scope !256
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?AABBtoBoundingBox@@YA?AUBoundingBox@@UAABB@@@Z"(%struct.BoundingBox* noalias nocapture sret, %struct.AABB* nocapture readonly) #5 {
  %3 = getelementptr inbounds %struct.AABB, %struct.AABB* %1, i32 0, i32 0
  %4 = load <3 x float>, <3 x float>* %3, align 4, !tbaa !196
  %.i01 = extractelement <3 x float> %4, i32 0
  %.i13 = extractelement <3 x float> %4, i32 1
  %.i25 = extractelement <3 x float> %4, i32 2
  %5 = getelementptr inbounds %struct.AABB, %struct.AABB* %1, i32 0, i32 1
  %6 = load <3 x float>, <3 x float>* %5, align 4, !tbaa !196
  %.i0 = extractelement <3 x float> %6, i32 0
  %.i02 = fadd fast float %.i0, %.i01
  %.i1 = extractelement <3 x float> %6, i32 1
  %.i14 = fadd fast float %.i1, %.i13
  %.i2 = extractelement <3 x float> %6, i32 2
  %.i26 = fadd fast float %.i2, %.i25
  %.i07 = fmul fast float %.i02, 5.000000e-01
  %.i18 = fmul fast float %.i14, 5.000000e-01
  %.i29 = fmul fast float %.i26, 5.000000e-01
  %.upto0 = insertelement <3 x float> undef, float %.i07, i32 0
  %.upto1 = insertelement <3 x float> %.upto0, float %.i18, i32 1
  %7 = insertelement <3 x float> %.upto1, float %.i29, i32 2
  %.i011 = fsub fast float %.i0, %.i07
  %.i113 = fsub fast float %.i1, %.i18
  %.i215 = fsub fast float %.i2, %.i29
  %.upto016 = insertelement <3 x float> undef, float %.i011, i32 0
  %.upto117 = insertelement <3 x float> %.upto016, float %.i113, i32 1
  %8 = insertelement <3 x float> %.upto117, float %.i215, i32 2
  %9 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 0
  store <3 x float> %7, <3 x float>* %9, align 4
  %10 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 1
  store <3 x float> %8, <3 x float>* %10, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define i1 @"\01?IsOpaque@@YA_N_NII@Z"(i1 zeroext, i32, i32) #6 {
  %4 = and i32 %1, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

; <label>:6                                       ; preds = %3
  %7 = zext i1 %0 to i32
  %8 = and i32 %1, 8
  %9 = icmp eq i32 %8, 0
  %. = select i1 %9, i32 %7, i32 0
  br label %10

; <label>:10                                      ; preds = %6, %3
  %opaque.0 = phi i32 [ 1, %3 ], [ %., %6 ]
  %11 = and i32 %2, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %10
  %14 = and i32 %2, 2
  %15 = icmp eq i32 %14, 0
  %opaque.0. = select i1 %15, i32 %opaque.0, i32 0
  br label %16

; <label>:16                                      ; preds = %13, %10
  %opaque.1 = phi i32 [ 1, %10 ], [ %opaque.0., %13 ]
  %17 = icmp ne i32 %opaque.1, 0
  ret i1 %17
}

; Function Attrs: alwaysinline nounwind readnone
define void @"\01?Log@@YAXV?$vector@I$03@@@Z"(<4 x i32>) #6 {
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?rayhit@@YAXUHitData@@UBuiltInTriangleIntersectionAttributes@@@Z"(%struct.HitData* noalias nocapture, %struct.BuiltInTriangleIntersectionAttributes* nocapture readonly) #5 {
  %3 = load %"class.RWTexture2D<vector<float, 4> >", %"class.RWTexture2D<vector<float, 4> >"* @"\01?uavOutput@@3V?$RWTexture2D@V?$vector@M$03@@@@A", align 4
  %4 = getelementptr inbounds %struct.BuiltInTriangleIntersectionAttributes, %struct.BuiltInTriangleIntersectionAttributes* %1, i32 0, i32 0
  %5 = load <2 x float>, <2 x float>* %4, align 4
  %6 = extractelement <2 x float> %5, i32 0
  %7 = fsub fast float 1.000000e+00, %6
  %8 = extractelement <2 x float> %5, i32 1
  %9 = fsub fast float %7, %8
  %DispatchRaysIndex = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 0)
  %DispatchRaysIndex1 = call i32 @dx.op.dispatchRaysIndex.i32(i32 145, i8 1)
  %10 = call %dx.types.Handle @"dx.op.createHandleFromResourceStructForLib.class.RWTexture2D<vector<float, 4> >"(i32 160, %"class.RWTexture2D<vector<float, 4> >" %3)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %10, i32 %DispatchRaysIndex, i32 %DispatchRaysIndex1, i32 undef, float %9, float %6, float %8, float 1.000000e+00, i8 15)
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define void @"\01?LogFloat@@YAXM@Z"(float) #6 {
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?TransformAABB@@YA?AUAABB@@U1@V?$matrix@M$02$03@@@Z"(%struct.AABB* noalias nocapture sret, %struct.AABB* nocapture readonly, %class.matrix.float.3.4) #5 {
  %4 = extractvalue %class.matrix.float.3.4 %2, 0, 0
  %5 = extractelement <4 x float> %4, i32 3
  %6 = extractelement <4 x float> %4, i32 2
  %7 = extractelement <4 x float> %4, i32 1
  %8 = extractelement <4 x float> %4, i32 0
  %9 = extractvalue %class.matrix.float.3.4 %2, 0, 1
  %10 = extractelement <4 x float> %9, i32 3
  %11 = extractelement <4 x float> %9, i32 2
  %12 = extractelement <4 x float> %9, i32 1
  %13 = extractelement <4 x float> %9, i32 0
  %14 = extractvalue %class.matrix.float.3.4 %2, 0, 2
  %15 = extractelement <4 x float> %14, i32 3
  %16 = extractelement <4 x float> %14, i32 2
  %17 = extractelement <4 x float> %14, i32 1
  %18 = extractelement <4 x float> %14, i32 0
  %boxVertices.0 = alloca [8 x float], align 4
  %boxVertices.1 = alloca [8 x float], align 4
  %boxVertices.2 = alloca [8 x float], align 4
  %19 = getelementptr inbounds %struct.AABB, %struct.AABB* %1, i32 0, i32 0
  %20 = load <3 x float>, <3 x float>* %19, align 4
  %21 = extractelement <3 x float> %20, i64 0
  %22 = extractelement <3 x float> %20, i64 1
  %23 = extractelement <3 x float> %20, i64 2
  %24 = getelementptr [8 x float], [8 x float]* %boxVertices.0, i32 0, i32 0
  %25 = getelementptr [8 x float], [8 x float]* %boxVertices.1, i32 0, i32 0
  %26 = getelementptr [8 x float], [8 x float]* %boxVertices.2, i32 0, i32 0
  store float %21, float* %24, align 4
  store float %22, float* %25, align 4
  store float %23, float* %26, align 4
  %27 = extractelement <3 x float> %20, i32 1
  %28 = extractelement <3 x float> %20, i32 0
  %29 = getelementptr inbounds %struct.AABB, %struct.AABB* %1, i32 0, i32 1
  %30 = load <3 x float>, <3 x float>* %29, align 4
  %31 = extractelement <3 x float> %30, i32 2
  %32 = getelementptr [8 x float], [8 x float]* %boxVertices.0, i32 0, i32 1
  %33 = getelementptr [8 x float], [8 x float]* %boxVertices.1, i32 0, i32 1
  %34 = getelementptr [8 x float], [8 x float]* %boxVertices.2, i32 0, i32 1
  store float %28, float* %32, align 4
  store float %27, float* %33, align 4
  store float %31, float* %34, align 4
  %35 = extractelement <3 x float> %30, i32 1
  %36 = getelementptr [8 x float], [8 x float]* %boxVertices.0, i32 0, i32 2
  %37 = getelementptr [8 x float], [8 x float]* %boxVertices.1, i32 0, i32 2
  %38 = getelementptr [8 x float], [8 x float]* %boxVertices.2, i32 0, i32 2
  store float %28, float* %36, align 4
  store float %35, float* %37, align 4
  store float %31, float* %38, align 4
  %39 = extractelement <3 x float> %20, i32 2
  %40 = getelementptr [8 x float], [8 x float]* %boxVertices.0, i32 0, i32 3
  %41 = getelementptr [8 x float], [8 x float]* %boxVertices.1, i32 0, i32 3
  %42 = getelementptr [8 x float], [8 x float]* %boxVertices.2, i32 0, i32 3
  store float %28, float* %40, align 4
  store float %35, float* %41, align 4
  store float %39, float* %42, align 4
  %43 = extractelement <3 x float> %30, i32 0
  %44 = getelementptr [8 x float], [8 x float]* %boxVertices.0, i32 0, i32 4
  %45 = getelementptr [8 x float], [8 x float]* %boxVertices.1, i32 0, i32 4
  %46 = getelementptr [8 x float], [8 x float]* %boxVertices.2, i32 0, i32 4
  store float %43, float* %44, align 4
  store float %27, float* %45, align 4
  store float %39, float* %46, align 4
  %47 = getelementptr [8 x float], [8 x float]* %boxVertices.0, i32 0, i32 6
  %48 = getelementptr [8 x float], [8 x float]* %boxVertices.1, i32 0, i32 6
  %49 = getelementptr [8 x float], [8 x float]* %boxVertices.2, i32 0, i32 6
  store float %43, float* %47, align 4
  store float %27, float* %48, align 4
  store float %31, float* %49, align 4
  %50 = getelementptr [8 x float], [8 x float]* %boxVertices.0, i32 0, i32 5
  %51 = getelementptr [8 x float], [8 x float]* %boxVertices.1, i32 0, i32 5
  %52 = getelementptr [8 x float], [8 x float]* %boxVertices.2, i32 0, i32 5
  store float %43, float* %50, align 4
  store float %35, float* %51, align 4
  store float %39, float* %52, align 4
  %53 = extractelement <3 x float> %30, i64 0
  %54 = extractelement <3 x float> %30, i64 1
  %55 = extractelement <3 x float> %30, i64 2
  %56 = getelementptr [8 x float], [8 x float]* %boxVertices.0, i32 0, i32 7
  %57 = getelementptr [8 x float], [8 x float]* %boxVertices.1, i32 0, i32 7
  %58 = getelementptr [8 x float], [8 x float]* %boxVertices.2, i32 0, i32 7
  store float %53, float* %56, align 4
  store float %54, float* %57, align 4
  store float %55, float* %58, align 4
  br label %59

; <label>:59                                      ; preds = %._crit_edge, %3
  %load5 = phi float [ 1.000000e+00, %3 ], [ %load5.pre, %._crit_edge ]
  %load3 = phi float [ %23, %3 ], [ %load3.pre, %._crit_edge ]
  %load1 = phi float [ %22, %3 ], [ %load1.pre, %._crit_edge ]
  %load = phi float [ %21, %3 ], [ %load.pre, %._crit_edge ]
  %.0.09.i0 = phi float [ 0x47EFFFFFE0000000, %3 ], [ %FMin, %._crit_edge ]
  %.0.09.i1 = phi float [ 0x47EFFFFFE0000000, %3 ], [ %FMin12, %._crit_edge ]
  %.0.09.i2 = phi float [ 0x47EFFFFFE0000000, %3 ], [ %FMin13, %._crit_edge ]
  %.1.08.i0 = phi float [ 0xC7EFFFFFE0000000, %3 ], [ %FMax, %._crit_edge ]
  %.1.08.i1 = phi float [ 0xC7EFFFFFE0000000, %3 ], [ %FMax10, %._crit_edge ]
  %.1.08.i2 = phi float [ 0xC7EFFFFFE0000000, %3 ], [ %FMax11, %._crit_edge ]
  %i.07 = phi i32 [ 0, %3 ], [ %63, %._crit_edge ]
  %60 = fmul fast float %load, %8
  %FMad22 = call float @dx.op.tertiary.f32(i32 46, float %load1, float %7, float %60)
  %FMad21 = call float @dx.op.tertiary.f32(i32 46, float %load3, float %6, float %FMad22)
  %FMad20 = call float @dx.op.tertiary.f32(i32 46, float %load5, float %5, float %FMad21)
  %61 = fmul fast float %load, %13
  %FMad19 = call float @dx.op.tertiary.f32(i32 46, float %load1, float %12, float %61)
  %FMad18 = call float @dx.op.tertiary.f32(i32 46, float %load3, float %11, float %FMad19)
  %FMad17 = call float @dx.op.tertiary.f32(i32 46, float %load5, float %10, float %FMad18)
  %62 = fmul fast float %load, %18
  %FMad16 = call float @dx.op.tertiary.f32(i32 46, float %load1, float %17, float %62)
  %FMad15 = call float @dx.op.tertiary.f32(i32 46, float %load3, float %16, float %FMad16)
  %FMad = call float @dx.op.tertiary.f32(i32 46, float %load5, float %15, float %FMad15)
  %FMin = call float @dx.op.binary.f32(i32 36, float %.0.09.i0, float %FMad20)
  %FMin12 = call float @dx.op.binary.f32(i32 36, float %.0.09.i1, float %FMad17)
  %FMin13 = call float @dx.op.binary.f32(i32 36, float %.0.09.i2, float %FMad)
  %FMax = call float @dx.op.binary.f32(i32 35, float %.1.08.i0, float %FMad20)
  %FMax10 = call float @dx.op.binary.f32(i32 35, float %.1.08.i1, float %FMad17)
  %FMax11 = call float @dx.op.binary.f32(i32 35, float %.1.08.i2, float %FMad)
  %63 = add nuw nsw i32 %i.07, 1
  %exitcond = icmp eq i32 %63, 8
  br i1 %exitcond, label %64, label %._crit_edge

._crit_edge:                                      ; preds = %59
  %.phi.trans.insert = getelementptr [8 x float], [8 x float]* %boxVertices.0, i32 0, i32 %63
  %load.pre = load float, float* %.phi.trans.insert, align 4
  %.phi.trans.insert32 = getelementptr [8 x float], [8 x float]* %boxVertices.1, i32 0, i32 %63
  %load1.pre = load float, float* %.phi.trans.insert32, align 4
  %.phi.trans.insert34 = getelementptr [8 x float], [8 x float]* %boxVertices.2, i32 0, i32 %63
  %load3.pre = load float, float* %.phi.trans.insert34, align 4
  %.phi.trans.insert36 = getelementptr [8 x float], [8 x float]* @"1boxVertices.3.hca", i32 0, i32 %63
  %load5.pre = load float, float* %.phi.trans.insert36, align 4
  br label %59

; <label>:64                                      ; preds = %59
  %65 = insertelement <3 x float> undef, float %FMax, i64 0
  %66 = insertelement <3 x float> %65, float %FMax10, i64 1
  %67 = insertelement <3 x float> %66, float %FMax11, i64 2
  %68 = insertelement <3 x float> undef, float %FMin, i64 0
  %69 = insertelement <3 x float> %68, float %FMin12, i64 1
  %70 = insertelement <3 x float> %69, float %FMin13, i64 2
  %71 = getelementptr inbounds %struct.AABB, %struct.AABB* %0, i32 0, i32 0
  store <3 x float> %70, <3 x float>* %71, align 4
  %72 = getelementptr inbounds %struct.AABB, %struct.AABB* %0, i32 0, i32 1
  store <3 x float> %67, <3 x float>* %72, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?LoadRaytracingInstanceDesc@@YA?AURaytracingInstanceDesc@@URWByteAddressBuffer@@I@Z"(%struct.RaytracingInstanceDesc* noalias nocapture sret, %struct.RWByteAddressBuffer* nocapture readonly, i32) #5 {
  %4 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %1, align 4
  %5 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %4)
  %6 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2, i32 undef)
  %7 = extractvalue %dx.types.ResRet.i32 %6, 0
  %8 = extractvalue %dx.types.ResRet.i32 %6, 1
  %9 = extractvalue %dx.types.ResRet.i32 %6, 2
  %10 = extractvalue %dx.types.ResRet.i32 %6, 3
  %11 = add i32 %2, 16
  %12 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %11, i32 undef)
  %13 = extractvalue %dx.types.ResRet.i32 %12, 0
  %14 = extractvalue %dx.types.ResRet.i32 %12, 1
  %15 = extractvalue %dx.types.ResRet.i32 %12, 2
  %16 = extractvalue %dx.types.ResRet.i32 %12, 3
  %17 = add i32 %2, 32
  %18 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %17, i32 undef)
  %19 = extractvalue %dx.types.ResRet.i32 %18, 0
  %20 = extractvalue %dx.types.ResRet.i32 %18, 1
  %21 = extractvalue %dx.types.ResRet.i32 %18, 2
  %22 = extractvalue %dx.types.ResRet.i32 %18, 3
  %23 = add i32 %2, 48
  %24 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %23, i32 undef)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = extractvalue %dx.types.ResRet.i32 %24, 1
  %27 = extractvalue %dx.types.ResRet.i32 %24, 2
  %28 = extractvalue %dx.types.ResRet.i32 %24, 3
  %.i0 = bitcast i32 %7 to float
  %.i1 = bitcast i32 %8 to float
  %.i2 = bitcast i32 %9 to float
  %.i3 = bitcast i32 %10 to float
  %.upto0 = insertelement <4 x float> undef, float %.i0, i32 0
  %.upto1 = insertelement <4 x float> %.upto0, float %.i1, i32 1
  %.upto2 = insertelement <4 x float> %.upto1, float %.i2, i32 2
  %29 = insertelement <4 x float> %.upto2, float %.i3, i32 3
  %30 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 0, i32 0
  store <4 x float> %29, <4 x float>* %30, align 4, !tbaa !196, !alias.scope !259
  %.i035 = bitcast i32 %13 to float
  %.i136 = bitcast i32 %14 to float
  %.i237 = bitcast i32 %15 to float
  %.i338 = bitcast i32 %16 to float
  %.upto043 = insertelement <4 x float> undef, float %.i035, i32 0
  %.upto144 = insertelement <4 x float> %.upto043, float %.i136, i32 1
  %.upto245 = insertelement <4 x float> %.upto144, float %.i237, i32 2
  %31 = insertelement <4 x float> %.upto245, float %.i338, i32 3
  %32 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 0, i32 1
  store <4 x float> %31, <4 x float>* %32, align 4, !tbaa !196, !alias.scope !259
  %.i039 = bitcast i32 %19 to float
  %.i140 = bitcast i32 %20 to float
  %.i241 = bitcast i32 %21 to float
  %.i342 = bitcast i32 %22 to float
  %.upto046 = insertelement <4 x float> undef, float %.i039, i32 0
  %.upto147 = insertelement <4 x float> %.upto046, float %.i140, i32 1
  %.upto248 = insertelement <4 x float> %.upto147, float %.i241, i32 2
  %33 = insertelement <4 x float> %.upto248, float %.i342, i32 3
  %34 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 0, i32 2
  store <4 x float> %33, <4 x float>* %34, align 4, !tbaa !196, !alias.scope !259
  %35 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 1
  store i32 %25, i32* %35, align 4, !tbaa !158, !alias.scope !259
  %36 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 2
  store i32 %26, i32* %36, align 4, !tbaa !158, !alias.scope !259
  %.upto049 = insertelement <2 x i32> undef, i32 %27, i32 0
  %37 = insertelement <2 x i32> %.upto049, i32 %28, i32 1
  %38 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 3
  store <2 x i32> %37, <2 x i32>* %38, align 4, !tbaa !196, !alias.scope !259
  ret void
}

; Function Attrs: alwaysinline nounwind readonly
define <3 x float> @"\01?GetMaxCorner@@YA?AV?$vector@M$02@@UBoundingBox@@@Z"(%struct.BoundingBox* nocapture readonly) #7 {
  %2 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 0
  %3 = load <3 x float>, <3 x float>* %2, align 4, !tbaa !196
  %.i01 = extractelement <3 x float> %3, i32 0
  %.i13 = extractelement <3 x float> %3, i32 1
  %.i25 = extractelement <3 x float> %3, i32 2
  %4 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 1
  %5 = load <3 x float>, <3 x float>* %4, align 4, !tbaa !196
  %.i0 = extractelement <3 x float> %5, i32 0
  %.i02 = fadd fast float %.i0, %.i01
  %.i1 = extractelement <3 x float> %5, i32 1
  %.i14 = fadd fast float %.i1, %.i13
  %.i2 = extractelement <3 x float> %5, i32 2
  %.i26 = fadd fast float %.i2, %.i25
  %.upto0 = insertelement <3 x float> undef, float %.i02, i32 0
  %.upto1 = insertelement <3 x float> %.upto0, float %.i14, i32 1
  %6 = insertelement <3 x float> %.upto1, float %.i26, i32 2
  ret <3 x float> %6
}

; Function Attrs: alwaysinline nounwind readonly
define i32 @"\01?GetInstanceContributionToHitGroupIndex@@YAIURaytracingInstanceDesc@@@Z"(%struct.RaytracingInstanceDesc* nocapture readonly) #7 {
  %2 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !158
  %4 = and i32 %3, 16777215
  ret i32 %4
}

; Function Attrs: alwaysinline nounwind
define i32 @"\01?StackPop@@YAIAIAHI@Z"(i32* noalias nocapture dereferenceable(4), i32) #5 {
  %3 = load i32, i32* %0, align 4, !tbaa !158
  %4 = add nsw i32 %3, -1
  store i32 %4, i32* %0, align 4, !tbaa !158
  %5 = shl i32 %4, 6
  %6 = add i32 %5, %1
  %7 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %6
  %8 = load i32, i32 addrspace(3)* %7, align 4, !tbaa !158
  ret i32 %8
}

; Function Attrs: alwaysinline nounwind readonly
define i32 @"\01?GetInstanceFlags@@YAIURaytracingInstanceDesc@@@Z"(%struct.RaytracingInstanceDesc* nocapture readonly) #7 {
  %2 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 2
  %3 = load i32, i32* %2, align 4, !tbaa !158
  %4 = lshr i32 %3, 24
  ret i32 %4
}

; Function Attrs: alwaysinline nounwind
define void @"\01?GetBoxDataFromTriangle@@YA?AUBoundingBox@@V?$vector@M$02@@00HAIAV?$vector@I$01@@@Z"(%struct.BoundingBox* noalias nocapture sret, <3 x float>, <3 x float>, <3 x float>, i32, <2 x i32>* noalias nocapture dereferenceable(8)) #5 {
  %7 = extractelement <3 x float> %1, i64 0
  %8 = extractelement <3 x float> %2, i64 0
  %FMin = call float @dx.op.binary.f32(i32 36, float %7, float %8)
  %9 = extractelement <3 x float> %1, i64 1
  %10 = extractelement <3 x float> %2, i64 1
  %FMin6 = call float @dx.op.binary.f32(i32 36, float %9, float %10)
  %11 = extractelement <3 x float> %1, i64 2
  %12 = extractelement <3 x float> %2, i64 2
  %FMin7 = call float @dx.op.binary.f32(i32 36, float %11, float %12)
  %13 = extractelement <3 x float> %3, i64 0
  %FMin8 = call float @dx.op.binary.f32(i32 36, float %FMin, float %13)
  %14 = extractelement <3 x float> %3, i64 1
  %FMin9 = call float @dx.op.binary.f32(i32 36, float %FMin6, float %14)
  %15 = extractelement <3 x float> %3, i64 2
  %FMin10 = call float @dx.op.binary.f32(i32 36, float %FMin7, float %15)
  %FMax = call float @dx.op.binary.f32(i32 35, float %7, float %8)
  %FMax1 = call float @dx.op.binary.f32(i32 35, float %9, float %10)
  %FMax2 = call float @dx.op.binary.f32(i32 35, float %11, float %12)
  %FMax3 = call float @dx.op.binary.f32(i32 35, float %FMax, float %13)
  %FMax4 = call float @dx.op.binary.f32(i32 35, float %FMax1, float %14)
  %FMax5 = call float @dx.op.binary.f32(i32 35, float %FMax2, float %15)
  %.i0 = fadd fast float %FMax3, 0xBF50624DE0000000
  %.i1 = fadd fast float %FMax4, 0xBF50624DE0000000
  %.i2 = fadd fast float %FMax5, 0xBF50624DE0000000
  %FMin11 = call float @dx.op.binary.f32(i32 36, float %FMin8, float %.i0)
  %FMin12 = call float @dx.op.binary.f32(i32 36, float %FMin9, float %.i1)
  %FMin13 = call float @dx.op.binary.f32(i32 36, float %FMin10, float %.i2)
  %.i014 = fadd fast float %FMin11, %FMax3
  %.i115 = fadd fast float %FMin12, %FMax4
  %.i216 = fadd fast float %FMin13, %FMax5
  %.i017 = fmul fast float %.i014, 5.000000e-01
  %.i118 = fmul fast float %.i115, 5.000000e-01
  %.i219 = fmul fast float %.i216, 5.000000e-01
  %.upto023 = insertelement <3 x float> undef, float %.i017, i32 0
  %.upto124 = insertelement <3 x float> %.upto023, float %.i118, i32 1
  %16 = insertelement <3 x float> %.upto124, float %.i219, i32 2
  %.i020 = fsub fast float %FMax3, %.i017
  %.i121 = fsub fast float %FMax4, %.i118
  %.i222 = fsub fast float %FMax5, %.i219
  %.upto025 = insertelement <3 x float> undef, float %.i020, i32 0
  %.upto126 = insertelement <3 x float> %.upto025, float %.i121, i32 1
  %17 = insertelement <3 x float> %.upto126, float %.i222, i32 2
  %18 = or i32 %4, -2147483648
  %19 = insertelement <2 x i32> undef, i32 %18, i32 0
  %20 = insertelement <2 x i32> %19, i32 1, i32 1
  %21 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 0
  store <3 x float> %16, <3 x float>* %21, align 4
  %22 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 1
  store <3 x float> %17, <3 x float>* %22, align 4
  store <2 x i32> %20, <2 x i32>* %5, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind
define i1 @"\01?Traverse@@YA_NIII@Z"(i32, i32, i32) #5 {
  %4 = load %AccelerationStructureList, %AccelerationStructureList* @AccelerationStructureList, align 4
  %AccelerationStructureList = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.AccelerationStructureList(i32 160, %AccelerationStructureList %4)
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %nodesToProcess = alloca [2 x i32], align 4
  %attr = alloca %struct.BuiltInTriangleIntersectionAttributes, align 4
  %10 = call i32 @"\01?Fallback_GroupIndex@@YAIXZ"() #3
  %WorldRayDirection = call float @dx.op.worldRayDirection.f32(i32 148, i8 0)
  %WorldRayDirection222 = call float @dx.op.worldRayDirection.f32(i32 148, i8 1)
  %WorldRayDirection223 = call float @dx.op.worldRayDirection.f32(i32 148, i8 2)
  %WorldRayOrigin = call float @dx.op.worldRayOrigin.f32(i32 147, i8 0)
  %WorldRayOrigin217 = call float @dx.op.worldRayOrigin.f32(i32 147, i8 1)
  %WorldRayOrigin218 = call float @dx.op.worldRayOrigin.f32(i32 147, i8 2)
  %11 = getelementptr inbounds [3 x float], [3 x float]* %9, i32 0, i32 0
  store float %WorldRayDirection, float* %11, align 4
  %12 = getelementptr inbounds [3 x float], [3 x float]* %9, i32 0, i32 1
  store float %WorldRayDirection222, float* %12, align 4
  %13 = getelementptr inbounds [3 x float], [3 x float]* %9, i32 0, i32 2
  store float %WorldRayDirection223, float* %13, align 4
  %.i0 = fdiv fast float 1.000000e+00, %WorldRayDirection
  %.i1 = fdiv fast float 1.000000e+00, %WorldRayDirection222
  %.i2 = fdiv fast float 1.000000e+00, %WorldRayDirection223
  %.i0252 = fmul fast float %.i0, %WorldRayOrigin
  %.i1253 = fmul fast float %.i1, %WorldRayOrigin217
  %.i2254 = fmul fast float %.i2, %WorldRayOrigin218
  %FAbs214 = call float @dx.op.unary.f32(i32 6, float %WorldRayDirection)
  %FAbs215 = call float @dx.op.unary.f32(i32 6, float %WorldRayDirection222)
  %FAbs216 = call float @dx.op.unary.f32(i32 6, float %WorldRayDirection223)
  %14 = fcmp fast ogt float %FAbs214, %FAbs215
  %15 = fcmp fast ogt float %FAbs214, %FAbs216
  %16 = and i1 %14, %15
  br i1 %16, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i", label %17

; <label>:17                                      ; preds = %3
  %18 = fcmp fast ogt float %FAbs215, %FAbs216
  br i1 %18, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i", label %19

; <label>:19                                      ; preds = %17
  br label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i"

"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i": ; preds = %19, %17, %3
  %.0177 = phi i32 [ 2, %19 ], [ 0, %3 ], [ 1, %17 ]
  %20 = add nuw nsw i32 %.0177, 1
  %21 = urem i32 %20, 3
  %22 = add nuw nsw i32 %.0177, 2
  %23 = urem i32 %22, 3
  %24 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %.0177
  %25 = load float, float* %24, align 4, !tbaa !151, !noalias !262
  %26 = fcmp fast olt float %25, 0.000000e+00
  %worldRayData.5.0.i0 = select i1 %26, i32 %23, i32 %21
  %worldRayData.5.0.i1 = select i1 %26, i32 %21, i32 %23
  %27 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %worldRayData.5.0.i0
  %28 = load float, float* %27, align 4, !tbaa !151, !noalias !262
  %29 = fdiv float %28, %25
  %30 = getelementptr [3 x float], [3 x float]* %9, i32 0, i32 %worldRayData.5.0.i1
  %31 = load float, float* %30, align 4, !tbaa !151, !noalias !262
  %32 = fdiv float %31, %25
  %33 = fdiv float 1.000000e+00, %25
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList, i32 0)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.i32 %34, 1
  %37 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %10
  store i32 0, i32 addrspace(3)* %37, align 4, !tbaa !158, !noalias !265
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess, i32 0, i32 0
  store i32 1, i32* %38, align 4, !tbaa !158
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList, i32 0)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 0
  %41 = extractvalue %dx.types.CBufRet.i32 %39, 1
  %42 = getelementptr inbounds [0 x %struct.RWByteAddressBuffer], [0 x %struct.RWByteAddressBuffer]* @"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A", i32 0, i32 %41, !dx.nonuniform !163
  %43 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %42, align 4, !noalias !268
  %44 = add i32 %40, 4
  %45 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %43)
  %46 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 %44, i32 undef)
  %47 = extractvalue %dx.types.ResRet.i32 %46, 0
  %48 = add i32 %47, %40
  call void @"\01?Fallback_SetInstanceIndex@@YAXI@Z"(i32 -1) #3
  %49 = getelementptr inbounds [3 x float], [3 x float]* %8, i32 0, i32 0
  %50 = getelementptr inbounds [3 x float], [3 x float]* %8, i32 0, i32 1
  %51 = getelementptr inbounds [3 x float], [3 x float]* %8, i32 0, i32 2
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess, i32 0, i32 1
  %53 = getelementptr inbounds %struct.BuiltInTriangleIntersectionAttributes, %struct.BuiltInTriangleIntersectionAttributes* %attr, i32 0, i32 0
  %54 = getelementptr inbounds [3 x float], [3 x float]* %7, i32 0, i32 0
  %55 = getelementptr inbounds [3 x float], [3 x float]* %7, i32 0, i32 1
  %56 = getelementptr inbounds [3 x float], [3 x float]* %7, i32 0, i32 2
  %57 = getelementptr inbounds [3 x float], [3 x float]* %5, i32 0, i32 0
  %58 = getelementptr inbounds [3 x float], [3 x float]* %5, i32 0, i32 1
  %59 = getelementptr inbounds [3 x float], [3 x float]* %5, i32 0, i32 2
  %60 = getelementptr inbounds [3 x float], [3 x float]* %6, i32 0, i32 0
  %61 = getelementptr inbounds [3 x float], [3 x float]* %6, i32 0, i32 1
  %62 = getelementptr inbounds [3 x float], [3 x float]* %6, i32 0, i32 2
  br label %.backedge

.backedge:                                        ; preds = %372, %376, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i"
  %.0180.i0 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %.3.i0, %376 ], [ %.3.i0, %372 ]
  %.0180.i1 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %.3.i1, %376 ], [ %.3.i1, %372 ]
  %currentRayData.0.0.i0 = phi float [ %WorldRayOrigin, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.0.1.i0, %372 ], [ %WorldRayOrigin, %376 ]
  %currentRayData.0.0.i1 = phi float [ %WorldRayOrigin217, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.0.1.i1, %372 ], [ %WorldRayOrigin217, %376 ]
  %currentRayData.0.0.i2 = phi float [ %WorldRayOrigin218, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.0.1.i2, %372 ], [ %WorldRayOrigin218, %376 ]
  %currentRayData.1.0.i0 = phi float [ %WorldRayDirection, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.1.1.i0, %372 ], [ %WorldRayDirection, %376 ]
  %currentRayData.1.0.i1 = phi float [ %WorldRayDirection222, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.1.1.i1, %372 ], [ %WorldRayDirection222, %376 ]
  %currentRayData.1.0.i2 = phi float [ %WorldRayDirection223, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.1.1.i2, %372 ], [ %WorldRayDirection223, %376 ]
  %currentRayData.2.0.i0 = phi float [ %.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.2.1.i0, %372 ], [ %.i0, %376 ]
  %currentRayData.2.0.i1 = phi float [ %.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.2.1.i1, %372 ], [ %.i1, %376 ]
  %currentRayData.2.0.i2 = phi float [ %.i2, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.2.1.i2, %372 ], [ %.i2, %376 ]
  %currentRayData.3.0.i0 = phi float [ %.i0252, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.3.1.i0, %372 ], [ %.i0252, %376 ]
  %currentRayData.3.0.i1 = phi float [ %.i1253, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.3.1.i1, %372 ], [ %.i1253, %376 ]
  %currentRayData.3.0.i2 = phi float [ %.i2254, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.3.1.i2, %372 ], [ %.i2254, %376 ]
  %currentRayData.4.0.i0 = phi float [ %29, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.4.1.i0, %372 ], [ %29, %376 ]
  %currentRayData.4.0.i1 = phi float [ %32, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.4.1.i1, %372 ], [ %32, %376 ]
  %currentRayData.4.0.i2 = phi float [ %33, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.4.1.i2, %372 ], [ %33, %376 ]
  %currentRayData.5.0.i0 = phi i32 [ %worldRayData.5.0.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.5.1.i0, %372 ], [ %worldRayData.5.0.i0, %376 ]
  %currentRayData.5.0.i1 = phi i32 [ %worldRayData.5.0.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.5.1.i1, %372 ], [ %worldRayData.5.0.i1, %376 ]
  %currentRayData.5.0.i2 = phi i32 [ %.0177, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentRayData.5.1.i2, %372 ], [ %.0177, %376 ]
  %CurrentObjectToWorld173.0.i0 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i0, %376 ], [ %CurrentObjectToWorld173.1.i0, %372 ]
  %CurrentObjectToWorld173.0.i1 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i1, %376 ], [ %CurrentObjectToWorld173.1.i1, %372 ]
  %CurrentObjectToWorld173.0.i2 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i2, %376 ], [ %CurrentObjectToWorld173.1.i2, %372 ]
  %CurrentObjectToWorld173.0.i3 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i3, %376 ], [ %CurrentObjectToWorld173.1.i3, %372 ]
  %CurrentObjectToWorld173.0.i4 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i4, %376 ], [ %CurrentObjectToWorld173.1.i4, %372 ]
  %CurrentObjectToWorld173.0.i5 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i5, %376 ], [ %CurrentObjectToWorld173.1.i5, %372 ]
  %CurrentObjectToWorld173.0.i6 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i6, %376 ], [ %CurrentObjectToWorld173.1.i6, %372 ]
  %CurrentObjectToWorld173.0.i7 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i7, %376 ], [ %CurrentObjectToWorld173.1.i7, %372 ]
  %CurrentObjectToWorld173.0.i8 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i8, %376 ], [ %CurrentObjectToWorld173.1.i8, %372 ]
  %CurrentObjectToWorld173.0.i9 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i9, %376 ], [ %CurrentObjectToWorld173.1.i9, %372 ]
  %CurrentObjectToWorld173.0.i10 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i10, %376 ], [ %CurrentObjectToWorld173.1.i10, %372 ]
  %CurrentObjectToWorld173.0.i11 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentObjectToWorld173.1.i11, %376 ], [ %CurrentObjectToWorld173.1.i11, %372 ]
  %CurrentWorldToObject174.0.i0 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i0, %376 ], [ %CurrentWorldToObject174.1.i0, %372 ]
  %CurrentWorldToObject174.0.i1 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i1, %376 ], [ %CurrentWorldToObject174.1.i1, %372 ]
  %CurrentWorldToObject174.0.i2 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i2, %376 ], [ %CurrentWorldToObject174.1.i2, %372 ]
  %CurrentWorldToObject174.0.i3 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i3, %376 ], [ %CurrentWorldToObject174.1.i3, %372 ]
  %CurrentWorldToObject174.0.i4 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i4, %376 ], [ %CurrentWorldToObject174.1.i4, %372 ]
  %CurrentWorldToObject174.0.i5 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i5, %376 ], [ %CurrentWorldToObject174.1.i5, %372 ]
  %CurrentWorldToObject174.0.i6 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i6, %376 ], [ %CurrentWorldToObject174.1.i6, %372 ]
  %CurrentWorldToObject174.0.i7 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i7, %376 ], [ %CurrentWorldToObject174.1.i7, %372 ]
  %CurrentWorldToObject174.0.i8 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i8, %376 ], [ %CurrentWorldToObject174.1.i8, %372 ]
  %CurrentWorldToObject174.0.i9 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i9, %376 ], [ %CurrentWorldToObject174.1.i9, %372 ]
  %CurrentWorldToObject174.0.i10 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i10, %376 ], [ %CurrentWorldToObject174.1.i10, %372 ]
  %CurrentWorldToObject174.0.i11 = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %CurrentWorldToObject174.1.i11, %376 ], [ %CurrentWorldToObject174.1.i11, %372 ]
  %ResetMatrices.0 = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %ResetMatrices.2, %372 ], [ 1, %376 ]
  %currentBVHIndex.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentBVHIndex.1, %372 ], [ %377, %376 ]
  %currentGpuVA.0.i0 = phi i32 [ %35, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentGpuVA.1.i0, %372 ], [ %379, %376 ]
  %currentGpuVA.0.i1 = phi i32 [ %36, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %currentGpuVA.1.i1, %372 ], [ %380, %376 ]
  %instIdx.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %instIdx.1, %376 ], [ %instIdx.1, %372 ]
  %instFlags.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %instFlags.1, %376 ], [ %instFlags.1, %372 ]
  %instOffset.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %instOffset.1, %376 ], [ %instOffset.1, %372 ]
  %instId.0 = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %instId.1, %376 ], [ %instId.1, %372 ]
  %stackPointer.0 = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %stackPointer.1, %376 ], [ %stackPointer.1, %372 ]
  %resultBary.0.i0 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %resultBary.1.i0, %376 ], [ %resultBary.1.i0, %372 ]
  %resultBary.0.i1 = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %resultBary.1.i1, %376 ], [ %resultBary.1.i1, %372 ]
  %resultTriId.0 = phi i32 [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i" ], [ %resultTriId.1, %376 ], [ %resultTriId.1, %372 ]
  %currentRayData.1.0.upto0 = insertelement <3 x float> undef, float %currentRayData.1.0.i0, i32 0
  %currentRayData.1.0.upto1 = insertelement <3 x float> %currentRayData.1.0.upto0, float %currentRayData.1.0.i1, i32 1
  %currentRayData.1.0 = insertelement <3 x float> %currentRayData.1.0.upto1, float %currentRayData.1.0.i2, i32 2
  %currentRayData.0.0.upto0 = insertelement <3 x float> undef, float %currentRayData.0.0.i0, i32 0
  %currentRayData.0.0.upto1 = insertelement <3 x float> %currentRayData.0.0.upto0, float %currentRayData.0.0.i1, i32 1
  %currentRayData.0.0 = insertelement <3 x float> %currentRayData.0.0.upto1, float %currentRayData.0.0.i2, i32 2
  %63 = add nsw i32 %stackPointer.0, -1
  %64 = shl i32 %63, 6
  %65 = add i32 %64, %10
  %66 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %65
  %67 = load i32, i32 addrspace(3)* %66, align 4, !tbaa !158, !noalias !273
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess, i32 0, i32 %currentBVHIndex.0
  %69 = load i32, i32* %68, align 4, !tbaa !158
  %70 = add i32 %69, -1
  store i32 %70, i32* %68, align 4, !tbaa !158
  %71 = getelementptr inbounds [0 x %struct.RWByteAddressBuffer], [0 x %struct.RWByteAddressBuffer]* @"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A", i32 0, i32 %currentGpuVA.0.i1, !dx.nonuniform !163
  %72 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %71, align 4, !noalias !276
  %73 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %72)
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %73, i32 %currentGpuVA.0.i0, i32 undef)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = shl i32 %67, 5
  %77 = add i32 %76, %currentGpuVA.0.i0
  %78 = add i32 %77, %75
  %79 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %73, i32 %78, i32 undef)
  %80 = extractvalue %dx.types.ResRet.i32 %79, 0
  %81 = extractvalue %dx.types.ResRet.i32 %79, 1
  %82 = extractvalue %dx.types.ResRet.i32 %79, 2
  %83 = extractvalue %dx.types.ResRet.i32 %79, 3
  %84 = add i32 %78, 16
  %85 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %73, i32 %84, i32 undef)
  %86 = extractvalue %dx.types.ResRet.i32 %85, 0
  %87 = extractvalue %dx.types.ResRet.i32 %85, 1
  %88 = extractvalue %dx.types.ResRet.i32 %85, 2
  %89 = extractvalue %dx.types.ResRet.i32 %85, 3
  %90 = bitcast i32 %80 to float
  %91 = bitcast i32 %81 to float
  %92 = bitcast i32 %82 to float
  %93 = bitcast i32 %86 to float
  %94 = bitcast i32 %87 to float
  %95 = bitcast i32 %88 to float
  %RayTCurrent = call float @dx.op.rayTCurrent.f32(i32 154)
  %.i0255 = fmul fast float %90, %currentRayData.2.0.i0
  %.i1256 = fmul fast float %91, %currentRayData.2.0.i1
  %.i2257 = fmul fast float %92, %currentRayData.2.0.i2
  %.i0258 = fsub fast float %.i0255, %currentRayData.3.0.i0
  %.i1259 = fsub fast float %.i1256, %currentRayData.3.0.i1
  %.i2260 = fsub fast float %.i2257, %currentRayData.3.0.i2
  %FAbs211 = call float @dx.op.unary.f32(i32 6, float %currentRayData.2.0.i0)
  %FAbs212 = call float @dx.op.unary.f32(i32 6, float %currentRayData.2.0.i1)
  %FAbs213 = call float @dx.op.unary.f32(i32 6, float %currentRayData.2.0.i2)
  %.i0261 = fmul fast float %93, %FAbs211
  %.i1262 = fmul fast float %FAbs212, %94
  %.i2263 = fmul fast float %FAbs213, %95
  %.i0264 = fadd fast float %.i0261, %.i0258
  %.i1265 = fadd fast float %.i1262, %.i1259
  %.i2266 = fadd fast float %.i2263, %.i2260
  %.i0270 = fsub fast float %.i0258, %.i0261
  %.i1271 = fsub fast float %.i1259, %.i1262
  %.i2272 = fsub fast float %.i2260, %.i2263
  %FMax234 = call float @dx.op.binary.f32(i32 35, float %.i0270, float %.i1271)
  %FMax233 = call float @dx.op.binary.f32(i32 35, float %FMax234, float %.i2272)
  %FMin232 = call float @dx.op.binary.f32(i32 36, float %.i0264, float %.i1265)
  %FMin231 = call float @dx.op.binary.f32(i32 36, float %FMin232, float %.i2266)
  %FMax = call float @dx.op.binary.f32(i32 35, float %FMax233, float 0.000000e+00)
  %FMin = call float @dx.op.binary.f32(i32 36, float %FMin231, float %RayTCurrent)
  %96 = fcmp fast olt float %FMax, %FMin
  br i1 %96, label %97, label %372

; <label>:97                                      ; preds = %.backedge
  %98 = icmp slt i32 %83, 0
  br i1 %98, label %99, label %"\01?StackPush2@@YAXAIAH_NIII@Z.exit"

; <label>:99                                      ; preds = %97
  %100 = icmp eq i32 %currentBVHIndex.0, 0
  br i1 %100, label %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182", label %"\01?IsOpaque@@YA_N_NII@Z.exit"

"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182": ; preds = %99
  %101 = and i32 %83, 2147483647
  %102 = mul i32 %101, 112
  %103 = add i32 %48, %102
  %104 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %43)
  %105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %104, i32 %103, i32 undef)
  %106 = extractvalue %dx.types.ResRet.i32 %105, 0
  %107 = extractvalue %dx.types.ResRet.i32 %105, 1
  %108 = extractvalue %dx.types.ResRet.i32 %105, 2
  %109 = extractvalue %dx.types.ResRet.i32 %105, 3
  %110 = add i32 %103, 16
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %104, i32 %110, i32 undef)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = extractvalue %dx.types.ResRet.i32 %111, 1
  %114 = extractvalue %dx.types.ResRet.i32 %111, 2
  %115 = extractvalue %dx.types.ResRet.i32 %111, 3
  %116 = add i32 %103, 32
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %104, i32 %116, i32 undef)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = extractvalue %dx.types.ResRet.i32 %117, 1
  %120 = extractvalue %dx.types.ResRet.i32 %117, 2
  %121 = extractvalue %dx.types.ResRet.i32 %117, 3
  %122 = add i32 %103, 48
  %123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %104, i32 %122, i32 undef)
  %124 = extractvalue %dx.types.ResRet.i32 %123, 0
  %125 = extractvalue %dx.types.ResRet.i32 %123, 1
  %126 = extractvalue %dx.types.ResRet.i32 %123, 2
  %127 = extractvalue %dx.types.ResRet.i32 %123, 3
  %128 = add i32 %103, 64
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %104, i32 %128, i32 undef)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = extractvalue %dx.types.ResRet.i32 %129, 1
  %132 = extractvalue %dx.types.ResRet.i32 %129, 2
  %133 = extractvalue %dx.types.ResRet.i32 %129, 3
  %134 = add i32 %103, 80
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %104, i32 %134, i32 undef)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = extractvalue %dx.types.ResRet.i32 %135, 1
  %138 = extractvalue %dx.types.ResRet.i32 %135, 2
  %139 = extractvalue %dx.types.ResRet.i32 %135, 3
  %140 = add i32 %103, 96
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %104, i32 %140, i32 undef)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = extractvalue %dx.types.ResRet.i32 %141, 1
  %144 = extractvalue %dx.types.ResRet.i32 %141, 2
  %145 = extractvalue %dx.types.ResRet.i32 %141, 3
  %146 = bitcast i32 %106 to float
  %147 = bitcast i32 %107 to float
  %148 = bitcast i32 %108 to float
  %149 = bitcast i32 %109 to float
  %150 = bitcast i32 %112 to float
  %151 = bitcast i32 %113 to float
  %152 = bitcast i32 %114 to float
  %153 = bitcast i32 %115 to float
  %154 = bitcast i32 %118 to float
  %155 = bitcast i32 %119 to float
  %156 = bitcast i32 %120 to float
  %157 = bitcast i32 %121 to float
  %158 = and i32 %125, 16777215
  %159 = and i32 %124, 16777215
  %160 = lshr i32 %124, 24
  %161 = and i32 %160, %0
  %162 = icmp eq i32 %161, 0
  %163 = bitcast i32 %130 to float
  %164 = bitcast i32 %131 to float
  %165 = bitcast i32 %132 to float
  %166 = bitcast i32 %133 to float
  %167 = bitcast i32 %136 to float
  %168 = bitcast i32 %137 to float
  %169 = bitcast i32 %138 to float
  %170 = bitcast i32 %139 to float
  %171 = bitcast i32 %142 to float
  %172 = bitcast i32 %143 to float
  %173 = bitcast i32 %144 to float
  %174 = bitcast i32 %145 to float
  br i1 %162, label %372, label %175

; <label>:175                                     ; preds = %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182"
  store i32 0, i32 addrspace(3)* %66, align 4, !tbaa !158, !noalias !281
  %176 = lshr i32 %125, 24
  %177 = fmul fast float %WorldRayDirection, %146
  %FMad242 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection222, float %147, float %177)
  %FMad241 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection223, float %148, float %FMad242)
  %FMad240 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %149, float %FMad241)
  %178 = fmul fast float %WorldRayDirection, %150
  %FMad239 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection222, float %151, float %178)
  %FMad238 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection223, float %152, float %FMad239)
  %FMad237 = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %153, float %FMad238)
  %179 = fmul fast float %WorldRayDirection, %154
  %FMad236 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection222, float %155, float %179)
  %FMad235 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayDirection223, float %156, float %FMad236)
  %FMad = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %157, float %FMad235)
  %180 = fmul fast float %WorldRayOrigin, %146
  %FMad251 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin217, float %147, float %180)
  %FMad250 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin218, float %148, float %FMad251)
  %FMad249 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %149, float %FMad250)
  %181 = fmul fast float %WorldRayOrigin, %150
  %FMad248 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin217, float %151, float %181)
  %FMad247 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin218, float %152, float %FMad248)
  %FMad246 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %153, float %FMad247)
  %182 = fmul fast float %WorldRayOrigin, %154
  %FMad245 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin217, float %155, float %182)
  %FMad244 = call float @dx.op.tertiary.f32(i32 46, float %WorldRayOrigin218, float %156, float %FMad245)
  %FMad243 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %157, float %FMad244)
  store float %FMad240, float* %49, align 4
  store float %FMad237, float* %50, align 4
  store float %FMad, float* %51, align 4
  %.i0296 = fdiv fast float 1.000000e+00, %FMad240
  %.i1297 = fdiv fast float 1.000000e+00, %FMad237
  %.i2298 = fdiv fast float 1.000000e+00, %FMad
  %.i0299 = fmul fast float %.i0296, %FMad249
  %.i1300 = fmul fast float %.i1297, %FMad246
  %.i2301 = fmul fast float %.i2298, %FMad243
  %FAbs = call float @dx.op.unary.f32(i32 6, float %FMad240)
  %FAbs206 = call float @dx.op.unary.f32(i32 6, float %FMad237)
  %FAbs207 = call float @dx.op.unary.f32(i32 6, float %FMad)
  %183 = fcmp fast ogt float %FAbs, %FAbs206
  %184 = fcmp fast ogt float %FAbs, %FAbs207
  %185 = and i1 %183, %184
  br i1 %185, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3", label %186

; <label>:186                                     ; preds = %175
  %187 = fcmp fast ogt float %FAbs206, %FAbs207
  br i1 %187, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3", label %188

; <label>:188                                     ; preds = %186
  br label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3"

"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3": ; preds = %188, %186, %175
  %.0178 = phi i32 [ 2, %188 ], [ 0, %175 ], [ 1, %186 ]
  %189 = add nuw nsw i32 %.0178, 1
  %190 = urem i32 %189, 3
  %191 = add nuw nsw i32 %.0178, 2
  %192 = urem i32 %191, 3
  %193 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 %.0178
  %194 = load float, float* %193, align 4, !tbaa !151, !noalias !284
  %195 = fcmp fast olt float %194, 0.000000e+00
  %.5.0.i0 = select i1 %195, i32 %192, i32 %190
  %.5.0.i1 = select i1 %195, i32 %190, i32 %192
  %196 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 %.5.0.i0
  %197 = load float, float* %196, align 4, !tbaa !151, !noalias !284
  %198 = fdiv float %197, %194
  %199 = getelementptr [3 x float], [3 x float]* %8, i32 0, i32 %.5.0.i1
  %200 = load float, float* %199, align 4, !tbaa !151, !noalias !284
  %201 = fdiv float %200, %194
  %202 = fdiv float 1.000000e+00, %194
  store i32 1, i32* %52, align 4, !tbaa !158
  br label %372

"\01?IsOpaque@@YA_N_NII@Z.exit":                  ; preds = %99
  %RayFlags229 = call i32 @dx.op.rayFlags.i32(i32 144)
  %203 = and i32 %RayFlags229, 64
  %204 = icmp eq i32 %203, 0
  %205 = and i32 %83, 16777215
  %206 = and i32 %89, 1
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit", label %208

; <label>:208                                     ; preds = %"\01?IsOpaque@@YA_N_NII@Z.exit"
  %209 = add i32 %currentGpuVA.0.i0, 4
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %73, i32 %209, i32 undef)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = mul nuw nsw i32 %205, 36
  %213 = add i32 %212, %currentGpuVA.0.i0
  %214 = add i32 %213, %211
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %73, i32 %214, i32 undef)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = extractvalue %dx.types.ResRet.i32 %215, 1
  %218 = extractvalue %dx.types.ResRet.i32 %215, 2
  %219 = extractvalue %dx.types.ResRet.i32 %215, 3
  %.i0302 = bitcast i32 %216 to float
  %.i1303 = bitcast i32 %217 to float
  %.i2304 = bitcast i32 %218 to float
  %.i3305 = bitcast i32 %219 to float
  %220 = add i32 %214, 16
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %73, i32 %220, i32 undef)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = extractvalue %dx.types.ResRet.i32 %221, 1
  %224 = extractvalue %dx.types.ResRet.i32 %221, 2
  %225 = extractvalue %dx.types.ResRet.i32 %221, 3
  %.i0306 = bitcast i32 %222 to float
  %.i1307 = bitcast i32 %223 to float
  %.i2308 = bitcast i32 %224 to float
  %.i3309 = bitcast i32 %225 to float
  %226 = add i32 %214, 32
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %73, i32 %226, i32 undef)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = bitcast i32 %228 to float
  %230 = and i32 %instFlags.0, 1
  %231 = icmp eq i32 %230, 0
  %232 = shl i32 %instFlags.0, 3
  %233 = and i32 %232, 16
  %234 = add nuw nsw i32 %233, 16
  %235 = xor i32 %233, 16
  %236 = add nuw nsw i32 %235, 16
  %237 = and i32 %RayFlags229, %234
  %238 = icmp ne i32 %237, 0
  %239 = and i1 %231, %238
  %240 = and i32 %RayFlags229, %236
  %241 = icmp ne i32 %240, 0
  %242 = and i1 %231, %241
  %.i0310 = fsub fast float %.i0302, %currentRayData.0.0.i0
  %.i1311 = fsub fast float %.i1303, %currentRayData.0.0.i1
  %.i2312 = fsub fast float %.i2304, %currentRayData.0.0.i2
  store float %.i0310, float* %54, align 4
  store float %.i1311, float* %55, align 4
  store float %.i2312, float* %56, align 4
  %243 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %currentRayData.5.0.i0
  %244 = load float, float* %243, align 4, !tbaa !151, !noalias !287
  %245 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %currentRayData.5.0.i1
  %246 = load float, float* %245, align 4, !tbaa !151, !noalias !287
  %247 = getelementptr [3 x float], [3 x float]* %7, i32 0, i32 %currentRayData.5.0.i2
  %248 = load float, float* %247, align 4, !tbaa !151, !noalias !287
  %.i0313 = fsub fast float %.i3305, %currentRayData.0.0.i0
  %.i1314 = fsub fast float %.i0306, %currentRayData.0.0.i1
  %.i2315 = fsub fast float %.i1307, %currentRayData.0.0.i2
  store float %.i0313, float* %57, align 4
  store float %.i1314, float* %58, align 4
  store float %.i2315, float* %59, align 4
  %249 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 %currentRayData.5.0.i0
  %250 = load float, float* %249, align 4, !tbaa !151, !noalias !287
  %251 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 %currentRayData.5.0.i1
  %252 = load float, float* %251, align 4, !tbaa !151, !noalias !287
  %253 = getelementptr [3 x float], [3 x float]* %5, i32 0, i32 %currentRayData.5.0.i2
  %254 = load float, float* %253, align 4, !tbaa !151, !noalias !287
  %.i0316 = fsub fast float %.i2308, %currentRayData.0.0.i0
  %.i1317 = fsub fast float %.i3309, %currentRayData.0.0.i1
  %.i2318 = fsub fast float %229, %currentRayData.0.0.i2
  store float %.i0316, float* %60, align 4
  store float %.i1317, float* %61, align 4
  store float %.i2318, float* %62, align 4
  %255 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 %currentRayData.5.0.i0
  %256 = load float, float* %255, align 4, !tbaa !151, !noalias !287
  %257 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 %currentRayData.5.0.i1
  %258 = load float, float* %257, align 4, !tbaa !151, !noalias !287
  %259 = getelementptr [3 x float], [3 x float]* %6, i32 0, i32 %currentRayData.5.0.i2
  %260 = load float, float* %259, align 4, !tbaa !151, !noalias !287
  %.i0319 = fmul float %currentRayData.4.0.i0, %248
  %.i1320 = fmul float %currentRayData.4.0.i1, %248
  %.i0322 = fsub float %244, %.i0319
  %.i1323 = fsub float %246, %.i1320
  %.i0324 = fmul float %currentRayData.4.0.i0, %254
  %.i1325 = fmul float %currentRayData.4.0.i1, %254
  %.i0327 = fsub float %250, %.i0324
  %.i1328 = fsub float %252, %.i1325
  %.i0329 = fmul float %currentRayData.4.0.i0, %260
  %.i1330 = fmul float %currentRayData.4.0.i1, %260
  %.i0332 = fsub float %256, %.i0329
  %.i1333 = fsub float %258, %.i1330
  %261 = fmul float %.i1328, %.i0332
  %262 = fmul float %.i0327, %.i1333
  %263 = fsub float %261, %262
  %264 = fmul float %.i0322, %.i1333
  %265 = fmul float %.i1323, %.i0332
  %266 = fsub float %264, %265
  %267 = fmul float %.i1323, %.i0327
  %268 = fmul float %.i0322, %.i1328
  %269 = fsub float %267, %268
  %270 = fadd fast float %266, %269
  %271 = fadd fast float %270, %263
  br i1 %242, label %272, label %278

; <label>:272                                     ; preds = %208
  %273 = fcmp fast ogt float %263, 0.000000e+00
  %274 = fcmp fast ogt float %266, 0.000000e+00
  %275 = or i1 %273, %274
  %276 = fcmp fast ogt float %269, 0.000000e+00
  %277 = or i1 %276, %275
  %.old.old = fcmp fast oeq float %271, 0.000000e+00
  %or.cond188 = or i1 %277, %.old.old
  br i1 %or.cond188, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i", label %298

; <label>:278                                     ; preds = %208
  br i1 %239, label %279, label %285

; <label>:279                                     ; preds = %278
  %280 = fcmp fast olt float %263, 0.000000e+00
  %281 = fcmp fast olt float %266, 0.000000e+00
  %282 = or i1 %280, %281
  %283 = fcmp fast olt float %269, 0.000000e+00
  %284 = or i1 %283, %282
  %.old = fcmp fast oeq float %271, 0.000000e+00
  %or.cond187 = or i1 %284, %.old
  br i1 %or.cond187, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i", label %298

; <label>:285                                     ; preds = %278
  %286 = fcmp fast olt float %263, 0.000000e+00
  %287 = fcmp fast olt float %266, 0.000000e+00
  %288 = or i1 %286, %287
  %289 = fcmp fast olt float %269, 0.000000e+00
  %290 = or i1 %289, %288
  %291 = fcmp fast ogt float %263, 0.000000e+00
  %292 = fcmp fast ogt float %266, 0.000000e+00
  %293 = or i1 %291, %292
  %294 = fcmp fast ogt float %269, 0.000000e+00
  %295 = or i1 %294, %293
  %296 = and i1 %290, %295
  %297 = fcmp fast oeq float %271, 0.000000e+00
  %or.cond186 = or i1 %297, %296
  br i1 %or.cond186, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i", label %298

; <label>:298                                     ; preds = %285, %279, %272
  %299 = fmul fast float %263, %248
  %300 = fmul fast float %266, %254
  %301 = fmul fast float %269, %260
  %tmp = fadd fast float %300, %301
  %tmp423 = fadd fast float %tmp, %299
  %tmp424 = fmul fast float %tmp423, %currentRayData.4.0.i2
  br i1 %242, label %302, label %307

; <label>:302                                     ; preds = %298
  %303 = fcmp fast ogt float %tmp424, 0.000000e+00
  %304 = fmul fast float %271, %RayTCurrent
  %305 = fcmp fast olt float %tmp424, %304
  %306 = or i1 %303, %305
  br i1 %306, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i", label %324

; <label>:307                                     ; preds = %298
  br i1 %239, label %308, label %313

; <label>:308                                     ; preds = %307
  %309 = fcmp fast olt float %tmp424, 0.000000e+00
  %310 = fmul fast float %271, %RayTCurrent
  %311 = fcmp fast ogt float %tmp424, %310
  %312 = or i1 %309, %311
  br i1 %312, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i", label %324

; <label>:313                                     ; preds = %307
  %314 = fcmp fast ogt float %271, 0.000000e+00
  %315 = select i1 %314, i32 1, i32 -1
  %316 = bitcast float %tmp424 to i32
  %317 = xor i32 %316, %315
  %318 = uitofp i32 %317 to float
  %319 = bitcast float %271 to i32
  %320 = xor i32 %315, %319
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, %RayTCurrent
  %323 = fcmp fast ogt float %318, %322
  br i1 %323, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i", label %324

; <label>:324                                     ; preds = %313, %308, %302
  %325 = fdiv fast float 1.000000e+00, %271
  %326 = fmul fast float %325, %263
  %327 = fmul fast float %325, %266
  %328 = fmul fast float %325, %tmp424
  br label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i"

"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i": ; preds = %324, %313, %308, %302, %285, %279, %272
  %.1.i0 = phi float [ %.0180.i0, %272 ], [ %.0180.i0, %302 ], [ %326, %324 ], [ %.0180.i0, %308 ], [ %.0180.i0, %313 ], [ %.0180.i0, %279 ], [ %.0180.i0, %285 ]
  %.1.i1 = phi float [ %.0180.i1, %272 ], [ %.0180.i1, %302 ], [ %327, %324 ], [ %.0180.i1, %308 ], [ %.0180.i1, %313 ], [ %.0180.i1, %279 ], [ %.0180.i1, %285 ]
  %.0179 = phi float [ %RayTCurrent, %272 ], [ %RayTCurrent, %302 ], [ %328, %324 ], [ %RayTCurrent, %308 ], [ %RayTCurrent, %313 ], [ %RayTCurrent, %279 ], [ %RayTCurrent, %285 ]
  %329 = fcmp fast olt float %.0179, %RayTCurrent
  %RayTMin = call float @dx.op.rayTMin.f32(i32 153)
  %330 = fcmp fast ogt float %.0179, %RayTMin
  %331 = and i1 %329, %330
  %. = select i1 %331, i1 true, i1 false
  %.resultTriId.0 = select i1 %331, i32 %205, i32 %resultTriId.0
  %.0179.RayTCurrent = select i1 %331, float %.0179, float %RayTCurrent
  %.1.i0.resultBary.0.i0 = select i1 %331, float %.1.i0, float %resultBary.0.i0
  %.1.i1.resultBary.0.i1 = select i1 %331, float %.1.i1, float %resultBary.0.i1
  br label %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit"

"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit": ; preds = %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i", %"\01?IsOpaque@@YA_N_NII@Z.exit"
  %.2.i0 = phi float [ %.0180.i0, %"\01?IsOpaque@@YA_N_NII@Z.exit" ], [ %.1.i0, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i" ]
  %.2.i1 = phi float [ %.0180.i1, %"\01?IsOpaque@@YA_N_NII@Z.exit" ], [ %.1.i1, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i" ]
  %bIsIntersect.i.0 = phi i1 [ false, %"\01?IsOpaque@@YA_N_NII@Z.exit" ], [ %., %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i" ]
  %.0176 = phi i32 [ %resultTriId.0, %"\01?IsOpaque@@YA_N_NII@Z.exit" ], [ %.resultTriId.0, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i" ]
  %.0175 = phi float [ %RayTCurrent, %"\01?IsOpaque@@YA_N_NII@Z.exit" ], [ %.0179.RayTCurrent, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i" ]
  %.0.i0 = phi float [ %resultBary.0.i0, %"\01?IsOpaque@@YA_N_NII@Z.exit" ], [ %.1.i0.resultBary.0.i0, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i" ]
  %.0.i1 = phi float [ %resultBary.0.i1, %"\01?IsOpaque@@YA_N_NII@Z.exit" ], [ %.1.i1.resultBary.0.i1, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i" ]
  %332 = and i1 %204, %bIsIntersect.i.0
  br i1 %332, label %333, label %372

; <label>:333                                     ; preds = %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit"
  %.0.upto0 = insertelement <2 x float> undef, float %.0.i0, i32 0
  %.0 = insertelement <2 x float> %.0.upto0, float %.0.i1, i32 1
  %334 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %71, align 4, !noalias !295
  %335 = add i32 %currentGpuVA.0.i0, 8
  %336 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %334)
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %336, i32 %335, i32 undef)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = shl i32 %.0176, 3
  %340 = add i32 %339, %currentGpuVA.0.i0
  %341 = add i32 %340, %338
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %336, i32 %341, i32 undef)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = extractvalue %dx.types.ResRet.i32 %342, 1
  %345 = mul i32 %343, %2
  %346 = add i32 %instOffset.0, %1
  %347 = add i32 %346, %345
  store <2 x float> %.0, <2 x float>* %53, align 4, !tbaa !196
  call void @"\01?Fallback_SetPendingAttr@@YAXUBuiltInTriangleIntersectionAttributes@@@Z"(%struct.BuiltInTriangleIntersectionAttributes* nonnull %attr) #3
  call void @"\01?Fallback_SetPendingTriVals@@YAXMIIIII@Z"(float %.0175, i32 %344, i32 %347, i32 %instIdx.0, i32 %instId.0, i32 254) #3
  %348 = icmp eq i32 %ResetMatrices.0, 0
  br i1 %348, label %362, label %349

; <label>:349                                     ; preds = %333
  call void @"\01?Fallback_SetObjectRayOrigin@@YAXV?$vector@M$02@@@Z"(<3 x float> %currentRayData.0.0) #3
  call void @"\01?Fallback_SetObjectRayDirection@@YAXV?$vector@M$02@@@Z"(<3 x float> %currentRayData.1.0) #3
  %.upto0 = insertelement <4 x float> undef, float %CurrentWorldToObject174.0.i0, i32 0
  %.upto1 = insertelement <4 x float> %.upto0, float %CurrentWorldToObject174.0.i1, i32 1
  %.upto2 = insertelement <4 x float> %.upto1, float %CurrentWorldToObject174.0.i2, i32 2
  %350 = insertelement <4 x float> %.upto2, float %CurrentWorldToObject174.0.i3, i32 3
  %351 = insertvalue %class.matrix.float.3.4 undef, <4 x float> %350, 0, 0
  %.upto01 = insertelement <4 x float> undef, float %CurrentWorldToObject174.0.i4, i32 0
  %.upto12 = insertelement <4 x float> %.upto01, float %CurrentWorldToObject174.0.i5, i32 1
  %.upto23 = insertelement <4 x float> %.upto12, float %CurrentWorldToObject174.0.i6, i32 2
  %352 = insertelement <4 x float> %.upto23, float %CurrentWorldToObject174.0.i7, i32 3
  %353 = insertvalue %class.matrix.float.3.4 %351, <4 x float> %352, 0, 1
  %.upto04 = insertelement <4 x float> undef, float %CurrentWorldToObject174.0.i8, i32 0
  %.upto15 = insertelement <4 x float> %.upto04, float %CurrentWorldToObject174.0.i9, i32 1
  %.upto26 = insertelement <4 x float> %.upto15, float %CurrentWorldToObject174.0.i10, i32 2
  %354 = insertelement <4 x float> %.upto26, float %CurrentWorldToObject174.0.i11, i32 3
  %355 = insertvalue %class.matrix.float.3.4 %353, <4 x float> %354, 0, 2
  call void @"\01?Fallback_SetWorldToObject@@YAXV?$matrix@M$02$03@@@Z"(%class.matrix.float.3.4 %355) #3
  %.upto07 = insertelement <4 x float> undef, float %CurrentObjectToWorld173.0.i0, i32 0
  %.upto18 = insertelement <4 x float> %.upto07, float %CurrentObjectToWorld173.0.i1, i32 1
  %.upto29 = insertelement <4 x float> %.upto18, float %CurrentObjectToWorld173.0.i2, i32 2
  %356 = insertelement <4 x float> %.upto29, float %CurrentObjectToWorld173.0.i3, i32 3
  %357 = insertvalue %class.matrix.float.3.4 undef, <4 x float> %356, 0, 0
  %.upto010 = insertelement <4 x float> undef, float %CurrentObjectToWorld173.0.i4, i32 0
  %.upto111 = insertelement <4 x float> %.upto010, float %CurrentObjectToWorld173.0.i5, i32 1
  %.upto212 = insertelement <4 x float> %.upto111, float %CurrentObjectToWorld173.0.i6, i32 2
  %358 = insertelement <4 x float> %.upto212, float %CurrentObjectToWorld173.0.i7, i32 3
  %359 = insertvalue %class.matrix.float.3.4 %357, <4 x float> %358, 0, 1
  %.upto013 = insertelement <4 x float> undef, float %CurrentObjectToWorld173.0.i8, i32 0
  %.upto114 = insertelement <4 x float> %.upto013, float %CurrentObjectToWorld173.0.i9, i32 1
  %.upto215 = insertelement <4 x float> %.upto114, float %CurrentObjectToWorld173.0.i10, i32 2
  %360 = insertelement <4 x float> %.upto215, float %CurrentObjectToWorld173.0.i11, i32 3
  %361 = insertvalue %class.matrix.float.3.4 %359, <4 x float> %360, 0, 2
  call void @"\01?Fallback_SetObjectToWorld@@YAXV?$matrix@M$02$03@@@Z"(%class.matrix.float.3.4 %361) #3
  br label %362

; <label>:362                                     ; preds = %349, %333
  call void @"\01?Fallback_CommitHit@@YAXXZ"() #3
  %363 = and i32 %RayFlags229, 4
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %372, label %365

; <label>:365                                     ; preds = %362
  store i32 0, i32* %52, align 4, !tbaa !158
  store i32 0, i32* %38, align 4, !tbaa !158
  br label %372

"\01?StackPush2@@YAXAIAH_NIII@Z.exit":            ; preds = %97
  %366 = and i32 %83, 16777215
  store i32 %366, i32 addrspace(3)* %66, align 4, !tbaa !158, !noalias !300
  %367 = shl i32 %stackPointer.0, 6
  %368 = add i32 %367, %10
  %369 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %368
  store i32 %89, i32 addrspace(3)* %369, align 4, !tbaa !158, !noalias !300
  %370 = add nsw i32 %stackPointer.0, 1
  %371 = add i32 %69, 1
  store i32 %371, i32* %68, align 4, !tbaa !158
  br label %372

; <label>:372                                     ; preds = %"\01?StackPush2@@YAXAIAH_NIII@Z.exit", %365, %362, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit", %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3", %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182", %.backedge
  %.3.i0 = phi float [ %.0180.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %.0180.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %.2.i0, %365 ], [ %.2.i0, %362 ], [ %.2.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %.0180.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %.0180.i0, %.backedge ]
  %.3.i1 = phi float [ %.0180.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %.0180.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %.2.i1, %365 ], [ %.2.i1, %362 ], [ %.2.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %.0180.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %.0180.i1, %.backedge ]
  %currentRayData.0.1.i0 = phi float [ %FMad249, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.0.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.0.0.i0, %365 ], [ %currentRayData.0.0.i0, %362 ], [ %currentRayData.0.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.0.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.0.0.i0, %.backedge ]
  %currentRayData.0.1.i1 = phi float [ %FMad246, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.0.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.0.0.i1, %365 ], [ %currentRayData.0.0.i1, %362 ], [ %currentRayData.0.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.0.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.0.0.i1, %.backedge ]
  %currentRayData.0.1.i2 = phi float [ %FMad243, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.0.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.0.0.i2, %365 ], [ %currentRayData.0.0.i2, %362 ], [ %currentRayData.0.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.0.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.0.0.i2, %.backedge ]
  %currentRayData.1.1.i0 = phi float [ %FMad240, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.1.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.1.0.i0, %365 ], [ %currentRayData.1.0.i0, %362 ], [ %currentRayData.1.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.1.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.1.0.i0, %.backedge ]
  %currentRayData.1.1.i1 = phi float [ %FMad237, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.1.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.1.0.i1, %365 ], [ %currentRayData.1.0.i1, %362 ], [ %currentRayData.1.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.1.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.1.0.i1, %.backedge ]
  %currentRayData.1.1.i2 = phi float [ %FMad, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.1.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.1.0.i2, %365 ], [ %currentRayData.1.0.i2, %362 ], [ %currentRayData.1.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.1.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.1.0.i2, %.backedge ]
  %currentRayData.2.1.i0 = phi float [ %.i0296, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.2.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.2.0.i0, %365 ], [ %currentRayData.2.0.i0, %362 ], [ %currentRayData.2.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.2.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.2.0.i0, %.backedge ]
  %currentRayData.2.1.i1 = phi float [ %.i1297, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.2.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.2.0.i1, %365 ], [ %currentRayData.2.0.i1, %362 ], [ %currentRayData.2.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.2.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.2.0.i1, %.backedge ]
  %currentRayData.2.1.i2 = phi float [ %.i2298, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.2.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.2.0.i2, %365 ], [ %currentRayData.2.0.i2, %362 ], [ %currentRayData.2.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.2.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.2.0.i2, %.backedge ]
  %currentRayData.3.1.i0 = phi float [ %.i0299, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.3.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.3.0.i0, %365 ], [ %currentRayData.3.0.i0, %362 ], [ %currentRayData.3.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.3.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.3.0.i0, %.backedge ]
  %currentRayData.3.1.i1 = phi float [ %.i1300, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.3.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.3.0.i1, %365 ], [ %currentRayData.3.0.i1, %362 ], [ %currentRayData.3.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.3.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.3.0.i1, %.backedge ]
  %currentRayData.3.1.i2 = phi float [ %.i2301, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.3.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.3.0.i2, %365 ], [ %currentRayData.3.0.i2, %362 ], [ %currentRayData.3.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.3.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.3.0.i2, %.backedge ]
  %currentRayData.4.1.i0 = phi float [ %198, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.4.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.4.0.i0, %365 ], [ %currentRayData.4.0.i0, %362 ], [ %currentRayData.4.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.4.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.4.0.i0, %.backedge ]
  %currentRayData.4.1.i1 = phi float [ %201, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.4.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.4.0.i1, %365 ], [ %currentRayData.4.0.i1, %362 ], [ %currentRayData.4.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.4.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.4.0.i1, %.backedge ]
  %currentRayData.4.1.i2 = phi float [ %202, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.4.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.4.0.i2, %365 ], [ %currentRayData.4.0.i2, %362 ], [ %currentRayData.4.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.4.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.4.0.i2, %.backedge ]
  %currentRayData.5.1.i0 = phi i32 [ %.5.0.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.5.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.5.0.i0, %365 ], [ %currentRayData.5.0.i0, %362 ], [ %currentRayData.5.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.5.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.5.0.i0, %.backedge ]
  %currentRayData.5.1.i1 = phi i32 [ %.5.0.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.5.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.5.0.i1, %365 ], [ %currentRayData.5.0.i1, %362 ], [ %currentRayData.5.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.5.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.5.0.i1, %.backedge ]
  %currentRayData.5.1.i2 = phi i32 [ %.0178, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentRayData.5.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentRayData.5.0.i2, %365 ], [ %currentRayData.5.0.i2, %362 ], [ %currentRayData.5.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentRayData.5.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentRayData.5.0.i2, %.backedge ]
  %CurrentObjectToWorld173.1.i0 = phi float [ %163, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i0, %365 ], [ %CurrentObjectToWorld173.0.i0, %362 ], [ %CurrentObjectToWorld173.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i0, %.backedge ]
  %CurrentObjectToWorld173.1.i1 = phi float [ %164, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i1, %365 ], [ %CurrentObjectToWorld173.0.i1, %362 ], [ %CurrentObjectToWorld173.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i1, %.backedge ]
  %CurrentObjectToWorld173.1.i2 = phi float [ %165, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i2, %365 ], [ %CurrentObjectToWorld173.0.i2, %362 ], [ %CurrentObjectToWorld173.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i2, %.backedge ]
  %CurrentObjectToWorld173.1.i3 = phi float [ %166, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i3, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i3, %365 ], [ %CurrentObjectToWorld173.0.i3, %362 ], [ %CurrentObjectToWorld173.0.i3, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i3, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i3, %.backedge ]
  %CurrentObjectToWorld173.1.i4 = phi float [ %167, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i4, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i4, %365 ], [ %CurrentObjectToWorld173.0.i4, %362 ], [ %CurrentObjectToWorld173.0.i4, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i4, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i4, %.backedge ]
  %CurrentObjectToWorld173.1.i5 = phi float [ %168, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i5, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i5, %365 ], [ %CurrentObjectToWorld173.0.i5, %362 ], [ %CurrentObjectToWorld173.0.i5, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i5, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i5, %.backedge ]
  %CurrentObjectToWorld173.1.i6 = phi float [ %169, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i6, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i6, %365 ], [ %CurrentObjectToWorld173.0.i6, %362 ], [ %CurrentObjectToWorld173.0.i6, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i6, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i6, %.backedge ]
  %CurrentObjectToWorld173.1.i7 = phi float [ %170, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i7, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i7, %365 ], [ %CurrentObjectToWorld173.0.i7, %362 ], [ %CurrentObjectToWorld173.0.i7, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i7, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i7, %.backedge ]
  %CurrentObjectToWorld173.1.i8 = phi float [ %171, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i8, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i8, %365 ], [ %CurrentObjectToWorld173.0.i8, %362 ], [ %CurrentObjectToWorld173.0.i8, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i8, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i8, %.backedge ]
  %CurrentObjectToWorld173.1.i9 = phi float [ %172, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i9, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i9, %365 ], [ %CurrentObjectToWorld173.0.i9, %362 ], [ %CurrentObjectToWorld173.0.i9, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i9, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i9, %.backedge ]
  %CurrentObjectToWorld173.1.i10 = phi float [ %173, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i10, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i10, %365 ], [ %CurrentObjectToWorld173.0.i10, %362 ], [ %CurrentObjectToWorld173.0.i10, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i10, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i10, %.backedge ]
  %CurrentObjectToWorld173.1.i11 = phi float [ %174, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentObjectToWorld173.0.i11, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentObjectToWorld173.0.i11, %365 ], [ %CurrentObjectToWorld173.0.i11, %362 ], [ %CurrentObjectToWorld173.0.i11, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentObjectToWorld173.0.i11, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentObjectToWorld173.0.i11, %.backedge ]
  %CurrentWorldToObject174.1.i0 = phi float [ %146, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i0, %365 ], [ %CurrentWorldToObject174.0.i0, %362 ], [ %CurrentWorldToObject174.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i0, %.backedge ]
  %CurrentWorldToObject174.1.i1 = phi float [ %147, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i1, %365 ], [ %CurrentWorldToObject174.0.i1, %362 ], [ %CurrentWorldToObject174.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i1, %.backedge ]
  %CurrentWorldToObject174.1.i2 = phi float [ %148, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i2, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i2, %365 ], [ %CurrentWorldToObject174.0.i2, %362 ], [ %CurrentWorldToObject174.0.i2, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i2, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i2, %.backedge ]
  %CurrentWorldToObject174.1.i3 = phi float [ %149, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i3, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i3, %365 ], [ %CurrentWorldToObject174.0.i3, %362 ], [ %CurrentWorldToObject174.0.i3, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i3, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i3, %.backedge ]
  %CurrentWorldToObject174.1.i4 = phi float [ %150, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i4, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i4, %365 ], [ %CurrentWorldToObject174.0.i4, %362 ], [ %CurrentWorldToObject174.0.i4, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i4, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i4, %.backedge ]
  %CurrentWorldToObject174.1.i5 = phi float [ %151, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i5, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i5, %365 ], [ %CurrentWorldToObject174.0.i5, %362 ], [ %CurrentWorldToObject174.0.i5, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i5, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i5, %.backedge ]
  %CurrentWorldToObject174.1.i6 = phi float [ %152, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i6, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i6, %365 ], [ %CurrentWorldToObject174.0.i6, %362 ], [ %CurrentWorldToObject174.0.i6, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i6, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i6, %.backedge ]
  %CurrentWorldToObject174.1.i7 = phi float [ %153, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i7, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i7, %365 ], [ %CurrentWorldToObject174.0.i7, %362 ], [ %CurrentWorldToObject174.0.i7, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i7, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i7, %.backedge ]
  %CurrentWorldToObject174.1.i8 = phi float [ %154, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i8, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i8, %365 ], [ %CurrentWorldToObject174.0.i8, %362 ], [ %CurrentWorldToObject174.0.i8, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i8, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i8, %.backedge ]
  %CurrentWorldToObject174.1.i9 = phi float [ %155, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i9, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i9, %365 ], [ %CurrentWorldToObject174.0.i9, %362 ], [ %CurrentWorldToObject174.0.i9, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i9, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i9, %.backedge ]
  %CurrentWorldToObject174.1.i10 = phi float [ %156, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i10, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i10, %365 ], [ %CurrentWorldToObject174.0.i10, %362 ], [ %CurrentWorldToObject174.0.i10, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i10, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i10, %.backedge ]
  %CurrentWorldToObject174.1.i11 = phi float [ %157, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %CurrentWorldToObject174.0.i11, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %CurrentWorldToObject174.0.i11, %365 ], [ %CurrentWorldToObject174.0.i11, %362 ], [ %CurrentWorldToObject174.0.i11, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %CurrentWorldToObject174.0.i11, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %CurrentWorldToObject174.0.i11, %.backedge ]
  %ResetMatrices.2 = phi i32 [ %ResetMatrices.0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %ResetMatrices.0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ 0, %365 ], [ 0, %362 ], [ %ResetMatrices.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %ResetMatrices.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %ResetMatrices.0, %.backedge ]
  %currentBVHIndex.1 = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ 0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentBVHIndex.0, %365 ], [ %currentBVHIndex.0, %362 ], [ %currentBVHIndex.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentBVHIndex.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentBVHIndex.0, %.backedge ]
  %currentGpuVA.1.i0 = phi i32 [ %126, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentGpuVA.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentGpuVA.0.i0, %365 ], [ %currentGpuVA.0.i0, %362 ], [ %currentGpuVA.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentGpuVA.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentGpuVA.0.i0, %.backedge ]
  %currentGpuVA.1.i1 = phi i32 [ %127, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %currentGpuVA.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %currentGpuVA.0.i1, %365 ], [ %currentGpuVA.0.i1, %362 ], [ %currentGpuVA.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %currentGpuVA.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %currentGpuVA.0.i1, %.backedge ]
  %instIdx.1 = phi i32 [ %101, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %101, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %instIdx.0, %365 ], [ %instIdx.0, %362 ], [ %instIdx.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %instIdx.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %instIdx.0, %.backedge ]
  %instFlags.1 = phi i32 [ %176, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %instFlags.0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %instFlags.0, %365 ], [ %instFlags.0, %362 ], [ %instFlags.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %instFlags.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %instFlags.0, %.backedge ]
  %instOffset.1 = phi i32 [ %158, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %158, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %instOffset.0, %365 ], [ %instOffset.0, %362 ], [ %instOffset.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %instOffset.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %instOffset.0, %.backedge ]
  %instId.1 = phi i32 [ %159, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %159, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %instId.0, %365 ], [ %instId.0, %362 ], [ %instId.0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %instId.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %instId.0, %.backedge ]
  %stackPointer.1 = phi i32 [ %stackPointer.0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %63, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %63, %365 ], [ %63, %362 ], [ %63, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %370, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %63, %.backedge ]
  %resultBary.1.i0 = phi float [ %resultBary.0.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %resultBary.0.i0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %.0.i0, %365 ], [ %.0.i0, %362 ], [ %.0.i0, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %resultBary.0.i0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %resultBary.0.i0, %.backedge ]
  %resultBary.1.i1 = phi float [ %resultBary.0.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %resultBary.0.i1, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %.0.i1, %365 ], [ %.0.i1, %362 ], [ %.0.i1, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %resultBary.0.i1, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %resultBary.0.i1, %.backedge ]
  %resultTriId.1 = phi i32 [ %resultTriId.0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3" ], [ %resultTriId.0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit182" ], [ %.0176, %365 ], [ %.0176, %362 ], [ %.0176, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit" ], [ %resultTriId.0, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit" ], [ %resultTriId.0, %.backedge ]
  %373 = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess, i32 0, i32 %currentBVHIndex.1
  %374 = load i32, i32* %373, align 4, !tbaa !158
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %.backedge

; <label>:376                                     ; preds = %372
  %377 = add i32 %currentBVHIndex.1, -1
  %378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList, i32 0)
  %379 = extractvalue %dx.types.CBufRet.i32 %378, 0
  %380 = extractvalue %dx.types.CBufRet.i32 %378, 1
  %381 = load i32, i32* %38, align 4, !tbaa !158
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %.backedge

; <label>:383                                     ; preds = %376
  %InstanceIndex = call i32 @dx.op.instanceIndex.i32(i32 142)
  %384 = icmp ne i32 %InstanceIndex, -1
  ret i1 %384
}

; Function Attrs: alwaysinline nounwind readnone
define void @"\01?LogNoData@@YAXI@Z"(i32) #6 {
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define i1 @"\01?IsLeaf@@YA_NV?$vector@I$01@@@Z"(<2 x i32>) #6 {
  %2 = extractelement <2 x i32> %0, i32 0
  %3 = icmp slt i32 %2, 0
  ret i1 %3
}

; Function Attrs: alwaysinline nounwind
define void @"\01?StackPush2@@YAXAIAH_NIII@Z"(i32* noalias nocapture dereferenceable(4), i1 zeroext, i32, i32, i32) #5 {
  %. = select i1 %1, i32 %2, i32 %3
  %6 = select i1 %1, i32 %3, i32 %2
  %7 = load i32, i32* %0, align 4, !tbaa !158
  %8 = shl i32 %7, 6
  %9 = add i32 %8, %4
  %10 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %9
  store i32 %., i32 addrspace(3)* %10, align 4, !tbaa !158
  %11 = add i32 %4, 64
  %12 = add i32 %11, %8
  %13 = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %12
  store i32 %6, i32 addrspace(3)* %13, align 4, !tbaa !158
  %14 = add nsw i32 %7, 2
  store i32 %14, i32* %0, align 4, !tbaa !158
  ret void
}

; Function Attrs: alwaysinline nounwind readonly
define i32 @"\01?GetOffsetToTriangleMetadata@@YAHURWByteAddressBufferPointer@@@Z"(%struct.RWByteAddressBufferPointer* nocapture readonly) #7 {
  %2 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !158
  %4 = add i32 %3, 8
  %5 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 0
  %6 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %5, align 4
  %7 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %6)
  %8 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %4, i32 undef)
  %9 = extractvalue %dx.types.ResRet.i32 %8, 0
  %10 = add i32 %9, %3
  ret i32 %10
}

; Function Attrs: alwaysinline nounwind readnone
define i32 @"\01?GetLeafIndexFromFlag@@YAHV?$vector@I$01@@@Z"(<2 x i32>) #6 {
  %2 = extractelement <2 x i32> %0, i32 0
  %3 = and i32 %2, 2147483647
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind
define void @"\01?RawDataToBoundingBox@@YA?AUBoundingBox@@V?$vector@H$03@@0AIAV?$vector@I$01@@@Z"(%struct.BoundingBox* noalias nocapture sret, <4 x i32>, <4 x i32>, <2 x i32>* noalias nocapture dereferenceable(8)) #5 {
  %5 = extractelement <4 x i32> %1, i32 0
  %6 = bitcast i32 %5 to float
  %7 = insertelement <3 x float> undef, float %6, i32 0
  %8 = extractelement <4 x i32> %1, i32 1
  %9 = bitcast i32 %8 to float
  %10 = insertelement <3 x float> %7, float %9, i32 1
  %11 = extractelement <4 x i32> %1, i32 2
  %12 = bitcast i32 %11 to float
  %13 = insertelement <3 x float> %10, float %12, i32 2
  %14 = extractelement <4 x i32> %2, i32 0
  %15 = bitcast i32 %14 to float
  %16 = insertelement <3 x float> undef, float %15, i32 0
  %17 = extractelement <4 x i32> %2, i32 1
  %18 = bitcast i32 %17 to float
  %19 = insertelement <3 x float> %16, float %18, i32 1
  %20 = extractelement <4 x i32> %2, i32 2
  %21 = bitcast i32 %20 to float
  %22 = insertelement <3 x float> %19, float %21, i32 2
  %.upto0 = insertelement <2 x i32> undef, i32 %25, i32 0
  %23 = insertelement <2 x i32> %.upto0, i32 %24, i32 1
  %24 = extractelement <4 x i32> %2, i32 3
  %25 = extractelement <4 x i32> %1, i32 3
  store <2 x i32> %23, <2 x i32>* %3, align 4, !tbaa !196
  %26 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 0
  store <3 x float> %13, <3 x float>* %26, align 4
  %27 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %0, i32 0, i32 1
  store <3 x float> %22, <3 x float>* %27, align 4
  ret void
}

; Function Attrs: alwaysinline nounwind readonly
define i32 @"\01?GetOffsetToBoxes@@YAHURWByteAddressBufferPointer@@@Z"(%struct.RWByteAddressBufferPointer* nocapture readonly) #7 {
  %2 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !158
  %4 = getelementptr inbounds %struct.RWByteAddressBufferPointer, %struct.RWByteAddressBufferPointer* %0, i32 0, i32 0
  %5 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %4, align 4
  %6 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %5)
  %7 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3, i32 undef)
  %8 = extractvalue %dx.types.ResRet.i32 %7, 0
  %9 = add i32 %8, %3
  ret i32 %9
}

; Function Attrs: alwaysinline nounwind readnone
define i32 @"\01?PointerGetBufferStartOffset@@YAIV?$vector@I$01@@@Z"(<2 x i32>) #6 {
  %2 = extractelement <2 x i32> %0, i32 0
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind readonly
define <4 x i32> @"\01?Load4@@YA?AV?$vector@I$03@@V?$vector@I$01@@@Z"(<2 x i32>) #7 {
  %2 = extractelement <2 x i32> %0, i32 1
  %3 = getelementptr inbounds [0 x %struct.RWByteAddressBuffer], [0 x %struct.RWByteAddressBuffer]* @"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A", i32 0, i32 %2, !dx.nonuniform !163
  %4 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %3, align 4, !noalias !303
  %5 = extractelement <2 x i32> %0, i32 0
  %6 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %4)
  %7 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %5, i32 undef)
  %8 = extractvalue %dx.types.ResRet.i32 %7, 0
  %9 = insertelement <4 x i32> undef, i32 %8, i64 0
  %10 = extractvalue %dx.types.ResRet.i32 %7, 1
  %11 = insertelement <4 x i32> %9, i32 %10, i64 1
  %12 = extractvalue %dx.types.ResRet.i32 %7, 2
  %13 = insertelement <4 x i32> %11, i32 %12, i64 2
  %14 = extractvalue %dx.types.ResRet.i32 %7, 3
  %15 = insertelement <4 x i32> %13, i32 %14, i64 3
  ret <4 x i32> %15
}

; Function Attrs: alwaysinline nounwind readnone
define %class.matrix.float.3.4 @"\01?InverseAffineTransform@@YA?AV?$matrix@M$02$03@@V1@@Z"(%class.matrix.float.3.4) #6 {
  %2 = extractvalue %class.matrix.float.3.4 %0, 0, 0
  %3 = extractelement <4 x float> %2, i32 3
  %4 = extractelement <4 x float> %2, i32 2
  %5 = extractelement <4 x float> %2, i32 1
  %6 = extractelement <4 x float> %2, i32 0
  %7 = extractvalue %class.matrix.float.3.4 %0, 0, 1
  %8 = extractelement <4 x float> %7, i32 3
  %9 = extractelement <4 x float> %7, i32 2
  %10 = extractelement <4 x float> %7, i32 1
  %11 = extractelement <4 x float> %7, i32 0
  %12 = extractvalue %class.matrix.float.3.4 %0, 0, 2
  %13 = extractelement <4 x float> %12, i32 3
  %14 = extractelement <4 x float> %12, i32 2
  %15 = extractelement <4 x float> %12, i32 1
  %16 = extractelement <4 x float> %12, i32 0
  %17 = fmul fast float %6, %10
  %18 = fmul fast float %17, %14
  %19 = fmul fast float %6, %15
  %20 = fmul fast float %19, %9
  %21 = fsub fast float %18, %20
  %22 = fmul fast float %11, %5
  %23 = fmul fast float %22, %14
  %24 = fsub fast float %21, %23
  %25 = fmul fast float %11, %15
  %26 = fmul fast float %25, %4
  %27 = fadd fast float %24, %26
  %28 = fmul fast float %16, %5
  %29 = fmul fast float %28, %9
  %30 = fadd fast float %27, %29
  %31 = fmul fast float %16, %10
  %32 = fmul fast float %31, %4
  %33 = fsub fast float %30, %32
  %34 = fdiv fast float 1.000000e+00, %33
  %35 = fmul fast float %10, %14
  %36 = fmul fast float %9, %15
  %37 = fsub fast float %35, %36
  %38 = fmul fast float %37, %34
  %39 = fmul fast float %9, %16
  %40 = fmul fast float %11, %14
  %41 = fsub fast float %39, %40
  %42 = fmul fast float %41, %34
  %43 = fsub fast float %25, %31
  %44 = fmul fast float %43, %34
  %45 = fmul fast float %15, %4
  %46 = fmul fast float %14, %5
  %47 = fsub fast float %45, %46
  %48 = fmul fast float %47, %34
  %49 = fmul fast float %14, %6
  %50 = fmul fast float %16, %4
  %51 = fsub fast float %49, %50
  %52 = fmul fast float %51, %34
  %53 = fsub fast float %28, %19
  %54 = fmul fast float %53, %34
  %55 = fmul fast float %5, %9
  %56 = fmul fast float %4, %10
  %57 = fsub fast float %55, %56
  %58 = fmul fast float %57, %34
  %59 = fmul fast float %4, %11
  %60 = fmul fast float %6, %9
  %61 = fsub fast float %59, %60
  %62 = fmul fast float %61, %34
  %63 = fsub fast float %17, %22
  %64 = fmul fast float %63, %34
  %65 = fmul fast float %14, %8
  %66 = fmul fast float %9, %13
  %67 = fsub fast float %65, %66
  %68 = fmul fast float %67, %5
  %69 = fmul fast float %4, %13
  %70 = fmul fast float %14, %3
  %71 = fsub fast float %69, %70
  %72 = fmul fast float %71, %10
  %73 = fadd fast float %68, %72
  %74 = fmul fast float %9, %3
  %75 = fmul fast float %4, %8
  %76 = fsub fast float %74, %75
  %77 = fmul fast float %76, %15
  %78 = fadd fast float %73, %77
  %79 = fmul fast float %78, %34
  %80 = fmul fast float %16, %8
  %81 = fmul fast float %11, %13
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %82, %4
  %84 = fmul fast float %6, %13
  %85 = fmul fast float %16, %3
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %86, %9
  %88 = fadd fast float %83, %87
  %89 = fmul fast float %11, %3
  %90 = fmul fast float %6, %8
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %91, %14
  %93 = fadd fast float %88, %92
  %94 = fmul fast float %93, %34
  %95 = fsub fast float %31, %25
  %96 = fmul fast float %95, %3
  %97 = fsub fast float %19, %28
  %98 = fmul fast float %97, %8
  %99 = fadd fast float %96, %98
  %100 = fsub fast float %22, %17
  %101 = fmul fast float %100, %13
  %102 = fadd fast float %99, %101
  %103 = fmul fast float %102, %34
  %.upto025 = insertelement <4 x float> undef, float %38, i32 0
  %.upto126 = insertelement <4 x float> %.upto025, float %48, i32 1
  %.upto227 = insertelement <4 x float> %.upto126, float %58, i32 2
  %104 = insertelement <4 x float> %.upto227, float %79, i32 3
  %105 = insertvalue %class.matrix.float.3.4 undef, <4 x float> %104, 0, 0
  %.upto029 = insertelement <4 x float> undef, float %42, i32 0
  %.upto130 = insertelement <4 x float> %.upto029, float %52, i32 1
  %.upto231 = insertelement <4 x float> %.upto130, float %62, i32 2
  %106 = insertelement <4 x float> %.upto231, float %94, i32 3
  %107 = insertvalue %class.matrix.float.3.4 %105, <4 x float> %106, 0, 1
  %.upto033 = insertelement <4 x float> undef, float %44, i32 0
  %.upto134 = insertelement <4 x float> %.upto033, float %54, i32 1
  %.upto235 = insertelement <4 x float> %.upto134, float %64, i32 2
  %108 = insertelement <4 x float> %.upto235, float %103, i32 3
  %109 = insertvalue %class.matrix.float.3.4 %107, <4 x float> %108, 0, 2
  ret %class.matrix.float.3.4 %109
}

; Function Attrs: alwaysinline nounwind
define void @"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z"(%struct.RayData* noalias nocapture sret, <3 x float>, <3 x float>) #5 {
  %rayOrigin.i0 = extractelement <3 x float> %1, i32 0
  %rayOrigin.i1 = extractelement <3 x float> %1, i32 1
  %rayOrigin.i2 = extractelement <3 x float> %1, i32 2
  %4 = alloca [3 x float], align 4
  %5 = extractelement <3 x float> %2, i64 0
  %6 = getelementptr inbounds [3 x float], [3 x float]* %4, i32 0, i32 0
  store float %5, float* %6, align 4
  %7 = extractelement <3 x float> %2, i64 1
  %8 = getelementptr inbounds [3 x float], [3 x float]* %4, i32 0, i32 1
  store float %7, float* %8, align 4
  %9 = extractelement <3 x float> %2, i64 2
  %10 = getelementptr inbounds [3 x float], [3 x float]* %4, i32 0, i32 2
  store float %9, float* %10, align 4
  %.i0 = fdiv fast float 1.000000e+00, %5
  %.i1 = fdiv fast float 1.000000e+00, %7
  %.i2 = fdiv fast float 1.000000e+00, %9
  %.upto0 = insertelement <3 x float> undef, float %.i0, i32 0
  %.upto1 = insertelement <3 x float> %.upto0, float %.i1, i32 1
  %11 = insertelement <3 x float> %.upto1, float %.i2, i32 2
  %.i03 = fmul fast float %.i0, %rayOrigin.i0
  %.i14 = fmul fast float %.i1, %rayOrigin.i1
  %.i25 = fmul fast float %.i2, %rayOrigin.i2
  %.upto06 = insertelement <3 x float> undef, float %.i03, i32 0
  %.upto17 = insertelement <3 x float> %.upto06, float %.i14, i32 1
  %12 = insertelement <3 x float> %.upto17, float %.i25, i32 2
  %FAbs = call float @dx.op.unary.f32(i32 6, float %5)
  %FAbs1 = call float @dx.op.unary.f32(i32 6, float %7)
  %FAbs2 = call float @dx.op.unary.f32(i32 6, float %9)
  %13 = fcmp fast ogt float %FAbs, %FAbs1
  %14 = fcmp fast ogt float %FAbs, %FAbs2
  %15 = and i1 %13, %14
  br i1 %15, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit", label %16

; <label>:16                                      ; preds = %3
  %17 = fcmp fast ogt float %FAbs1, %FAbs2
  br i1 %17, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit", label %18

; <label>:18                                      ; preds = %16
  br label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit"

"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit": ; preds = %18, %16, %3
  %.0 = phi i32 [ 2, %18 ], [ 0, %3 ], [ 1, %16 ]
  %19 = add nuw nsw i32 %.0, 1
  %20 = urem i32 %19, 3
  %21 = add nuw nsw i32 %.0, 2
  %22 = urem i32 %21, 3
  %23 = getelementptr [3 x float], [3 x float]* %4, i32 0, i32 %.0
  %24 = load float, float* %23, align 4, !tbaa !151
  %25 = fcmp fast olt float %24, 0.000000e+00
  %.5.0.i0 = select i1 %25, i32 %22, i32 %20
  %.5.0.i1 = select i1 %25, i32 %20, i32 %22
  %.5.0.upto0 = insertelement <3 x i32> undef, i32 %.5.0.i0, i32 0
  %.5.0.upto1 = insertelement <3 x i32> %.5.0.upto0, i32 %.5.0.i1, i32 1
  %.5.0 = insertelement <3 x i32> %.5.0.upto1, i32 %.0, i32 2
  %26 = getelementptr [3 x float], [3 x float]* %4, i32 0, i32 %.5.0.i0
  %27 = load float, float* %26, align 4, !tbaa !151
  %28 = fdiv fast float %27, %24
  %29 = getelementptr [3 x float], [3 x float]* %4, i32 0, i32 %.5.0.i1
  %30 = load float, float* %29, align 4, !tbaa !151
  %31 = fdiv fast float %30, %24
  %32 = fdiv fast float 1.000000e+00, %24
  %33 = insertelement <3 x float> undef, float %28, i64 0
  %34 = insertelement <3 x float> %33, float %31, i64 1
  %35 = insertelement <3 x float> %34, float %32, i64 2
  %36 = getelementptr inbounds %struct.RayData, %struct.RayData* %0, i32 0, i32 0
  store <3 x float> %1, <3 x float>* %36, align 4
  %37 = getelementptr inbounds %struct.RayData, %struct.RayData* %0, i32 0, i32 1
  store <3 x float> %2, <3 x float>* %37, align 4
  %38 = getelementptr inbounds %struct.RayData, %struct.RayData* %0, i32 0, i32 2
  store <3 x float> %11, <3 x float>* %38, align 4
  %39 = getelementptr inbounds %struct.RayData, %struct.RayData* %0, i32 0, i32 3
  store <3 x float> %12, <3 x float>* %39, align 4
  %40 = getelementptr inbounds %struct.RayData, %struct.RayData* %0, i32 0, i32 4
  store <3 x float> %35, <3 x float>* %40, align 4
  %41 = getelementptr inbounds %struct.RayData, %struct.RayData* %0, i32 0, i32 5
  store <3 x i32> %.5.0, <3 x i32>* %41, align 4
  ret void
}

; Function Attrs: alwaysinline
define void @main() #8 {
  %1 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?RayGenShaderTable@@3UByteAddressBuffer@@A", align 4
  %2 = load %Constants, %Constants* @Constants, align 4
  %Constants = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.Constants(i32 160, %Constants %2)
  %3 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %1)
  %4 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 undef)
  %5 = extractvalue %dx.types.ResRet.i32 %4, 0
  %6 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %Constants, i32 0)
  %7 = extractvalue %dx.types.CBufRet.i32 %6, 1
  %8 = extractvalue %dx.types.CBufRet.i32 %6, 0
  call void @"\01?Fallback_Scheduler@@YAXHII@Z"(i32 %5, i32 %8, i32 %7) #3
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?Fallback_AcceptHitAndEndSearch@@YAXXZ"() #5 {
  call void @"\01?Fallback_SetAnyHitResult@@YAXH@Z"(i32 -1) #3
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?swap@@YAXAIAH0@Z"(i32* noalias nocapture dereferenceable(4), i32* noalias nocapture dereferenceable(4)) #5 {
  %3 = load i32, i32* %0, align 4, !tbaa !158
  %4 = load i32, i32* %1, align 4, !tbaa !158
  store i32 %4, i32* %0, align 4, !tbaa !158
  store i32 %3, i32* %1, align 4, !tbaa !158
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define i32 @"\01?GetTriangleMetadataAddress@@YAIII@Z"(i32, i32) #6 {
  %3 = shl i32 %1, 3
  %4 = add i32 %3, %0
  ret i32 %4
}

; Function Attrs: alwaysinline nounwind
define void @"\01?WriteOnlyFlagToBuffer@@YAXURWByteAddressBuffer@@IIV?$vector@I$01@@@Z"(%struct.RWByteAddressBuffer* nocapture readonly, i32, i32, <2 x i32>) #5 {
  %5 = shl i32 %2, 5
  %6 = add i32 %5, %1
  %7 = extractelement <2 x i32> %3, i32 0
  %8 = add i32 %6, 12
  %9 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %10 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %9)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %10, i32 %8, i32 undef, i32 %7, i32 undef, i32 undef, i32 undef, i8 1)
  %11 = extractelement <2 x i32> %3, i32 1
  %12 = add i32 %6, 28
  %13 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %14 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %13)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %14, i32 %12, i32 undef, i32 %11, i32 undef, i32 undef, i32 undef, i8 1)
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?WriteBoxToBuffer@@YAXURWByteAddressBuffer@@IIUBoundingBox@@V?$vector@I$01@@@Z"(%struct.RWByteAddressBuffer* nocapture readonly, i32, i32, %struct.BoundingBox* nocapture readonly, <2 x i32>) #5 {
  %6 = shl i32 %2, 5
  %7 = add i32 %6, %1
  %8 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %3, i32 0, i32 0
  %9 = load <3 x float>, <3 x float>* %8, align 4, !noalias !306
  %10 = extractelement <3 x float> %9, i32 0
  %11 = bitcast float %10 to i32
  %12 = extractelement <3 x float> %9, i32 1
  %13 = bitcast float %12 to i32
  %14 = extractelement <3 x float> %9, i32 2
  %15 = bitcast float %14 to i32
  %16 = extractelement <2 x i32> %4, i32 0
  %17 = getelementptr inbounds %struct.BoundingBox, %struct.BoundingBox* %3, i32 0, i32 1
  %18 = load <3 x float>, <3 x float>* %17, align 4, !noalias !306
  %19 = extractelement <3 x float> %18, i32 0
  %20 = bitcast float %19 to i32
  %21 = extractelement <3 x float> %18, i32 1
  %22 = bitcast float %21 to i32
  %23 = extractelement <3 x float> %18, i32 2
  %24 = bitcast float %23 to i32
  %25 = extractelement <2 x i32> %4, i32 1
  %26 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %27 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %26)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %27, i32 %7, i32 undef, i32 %11, i32 %13, i32 %15, i32 %16, i8 15)
  %28 = add i32 %7, 16
  %29 = load %struct.RWByteAddressBuffer, %struct.RWByteAddressBuffer* %0, align 4
  %30 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.RWByteAddressBuffer(i32 160, %struct.RWByteAddressBuffer %29)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %30, i32 %28, i32 undef, i32 %20, i32 %22, i32 %24, i32 %25, i8 15)
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define void @"\01?LogTraceRayStart@@YAXXZ"() #6 {
  ret void
}

; Function Attrs: alwaysinline nounwind readnone
define void @"\01?LogInt2@@YAXV?$vector@H$01@@@Z"(<2 x i32>) #6 {
  ret void
}

; Function Attrs: alwaysinline nounwind
define void @"\01?main@@YAXV?$vector@I$02@@I@Z"(<3 x i32>, i32) #5 {
  %3 = load %struct.ByteAddressBuffer, %struct.ByteAddressBuffer* @"\01?RayGenShaderTable@@3UByteAddressBuffer@@A", align 4
  %4 = load %Constants, %Constants* @Constants, align 4
  %Constants = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.Constants(i32 160, %Constants %4)
  %5 = call %dx.types.Handle @dx.op.createHandleFromResourceStructForLib.struct.ByteAddressBuffer(i32 160, %struct.ByteAddressBuffer %3)
  %6 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)
  %7 = extractvalue %dx.types.ResRet.i32 %6, 0
  %8 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %Constants, i32 0)
  %9 = extractvalue %dx.types.CBufRet.i32 %8, 1
  %10 = extractvalue %dx.types.CBufRet.i32 %8, 0
  call void @"\01?Fallback_Scheduler@@YAXHII@Z"(i32 %7, i32 %10, i32 %9) #3
  ret void
}

; Function Attrs: alwaysinline nounwind readonly
define i32 @"\01?GetInstanceID@@YAIURaytracingInstanceDesc@@@Z"(%struct.RaytracingInstanceDesc* nocapture readonly) #7 {
  %2 = getelementptr inbounds %struct.RaytracingInstanceDesc, %struct.RaytracingInstanceDesc* %0, i32 0, i32 1
  %3 = load i32, i32* %2, align 4, !tbaa !158
  %4 = and i32 %3, 16777215
  ret i32 %4
}

attributes #0 = { alwaysinline "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="0" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind }
attributes #4 = { alwaysinline nounwind "disable-tail-calls"="false" "exp-shader"="internal" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="0" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="0" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { alwaysinline nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="0" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { alwaysinline nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-realign-stack" "stack-protector-buffer-size"="0" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { alwaysinline }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2}
!dx.version = !{!3}
!dx.valver = !{!4}
!dx.shaderModel = !{!5}
!dx.resources = !{!6}
!dx.typeAnnotations = !{!20, !67}
!dx.entryPoints = !{!145}
!dx.func.props = !{!146, !147, !148, !149}
!dx.func.signatures = !{!150}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, i32 1}
!4 = !{i32 1, i32 2}
!5 = !{!"lib", i32 6, i32 1}
!6 = !{!7, !13, !17, null}
!7 = !{!8, !9, !11, !12}
!8 = !{i32 0, %struct.ByteAddressBuffer* @"\01?HitGroupShaderTable@@3UByteAddressBuffer@@A", !"HitGroupShaderTable", i32 214743647, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 1, %struct.RaytracingAccelerationStructure* @"\01?Scene@@3URaytracingAccelerationStructure@@A", !"Scene", i32 0, i32 0, i32 1, i32 16, i32 0, !10}
!10 = !{i32 0, i32 4}
!11 = !{i32 2, %struct.ByteAddressBuffer* @"\01?RayGenShaderTable@@3UByteAddressBuffer@@A", !"RayGenShaderTable", i32 214743647, i32 2, i32 1, i32 11, i32 0, null}
!12 = !{i32 3, %struct.ByteAddressBuffer* @"\01?MissShaderTable@@3UByteAddressBuffer@@A", !"MissShaderTable", i32 214743647, i32 1, i32 1, i32 11, i32 0, null}
!13 = !{!14, !16}
!14 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* @"\01?uavOutput@@3V?$RWTexture2D@V?$vector@M$03@@@@A", !"uavOutput", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !15}
!15 = !{i32 0, i32 9}
!16 = !{i32 1, [0 x %struct.RWByteAddressBuffer]* @"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A", !"DescriptorHeapBufferTable", i32 214743648, i32 0, i32 -1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{!18, !19}
!18 = !{i32 0, %AccelerationStructureList* @AccelerationStructureList, !"AccelerationStructureList", i32 214743647, i32 1, i32 1, i32 8, null}
!19 = !{i32 1, %Constants* @Constants, !"Constants", i32 214743647, i32 0, i32 1, i32 32, null}
!20 = !{i32 0, %struct.RaytracingInstanceDesc undef, !21, %struct.ByteAddressBuffer undef, !26, %struct.RWByteAddressBufferPointer undef, !28, %struct.RWByteAddressBuffer undef, !26, %struct.BVHMetadata undef, !31, %struct.BoundingBox undef, !34, %struct.TriangleMetaData undef, !37, %struct.AABB undef, !40, %struct.HitData undef, !43, %struct.BuiltInTriangleIntersectionAttributes undef, !45, %struct.RayData undef, !47, %AccelerationStructureList undef, !54, %Constants undef, !56, %"class.RWTexture2D<vector<float, 4> >" undef, !65, %struct.RaytracingAccelerationStructure undef, !26}
!21 = !{i32 64, !22, !23, !24, !25}
!22 = !{i32 6, !"Transform", i32 3, i32 0, i32 7, i32 9}
!23 = !{i32 6, !"InstanceIDAndMask", i32 3, i32 48, i32 7, i32 5}
!24 = !{i32 6, !"InstanceContributionToHitGroupIndexAndFlags", i32 3, i32 52, i32 7, i32 5}
!25 = !{i32 6, !"AccelerationStructure", i32 3, i32 56, i32 7, i32 5}
!26 = !{i32 4, !27}
!27 = !{i32 6, !"h", i32 3, i32 0, i32 7, i32 4}
!28 = !{i32 8, !29, !30}
!29 = !{i32 6, !"buffer", i32 3, i32 0}
!30 = !{i32 6, !"offsetInBytes", i32 3, i32 4, i32 7, i32 5}
!31 = !{i32 112, !32, !33}
!32 = !{i32 6, !"instanceDesc", i32 3, i32 0}
!33 = !{i32 6, !"ObjectToWorld", i32 3, i32 64, i32 7, i32 9}
!34 = !{i32 28, !35, !36}
!35 = !{i32 6, !"center", i32 3, i32 0, i32 7, i32 9}
!36 = !{i32 6, !"halfDim", i32 3, i32 16, i32 7, i32 9}
!37 = !{i32 8, !38, !39}
!38 = !{i32 6, !"GeometryContributionToHitGroupIndex", i32 3, i32 0, i32 7, i32 5}
!39 = !{i32 6, !"PrimitiveIndex", i32 3, i32 4, i32 7, i32 5}
!40 = !{i32 28, !41, !42}
!41 = !{i32 6, !"min", i32 3, i32 0, i32 7, i32 9}
!42 = !{i32 6, !"max", i32 3, i32 16, i32 7, i32 9}
!43 = !{i32 4, !44}
!44 = !{i32 6, !"index", i32 3, i32 0, i32 4, !"INDEX", i32 7, i32 5}
!45 = !{i32 8, !46}
!46 = !{i32 6, !"barycentrics", i32 3, i32 0, i32 7, i32 9}
!47 = !{i32 92, !48, !49, !50, !51, !52, !53}
!48 = !{i32 6, !"Origin", i32 3, i32 0, i32 7, i32 9}
!49 = !{i32 6, !"Direction", i32 3, i32 16, i32 7, i32 9}
!50 = !{i32 6, !"InverseDirection", i32 3, i32 32, i32 7, i32 9}
!51 = !{i32 6, !"OriginTimesRayInverseDirection", i32 3, i32 48, i32 7, i32 9}
!52 = !{i32 6, !"Shear", i32 3, i32 64, i32 7, i32 9}
!53 = !{i32 6, !"SwizzledIndices", i32 3, i32 80, i32 7, i32 4}
!54 = !{i32 8, !55}
!55 = !{i32 6, !"TopLevelAccelerationStructureGpuVA", i32 3, i32 0, i32 7, i32 5}
!56 = !{i32 32, !57, !58, !59, !60, !61, !62, !63, !64}
!57 = !{i32 6, !"RayDispatchDimensionsWidth", i32 3, i32 0, i32 7, i32 5}
!58 = !{i32 6, !"RayDispatchDimensionsHeight", i32 3, i32 4, i32 7, i32 5}
!59 = !{i32 6, !"HitGroupShaderRecordStride", i32 3, i32 8, i32 7, i32 5}
!60 = !{i32 6, !"MissShaderRecordStride", i32 3, i32 12, i32 7, i32 5}
!61 = !{i32 6, !"SamplerDescriptorHeapStartLo", i32 3, i32 16, i32 7, i32 5}
!62 = !{i32 6, !"SamplerDescriptorHeapStartHi", i32 3, i32 20, i32 7, i32 5}
!63 = !{i32 6, !"SrvCbvUavDescriptorHeapStartLo", i32 3, i32 24, i32 7, i32 5}
!64 = !{i32 6, !"SrvCbvUavDescriptorHeapStartHi", i32 3, i32 28, i32 7, i32 5}
!65 = !{i32 16, !66}
!66 = !{i32 6, !"h", i32 3, i32 0, i32 7, i32 9}
!67 = !{i32 1, void (i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, i32)* @"\01?Fallback_TraceRay@@YAXIIIIIMMMMMMMMI@Z", !68, void (%struct.RaytracingInstanceDesc*, %struct.ByteAddressBuffer*, i32)* @"\01?LoadRaytracingInstanceDesc@@YA?AURaytracingInstanceDesc@@UByteAddressBuffer@@I@Z", !75, <2 x i32> (<2 x i32>, i32)* @"\01?PointerAdd@@YA?AV?$vector@I$01@@V1@I@Z", !77, void (%struct.RWByteAddressBufferPointer*, %struct.RWByteAddressBuffer*, i32)* @"\01?CreateRWByteAddressBufferPointer@@YA?AURWByteAddressBufferPointer@@URWByteAddressBuffer@@I@Z", !75, %class.matrix.float.3.4 ([3 x <4 x float>]*)* @"\01?CreateMatrix@@YA?AV?$matrix@M$02$03@@Y02V?$vector@M$03@@@Z", !79, i32 (<2 x i32>)* @"\01?GetLeftNodeIndex@@YAIV?$vector@I$01@@@Z", !83, void (%struct.BVHMetadata*, %struct.RWByteAddressBuffer*, i32)* @"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z", !75, void (%struct.RWByteAddressBuffer*, <2 x i32>)* @"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z", !84, void (%struct.BoundingBox*, %struct.RWByteAddressBuffer*, i32, i32)* @"\01?GetBoxFromBuffer@@YA?AUBoundingBox@@URWByteAddressBuffer@@II@Z", !85, float (%class.matrix.float.3.4)* @"\01?Determinant@@YAMV?$matrix@M$02$03@@@Z", !86, i1 (i1, i32)* @"\01?Cull@@YA_N_NI@Z", !89, void (%struct.BoundingBox*, %struct.RWByteAddressBufferPointer*, i32, <2 x i32>*)* @"\01?BVHReadBoundingBox@@YA?AUBoundingBox@@URWByteAddressBufferPointer@@HAIAV?$vector@I$01@@@Z", !93, void (i32*, i32, i32)* @"\01?StackPush@@YAXAIAHII@Z", !96, void (%struct.RWByteAddressBufferPointer*, <3 x float>*, <3 x float>*, <3 x float>*, i32)* @"\01?BVHReadTriangle@@YAXURWByteAddressBufferPointer@@AIAV?$vector@M$02@@11I@Z", !98, i32 (i32, i32, i32, i32)* @"\01?Traverse@@YAHIIII@Z", !99, i32 (<3 x float>)* @"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z", !101, void ()* @"\01?LogTraceRayEnd@@YAXXZ", !102, void (%struct.RaytracingInstanceDesc*, <4 x i32>, <4 x i32>, <4 x i32>, <4 x i32>)* @"\01?RawDataToRaytracingInstanceDesc@@YA?AURaytracingInstanceDesc@@V?$vector@I$03@@000@Z", !103, <2 x i32> (i32, i32)* @"\01?CreateFlag@@YA?AV?$vector@I$01@@II@Z", !77, <3 x float> (%struct.BoundingBox*)* @"\01?GetMinCorner@@YA?AV?$vector@M$02@@UBoundingBox@@@Z", !104, void (i32)* @"\01?LogInt@@YAXH@Z", !105, void (%struct.TriangleMetaData*, %struct.RWByteAddressBufferPointer*, i32)* @"\01?BVHReadTriangleMetadata@@YA?AUTriangleMetaData@@URWByteAddressBufferPointer@@H@Z", !106, void (%struct.BoundingBox*, %struct.BoundingBox*, i32, %struct.BoundingBox*, i32, <2 x i32>*)* @"\01?GetBoxFromChildBoxes@@YA?AUBoundingBox@@U1@H0HAIAV?$vector@I$01@@@Z", !107, void (%struct.BoundingBox*, <2 x i32>)* @"\01?dump@@YAXUBoundingBox@@V?$vector@I$01@@@Z", !108, void (%struct.AABB*, %struct.BoundingBox*)* @"\01?BoundingBoxToAABB@@YA?AUAABB@@UBoundingBox@@@Z", !109, i1 (%struct.RWByteAddressBufferPointer*, <2 x i32>, i32, <3 x float>, <3 x float>, <3 x i32>, <3 x float>, <2 x float>*, float*, i32*)* @"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z", !110, void (<3 x i32>)* @"\01?LogInt3@@YAXV?$vector@H$02@@@Z", !105, i32 (<2 x i32>)* @"\01?GetRightNodeIndex@@YAIV?$vector@I$01@@@Z", !83, i32 (%struct.RWByteAddressBufferPointer*)* @"\01?GetOffsetToVertices@@YAHURWByteAddressBufferPointer@@@Z", !113, float (i32, i32)* @"\01?ComputeCullFaceDir@@YAMII@Z", !114, i32 (%struct.RaytracingInstanceDesc*)* @"\01?GetInstanceMask@@YAIURaytracingInstanceDesc@@@Z", !115, void ()* @"\01?Fallback_IgnoreHit@@YAXXZ", !102, i32 (i32)* @"\01?InvokeAnyHit@@YAHH@Z", !116, <3 x float> (<3 x float>, <3 x i32>)* @"\01?Swizzle@@YA?AV?$vector@M$02@@V1@V?$vector@H$02@@@Z", !117, i32 (i32, i32)* @"\01?GetBoxAddress@@YAIII@Z", !77, void (%struct.AABB*, <4 x i32>, <4 x i32>)* @"\01?RawDataToAABB@@YA?AUAABB@@V?$vector@H$03@@0@Z", !118, void (%struct.HitData*)* @"\01?raymiss@@YAXUHitData@@@Z", !119, void (%struct.BoundingBox*, <2 x i32>, <4 x i32>*, <4 x i32>*)* @"\01?CompressBox@@YAXUBoundingBox@@V?$vector@I$01@@AIAV?$vector@I$03@@2@Z", !122, void (<3 x float>)* @"\01?LogFloat3@@YAXV?$vector@M$02@@@Z", !123, void (%struct.RWByteAddressBuffer*, i32, %struct.BVHMetadata*)* @"\01?StoreBVHMetadataToRawData@@YAXURWByteAddressBuffer@@IUBVHMetadata@@@Z", !124, void ()* @"\01?raygen@@YAXXZ", !102, void (%struct.RWByteAddressBufferPointer*, <2 x i32>)* @"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z", !84, void (%struct.BoundingBox*, %struct.AABB*)* @"\01?AABBtoBoundingBox@@YA?AUBoundingBox@@UAABB@@@Z", !109, i1 (i1, i32, i32)* @"\01?IsOpaque@@YA_N_NII@Z", !125, void (<4 x i32>)* @"\01?Log@@YAXV?$vector@I$03@@@Z", !126, void (%struct.HitData*, %struct.BuiltInTriangleIntersectionAttributes*)* @"\01?rayhit@@YAXUHitData@@UBuiltInTriangleIntersectionAttributes@@@Z", !127, void (float)* @"\01?LogFloat@@YAXM@Z", !123, void (%struct.AABB*, %struct.AABB*, %class.matrix.float.3.4)* @"\01?TransformAABB@@YA?AUAABB@@U1@V?$matrix@M$02$03@@@Z", !130, void (%struct.RaytracingInstanceDesc*, %struct.RWByteAddressBuffer*, i32)* @"\01?LoadRaytracingInstanceDesc@@YA?AURaytracingInstanceDesc@@URWByteAddressBuffer@@I@Z", !75, <3 x float> (%struct.BoundingBox*)* @"\01?GetMaxCorner@@YA?AV?$vector@M$02@@UBoundingBox@@@Z", !104, i32 (%struct.RaytracingInstanceDesc*)* @"\01?GetInstanceContributionToHitGroupIndex@@YAIURaytracingInstanceDesc@@@Z", !115, i32 (i32*, i32)* @"\01?StackPop@@YAIAIAHI@Z", !131, i32 (%struct.RaytracingInstanceDesc*)* @"\01?GetInstanceFlags@@YAIURaytracingInstanceDesc@@@Z", !115, void (%struct.BoundingBox*, <3 x float>, <3 x float>, <3 x float>, i32, <2 x i32>*)* @"\01?GetBoxDataFromTriangle@@YA?AUBoundingBox@@V?$vector@M$02@@00HAIAV?$vector@I$01@@@Z", !132, i1 (i32, i32, i32)* @"\01?Traverse@@YA_NIII@Z", !133, void (i32)* @"\01?LogNoData@@YAXI@Z", !126, i1 (<2 x i32>)* @"\01?IsLeaf@@YA_NV?$vector@I$01@@@Z", !134, void (i32*, i1, i32, i32, i32)* @"\01?StackPush2@@YAXAIAH_NIII@Z", !135, i32 (%struct.RWByteAddressBufferPointer*)* @"\01?GetOffsetToTriangleMetadata@@YAHURWByteAddressBufferPointer@@@Z", !113, i32 (<2 x i32>)* @"\01?GetLeafIndexFromFlag@@YAHV?$vector@I$01@@@Z", !136, void (%struct.BoundingBox*, <4 x i32>, <4 x i32>, <2 x i32>*)* @"\01?RawDataToBoundingBox@@YA?AUBoundingBox@@V?$vector@H$03@@0AIAV?$vector@I$01@@@Z", !137, i32 (%struct.RWByteAddressBufferPointer*)* @"\01?GetOffsetToBoxes@@YAHURWByteAddressBufferPointer@@@Z", !113, i32 (<2 x i32>)* @"\01?PointerGetBufferStartOffset@@YAIV?$vector@I$01@@@Z", !83, <4 x i32> (<2 x i32>)* @"\01?Load4@@YA?AV?$vector@I$03@@V?$vector@I$01@@@Z", !83, %class.matrix.float.3.4 (%class.matrix.float.3.4)* @"\01?InverseAffineTransform@@YA?AV?$matrix@M$02$03@@V1@@Z", !138, void (%struct.RayData*, <3 x float>, <3 x float>)* @"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z", !139, void ()* @main, !140, void ()* @"\01?Fallback_AcceptHitAndEndSearch@@YAXXZ", !102, void (i32*, i32*)* @"\01?swap@@YAXAIAH0@Z", !141, i32 (i32, i32)* @"\01?GetTriangleMetadataAddress@@YAIII@Z", !77, void (%struct.RWByteAddressBuffer*, i32, i32, <2 x i32>)* @"\01?WriteOnlyFlagToBuffer@@YAXURWByteAddressBuffer@@IIV?$vector@I$01@@@Z", !142, void (%struct.RWByteAddressBuffer*, i32, i32, %struct.BoundingBox*, <2 x i32>)* @"\01?WriteBoxToBuffer@@YAXURWByteAddressBuffer@@IIUBoundingBox@@V?$vector@I$01@@@Z", !143, void ()* @"\01?LogTraceRayStart@@YAXXZ", !102, void (<2 x i32>)* @"\01?LogInt2@@YAXV?$vector@H$01@@@Z", !105, void (<3 x i32>, i32)* @"\01?main@@YAXV?$vector@I$02@@I@Z", !144, i32 (%struct.RaytracingInstanceDesc*)* @"\01?GetInstanceID@@YAIURaytracingInstanceDesc@@@Z", !115}
!68 = !{!69, !71, !71, !71, !71, !71, !73, !73, !73, !73, !73, !73, !73, !73, !71}
!69 = !{i32 1, !70, !70}
!70 = !{}
!71 = !{i32 0, !72, !70}
!72 = !{i32 7, i32 5}
!73 = !{i32 0, !74, !70}
!74 = !{i32 7, i32 9}
!75 = !{!76, !69, !76, !71}
!76 = !{i32 0, !70, !70}
!77 = !{!78, !71, !71}
!78 = !{i32 1, !72, !70}
!79 = !{!80, !73}
!80 = !{i32 1, !81, !70}
!81 = !{i32 2, !82, i32 7, i32 9}
!82 = !{i32 3, i32 4, i32 1}
!83 = !{!78, !71}
!84 = !{!76, !69, !71}
!85 = !{!76, !69, !76, !71, !71}
!86 = !{!87, !88}
!87 = !{i32 1, !74, !70}
!88 = !{i32 0, !81, !70}
!89 = !{!90, !92, !71}
!90 = !{i32 1, !91, !70}
!91 = !{i32 7, i32 1}
!92 = !{i32 0, !91, !70}
!93 = !{!76, !69, !76, !94, !78}
!94 = !{i32 0, !95, !70}
!95 = !{i32 7, i32 4}
!96 = !{!69, !97, !71, !71}
!97 = !{i32 2, !95, !70}
!98 = !{!69, !76, !87, !87, !87, !71}
!99 = !{!100, !71, !71, !71, !71}
!100 = !{i32 1, !95, !70}
!101 = !{!100, !73}
!102 = !{!69}
!103 = !{!76, !69, !71, !71, !71, !71}
!104 = !{!87, !76}
!105 = !{!69, !94}
!106 = !{!76, !69, !76, !94}
!107 = !{!76, !69, !76, !94, !76, !94, !78}
!108 = !{!69, !76, !71}
!109 = !{!76, !69, !76}
!110 = !{!90, !76, !71, !71, !73, !73, !94, !73, !111, !111, !112}
!111 = !{i32 2, !74, !70}
!112 = !{i32 2, !72, !70}
!113 = !{!100, !76}
!114 = !{!87, !71, !71}
!115 = !{!78, !76}
!116 = !{!100, !94}
!117 = !{!87, !73, !94}
!118 = !{!76, !69, !94, !94}
!119 = !{!69, !120}
!120 = !{i32 2, !121, !70}
!121 = !{i32 4, !"SV_RayPayload"}
!122 = !{!69, !76, !71, !78, !78}
!123 = !{!69, !73}
!124 = !{!69, !76, !71, !76}
!125 = !{!90, !92, !71, !71}
!126 = !{!69, !71}
!127 = !{!69, !120, !128}
!128 = !{i32 0, !129, !70}
!129 = !{i32 4, !"SV_IntersectionAttributes"}
!130 = !{!76, !69, !76, !88}
!131 = !{!78, !97, !71}
!132 = !{!76, !69, !73, !73, !73, !94, !78}
!133 = !{!90, !71, !71, !71}
!134 = !{!90, !71}
!135 = !{!69, !97, !92, !71, !71, !71}
!136 = !{!100, !71}
!137 = !{!76, !69, !94, !94, !78}
!138 = !{!80, !88}
!139 = !{!76, !69, !73, !73}
!140 = !{!76}
!141 = !{!69, !97, !97}
!142 = !{!69, !76, !71, !71, !71}
!143 = !{!69, !76, !71, !71, !76, !71}
!144 = !{!69, !71, !71}
!145 = !{null, !"", null, !6, null}
!146 = !{void ()* @"\01?raygen@@YAXXZ", i32 7}
!147 = !{void (%struct.HitData*, %struct.BuiltInTriangleIntersectionAttributes*)* @"\01?rayhit@@YAXUHitData@@UBuiltInTriangleIntersectionAttributes@@@Z", i32 10, i32 4, i32 8}
!148 = !{void (%struct.HitData*)* @"\01?raymiss@@YAXUHitData@@@Z", i32 11, i32 4}
!149 = !{void ()* @main, i32 5, i32 8, i32 8, i32 1}
!150 = !{void ()* @main, null}
!151 = !{!152, !152, i64 0}
!152 = !{!"float", !153, i64 0}
!153 = !{!"omnipotent char", !154, i64 0}
!154 = !{!"Simple C/C++ TBAA"}
!155 = !{!156}
!156 = distinct !{!156, !157, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z: %agg.result"}
!157 = distinct !{!157, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z"}
!158 = !{!159, !159, i64 0}
!159 = !{!"int", !153, i64 0}
!160 = !{!161}
!161 = distinct !{!161, !162, !"\01?StackPush@@YAXAIAHII@Z: %stackTop"}
!162 = distinct !{!162, !"\01?StackPush@@YAXAIAHII@Z"}
!163 = !{i32 1}
!164 = !{!165, !167}
!165 = distinct !{!165, !166, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z: %agg.result"}
!166 = distinct !{!166, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"}
!167 = distinct !{!167, !168, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z: %agg.result"}
!168 = distinct !{!168, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z"}
!169 = !{!170}
!170 = distinct !{!170, !171, !"\01?StackPop@@YAIAIAHI@Z: %stackTop"}
!171 = distinct !{!171, !"\01?StackPop@@YAIAIAHI@Z"}
!172 = !{!173, !175}
!173 = distinct !{!173, !174, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z: %agg.result"}
!174 = distinct !{!174, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"}
!175 = distinct !{!175, !176, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z: %agg.result"}
!176 = distinct !{!176, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"\01?StackPush@@YAXAIAHII@Z: %stackTop"}
!179 = distinct !{!179, !"\01?StackPush@@YAXAIAHII@Z"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z: %agg.result"}
!182 = distinct !{!182, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z"}
!183 = !{!184, !186, !187, !189, !190}
!184 = distinct !{!184, !185, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z: %hitT"}
!185 = distinct !{!185, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z"}
!186 = distinct !{!186, !185, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z: %bary"}
!187 = distinct !{!187, !188, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultBary"}
!188 = distinct !{!188, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z"}
!189 = distinct !{!189, !188, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultT"}
!190 = distinct !{!190, !188, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultTriId"}
!191 = !{!192, !194}
!192 = distinct !{!192, !193, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z: %agg.result"}
!193 = distinct !{!193, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"}
!194 = distinct !{!194, !195, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z: %agg.result"}
!195 = distinct !{!195, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z"}
!196 = !{!153, !153, i64 0}
!197 = !{!198}
!198 = distinct !{!198, !199, !"\01?StackPush2@@YAXAIAH_NIII@Z: %stackTop"}
!199 = distinct !{!199, !"\01?StackPush2@@YAXAIAH_NIII@Z"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"\01?RawDataToRaytracingInstanceDesc@@YA?AURaytracingInstanceDesc@@V?$vector@I$03@@000@Z: %agg.result"}
!202 = distinct !{!202, !"\01?RawDataToRaytracingInstanceDesc@@YA?AURaytracingInstanceDesc@@V?$vector@I$03@@000@Z"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z: %agg.result"}
!205 = distinct !{!205, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z"}
!206 = !{!207}
!207 = distinct !{!207, !208, !"\01?StackPush@@YAXAIAHII@Z: %stackTop"}
!208 = distinct !{!208, !"\01?StackPush@@YAXAIAHII@Z"}
!209 = !{!210, !212}
!210 = distinct !{!210, !211, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z: %agg.result"}
!211 = distinct !{!211, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"}
!212 = distinct !{!212, !213, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z: %agg.result"}
!213 = distinct !{!213, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"\01?StackPop@@YAIAIAHI@Z: %stackTop"}
!216 = distinct !{!216, !"\01?StackPop@@YAIAIAHI@Z"}
!217 = !{!218, !220}
!218 = distinct !{!218, !219, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z: %agg.result"}
!219 = distinct !{!219, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"}
!220 = distinct !{!220, !221, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z: %agg.result"}
!221 = distinct !{!221, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"\01?StackPush@@YAXAIAHII@Z: %stackTop"}
!224 = distinct !{!224, !"\01?StackPush@@YAXAIAHII@Z"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z: %agg.result"}
!227 = distinct !{!227, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z"}
!228 = !{!229, !231, !232, !234, !235}
!229 = distinct !{!229, !230, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z: %hitT"}
!230 = distinct !{!230, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z"}
!231 = distinct !{!231, !230, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z: %bary"}
!232 = distinct !{!232, !233, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultBary"}
!233 = distinct !{!233, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z"}
!234 = distinct !{!234, !233, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultT"}
!235 = distinct !{!235, !233, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultTriId"}
!236 = !{!237, !239}
!237 = distinct !{!237, !238, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z: %agg.result"}
!238 = distinct !{!238, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"}
!239 = distinct !{!239, !240, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z: %agg.result"}
!240 = distinct !{!240, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z"}
!241 = !{!242}
!242 = distinct !{!242, !243, !"\01?StackPush2@@YAXAIAH_NIII@Z: %stackTop"}
!243 = distinct !{!243, !"\01?StackPush2@@YAXAIAH_NIII@Z"}
!244 = !{!245, !247, !248}
!245 = distinct !{!245, !246, !"\01?BVHReadTriangle@@YAXURWByteAddressBufferPointer@@AIAV?$vector@M$02@@11I@Z: %v0"}
!246 = distinct !{!246, !"\01?BVHReadTriangle@@YAXURWByteAddressBufferPointer@@AIAV?$vector@M$02@@11I@Z"}
!247 = distinct !{!247, !246, !"\01?BVHReadTriangle@@YAXURWByteAddressBufferPointer@@AIAV?$vector@M$02@@11I@Z: %v1"}
!248 = distinct !{!248, !246, !"\01?BVHReadTriangle@@YAXURWByteAddressBufferPointer@@AIAV?$vector@M$02@@11I@Z: %v2"}
!249 = !{!250, !252}
!250 = distinct !{!250, !251, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z: %hitT"}
!251 = distinct !{!251, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z"}
!252 = distinct !{!252, !251, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z: %bary"}
!253 = !{!254}
!254 = distinct !{!254, !255, !"\01?BoundingBoxToAABB@@YA?AUAABB@@UBoundingBox@@@Z: %agg.result"}
!255 = distinct !{!255, !"\01?BoundingBoxToAABB@@YA?AUAABB@@UBoundingBox@@@Z"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"\01?CreateRWByteAddressBufferPointer@@YA?AURWByteAddressBufferPointer@@URWByteAddressBuffer@@I@Z: %agg.result"}
!258 = distinct !{!258, !"\01?CreateRWByteAddressBufferPointer@@YA?AURWByteAddressBufferPointer@@URWByteAddressBuffer@@I@Z"}
!259 = !{!260}
!260 = distinct !{!260, !261, !"\01?RawDataToRaytracingInstanceDesc@@YA?AURaytracingInstanceDesc@@V?$vector@I$03@@000@Z: %agg.result"}
!261 = distinct !{!261, !"\01?RawDataToRaytracingInstanceDesc@@YA?AURaytracingInstanceDesc@@V?$vector@I$03@@000@Z"}
!262 = !{!263}
!263 = distinct !{!263, !264, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z: %agg.result"}
!264 = distinct !{!264, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z"}
!265 = !{!266}
!266 = distinct !{!266, !267, !"\01?StackPush@@YAXAIAHII@Z: %stackTop"}
!267 = distinct !{!267, !"\01?StackPush@@YAXAIAHII@Z"}
!268 = !{!269, !271}
!269 = distinct !{!269, !270, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z: %agg.result"}
!270 = distinct !{!270, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"}
!271 = distinct !{!271, !272, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z: %agg.result"}
!272 = distinct !{!272, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z"}
!273 = !{!274}
!274 = distinct !{!274, !275, !"\01?StackPop@@YAIAIAHI@Z: %stackTop"}
!275 = distinct !{!275, !"\01?StackPop@@YAIAIAHI@Z"}
!276 = !{!277, !279}
!277 = distinct !{!277, !278, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z: %agg.result"}
!278 = distinct !{!278, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"}
!279 = distinct !{!279, !280, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z: %agg.result"}
!280 = distinct !{!280, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z"}
!281 = !{!282}
!282 = distinct !{!282, !283, !"\01?StackPush@@YAXAIAHII@Z: %stackTop"}
!283 = distinct !{!283, !"\01?StackPush@@YAXAIAHII@Z"}
!284 = !{!285}
!285 = distinct !{!285, !286, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z: %agg.result"}
!286 = distinct !{!286, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z"}
!287 = !{!288, !290, !291, !293, !294}
!288 = distinct !{!288, !289, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z: %hitT"}
!289 = distinct !{!289, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z"}
!290 = distinct !{!290, !289, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z: %bary"}
!291 = distinct !{!291, !292, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultBary"}
!292 = distinct !{!292, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z"}
!293 = distinct !{!293, !292, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultT"}
!294 = distinct !{!294, !292, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultTriId"}
!295 = !{!296, !298}
!296 = distinct !{!296, !297, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z: %agg.result"}
!297 = distinct !{!297, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"}
!298 = distinct !{!298, !299, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z: %agg.result"}
!299 = distinct !{!299, !"\01?CreateRWByteAddressBufferPointerFromGpuVA@@YA?AURWByteAddressBufferPointer@@V?$vector@I$01@@@Z"}
!300 = !{!301}
!301 = distinct !{!301, !302, !"\01?StackPush2@@YAXAIAH_NIII@Z: %stackTop"}
!302 = distinct !{!302, !"\01?StackPush2@@YAXAIAH_NIII@Z"}
!303 = !{!304}
!304 = distinct !{!304, !305, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z: %agg.result"}
!305 = distinct !{!305, !"\01?PointerGetBuffer@@YA?AURWByteAddressBuffer@@V?$vector@I$01@@@Z"}
!306 = !{!307, !309}
!307 = distinct !{!307, !308, !"\01?CompressBox@@YAXUBoundingBox@@V?$vector@I$01@@AIAV?$vector@I$03@@2@Z: %data1"}
!308 = distinct !{!308, !"\01?CompressBox@@YAXUBoundingBox@@V?$vector@I$01@@AIAV?$vector@I$03@@2@Z"}
!309 = distinct !{!309, !308, !"\01?CompressBox@@YAXUBoundingBox@@V?$vector@I$01@@AIAV?$vector@I$03@@2@Z: %data2"}
