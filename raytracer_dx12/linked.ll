; ModuleID = 'main'
target triple = "dxil-ms-dx"

%Constants = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%AccelerationStructureList = type { <2 x i32> }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%struct.RaytracingAccelerationStructure = type { i32 }

@Constants = external constant %Constants
@"\01?RayGenShaderTable@@3UByteAddressBuffer@@A" = external global %struct.ByteAddressBuffer
@"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A" = external global [0 x %struct.RWByteAddressBuffer]
@"\01?stack@@3PAIA" = addrspace(3) global [2048 x i32] zeroinitializer
@"\01?HitGroupShaderTable@@3UByteAddressBuffer@@A" = external global %struct.ByteAddressBuffer
@AccelerationStructureList = external constant %AccelerationStructureList
@"\01?MissShaderTable@@3UByteAddressBuffer@@A" = external global %struct.ByteAddressBuffer
@"\01?uavOutput@@3V?$RWTexture2D@V?$vector@M$03@@@@A" = external global %"class.RWTexture2D<vector<float, 4> >"
@llvm.used = appending global [7 x i8*] [i8* bitcast (%AccelerationStructureList* @AccelerationStructureList to i8*), i8* bitcast (%Constants* @Constants to i8*), i8* bitcast (%struct.ByteAddressBuffer* @"\01?HitGroupShaderTable@@3UByteAddressBuffer@@A" to i8*), i8* bitcast (%struct.ByteAddressBuffer* @"\01?RayGenShaderTable@@3UByteAddressBuffer@@A" to i8*), i8* bitcast (%struct.ByteAddressBuffer* @"\01?MissShaderTable@@3UByteAddressBuffer@@A" to i8*), i8* bitcast (%"class.RWTexture2D<vector<float, 4> >"* @"\01?uavOutput@@3V?$RWTexture2D@V?$vector@M$03@@@@A" to i8*), i8* bitcast ([0 x %struct.RWByteAddressBuffer]* @"\01?DescriptorHeapBufferTable@@3PAURWByteAddressBuffer@@A" to i8*)], section "llvm.metadata"

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32)

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

declare i32 @dx.op.threadId.i32(i32, i32)

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

define void @main() {
  %uavOutput_UAV_2d = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)
  %MissShaderTable_texture_rawbuf = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 1, i1 false)
  %RayGenShaderTable_texture_rawbuf = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)
  %HitGroupShaderTable_texture_rawbuf = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)
  %Constants_cbuffer = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)
  %AccelerationStructureList_cbuffer = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 1, i1 false)
  %v19.i.i.i = alloca [3 x float], align 4
  %v20.i.i.i = alloca [3 x float], align 4
  %v21.i.i.i = alloca [3 x float], align 4
  %v22.i.i.i = alloca [3 x float], align 4
  %v23.i.i.i = alloca [3 x float], align 4
  %nodesToProcess.i.i.i.i.i = alloca [2 x i32], align 4
  %theStack.i = alloca [256 x i32], align 4
  %1 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %RayGenShaderTable_texture_rawbuf, i32 0, i32 undef)
  %2 = extractvalue %dx.types.ResRet.i32 %1, 0
  %3 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %Constants_cbuffer, i32 0)
  %4 = extractvalue %dx.types.CBufRet.i32 %3, 1
  %5 = extractvalue %dx.types.CBufRet.i32 %3, 0
  %DTidx.i = call i32 @dx.op.threadId.i32(i32 93, i32 0) #2
  %DTidy.i = call i32 @dx.op.threadId.i32(i32 93, i32 1) #2
  %groupIndex.i = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96) #2
  %cmp.i = icmp sge i32 %DTidx.i, %5
  %cmp7.i = icmp sge i32 %DTidy.i, %4
  %or.cond = or i1 %cmp.i, %cmp7.i
  br i1 %or.cond, label %fb_Fallback_Scheduler.exit, label %if.end.i

if.end.i:                                         ; preds = %0
  %arrayidx.i.4.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 255
  store i32 -1, i32* %arrayidx.i.4.i, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %state_1000.raygen.ss_0.i.i, %state_1001.raygen.ss_1.i.i, %state_1002.rayhit.ss_0.i.i, %state_1003.raymiss.ss_0.i.i, %state_1005.Fallback_TraceRay.ss_1.i.i, %37, %remat_begin.i.i.i, %while.body.i, %if.end.i
  %.i0 = phi float [ undef, %if.end.i ], [ %.i0, %state_1000.raygen.ss_0.i.i ], [ %.i0, %state_1001.raygen.ss_1.i.i ], [ %.i0, %state_1002.rayhit.ss_0.i.i ], [ %.i0, %state_1003.raymiss.ss_0.i.i ], [ %.i0, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i052, %37 ], [ %.i052, %remat_begin.i.i.i ], [ %.i0, %while.body.i ]
  %.i1 = phi float [ undef, %if.end.i ], [ %.i1, %state_1000.raygen.ss_0.i.i ], [ %.i1, %state_1001.raygen.ss_1.i.i ], [ %.i1, %state_1002.rayhit.ss_0.i.i ], [ %.i1, %state_1003.raymiss.ss_0.i.i ], [ %.i1, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i153, %37 ], [ %.i153, %remat_begin.i.i.i ], [ %.i1, %while.body.i ]
  %.i2 = phi float [ undef, %if.end.i ], [ %.i2, %state_1000.raygen.ss_0.i.i ], [ %.i2, %state_1001.raygen.ss_1.i.i ], [ %.i2, %state_1002.rayhit.ss_0.i.i ], [ %.i2, %state_1003.raymiss.ss_0.i.i ], [ %.i2, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i254, %37 ], [ %.i254, %remat_begin.i.i.i ], [ %.i2, %while.body.i ]
  %.i3 = phi float [ undef, %if.end.i ], [ %.i3, %state_1000.raygen.ss_0.i.i ], [ %.i3, %state_1001.raygen.ss_1.i.i ], [ %.i3, %state_1002.rayhit.ss_0.i.i ], [ %.i3, %state_1003.raymiss.ss_0.i.i ], [ %.i3, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i355, %37 ], [ %.i355, %remat_begin.i.i.i ], [ %.i3, %while.body.i ]
  %.i4 = phi float [ undef, %if.end.i ], [ %.i4, %state_1000.raygen.ss_0.i.i ], [ %.i4, %state_1001.raygen.ss_1.i.i ], [ %.i4, %state_1002.rayhit.ss_0.i.i ], [ %.i4, %state_1003.raymiss.ss_0.i.i ], [ %.i4, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i456, %37 ], [ %.i456, %remat_begin.i.i.i ], [ %.i4, %while.body.i ]
  %.i5 = phi float [ undef, %if.end.i ], [ %.i5, %state_1000.raygen.ss_0.i.i ], [ %.i5, %state_1001.raygen.ss_1.i.i ], [ %.i5, %state_1002.rayhit.ss_0.i.i ], [ %.i5, %state_1003.raymiss.ss_0.i.i ], [ %.i5, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i557, %37 ], [ %.i557, %remat_begin.i.i.i ], [ %.i5, %while.body.i ]
  %.i6 = phi float [ undef, %if.end.i ], [ %.i6, %state_1000.raygen.ss_0.i.i ], [ %.i6, %state_1001.raygen.ss_1.i.i ], [ %.i6, %state_1002.rayhit.ss_0.i.i ], [ %.i6, %state_1003.raymiss.ss_0.i.i ], [ %.i6, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i658, %37 ], [ %.i658, %remat_begin.i.i.i ], [ %.i6, %while.body.i ]
  %.i7 = phi float [ undef, %if.end.i ], [ %.i7, %state_1000.raygen.ss_0.i.i ], [ %.i7, %state_1001.raygen.ss_1.i.i ], [ %.i7, %state_1002.rayhit.ss_0.i.i ], [ %.i7, %state_1003.raymiss.ss_0.i.i ], [ %.i7, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i759, %37 ], [ %.i759, %remat_begin.i.i.i ], [ %.i7, %while.body.i ]
  %.i8 = phi float [ undef, %if.end.i ], [ %.i8, %state_1000.raygen.ss_0.i.i ], [ %.i8, %state_1001.raygen.ss_1.i.i ], [ %.i8, %state_1002.rayhit.ss_0.i.i ], [ %.i8, %state_1003.raymiss.ss_0.i.i ], [ %.i8, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i860, %37 ], [ %.i860, %remat_begin.i.i.i ], [ %.i8, %while.body.i ]
  %.i9 = phi float [ undef, %if.end.i ], [ %.i9, %state_1000.raygen.ss_0.i.i ], [ %.i9, %state_1001.raygen.ss_1.i.i ], [ %.i9, %state_1002.rayhit.ss_0.i.i ], [ %.i9, %state_1003.raymiss.ss_0.i.i ], [ %.i9, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i961, %37 ], [ %.i961, %remat_begin.i.i.i ], [ %.i9, %while.body.i ]
  %.i10 = phi float [ undef, %if.end.i ], [ %.i10, %state_1000.raygen.ss_0.i.i ], [ %.i10, %state_1001.raygen.ss_1.i.i ], [ %.i10, %state_1002.rayhit.ss_0.i.i ], [ %.i10, %state_1003.raymiss.ss_0.i.i ], [ %.i10, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i1062, %37 ], [ %.i1062, %remat_begin.i.i.i ], [ %.i10, %while.body.i ]
  %.i11 = phi float [ undef, %if.end.i ], [ %.i11, %state_1000.raygen.ss_0.i.i ], [ %.i11, %state_1001.raygen.ss_1.i.i ], [ %.i11, %state_1002.rayhit.ss_0.i.i ], [ %.i11, %state_1003.raymiss.ss_0.i.i ], [ %.i11, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i1163, %37 ], [ %.i1163, %remat_begin.i.i.i ], [ %.i11, %while.body.i ]
  %.i016 = phi float [ undef, %if.end.i ], [ %.i016, %state_1000.raygen.ss_0.i.i ], [ %.i016, %state_1001.raygen.ss_1.i.i ], [ %.i016, %state_1002.rayhit.ss_0.i.i ], [ %.i016, %state_1003.raymiss.ss_0.i.i ], [ %.i016, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i076, %37 ], [ %.i076, %remat_begin.i.i.i ], [ %.i016, %while.body.i ]
  %.i117 = phi float [ undef, %if.end.i ], [ %.i117, %state_1000.raygen.ss_0.i.i ], [ %.i117, %state_1001.raygen.ss_1.i.i ], [ %.i117, %state_1002.rayhit.ss_0.i.i ], [ %.i117, %state_1003.raymiss.ss_0.i.i ], [ %.i117, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i177, %37 ], [ %.i177, %remat_begin.i.i.i ], [ %.i117, %while.body.i ]
  %.i218 = phi float [ undef, %if.end.i ], [ %.i218, %state_1000.raygen.ss_0.i.i ], [ %.i218, %state_1001.raygen.ss_1.i.i ], [ %.i218, %state_1002.rayhit.ss_0.i.i ], [ %.i218, %state_1003.raymiss.ss_0.i.i ], [ %.i218, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i278, %37 ], [ %.i278, %remat_begin.i.i.i ], [ %.i218, %while.body.i ]
  %.i319 = phi float [ undef, %if.end.i ], [ %.i319, %state_1000.raygen.ss_0.i.i ], [ %.i319, %state_1001.raygen.ss_1.i.i ], [ %.i319, %state_1002.rayhit.ss_0.i.i ], [ %.i319, %state_1003.raymiss.ss_0.i.i ], [ %.i319, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i379, %37 ], [ %.i379, %remat_begin.i.i.i ], [ %.i319, %while.body.i ]
  %.i420 = phi float [ undef, %if.end.i ], [ %.i420, %state_1000.raygen.ss_0.i.i ], [ %.i420, %state_1001.raygen.ss_1.i.i ], [ %.i420, %state_1002.rayhit.ss_0.i.i ], [ %.i420, %state_1003.raymiss.ss_0.i.i ], [ %.i420, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i480, %37 ], [ %.i480, %remat_begin.i.i.i ], [ %.i420, %while.body.i ]
  %.i521 = phi float [ undef, %if.end.i ], [ %.i521, %state_1000.raygen.ss_0.i.i ], [ %.i521, %state_1001.raygen.ss_1.i.i ], [ %.i521, %state_1002.rayhit.ss_0.i.i ], [ %.i521, %state_1003.raymiss.ss_0.i.i ], [ %.i521, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i581, %37 ], [ %.i581, %remat_begin.i.i.i ], [ %.i521, %while.body.i ]
  %.i622 = phi float [ undef, %if.end.i ], [ %.i622, %state_1000.raygen.ss_0.i.i ], [ %.i622, %state_1001.raygen.ss_1.i.i ], [ %.i622, %state_1002.rayhit.ss_0.i.i ], [ %.i622, %state_1003.raymiss.ss_0.i.i ], [ %.i622, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i682, %37 ], [ %.i682, %remat_begin.i.i.i ], [ %.i622, %while.body.i ]
  %.i723 = phi float [ undef, %if.end.i ], [ %.i723, %state_1000.raygen.ss_0.i.i ], [ %.i723, %state_1001.raygen.ss_1.i.i ], [ %.i723, %state_1002.rayhit.ss_0.i.i ], [ %.i723, %state_1003.raymiss.ss_0.i.i ], [ %.i723, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i783, %37 ], [ %.i783, %remat_begin.i.i.i ], [ %.i723, %while.body.i ]
  %.i824 = phi float [ undef, %if.end.i ], [ %.i824, %state_1000.raygen.ss_0.i.i ], [ %.i824, %state_1001.raygen.ss_1.i.i ], [ %.i824, %state_1002.rayhit.ss_0.i.i ], [ %.i824, %state_1003.raymiss.ss_0.i.i ], [ %.i824, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i884, %37 ], [ %.i884, %remat_begin.i.i.i ], [ %.i824, %while.body.i ]
  %.i925 = phi float [ undef, %if.end.i ], [ %.i925, %state_1000.raygen.ss_0.i.i ], [ %.i925, %state_1001.raygen.ss_1.i.i ], [ %.i925, %state_1002.rayhit.ss_0.i.i ], [ %.i925, %state_1003.raymiss.ss_0.i.i ], [ %.i925, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i985, %37 ], [ %.i985, %remat_begin.i.i.i ], [ %.i925, %while.body.i ]
  %.i1026 = phi float [ undef, %if.end.i ], [ %.i1026, %state_1000.raygen.ss_0.i.i ], [ %.i1026, %state_1001.raygen.ss_1.i.i ], [ %.i1026, %state_1002.rayhit.ss_0.i.i ], [ %.i1026, %state_1003.raymiss.ss_0.i.i ], [ %.i1026, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i1086, %37 ], [ %.i1086, %remat_begin.i.i.i ], [ %.i1026, %while.body.i ]
  %.i1127 = phi float [ undef, %if.end.i ], [ %.i1127, %state_1000.raygen.ss_0.i.i ], [ %.i1127, %state_1001.raygen.ss_1.i.i ], [ %.i1127, %state_1002.rayhit.ss_0.i.i ], [ %.i1127, %state_1003.raymiss.ss_0.i.i ], [ %.i1127, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %.i1187, %37 ], [ %.i1187, %remat_begin.i.i.i ], [ %.i1127, %while.body.i ]
  %6 = phi i32 [ 255, %if.end.i ], [ %sub.i.i.i.i, %state_1000.raygen.ss_0.i.i ], [ %add.i.i.33.i.i, %state_1001.raygen.ss_1.i.i ], [ %6, %state_1002.rayhit.ss_0.i.i ], [ %6, %state_1003.raymiss.ss_0.i.i ], [ %add.i.6.i.i.i, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %sub.i.134.i.i.i, %remat_begin.i.i.i ], [ %6, %37 ], [ %6, %while.body.i ]
  %7 = phi i32 [ 3333, %if.end.i ], [ %7, %state_1000.raygen.ss_0.i.i ], [ %7, %state_1001.raygen.ss_1.i.i ], [ %7, %state_1002.rayhit.ss_0.i.i ], [ %7, %state_1003.raymiss.ss_0.i.i ], [ %63, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %30, %remat_begin.i.i.i ], [ %39, %37 ], [ %7, %while.body.i ]
  %8 = phi i32 [ 2222, %if.end.i ], [ %8, %state_1000.raygen.ss_0.i.i ], [ %8, %state_1001.raygen.ss_1.i.i ], [ %8, %state_1002.rayhit.ss_0.i.i ], [ %8, %state_1003.raymiss.ss_0.i.i ], [ %62, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %31, %remat_begin.i.i.i ], [ %38, %37 ], [ %8, %while.body.i ]
  %v24.int.i.i.i2 = phi i32 [ 1111, %if.end.i ], [ %v24.int.i.i.i2, %state_1000.raygen.ss_0.i.i ], [ %v24.int.i.i.i2, %state_1001.raygen.ss_1.i.i ], [ %v24.int.i.i.i2, %state_1002.rayhit.ss_0.i.i ], [ %v24.int.i.i.i2, %state_1003.raymiss.ss_0.i.i ], [ %v24.int.i.i.i, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %arg13.int.i.i.i, %remat_begin.i.i.i ], [ %v24.int.i.i.i2, %37 ], [ %v24.int.i.i.i2, %while.body.i ]
  %9 = phi i32 [ undef, %if.end.i ], [ %9, %state_1000.raygen.ss_0.i.i ], [ %9, %state_1001.raygen.ss_1.i.i ], [ %9, %state_1002.rayhit.ss_0.i.i ], [ %9, %state_1003.raymiss.ss_0.i.i ], [ %9, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %33, %37 ], [ %33, %remat_begin.i.i.i ], [ %9, %while.body.i ]
  %stateId.0.i = phi i32 [ %2, %if.end.i ], [ 1004, %state_1000.raygen.ss_0.i.i ], [ %ret.stateId.i.37.i.i, %state_1001.raygen.ss_1.i.i ], [ %ret.stateId.i.49.i.i, %state_1002.rayhit.ss_0.i.i ], [ %ret.stateId.i.61.i.i, %state_1003.raymiss.ss_0.i.i ], [ %ret.stateId.i.i.i, %state_1005.Fallback_TraceRay.ss_1.i.i ], [ %stateID.i.0.i.i.i, %remat_begin.i.i.i ], [ %ret.stateId.i.27.i.i, %37 ], [ -3, %while.body.i ]
  %cmp11.i = icmp sge i32 %stateId.0.i, 0
  br i1 %cmp11.i, label %while.body.i, label %fb_Fallback_Scheduler.exit

while.body.i:                                     ; preds = %while.cond.i
  switch i32 %stateId.0.i, label %while.cond.i [
    i32 1000, label %state_1000.raygen.ss_0.i.i
    i32 1001, label %state_1001.raygen.ss_1.i.i
    i32 1002, label %state_1002.rayhit.ss_0.i.i
    i32 1003, label %state_1003.raymiss.ss_0.i.i
    i32 1004, label %state_1004.Fallback_TraceRay.ss_0.i.i
    i32 1005, label %state_1005.Fallback_TraceRay.ss_1.i.i
  ]

state_1000.raygen.ss_0.i.i:                       ; preds = %while.body.i
  %sub.i.i.i.i = sub nsw i32 %6, 20
  %.i0.i.i.i = uitofp i32 %DTidx.i to float
  %.i1.i.i.i = uitofp i32 %DTidy.i to float
  %.i03.i.i.i = uitofp i32 %5 to float
  %.i14.i.i.i = uitofp i32 %4 to float
  %.i05.i.i.i = fdiv fast float %.i0.i.i.i, %.i03.i.i.i
  %.i16.i.i.i = fdiv fast float %.i1.i.i.i, %.i14.i.i.i
  %.i07.i.i.i = fmul fast float %.i05.i.i.i, 2.000000e+00
  %.i18.i.i.i = fmul fast float %.i16.i.i.i, 2.000000e+00
  %.i09.i.i.i = fadd fast float %.i07.i.i.i, -1.000000e+00
  %.i110.i.i.i = fadd fast float %.i18.i.i.i, -1.000000e+00
  %add.i.42.i.i.i = add nsw i32 %sub.i.i.i.i, 16
  %arrayidx.i.44.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.42.i.i.i
  store i32 0, i32* %arrayidx.i.44.i.i.i, align 8
  %new.payload.offset.i.i.i = add i32 %sub.i.i.i.i, 16
  %arrayidx.i.41.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %sub.i.i.i.i
  store i32 1001, i32* %arrayidx.i.41.i.i.i
  %add.i.37.i.i.i = add nsw i32 %sub.i.i.i.i, 1
  %arrayidx.i.39.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.37.i.i.i
  store i32 16, i32* %arrayidx.i.39.i.i.i
  %add.i.34.i.i.i = add nsw i32 %sub.i.i.i.i, 2
  %arrayidx.i.36.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.34.i.i.i
  store i32 -1, i32* %arrayidx.i.36.i.i.i
  %add.i.31.i.i.i = add nsw i32 %sub.i.i.i.i, 3
  %arrayidx.i.33.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.31.i.i.i
  store i32 0, i32* %arrayidx.i.33.i.i.i
  %add.i.28.i.i.i = add nsw i32 %sub.i.i.i.i, 4
  %arrayidx.i.30.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.28.i.i.i
  store i32 1, i32* %arrayidx.i.30.i.i.i
  %add.i.25.i.i.i = add nsw i32 %sub.i.i.i.i, 5
  %arrayidx.i.27.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.25.i.i.i
  store i32 0, i32* %arrayidx.i.27.i.i.i
  %10 = bitcast float %.i09.i.i.i to i32
  %add.i.22.i.i.i = add nsw i32 %sub.i.i.i.i, 6
  %arrayidx.i.24.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.22.i.i.i
  store i32 %10, i32* %arrayidx.i.24.i.i.i
  %11 = bitcast float %.i110.i.i.i to i32
  %add.i.19.i.i.i = add nsw i32 %sub.i.i.i.i, 7
  %arrayidx.i.21.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.19.i.i.i
  store i32 %11, i32* %arrayidx.i.21.i.i.i
  %add.i.16.i.i.i = add nsw i32 %sub.i.i.i.i, 8
  %arrayidx.i.18.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.16.i.i.i
  store i32 0, i32* %arrayidx.i.18.i.i.i
  %add.i.13.i.i.i = add nsw i32 %sub.i.i.i.i, 9
  %arrayidx.i.15.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.13.i.i.i
  store i32 0, i32* %arrayidx.i.15.i.i.i
  %add.i.10.i.i.i = add nsw i32 %sub.i.i.i.i, 10
  %arrayidx.i.12.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.10.i.i.i
  store i32 0, i32* %arrayidx.i.12.i.i.i
  %add.i.7.i.i.i = add nsw i32 %sub.i.i.i.i, 11
  %arrayidx.i.9.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.7.i.i.i
  store i32 0, i32* %arrayidx.i.9.i.i.i
  %add.i.4.i.i.i = add nsw i32 %sub.i.i.i.i, 12
  %arrayidx.i.6.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.4.i.i.i
  store i32 1065353216, i32* %arrayidx.i.6.i.i.i
  %add.i.1.i.i.i = add nsw i32 %sub.i.i.i.i, 13
  %arrayidx.i.3.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.1.i.i.i
  store i32 1176256512, i32* %arrayidx.i.3.i.i.i
  %add.i.i.i.i = add nsw i32 %sub.i.i.i.i, 14
  %arrayidx.i.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.i.i.i
  store i32 %new.payload.offset.i.i.i, i32* %arrayidx.i.i.i.i
  br label %while.cond.i

state_1001.raygen.ss_1.i.i:                       ; preds = %while.body.i
  %add.i.i.33.i.i = add nsw i32 %6, 20
  %arrayidx.i.i.36.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.i.33.i.i
  %ret.stateId.i.37.i.i = load i32, i32* %arrayidx.i.i.36.i.i
  br label %while.cond.i

state_1002.rayhit.ss_0.i.i:                       ; preds = %while.body.i
  %arrayidx.i.7.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %8
  %v1.v.i.i.i = bitcast i32* %arrayidx.i.7.i.i.i to float*
  %add.i.i.43.i.i = add nsw i32 %8, 1
  %arrayidx.i.5.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.i.43.i.i
  %v1.v2.i.i.i = bitcast i32* %arrayidx.i.5.i.i.i to float*
  %el.i.i.i = load float, float* %v1.v.i.i.i
  %el3.i.i.i = load float, float* %v1.v2.i.i.i
  %v4.i.i.i = fsub fast float 1.000000e+00, %el.i.i.i
  %v6.i.i.i = fsub fast float %v4.i.i.i, %el3.i.i.i
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %uavOutput_UAV_2d, i32 %DTidx.i, i32 %DTidy.i, i32 undef, float %v6.i.i.i, float %el.i.i.i, float %el3.i.i.i, float 1.000000e+00, i8 15) #2
  %arrayidx.i.i.48.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %6
  %ret.stateId.i.49.i.i = load i32, i32* %arrayidx.i.i.48.i.i
  br label %while.cond.i

state_1003.raymiss.ss_0.i.i:                      ; preds = %while.body.i
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %uavOutput_UAV_2d, i32 %DTidx.i, i32 %DTidy.i, i32 undef, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i8 15) #2
  %arrayidx.i.i.60.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %6
  %ret.stateId.i.61.i.i = load i32, i32* %arrayidx.i.i.60.i.i
  br label %while.cond.i

state_1004.Fallback_TraceRay.ss_0.i.i:            ; preds = %while.body.i
  %add.i.i.13.i.i = add nsw i32 %6, -1
  %arrayidx.i.i.15.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.i.13.i.i
  store i32 %8, i32* %arrayidx.i.i.15.i.i, align 4
  %add2.i.i.18.i.i = add nsw i32 %6, -2
  %arrayidx4.i.i.20.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add2.i.i.18.i.i
  store i32 %7, i32* %arrayidx4.i.i.20.i.i, align 4
  %sub.i.i.21.i.i = sub nsw i32 %6, 2
  %sub6.i.i.i.i = sub nsw i32 %sub.i.i.21.i.i, 8
  %sub9.i.i.i.i = sub nsw i32 %6, 2
  %sub10.i.i.i.i = sub nsw i32 %sub9.i.i.i.i, 16
  %sub.i.134.i.i.i = sub nsw i32 %6, 24
  %add.i.129.i.i.i = add nsw i32 %6, 1
  %arrayidx.i.131.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.129.i.i.i
  %arg0.int.i.i.i = load i32, i32* %arrayidx.i.131.i.i.i
  %add.i.126.i.i.i = add nsw i32 %6, 2
  %arrayidx.i.128.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.126.i.i.i
  %arg1.int.i.i.i = load i32, i32* %arrayidx.i.128.i.i.i
  %add.i.123.i.i.i = add nsw i32 %6, 3
  %arrayidx.i.125.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.123.i.i.i
  %arg2.int.i.i.i = load i32, i32* %arrayidx.i.125.i.i.i
  %add.i.120.i.i.i = add nsw i32 %6, 4
  %arrayidx.i.122.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.120.i.i.i
  %arg3.int.i.i.i = load i32, i32* %arrayidx.i.122.i.i.i
  %add.i.117.i.i.i = add nsw i32 %6, 5
  %arrayidx.i.119.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.117.i.i.i
  %arg4.int.i.i.i = load i32, i32* %arrayidx.i.119.i.i.i
  %add.i.114.i.i.i = add nsw i32 %6, 6
  %arrayidx.i.116.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.114.i.i.i
  %arg5.int.i.i.i = load i32, i32* %arrayidx.i.116.i.i.i
  %12 = bitcast i32 %arg5.int.i.i.i to float
  %add.i.111.i.i.i = add nsw i32 %6, 7
  %arrayidx.i.113.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.111.i.i.i
  %arg6.int.i.i.i = load i32, i32* %arrayidx.i.113.i.i.i
  %13 = bitcast i32 %arg6.int.i.i.i to float
  %add.i.108.i.i.i = add nsw i32 %6, 8
  %arrayidx.i.110.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.108.i.i.i
  %arg7.int.i.i.i = load i32, i32* %arrayidx.i.110.i.i.i
  %14 = bitcast i32 %arg7.int.i.i.i to float
  %add.i.105.i.i.i = add nsw i32 %6, 9
  %arrayidx.i.107.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.105.i.i.i
  %arg8.int.i.i.i = load i32, i32* %arrayidx.i.107.i.i.i
  %15 = bitcast i32 %arg8.int.i.i.i to float
  %add.i.102.i.i.i = add nsw i32 %6, 10
  %arrayidx.i.104.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.102.i.i.i
  %arg9.int.i.i.i = load i32, i32* %arrayidx.i.104.i.i.i
  %16 = bitcast i32 %arg9.int.i.i.i to float
  %add.i.99.i.i.i = add nsw i32 %6, 11
  %arrayidx.i.101.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.99.i.i.i
  %arg10.int.i.i.i = load i32, i32* %arrayidx.i.101.i.i.i
  %17 = bitcast i32 %arg10.int.i.i.i to float
  %add.i.96.i.i.i = add nsw i32 %6, 12
  %arrayidx.i.98.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.96.i.i.i
  %arg11.int.i.i.i = load i32, i32* %arrayidx.i.98.i.i.i
  %18 = bitcast i32 %arg11.int.i.i.i to float
  %add.i.93.i.i.i = add nsw i32 %6, 13
  %arrayidx.i.95.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.93.i.i.i
  %arg12.int.i.i.i = load i32, i32* %arrayidx.i.95.i.i.i
  %19 = bitcast i32 %arg12.int.i.i.i to float
  %add.i.90.i.i.i = add nsw i32 %6, 14
  %arrayidx.i.92.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.90.i.i.i
  %arg13.int.i.i.i = load i32, i32* %arrayidx.i.92.i.i.i
  %v32.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v23.i.i.i, i32 0, i32 0
  store float %16, float* %v32.i.i.i, align 4
  %v33.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v23.i.i.i, i32 0, i32 1
  store float %17, float* %v33.i.i.i, align 4
  %v34.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v23.i.i.i, i32 0, i32 2
  store float %18, float* %v34.i.i.i, align 4
  %.i0.i.23.i.i = fdiv fast float 1.000000e+00, %16
  %.i1.i.24.i.i = fdiv fast float 1.000000e+00, %17
  %.i2.i.i.i = fdiv fast float 1.000000e+00, %18
  %.i0250.i.i.i = fmul fast float %.i0.i.23.i.i, %12
  %.i1251.i.i.i = fmul fast float %.i1.i.24.i.i, %13
  %.i2252.i.i.i = fmul fast float %.i2.i.i.i, %14
  %FAbs210.i.i.i = call float @dx.op.unary.f32(i32 6, float %16) #2
  %FAbs211.i.i.i = call float @dx.op.unary.f32(i32 6, float %17) #2
  %FAbs212.i.i.i = call float @dx.op.unary.f32(i32 6, float %18) #2
  %v35.i.i.i = fcmp fast ogt float %FAbs210.i.i.i, %FAbs211.i.i.i
  %v36.i.i.i = fcmp fast ogt float %FAbs210.i.i.i, %FAbs212.i.i.i
  %v37.i.i.i = and i1 %v35.i.i.i, %v36.i.i.i
  br i1 %v37.i.i.i, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i", label %20

; <label>:20                                      ; preds = %state_1004.Fallback_TraceRay.ss_0.i.i
  %v38.i.i.i = fcmp fast ogt float %FAbs211.i.i.i, %FAbs212.i.i.i
  br i1 %v38.i.i.i, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i", label %21

; <label>:21                                      ; preds = %20
  br label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i"

"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i": ; preds = %21, %20, %state_1004.Fallback_TraceRay.ss_0.i.i
  %.0171.i.i.i = phi i32 [ 2, %21 ], [ 0, %state_1004.Fallback_TraceRay.ss_0.i.i ], [ 1, %20 ]
  %v39.i.i.i = add nuw nsw i32 %.0171.i.i.i, 1
  %v40.i.i.i = urem i32 %v39.i.i.i, 3
  %v41.i.i.i = add nuw nsw i32 %.0171.i.i.i, 2
  %v42.i.i.i = urem i32 %v41.i.i.i, 3
  %v43.i.i.i = getelementptr [3 x float], [3 x float]* %v23.i.i.i, i32 0, i32 %.0171.i.i.i
  %v44.i.i.i = load float, float* %v43.i.i.i, align 4, !tbaa !42, !noalias !46
  %v45.i.i.i = fcmp fast olt float %v44.i.i.i, 0.000000e+00
  %worldRayData.i.i.5.0.i0.i.i.i = select i1 %v45.i.i.i, i32 %v42.i.i.i, i32 %v40.i.i.i
  %worldRayData.i.i.5.0.i1.i.i.i = select i1 %v45.i.i.i, i32 %v40.i.i.i, i32 %v42.i.i.i
  %v46.i.i.i = getelementptr [3 x float], [3 x float]* %v23.i.i.i, i32 0, i32 %worldRayData.i.i.5.0.i0.i.i.i
  %v47.i.i.i = load float, float* %v46.i.i.i, align 4, !tbaa !42, !noalias !46
  %v48.i.i.i = fdiv float %v47.i.i.i, %v44.i.i.i
  %v49.i.i.i = getelementptr [3 x float], [3 x float]* %v23.i.i.i, i32 0, i32 %worldRayData.i.i.5.0.i1.i.i.i
  %v50.i.i.i = load float, float* %v49.i.i.i, align 4, !tbaa !42, !noalias !46
  %v51.i.i.i = fdiv float %v50.i.i.i, %v44.i.i.i
  %v52.i.i.i = fdiv float 1.000000e+00, %v44.i.i.i
  %v53.i.i.i = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList_cbuffer, i32 0) #2
  %v54.i.i.i = extractvalue %dx.types.CBufRet.i32 %v53.i.i.i, 0
  %v55.i.i.i = extractvalue %dx.types.CBufRet.i32 %v53.i.i.i, 1
  %v56.i.i.i = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %groupIndex.i
  store i32 0, i32 addrspace(3)* %v56.i.i.i, align 4, !tbaa !49, !noalias !51
  %v57.i.i.i = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i.i.i.i.i, i32 0, i32 0
  store i32 1, i32* %v57.i.i.i, align 4, !tbaa !49
  %v58.i.i.i = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList_cbuffer, i32 0) #2
  %v59.i.i.i = extractvalue %dx.types.CBufRet.i32 %v58.i.i.i, 0
  %v60.i.i.i = extractvalue %dx.types.CBufRet.i32 %v58.i.i.i, 1
  %22 = add i32 %v60.i.i.i, 0
  %DescriptorHeapBufferTable_UAV_rawbuf291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 %22, i1 true)
  %v63.i.i.i = add i32 %v59.i.i.i, 4
  %v65.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf291, i32 %v63.i.i.i, i32 undef) #2
  %v66.i.i.i = extractvalue %dx.types.ResRet.i32 %v65.i.i.i, 0
  %v67.i.i.i = add i32 %v66.i.i.i, %v59.i.i.i
  %v68.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v22.i.i.i, i32 0, i32 0
  %v69.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v22.i.i.i, i32 0, i32 1
  %v70.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v22.i.i.i, i32 0, i32 2
  %v71.i.i.i = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i.i.i.i.i, i32 0, i32 1
  %v73.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v21.i.i.i, i32 0, i32 0
  %v74.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v21.i.i.i, i32 0, i32 1
  %v75.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v21.i.i.i, i32 0, i32 2
  %v76.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v19.i.i.i, i32 0, i32 0
  %v77.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v19.i.i.i, i32 0, i32 1
  %v78.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v19.i.i.i, i32 0, i32 2
  %v79.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v20.i.i.i, i32 0, i32 0
  %v80.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v20.i.i.i, i32 0, i32 1
  %v81.i.i.i = getelementptr inbounds [3 x float], [3 x float]* %v20.i.i.i, i32 0, i32 2
  br label %.backedge.i.i.i

.backedge.i.i.i:                                  ; preds = %35, %29, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i"
  %.i040 = phi float [ %.i0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i052, %35 ], [ %.i052, %29 ]
  %.i141 = phi float [ %.i1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i153, %35 ], [ %.i153, %29 ]
  %.i242 = phi float [ %.i2, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i254, %35 ], [ %.i254, %29 ]
  %.i343 = phi float [ %.i3, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i355, %35 ], [ %.i355, %29 ]
  %.i444 = phi float [ %.i4, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i456, %35 ], [ %.i456, %29 ]
  %.i545 = phi float [ %.i5, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i557, %35 ], [ %.i557, %29 ]
  %.i646 = phi float [ %.i6, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i658, %35 ], [ %.i658, %29 ]
  %.i747 = phi float [ %.i7, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i759, %35 ], [ %.i759, %29 ]
  %.i848 = phi float [ %.i8, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i860, %35 ], [ %.i860, %29 ]
  %.i949 = phi float [ %.i9, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i961, %35 ], [ %.i961, %29 ]
  %.i1050 = phi float [ %.i10, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i1062, %35 ], [ %.i1062, %29 ]
  %.i1151 = phi float [ %.i11, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i1163, %35 ], [ %.i1163, %29 ]
  %.i064 = phi float [ %.i016, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i076, %35 ], [ %.i076, %29 ]
  %.i165 = phi float [ %.i117, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i177, %35 ], [ %.i177, %29 ]
  %.i266 = phi float [ %.i218, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i278, %35 ], [ %.i278, %29 ]
  %.i367 = phi float [ %.i319, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i379, %35 ], [ %.i379, %29 ]
  %.i468 = phi float [ %.i420, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i480, %35 ], [ %.i480, %29 ]
  %.i569 = phi float [ %.i521, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i581, %35 ], [ %.i581, %29 ]
  %.i670 = phi float [ %.i622, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i682, %35 ], [ %.i682, %29 ]
  %.i771 = phi float [ %.i723, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i783, %35 ], [ %.i783, %29 ]
  %.i872 = phi float [ %.i824, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i884, %35 ], [ %.i884, %29 ]
  %.i973 = phi float [ %.i925, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i985, %35 ], [ %.i985, %29 ]
  %.i1074 = phi float [ %.i1026, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i1086, %35 ], [ %.i1086, %29 ]
  %.i1175 = phi float [ %.i1127, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.i1187, %35 ], [ %.i1187, %29 ]
  %23 = phi i32 [ %sub10.i.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %30, %35 ], [ %30, %29 ]
  %24 = phi i32 [ %sub6.i.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %31, %35 ], [ %31, %29 ]
  %25 = phi i32 [ -1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %32, %35 ], [ %32, %29 ]
  %26 = phi i32 [ %9, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %33, %35 ], [ %33, %29 ]
  %27 = phi float [ %19, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %34, %35 ], [ %34, %29 ]
  %.0174.i0.i.i.i = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.3.i0.i.i.i, %35 ], [ %.3.i0.i.i.i, %29 ]
  %.0174.i1.i.i.i = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %.3.i1.i.i.i, %35 ], [ %.3.i1.i.i.i, %29 ]
  %currentRayData.i.i.0.0.i0.i.i.i = phi float [ %12, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.0.1.i0.i.i.i, %29 ], [ %12, %35 ]
  %currentRayData.i.i.0.0.i1.i.i.i = phi float [ %13, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.0.1.i1.i.i.i, %29 ], [ %13, %35 ]
  %currentRayData.i.i.0.0.i2.i.i.i = phi float [ %14, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.0.1.i2.i.i.i, %29 ], [ %14, %35 ]
  %currentRayData.i.i.1.0.i0.i.i.i = phi float [ %16, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.1.1.i0.i.i.i, %29 ], [ %16, %35 ]
  %currentRayData.i.i.1.0.i1.i.i.i = phi float [ %17, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.1.1.i1.i.i.i, %29 ], [ %17, %35 ]
  %currentRayData.i.i.1.0.i2.i.i.i = phi float [ %18, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.1.1.i2.i.i.i, %29 ], [ %18, %35 ]
  %currentRayData.i.i.2.0.i0.i.i.i = phi float [ %.i0.i.23.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.2.1.i0.i.i.i, %29 ], [ %.i0.i.23.i.i, %35 ]
  %currentRayData.i.i.2.0.i1.i.i.i = phi float [ %.i1.i.24.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.2.1.i1.i.i.i, %29 ], [ %.i1.i.24.i.i, %35 ]
  %currentRayData.i.i.2.0.i2.i.i.i = phi float [ %.i2.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.2.1.i2.i.i.i, %29 ], [ %.i2.i.i.i, %35 ]
  %currentRayData.i.i.3.0.i0.i.i.i = phi float [ %.i0250.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.3.1.i0.i.i.i, %29 ], [ %.i0250.i.i.i, %35 ]
  %currentRayData.i.i.3.0.i1.i.i.i = phi float [ %.i1251.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.3.1.i1.i.i.i, %29 ], [ %.i1251.i.i.i, %35 ]
  %currentRayData.i.i.3.0.i2.i.i.i = phi float [ %.i2252.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.3.1.i2.i.i.i, %29 ], [ %.i2252.i.i.i, %35 ]
  %currentRayData.i.i.4.0.i0.i.i.i = phi float [ %v48.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.4.1.i0.i.i.i, %29 ], [ %v48.i.i.i, %35 ]
  %currentRayData.i.i.4.0.i1.i.i.i = phi float [ %v51.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.4.1.i1.i.i.i, %29 ], [ %v51.i.i.i, %35 ]
  %currentRayData.i.i.4.0.i2.i.i.i = phi float [ %v52.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.4.1.i2.i.i.i, %29 ], [ %v52.i.i.i, %35 ]
  %currentRayData.i.i.5.0.i0.i.i.i = phi i32 [ %worldRayData.i.i.5.0.i0.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.5.1.i0.i.i.i, %29 ], [ %worldRayData.i.i.5.0.i0.i.i.i, %35 ]
  %currentRayData.i.i.5.0.i1.i.i.i = phi i32 [ %worldRayData.i.i.5.0.i1.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.5.1.i1.i.i.i, %29 ], [ %worldRayData.i.i.5.0.i1.i.i.i, %35 ]
  %currentRayData.i.i.5.0.i2.i.i.i = phi i32 [ %.0171.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentRayData.i.i.5.1.i2.i.i.i, %29 ], [ %.0171.i.i.i, %35 ]
  %CurrentObjectToWorld.i.i167.0.i0.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i0.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i0.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i1.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i1.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i1.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i2.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i2.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i2.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i3.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i3.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i3.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i4.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i4.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i4.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i5.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i5.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i5.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i6.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i6.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i6.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i7.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i7.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i7.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i8.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i8.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i8.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i9.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i9.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i9.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i10.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i10.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i10.i.i.i, %29 ]
  %CurrentObjectToWorld.i.i167.0.i11.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.1.i11.i.i.i, %35 ], [ %CurrentObjectToWorld.i.i167.1.i11.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i0.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i0.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i0.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i1.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i1.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i1.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i2.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i2.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i2.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i3.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i3.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i3.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i4.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i4.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i4.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i5.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i5.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i5.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i6.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i6.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i6.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i7.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i7.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i7.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i8.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i8.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i8.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i9.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i9.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i9.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i10.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i10.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i10.i.i.i, %29 ]
  %CurrentWorldToObject.i.i168.0.i11.i.i.i = phi float [ 0.000000e+00, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.1.i11.i.i.i, %35 ], [ %CurrentWorldToObject.i.i168.1.i11.i.i.i, %29 ]
  %ResetMatrices.i.i.0.i.i.i = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %ResetMatrices.i.i.2.i.i.i, %29 ], [ 1, %35 ]
  %currentBVHIndex.i.i.0.i.i.i = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentBVHIndex.i.i.1.i.i.i, %29 ], [ %v374.i.i.i, %35 ]
  %currentGpuVA.i.i.0.i0.i.i.i = phi i32 [ %v54.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentGpuVA.i.i.1.i0.i.i.i, %29 ], [ %v376.i.i.i, %35 ]
  %currentGpuVA.i.i.0.i1.i.i.i = phi i32 [ %v55.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %currentGpuVA.i.i.1.i1.i.i.i, %29 ], [ %v377.i.i.i, %35 ]
  %instIdx.i.i.0.i.i.i = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %instIdx.i.i.1.i.i.i, %35 ], [ %instIdx.i.i.1.i.i.i, %29 ]
  %instFlags.i.i.0.i.i.i = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %instFlags.i.i.1.i.i.i, %35 ], [ %instFlags.i.i.1.i.i.i, %29 ]
  %instOffset.i.i.0.i.i.i = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %instOffset.i.i.1.i.i.i, %35 ], [ %instOffset.i.i.1.i.i.i, %29 ]
  %instId.i.i.0.i.i.i = phi i32 [ 0, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %instId.i.i.1.i.i.i, %35 ], [ %instId.i.i.1.i.i.i, %29 ]
  %stackPointer.i.i.0.i.i.i = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %stackPointer.i.i.1.i.i.i, %35 ], [ %stackPointer.i.i.1.i.i.i, %29 ]
  %resultBary.i.i.0.i0.i.i.i = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %resultBary.i.i.1.i0.i.i.i, %35 ], [ %resultBary.i.i.1.i0.i.i.i, %29 ]
  %resultBary.i.i.0.i1.i.i.i = phi float [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %resultBary.i.i.1.i1.i.i.i, %35 ], [ %resultBary.i.i.1.i1.i.i.i, %29 ]
  %resultTriId.i.i.0.i.i.i = phi i32 [ undef, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.i.i.i.i.i" ], [ %resultTriId.i.i.1.i.i.i, %35 ], [ %resultTriId.i.i.1.i.i.i, %29 ]
  %v82.i.i.i = add nsw i32 %stackPointer.i.i.0.i.i.i, -1
  %v83.i.i.i = shl i32 %v82.i.i.i, 6
  %v84.i.i.i = add i32 %v83.i.i.i, %groupIndex.i
  %v85.i.i.i = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %v84.i.i.i
  %v86.i.i.i = load i32, i32 addrspace(3)* %v85.i.i.i, align 4, !tbaa !49, !noalias !54
  %v87.i.i.i = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i.i.i.i.i, i32 0, i32 %currentBVHIndex.i.i.0.i.i.i
  %v88.i.i.i = load i32, i32* %v87.i.i.i, align 4, !tbaa !49
  %v89.i.i.i = add i32 %v88.i.i.i, -1
  store i32 %v89.i.i.i, i32* %v87.i.i.i, align 4, !tbaa !49
  %28 = add i32 %currentGpuVA.i.i.0.i1.i.i.i, 0
  %DescriptorHeapBufferTable_UAV_rawbuf = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 %28, i1 true)
  %v93.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf, i32 %currentGpuVA.i.i.0.i0.i.i.i, i32 undef) #2
  %v94.i.i.i = extractvalue %dx.types.ResRet.i32 %v93.i.i.i, 0
  %v95.i.i.i = shl i32 %v86.i.i.i, 5
  %v96.i.i.i = add i32 %v95.i.i.i, %currentGpuVA.i.i.0.i0.i.i.i
  %v97.i.i.i = add i32 %v96.i.i.i, %v94.i.i.i
  %v98.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf, i32 %v97.i.i.i, i32 undef) #2
  %v99.i.i.i = extractvalue %dx.types.ResRet.i32 %v98.i.i.i, 0
  %v100.i.i.i = extractvalue %dx.types.ResRet.i32 %v98.i.i.i, 1
  %v101.i.i.i = extractvalue %dx.types.ResRet.i32 %v98.i.i.i, 2
  %v102.i.i.i = extractvalue %dx.types.ResRet.i32 %v98.i.i.i, 3
  %v103.i.i.i = add i32 %v97.i.i.i, 16
  %v104.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf, i32 %v103.i.i.i, i32 undef) #2
  %v105.i.i.i = extractvalue %dx.types.ResRet.i32 %v104.i.i.i, 0
  %v106.i.i.i = extractvalue %dx.types.ResRet.i32 %v104.i.i.i, 1
  %v107.i.i.i = extractvalue %dx.types.ResRet.i32 %v104.i.i.i, 2
  %v108.i.i.i = extractvalue %dx.types.ResRet.i32 %v104.i.i.i, 3
  %v109.i.i.i = bitcast i32 %v99.i.i.i to float
  %v110.i.i.i = bitcast i32 %v100.i.i.i to float
  %v111.i.i.i = bitcast i32 %v101.i.i.i to float
  %v112.i.i.i = bitcast i32 %v105.i.i.i to float
  %v113.i.i.i = bitcast i32 %v106.i.i.i to float
  %v114.i.i.i = bitcast i32 %v107.i.i.i to float
  %.i0253.i.i.i = fmul fast float %v109.i.i.i, %currentRayData.i.i.2.0.i0.i.i.i
  %.i1254.i.i.i = fmul fast float %v110.i.i.i, %currentRayData.i.i.2.0.i1.i.i.i
  %.i2255.i.i.i = fmul fast float %v111.i.i.i, %currentRayData.i.i.2.0.i2.i.i.i
  %.i0256.i.i.i = fsub fast float %.i0253.i.i.i, %currentRayData.i.i.3.0.i0.i.i.i
  %.i1257.i.i.i = fsub fast float %.i1254.i.i.i, %currentRayData.i.i.3.0.i1.i.i.i
  %.i2258.i.i.i = fsub fast float %.i2255.i.i.i, %currentRayData.i.i.3.0.i2.i.i.i
  %FAbs207.i.i.i = call float @dx.op.unary.f32(i32 6, float %currentRayData.i.i.2.0.i0.i.i.i) #2
  %FAbs208.i.i.i = call float @dx.op.unary.f32(i32 6, float %currentRayData.i.i.2.0.i1.i.i.i) #2
  %FAbs209.i.i.i = call float @dx.op.unary.f32(i32 6, float %currentRayData.i.i.2.0.i2.i.i.i) #2
  %.i0259.i.i.i = fmul fast float %v112.i.i.i, %FAbs207.i.i.i
  %.i1260.i.i.i = fmul fast float %FAbs208.i.i.i, %v113.i.i.i
  %.i2261.i.i.i = fmul fast float %FAbs209.i.i.i, %v114.i.i.i
  %.i0262.i.i.i = fadd fast float %.i0259.i.i.i, %.i0256.i.i.i
  %.i1263.i.i.i = fadd fast float %.i1260.i.i.i, %.i1257.i.i.i
  %.i2264.i.i.i = fadd fast float %.i2261.i.i.i, %.i2258.i.i.i
  %.i0268.i.i.i = fsub fast float %.i0256.i.i.i, %.i0259.i.i.i
  %.i1269.i.i.i = fsub fast float %.i1257.i.i.i, %.i1260.i.i.i
  %.i2270.i.i.i = fsub fast float %.i2258.i.i.i, %.i2261.i.i.i
  %FMax231.i.i.i = call float @dx.op.binary.f32(i32 35, float %.i0268.i.i.i, float %.i1269.i.i.i) #2
  %FMax230.i.i.i = call float @dx.op.binary.f32(i32 35, float %FMax231.i.i.i, float %.i2270.i.i.i) #2
  %FMin229.i.i.i = call float @dx.op.binary.f32(i32 36, float %.i0262.i.i.i, float %.i1263.i.i.i) #2
  %FMin228.i.i.i = call float @dx.op.binary.f32(i32 36, float %FMin229.i.i.i, float %.i2264.i.i.i) #2
  %FMax.i.i.i = call float @dx.op.binary.f32(i32 35, float %FMax230.i.i.i, float 0.000000e+00) #2
  %FMin.i.i.i = call float @dx.op.binary.f32(i32 36, float %FMin228.i.i.i, float %27) #2
  %v115.i.i.i = fcmp fast olt float %FMax.i.i.i, %FMin.i.i.i
  br i1 %v115.i.i.i, label %42, label %29

; <label>:29                                      ; preds = %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i", %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i", %58, %55, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i", %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i", %.backedge.i.i.i
  %.i052 = phi float [ %.i040, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i040, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i040.CurrentWorldToObject.i.i168.0.i0.i.i.i, %58 ], [ %.i040.CurrentWorldToObject.i.i168.0.i0.i.i.i, %55 ], [ %.i040, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i040, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i040, %.backedge.i.i.i ]
  %.i153 = phi float [ %.i141, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i141, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i141.CurrentWorldToObject.i.i168.0.i1.i.i.i, %58 ], [ %.i141.CurrentWorldToObject.i.i168.0.i1.i.i.i, %55 ], [ %.i141, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i141, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i141, %.backedge.i.i.i ]
  %.i254 = phi float [ %.i242, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i242, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i242.CurrentWorldToObject.i.i168.0.i2.i.i.i, %58 ], [ %.i242.CurrentWorldToObject.i.i168.0.i2.i.i.i, %55 ], [ %.i242, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i242, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i242, %.backedge.i.i.i ]
  %.i355 = phi float [ %.i343, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i343, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i343.CurrentWorldToObject.i.i168.0.i3.i.i.i, %58 ], [ %.i343.CurrentWorldToObject.i.i168.0.i3.i.i.i, %55 ], [ %.i343, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i343, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i343, %.backedge.i.i.i ]
  %.i456 = phi float [ %.i444, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i444, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i444.CurrentWorldToObject.i.i168.0.i4.i.i.i, %58 ], [ %.i444.CurrentWorldToObject.i.i168.0.i4.i.i.i, %55 ], [ %.i444, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i444, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i444, %.backedge.i.i.i ]
  %.i557 = phi float [ %.i545, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i545, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i545.CurrentWorldToObject.i.i168.0.i5.i.i.i, %58 ], [ %.i545.CurrentWorldToObject.i.i168.0.i5.i.i.i, %55 ], [ %.i545, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i545, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i545, %.backedge.i.i.i ]
  %.i658 = phi float [ %.i646, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i646, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i646.CurrentWorldToObject.i.i168.0.i6.i.i.i, %58 ], [ %.i646.CurrentWorldToObject.i.i168.0.i6.i.i.i, %55 ], [ %.i646, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i646, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i646, %.backedge.i.i.i ]
  %.i759 = phi float [ %.i747, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i747, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i747.CurrentWorldToObject.i.i168.0.i7.i.i.i, %58 ], [ %.i747.CurrentWorldToObject.i.i168.0.i7.i.i.i, %55 ], [ %.i747, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i747, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i747, %.backedge.i.i.i ]
  %.i860 = phi float [ %.i848, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i848, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i848.CurrentWorldToObject.i.i168.0.i8.i.i.i, %58 ], [ %.i848.CurrentWorldToObject.i.i168.0.i8.i.i.i, %55 ], [ %.i848, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i848, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i848, %.backedge.i.i.i ]
  %.i961 = phi float [ %.i949, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i949, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i949.CurrentWorldToObject.i.i168.0.i9.i.i.i, %58 ], [ %.i949.CurrentWorldToObject.i.i168.0.i9.i.i.i, %55 ], [ %.i949, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i949, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i949, %.backedge.i.i.i ]
  %.i1062 = phi float [ %.i1050, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i1050, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i1050.CurrentWorldToObject.i.i168.0.i10.i.i.i, %58 ], [ %.i1050.CurrentWorldToObject.i.i168.0.i10.i.i.i, %55 ], [ %.i1050, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i1050, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i1050, %.backedge.i.i.i ]
  %.i1163 = phi float [ %.i1151, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i1151, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i1151.CurrentWorldToObject.i.i168.0.i11.i.i.i, %58 ], [ %.i1151.CurrentWorldToObject.i.i168.0.i11.i.i.i, %55 ], [ %.i1151, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i1151, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i1151, %.backedge.i.i.i ]
  %.i076 = phi float [ %.i064, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i064, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i064.CurrentObjectToWorld.i.i167.0.i0.i.i.i, %58 ], [ %.i064.CurrentObjectToWorld.i.i167.0.i0.i.i.i, %55 ], [ %.i064, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i064, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i064, %.backedge.i.i.i ]
  %.i177 = phi float [ %.i165, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i165, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i165.CurrentObjectToWorld.i.i167.0.i1.i.i.i, %58 ], [ %.i165.CurrentObjectToWorld.i.i167.0.i1.i.i.i, %55 ], [ %.i165, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i165, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i165, %.backedge.i.i.i ]
  %.i278 = phi float [ %.i266, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i266, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i266.CurrentObjectToWorld.i.i167.0.i2.i.i.i, %58 ], [ %.i266.CurrentObjectToWorld.i.i167.0.i2.i.i.i, %55 ], [ %.i266, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i266, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i266, %.backedge.i.i.i ]
  %.i379 = phi float [ %.i367, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i367, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i367.CurrentObjectToWorld.i.i167.0.i3.i.i.i, %58 ], [ %.i367.CurrentObjectToWorld.i.i167.0.i3.i.i.i, %55 ], [ %.i367, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i367, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i367, %.backedge.i.i.i ]
  %.i480 = phi float [ %.i468, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i468, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i468.CurrentObjectToWorld.i.i167.0.i4.i.i.i, %58 ], [ %.i468.CurrentObjectToWorld.i.i167.0.i4.i.i.i, %55 ], [ %.i468, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i468, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i468, %.backedge.i.i.i ]
  %.i581 = phi float [ %.i569, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i569, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i569.CurrentObjectToWorld.i.i167.0.i5.i.i.i, %58 ], [ %.i569.CurrentObjectToWorld.i.i167.0.i5.i.i.i, %55 ], [ %.i569, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i569, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i569, %.backedge.i.i.i ]
  %.i682 = phi float [ %.i670, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i670, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i670.CurrentObjectToWorld.i.i167.0.i6.i.i.i, %58 ], [ %.i670.CurrentObjectToWorld.i.i167.0.i6.i.i.i, %55 ], [ %.i670, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i670, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i670, %.backedge.i.i.i ]
  %.i783 = phi float [ %.i771, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i771, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i771.CurrentObjectToWorld.i.i167.0.i7.i.i.i, %58 ], [ %.i771.CurrentObjectToWorld.i.i167.0.i7.i.i.i, %55 ], [ %.i771, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i771, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i771, %.backedge.i.i.i ]
  %.i884 = phi float [ %.i872, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i872, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i872.CurrentObjectToWorld.i.i167.0.i8.i.i.i, %58 ], [ %.i872.CurrentObjectToWorld.i.i167.0.i8.i.i.i, %55 ], [ %.i872, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i872, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i872, %.backedge.i.i.i ]
  %.i985 = phi float [ %.i973, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i973, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i973.CurrentObjectToWorld.i.i167.0.i9.i.i.i, %58 ], [ %.i973.CurrentObjectToWorld.i.i167.0.i9.i.i.i, %55 ], [ %.i973, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i973, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i973, %.backedge.i.i.i ]
  %.i1086 = phi float [ %.i1074, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i1074, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i1074.CurrentObjectToWorld.i.i167.0.i10.i.i.i, %58 ], [ %.i1074.CurrentObjectToWorld.i.i167.0.i10.i.i.i, %55 ], [ %.i1074, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i1074, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i1074, %.backedge.i.i.i ]
  %.i1187 = phi float [ %.i1175, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.i1175, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.i1175.CurrentObjectToWorld.i.i167.0.i11.i.i.i, %58 ], [ %.i1175.CurrentObjectToWorld.i.i167.0.i11.i.i.i, %55 ], [ %.i1175, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.i1175, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.i1175, %.backedge.i.i.i ]
  %30 = phi i32 [ %23, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %23, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %24, %58 ], [ %24, %55 ], [ %23, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %23, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %23, %.backedge.i.i.i ]
  %31 = phi i32 [ %24, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %24, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %23, %58 ], [ %23, %55 ], [ %24, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %24, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %24, %.backedge.i.i.i ]
  %32 = phi i32 [ %25, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %25, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %instIdx.i.i.0.i.i.i, %58 ], [ %instIdx.i.i.0.i.i.i, %55 ], [ %25, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %25, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %25, %.backedge.i.i.i ]
  %33 = phi i32 [ %26, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %26, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %v349.i.i.i, %58 ], [ %v349.i.i.i, %55 ], [ %26, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %26, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %26, %.backedge.i.i.i ]
  %34 = phi float [ %27, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %27, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.0169.i.i.i, %58 ], [ %.0169.i.i.i, %55 ], [ %27, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %27, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %27, %.backedge.i.i.i ]
  %.3.i0.i.i.i = phi float [ %.0174.i0.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.0174.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.2.i0.i.i.i, %58 ], [ %.2.i0.i.i.i, %55 ], [ %.2.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.0174.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.0174.i0.i.i.i, %.backedge.i.i.i ]
  %.3.i1.i.i.i = phi float [ %.0174.i1.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %.0174.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.2.i1.i.i.i, %58 ], [ %.2.i1.i.i.i, %55 ], [ %.2.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %.0174.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %.0174.i1.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.0.1.i0.i.i.i = phi float [ %FMad237.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.0.0.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.0.0.i0.i.i.i, %58 ], [ %currentRayData.i.i.0.0.i0.i.i.i, %55 ], [ %currentRayData.i.i.0.0.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.0.0.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.0.0.i0.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.0.1.i1.i.i.i = phi float [ %FMad234.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.0.0.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.0.0.i1.i.i.i, %58 ], [ %currentRayData.i.i.0.0.i1.i.i.i, %55 ], [ %currentRayData.i.i.0.0.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.0.0.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.0.0.i1.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.0.1.i2.i.i.i = phi float [ %FMad.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.0.0.i2.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.0.0.i2.i.i.i, %58 ], [ %currentRayData.i.i.0.0.i2.i.i.i, %55 ], [ %currentRayData.i.i.0.0.i2.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.0.0.i2.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.0.0.i2.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.1.1.i0.i.i.i = phi float [ %FMad246.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.1.0.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.1.0.i0.i.i.i, %58 ], [ %currentRayData.i.i.1.0.i0.i.i.i, %55 ], [ %currentRayData.i.i.1.0.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.1.0.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.1.0.i0.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.1.1.i1.i.i.i = phi float [ %FMad243.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.1.0.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.1.0.i1.i.i.i, %58 ], [ %currentRayData.i.i.1.0.i1.i.i.i, %55 ], [ %currentRayData.i.i.1.0.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.1.0.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.1.0.i1.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.1.1.i2.i.i.i = phi float [ %FMad240.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.1.0.i2.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.1.0.i2.i.i.i, %58 ], [ %currentRayData.i.i.1.0.i2.i.i.i, %55 ], [ %currentRayData.i.i.1.0.i2.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.1.0.i2.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.1.0.i2.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.2.1.i0.i.i.i = phi float [ %.i0294.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.2.0.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.2.0.i0.i.i.i, %58 ], [ %currentRayData.i.i.2.0.i0.i.i.i, %55 ], [ %currentRayData.i.i.2.0.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.2.0.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.2.0.i0.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.2.1.i1.i.i.i = phi float [ %.i1295.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.2.0.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.2.0.i1.i.i.i, %58 ], [ %currentRayData.i.i.2.0.i1.i.i.i, %55 ], [ %currentRayData.i.i.2.0.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.2.0.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.2.0.i1.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.2.1.i2.i.i.i = phi float [ %.i2296.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.2.0.i2.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.2.0.i2.i.i.i, %58 ], [ %currentRayData.i.i.2.0.i2.i.i.i, %55 ], [ %currentRayData.i.i.2.0.i2.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.2.0.i2.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.2.0.i2.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.3.1.i0.i.i.i = phi float [ %.i0297.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.3.0.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.3.0.i0.i.i.i, %58 ], [ %currentRayData.i.i.3.0.i0.i.i.i, %55 ], [ %currentRayData.i.i.3.0.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.3.0.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.3.0.i0.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.3.1.i1.i.i.i = phi float [ %.i1298.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.3.0.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.3.0.i1.i.i.i, %58 ], [ %currentRayData.i.i.3.0.i1.i.i.i, %55 ], [ %currentRayData.i.i.3.0.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.3.0.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.3.0.i1.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.3.1.i2.i.i.i = phi float [ %.i2299.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.3.0.i2.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.3.0.i2.i.i.i, %58 ], [ %currentRayData.i.i.3.0.i2.i.i.i, %55 ], [ %currentRayData.i.i.3.0.i2.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.3.0.i2.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.3.0.i2.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.4.1.i0.i.i.i = phi float [ %v212.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.4.0.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.4.0.i0.i.i.i, %58 ], [ %currentRayData.i.i.4.0.i0.i.i.i, %55 ], [ %currentRayData.i.i.4.0.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.4.0.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.4.0.i0.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.4.1.i1.i.i.i = phi float [ %v215.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.4.0.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.4.0.i1.i.i.i, %58 ], [ %currentRayData.i.i.4.0.i1.i.i.i, %55 ], [ %currentRayData.i.i.4.0.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.4.0.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.4.0.i1.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.4.1.i2.i.i.i = phi float [ %v216.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.4.0.i2.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.4.0.i2.i.i.i, %58 ], [ %currentRayData.i.i.4.0.i2.i.i.i, %55 ], [ %currentRayData.i.i.4.0.i2.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.4.0.i2.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.4.0.i2.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.5.1.i0.i.i.i = phi i32 [ %.5.0.i0.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.5.0.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.5.0.i0.i.i.i, %58 ], [ %currentRayData.i.i.5.0.i0.i.i.i, %55 ], [ %currentRayData.i.i.5.0.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.5.0.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.5.0.i0.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.5.1.i1.i.i.i = phi i32 [ %.5.0.i1.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.5.0.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.5.0.i1.i.i.i, %58 ], [ %currentRayData.i.i.5.0.i1.i.i.i, %55 ], [ %currentRayData.i.i.5.0.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.5.0.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.5.0.i1.i.i.i, %.backedge.i.i.i ]
  %currentRayData.i.i.5.1.i2.i.i.i = phi i32 [ %.0172.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentRayData.i.i.5.0.i2.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentRayData.i.i.5.0.i2.i.i.i, %58 ], [ %currentRayData.i.i.5.0.i2.i.i.i, %55 ], [ %currentRayData.i.i.5.0.i2.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.5.0.i2.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentRayData.i.i.5.0.i2.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i0.i.i.i = phi float [ %v180.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i0.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i0.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i0.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i1.i.i.i = phi float [ %v181.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i1.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i1.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i1.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i2.i.i.i = phi float [ %v182.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i2.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i2.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i2.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i2.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i2.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i2.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i3.i.i.i = phi float [ %v183.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i3.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i3.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i3.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i3.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i3.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i3.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i4.i.i.i = phi float [ %v184.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i4.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i4.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i4.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i4.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i4.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i4.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i5.i.i.i = phi float [ %v185.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i5.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i5.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i5.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i5.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i5.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i5.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i6.i.i.i = phi float [ %v186.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i6.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i6.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i6.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i6.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i6.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i6.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i7.i.i.i = phi float [ %v187.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i7.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i7.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i7.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i7.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i7.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i7.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i8.i.i.i = phi float [ %v188.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i8.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i8.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i8.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i8.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i8.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i8.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i9.i.i.i = phi float [ %v189.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i9.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i9.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i9.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i9.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i9.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i9.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i10.i.i.i = phi float [ %v190.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i10.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i10.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i10.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i10.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i10.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i10.i.i.i, %.backedge.i.i.i ]
  %CurrentObjectToWorld.i.i167.1.i11.i.i.i = phi float [ %v191.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i11.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i11.i.i.i, %58 ], [ %CurrentObjectToWorld.i.i167.0.i11.i.i.i, %55 ], [ %CurrentObjectToWorld.i.i167.0.i11.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i11.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentObjectToWorld.i.i167.0.i11.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i0.i.i.i = phi float [ %v163.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i0.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i0.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i0.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i1.i.i.i = phi float [ %v164.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i1.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i1.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i1.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i2.i.i.i = phi float [ %v165.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i2.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i2.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i2.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i2.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i2.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i2.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i3.i.i.i = phi float [ %v166.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i3.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i3.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i3.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i3.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i3.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i3.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i4.i.i.i = phi float [ %v167.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i4.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i4.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i4.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i4.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i4.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i4.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i5.i.i.i = phi float [ %v168.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i5.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i5.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i5.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i5.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i5.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i5.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i6.i.i.i = phi float [ %v169.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i6.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i6.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i6.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i6.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i6.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i6.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i7.i.i.i = phi float [ %v170.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i7.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i7.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i7.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i7.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i7.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i7.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i8.i.i.i = phi float [ %v171.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i8.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i8.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i8.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i8.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i8.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i8.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i9.i.i.i = phi float [ %v172.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i9.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i9.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i9.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i9.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i9.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i9.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i10.i.i.i = phi float [ %v173.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i10.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i10.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i10.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i10.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i10.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i10.i.i.i, %.backedge.i.i.i ]
  %CurrentWorldToObject.i.i168.1.i11.i.i.i = phi float [ %v174.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i11.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i11.i.i.i, %58 ], [ %CurrentWorldToObject.i.i168.0.i11.i.i.i, %55 ], [ %CurrentWorldToObject.i.i168.0.i11.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i11.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %CurrentWorldToObject.i.i168.0.i11.i.i.i, %.backedge.i.i.i ]
  %ResetMatrices.i.i.2.i.i.i = phi i32 [ %ResetMatrices.i.i.0.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %ResetMatrices.i.i.0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ 0, %58 ], [ 0, %55 ], [ %ResetMatrices.i.i.0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %ResetMatrices.i.i.0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %ResetMatrices.i.i.0.i.i.i, %.backedge.i.i.i ]
  %currentBVHIndex.i.i.1.i.i.i = phi i32 [ 1, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ 0, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentBVHIndex.i.i.0.i.i.i, %58 ], [ %currentBVHIndex.i.i.0.i.i.i, %55 ], [ %currentBVHIndex.i.i.0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentBVHIndex.i.i.0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentBVHIndex.i.i.0.i.i.i, %.backedge.i.i.i ]
  %currentGpuVA.i.i.1.i0.i.i.i = phi i32 [ %v143.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentGpuVA.i.i.0.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentGpuVA.i.i.0.i0.i.i.i, %58 ], [ %currentGpuVA.i.i.0.i0.i.i.i, %55 ], [ %currentGpuVA.i.i.0.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentGpuVA.i.i.0.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentGpuVA.i.i.0.i0.i.i.i, %.backedge.i.i.i ]
  %currentGpuVA.i.i.1.i1.i.i.i = phi i32 [ %v144.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %currentGpuVA.i.i.0.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %currentGpuVA.i.i.0.i1.i.i.i, %58 ], [ %currentGpuVA.i.i.0.i1.i.i.i, %55 ], [ %currentGpuVA.i.i.0.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %currentGpuVA.i.i.0.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %currentGpuVA.i.i.0.i1.i.i.i, %.backedge.i.i.i ]
  %instIdx.i.i.1.i.i.i = phi i32 [ %v118.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %v118.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %instIdx.i.i.0.i.i.i, %58 ], [ %instIdx.i.i.0.i.i.i, %55 ], [ %instIdx.i.i.0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %instIdx.i.i.0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %instIdx.i.i.0.i.i.i, %.backedge.i.i.i ]
  %instFlags.i.i.1.i.i.i = phi i32 [ %v192.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %instFlags.i.i.0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %instFlags.i.i.0.i.i.i, %58 ], [ %instFlags.i.i.0.i.i.i, %55 ], [ %instFlags.i.i.0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %instFlags.i.i.0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %instFlags.i.i.0.i.i.i, %.backedge.i.i.i ]
  %instOffset.i.i.1.i.i.i = phi i32 [ %v175.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %v175.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %instOffset.i.i.0.i.i.i, %58 ], [ %instOffset.i.i.0.i.i.i, %55 ], [ %instOffset.i.i.0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %instOffset.i.i.0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %instOffset.i.i.0.i.i.i, %.backedge.i.i.i ]
  %instId.i.i.1.i.i.i = phi i32 [ %v176.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %v176.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %instId.i.i.0.i.i.i, %58 ], [ %instId.i.i.0.i.i.i, %55 ], [ %instId.i.i.0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %instId.i.i.0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %instId.i.i.0.i.i.i, %.backedge.i.i.i ]
  %stackPointer.i.i.1.i.i.i = phi i32 [ %stackPointer.i.i.0.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %v82.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %v82.i.i.i, %58 ], [ %v82.i.i.i, %55 ], [ %v82.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %v369.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %v82.i.i.i, %.backedge.i.i.i ]
  %resultBary.i.i.1.i0.i.i.i = phi float [ %resultBary.i.i.0.i0.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %resultBary.i.i.0.i0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.0.i0.i.i.i, %58 ], [ %.0.i0.i.i.i, %55 ], [ %.0.i0.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %resultBary.i.i.0.i0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %resultBary.i.i.0.i0.i.i.i, %.backedge.i.i.i ]
  %resultBary.i.i.1.i1.i.i.i = phi float [ %resultBary.i.i.0.i1.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %resultBary.i.i.0.i1.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.0.i1.i.i.i, %58 ], [ %.0.i1.i.i.i, %55 ], [ %.0.i1.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %resultBary.i.i.0.i1.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %resultBary.i.i.0.i1.i.i.i, %.backedge.i.i.i ]
  %resultTriId.i.i.1.i.i.i = phi i32 [ %resultTriId.i.i.0.i.i.i, %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i" ], [ %resultTriId.i.i.0.i.i.i, %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i" ], [ %.0170.i.i.i, %58 ], [ %.0170.i.i.i, %55 ], [ %.0170.i.i.i, %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i" ], [ %resultTriId.i.i.0.i.i.i, %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i" ], [ %resultTriId.i.i.0.i.i.i, %.backedge.i.i.i ]
  %v371.i.i.i = getelementptr inbounds [2 x i32], [2 x i32]* %nodesToProcess.i.i.i.i.i, i32 0, i32 %currentBVHIndex.i.i.1.i.i.i
  %v372.i.i.i = load i32, i32* %v371.i.i.i, align 4, !tbaa !49
  %v373.i.i.i = icmp eq i32 %v372.i.i.i, 0
  br i1 %v373.i.i.i, label %35, label %.backedge.i.i.i

; <label>:35                                      ; preds = %29
  %v374.i.i.i = add i32 %currentBVHIndex.i.i.1.i.i.i, -1
  %v375.i.i.i = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %AccelerationStructureList_cbuffer, i32 0) #2
  %v376.i.i.i = extractvalue %dx.types.CBufRet.i32 %v375.i.i.i, 0
  %v377.i.i.i = extractvalue %dx.types.CBufRet.i32 %v375.i.i.i, 1
  %v378.i.i.i = load i32, i32* %v57.i.i.i, align 4, !tbaa !49
  %v379.i.i.i = icmp eq i32 %v378.i.i.i, 0
  br i1 %v379.i.i.i, label %"\01?Traverse@@YA_NIII@Z.exit.i.i.i.i", label %.backedge.i.i.i

"\01?Traverse@@YA_NIII@Z.exit.i.i.i.i":           ; preds = %35
  %v380.i.i.i = icmp eq i32 %32, -1
  br i1 %v380.i.i.i, label %41, label %36

; <label>:36                                      ; preds = %"\01?Traverse@@YA_NIII@Z.exit.i.i.i.i"
  %v381.i.i.i = and i32 %arg0.int.i.i.i, 8
  %v382.i.i.i = icmp eq i32 %v381.i.i.i, 0
  br i1 %v382.i.i.i, label %40, label %"\01?Traverse@@YAHIIII@Z.exit.i.i.i"

"\01?Traverse@@YAHIIII@Z.exit.i.i.i":             ; preds = %41, %40, %36
  %stateID.i.0.i.i.i = phi i32 [ %v389.i.i.i, %40 ], [ %v395.i.i.i, %41 ], [ 0, %36 ]
  %v396.i.i.i = icmp eq i32 %stateID.i.0.i.i.i, 0
  br i1 %v396.i.i.i, label %37, label %remat_begin.i.i.i

remat_begin.i.i.i:                                ; preds = %"\01?Traverse@@YAHIIII@Z.exit.i.i.i"
  %arrayidx.i.64.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %sub.i.134.i.i.i
  store i32 1005, i32* %arrayidx.i.64.i.i.i
  %add.i.60.i.i.i = add nsw i32 %sub.i.134.i.i.i, 4
  %arrayidx.i.62.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.60.i.i.i
  store i32 %v24.int.i.i.i2, i32* %arrayidx.i.62.i.i.i
  br label %while.cond.i

; <label>:37                                      ; preds = %"\01?Traverse@@YAHIIII@Z.exit.i.i.i"
  %add.i.49.i.i.i = add nsw i32 %6, -1
  %arrayidx.i.51.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.49.i.i.i
  %38 = load i32, i32* %arrayidx.i.51.i.i.i, align 4
  %add2.i.54.i.i.i = add nsw i32 %6, -2
  %arrayidx4.i.56.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add2.i.54.i.i.i
  %39 = load i32, i32* %arrayidx4.i.56.i.i.i, align 4
  %arrayidx.i.46.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %6
  %ret.stateId.i.27.i.i = load i32, i32* %arrayidx.i.46.i.i.i
  br label %while.cond.i

; <label>:40                                      ; preds = %36
  %v384.i.i.i = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %Constants_cbuffer, i32 0) #2
  %v385.i.i.i = extractvalue %dx.types.CBufRet.i32 %v384.i.i.i, 2
  %v386.i.i.i = mul i32 %v385.i.i.i, %33
  %v388.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %HitGroupShaderTable_texture_rawbuf, i32 %v386.i.i.i, i32 undef) #2
  %v389.i.i.i = extractvalue %dx.types.ResRet.i32 %v388.i.i.i, 0
  br label %"\01?Traverse@@YAHIIII@Z.exit.i.i.i"

; <label>:41                                      ; preds = %"\01?Traverse@@YA_NIII@Z.exit.i.i.i.i"
  %v390.i.i.i = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %Constants_cbuffer, i32 0) #2
  %v391.i.i.i = extractvalue %dx.types.CBufRet.i32 %v390.i.i.i, 3
  %v392.i.i.i = mul i32 %v391.i.i.i, %arg4.int.i.i.i
  %v394.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %MissShaderTable_texture_rawbuf, i32 %v392.i.i.i, i32 undef) #2
  %v395.i.i.i = extractvalue %dx.types.ResRet.i32 %v394.i.i.i, 0
  br label %"\01?Traverse@@YAHIIII@Z.exit.i.i.i"

; <label>:42                                      ; preds = %.backedge.i.i.i
  %v116.i.i.i = icmp slt i32 %v102.i.i.i, 0
  br i1 %v116.i.i.i, label %43, label %"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i"

"\01?StackPush2@@YAXAIAH_NIII@Z.exit.i.i.i.i.i":  ; preds = %42
  %v365.i.i.i = and i32 %v102.i.i.i, 16777215
  store i32 %v365.i.i.i, i32 addrspace(3)* %v85.i.i.i, align 4, !tbaa !49, !noalias !57
  %v366.i.i.i = shl i32 %stackPointer.i.i.0.i.i.i, 6
  %v367.i.i.i = add i32 %v366.i.i.i, %groupIndex.i
  %v368.i.i.i = getelementptr [2048 x i32], [2048 x i32] addrspace(3)* @"\01?stack@@3PAIA", i32 0, i32 %v367.i.i.i
  store i32 %v108.i.i.i, i32 addrspace(3)* %v368.i.i.i, align 4, !tbaa !49, !noalias !57
  %v369.i.i.i = add nsw i32 %stackPointer.i.i.0.i.i.i, 1
  %v370.i.i.i = add i32 %v88.i.i.i, 1
  store i32 %v370.i.i.i, i32* %v87.i.i.i, align 4, !tbaa !49
  br label %29

; <label>:43                                      ; preds = %42
  %v117.i.i.i = icmp eq i32 %currentBVHIndex.i.i.0.i.i.i, 0
  br i1 %v117.i.i.i, label %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i", label %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i"

"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i":        ; preds = %43
  %v217.i.i.i = and i32 %arg0.int.i.i.i, 64
  %v218.i.i.i = icmp eq i32 %v217.i.i.i, 0
  %v219.i.i.i = and i32 %v102.i.i.i, 16777215
  %v220.i.i.i = and i32 %v108.i.i.i, 1
  %v221.i.i.i = icmp eq i32 %v220.i.i.i, 0
  br i1 %v221.i.i.i, label %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i", label %44

; <label>:44                                      ; preds = %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i"
  %v222.i.i.i = add i32 %currentGpuVA.i.i.0.i0.i.i.i, 4
  %v223.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf, i32 %v222.i.i.i, i32 undef) #2
  %v224.i.i.i = extractvalue %dx.types.ResRet.i32 %v223.i.i.i, 0
  %v225.i.i.i = mul nuw nsw i32 %v219.i.i.i, 36
  %v226.i.i.i = add i32 %v225.i.i.i, %currentGpuVA.i.i.0.i0.i.i.i
  %v227.i.i.i = add i32 %v226.i.i.i, %v224.i.i.i
  %v228.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf, i32 %v227.i.i.i, i32 undef) #2
  %v229.i.i.i = extractvalue %dx.types.ResRet.i32 %v228.i.i.i, 0
  %v230.i.i.i = extractvalue %dx.types.ResRet.i32 %v228.i.i.i, 1
  %v231.i.i.i = extractvalue %dx.types.ResRet.i32 %v228.i.i.i, 2
  %v232.i.i.i = extractvalue %dx.types.ResRet.i32 %v228.i.i.i, 3
  %.i0300.i.i.i = bitcast i32 %v229.i.i.i to float
  %.i1301.i.i.i = bitcast i32 %v230.i.i.i to float
  %.i2302.i.i.i = bitcast i32 %v231.i.i.i to float
  %.i3303.i.i.i = bitcast i32 %v232.i.i.i to float
  %v233.i.i.i = add i32 %v227.i.i.i, 16
  %v234.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf, i32 %v233.i.i.i, i32 undef) #2
  %v235.i.i.i = extractvalue %dx.types.ResRet.i32 %v234.i.i.i, 0
  %v236.i.i.i = extractvalue %dx.types.ResRet.i32 %v234.i.i.i, 1
  %v237.i.i.i = extractvalue %dx.types.ResRet.i32 %v234.i.i.i, 2
  %v238.i.i.i = extractvalue %dx.types.ResRet.i32 %v234.i.i.i, 3
  %.i0304.i.i.i = bitcast i32 %v235.i.i.i to float
  %.i1305.i.i.i = bitcast i32 %v236.i.i.i to float
  %.i2306.i.i.i = bitcast i32 %v237.i.i.i to float
  %.i3307.i.i.i = bitcast i32 %v238.i.i.i to float
  %v239.i.i.i = add i32 %v227.i.i.i, 32
  %v240.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf, i32 %v239.i.i.i, i32 undef) #2
  %v241.i.i.i = extractvalue %dx.types.ResRet.i32 %v240.i.i.i, 0
  %v242.i.i.i = bitcast i32 %v241.i.i.i to float
  %v243.i.i.i = and i32 %instFlags.i.i.0.i.i.i, 1
  %v244.i.i.i = icmp eq i32 %v243.i.i.i, 0
  %v245.i.i.i = shl i32 %instFlags.i.i.0.i.i.i, 3
  %v246.i.i.i = and i32 %v245.i.i.i, 16
  %v247.i.i.i = add nuw nsw i32 %v246.i.i.i, 16
  %v248.i.i.i = xor i32 %v246.i.i.i, 16
  %v249.i.i.i = add nuw nsw i32 %v248.i.i.i, 16
  %v250.i.i.i = and i32 %arg0.int.i.i.i, %v247.i.i.i
  %v251.i.i.i = icmp ne i32 %v250.i.i.i, 0
  %v252.i.i.i = and i1 %v244.i.i.i, %v251.i.i.i
  %v253.i.i.i = and i32 %arg0.int.i.i.i, %v249.i.i.i
  %v254.i.i.i = icmp ne i32 %v253.i.i.i, 0
  %v255.i.i.i = and i1 %v244.i.i.i, %v254.i.i.i
  %.i0308.i.i.i = fsub fast float %.i0300.i.i.i, %currentRayData.i.i.0.0.i0.i.i.i
  %.i1309.i.i.i = fsub fast float %.i1301.i.i.i, %currentRayData.i.i.0.0.i1.i.i.i
  %.i2310.i.i.i = fsub fast float %.i2302.i.i.i, %currentRayData.i.i.0.0.i2.i.i.i
  store float %.i0308.i.i.i, float* %v73.i.i.i, align 4
  store float %.i1309.i.i.i, float* %v74.i.i.i, align 4
  store float %.i2310.i.i.i, float* %v75.i.i.i, align 4
  %v256.i.i.i = getelementptr [3 x float], [3 x float]* %v21.i.i.i, i32 0, i32 %currentRayData.i.i.5.0.i0.i.i.i
  %v257.i.i.i = load float, float* %v256.i.i.i, align 4, !tbaa !42, !noalias !60
  %v258.i.i.i = getelementptr [3 x float], [3 x float]* %v21.i.i.i, i32 0, i32 %currentRayData.i.i.5.0.i1.i.i.i
  %v259.i.i.i = load float, float* %v258.i.i.i, align 4, !tbaa !42, !noalias !60
  %v260.i.i.i = getelementptr [3 x float], [3 x float]* %v21.i.i.i, i32 0, i32 %currentRayData.i.i.5.0.i2.i.i.i
  %v261.i.i.i = load float, float* %v260.i.i.i, align 4, !tbaa !42, !noalias !60
  %.i0311.i.i.i = fsub fast float %.i3303.i.i.i, %currentRayData.i.i.0.0.i0.i.i.i
  %.i1312.i.i.i = fsub fast float %.i0304.i.i.i, %currentRayData.i.i.0.0.i1.i.i.i
  %.i2313.i.i.i = fsub fast float %.i1305.i.i.i, %currentRayData.i.i.0.0.i2.i.i.i
  store float %.i0311.i.i.i, float* %v76.i.i.i, align 4
  store float %.i1312.i.i.i, float* %v77.i.i.i, align 4
  store float %.i2313.i.i.i, float* %v78.i.i.i, align 4
  %v262.i.i.i = getelementptr [3 x float], [3 x float]* %v19.i.i.i, i32 0, i32 %currentRayData.i.i.5.0.i0.i.i.i
  %v263.i.i.i = load float, float* %v262.i.i.i, align 4, !tbaa !42, !noalias !60
  %v264.i.i.i = getelementptr [3 x float], [3 x float]* %v19.i.i.i, i32 0, i32 %currentRayData.i.i.5.0.i1.i.i.i
  %v265.i.i.i = load float, float* %v264.i.i.i, align 4, !tbaa !42, !noalias !60
  %v266.i.i.i = getelementptr [3 x float], [3 x float]* %v19.i.i.i, i32 0, i32 %currentRayData.i.i.5.0.i2.i.i.i
  %v267.i.i.i = load float, float* %v266.i.i.i, align 4, !tbaa !42, !noalias !60
  %.i0314.i.i.i = fsub fast float %.i2306.i.i.i, %currentRayData.i.i.0.0.i0.i.i.i
  %.i1315.i.i.i = fsub fast float %.i3307.i.i.i, %currentRayData.i.i.0.0.i1.i.i.i
  %.i2316.i.i.i = fsub fast float %v242.i.i.i, %currentRayData.i.i.0.0.i2.i.i.i
  store float %.i0314.i.i.i, float* %v79.i.i.i, align 4
  store float %.i1315.i.i.i, float* %v80.i.i.i, align 4
  store float %.i2316.i.i.i, float* %v81.i.i.i, align 4
  %v268.i.i.i = getelementptr [3 x float], [3 x float]* %v20.i.i.i, i32 0, i32 %currentRayData.i.i.5.0.i0.i.i.i
  %v269.i.i.i = load float, float* %v268.i.i.i, align 4, !tbaa !42, !noalias !60
  %v270.i.i.i = getelementptr [3 x float], [3 x float]* %v20.i.i.i, i32 0, i32 %currentRayData.i.i.5.0.i1.i.i.i
  %v271.i.i.i = load float, float* %v270.i.i.i, align 4, !tbaa !42, !noalias !60
  %v272.i.i.i = getelementptr [3 x float], [3 x float]* %v20.i.i.i, i32 0, i32 %currentRayData.i.i.5.0.i2.i.i.i
  %v273.i.i.i = load float, float* %v272.i.i.i, align 4, !tbaa !42, !noalias !60
  %.i0317.i.i.i = fmul float %currentRayData.i.i.4.0.i0.i.i.i, %v261.i.i.i
  %.i1318.i.i.i = fmul float %currentRayData.i.i.4.0.i1.i.i.i, %v261.i.i.i
  %.i0320.i.i.i = fsub float %v257.i.i.i, %.i0317.i.i.i
  %.i1321.i.i.i = fsub float %v259.i.i.i, %.i1318.i.i.i
  %.i0322.i.i.i = fmul float %currentRayData.i.i.4.0.i0.i.i.i, %v267.i.i.i
  %.i1323.i.i.i = fmul float %currentRayData.i.i.4.0.i1.i.i.i, %v267.i.i.i
  %.i0325.i.i.i = fsub float %v263.i.i.i, %.i0322.i.i.i
  %.i1326.i.i.i = fsub float %v265.i.i.i, %.i1323.i.i.i
  %.i0327.i.i.i = fmul float %currentRayData.i.i.4.0.i0.i.i.i, %v273.i.i.i
  %.i1328.i.i.i = fmul float %currentRayData.i.i.4.0.i1.i.i.i, %v273.i.i.i
  %.i0330.i.i.i = fsub float %v269.i.i.i, %.i0327.i.i.i
  %.i1331.i.i.i = fsub float %v271.i.i.i, %.i1328.i.i.i
  %v274.i.i.i = fmul float %.i1326.i.i.i, %.i0330.i.i.i
  %v275.i.i.i = fmul float %.i0325.i.i.i, %.i1331.i.i.i
  %v276.i.i.i = fsub float %v274.i.i.i, %v275.i.i.i
  %v277.i.i.i = fmul float %.i0320.i.i.i, %.i1331.i.i.i
  %v278.i.i.i = fmul float %.i1321.i.i.i, %.i0330.i.i.i
  %v279.i.i.i = fsub float %v277.i.i.i, %v278.i.i.i
  %v280.i.i.i = fmul float %.i1321.i.i.i, %.i0325.i.i.i
  %v281.i.i.i = fmul float %.i0320.i.i.i, %.i1326.i.i.i
  %v282.i.i.i = fsub float %v280.i.i.i, %v281.i.i.i
  %v283.i.i.i = fadd fast float %v279.i.i.i, %v282.i.i.i
  %v284.i.i.i = fadd fast float %v283.i.i.i, %v276.i.i.i
  br i1 %v255.i.i.i, label %54, label %45

; <label>:45                                      ; preds = %44
  br i1 %v252.i.i.i, label %53, label %46

; <label>:46                                      ; preds = %45
  %v295.i.i.i = fcmp fast olt float %v276.i.i.i, 0.000000e+00
  %v296.i.i.i = fcmp fast olt float %v279.i.i.i, 0.000000e+00
  %v297.i.i.i = or i1 %v295.i.i.i, %v296.i.i.i
  %v298.i.i.i = fcmp fast olt float %v282.i.i.i, 0.000000e+00
  %v299.i.i.i = or i1 %v298.i.i.i, %v297.i.i.i
  %v300.i.i.i = fcmp fast ogt float %v276.i.i.i, 0.000000e+00
  %v301.i.i.i = fcmp fast ogt float %v279.i.i.i, 0.000000e+00
  %v302.i.i.i = or i1 %v300.i.i.i, %v301.i.i.i
  %v303.i.i.i = fcmp fast ogt float %v282.i.i.i, 0.000000e+00
  %v304.i.i.i = or i1 %v303.i.i.i, %v302.i.i.i
  %v305.i.i.i = and i1 %v299.i.i.i, %v304.i.i.i
  %v306.i.i.i = fcmp fast oeq float %v284.i.i.i, 0.000000e+00
  %or.cond180.i.i.i = or i1 %v306.i.i.i, %v305.i.i.i
  br i1 %or.cond180.i.i.i, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i", label %47

; <label>:47                                      ; preds = %54, %53, %46
  %v307.i.i.i = fmul fast float %v276.i.i.i, %v261.i.i.i
  %v308.i.i.i = fmul fast float %v279.i.i.i, %v267.i.i.i
  %v309.i.i.i = fmul fast float %v282.i.i.i, %v273.i.i.i
  %tmp.i.i.i = fadd fast float %v308.i.i.i, %v309.i.i.i
  %tmp421.i.i.i = fadd fast float %tmp.i.i.i, %v307.i.i.i
  %tmp422.i.i.i = fmul fast float %tmp421.i.i.i, %currentRayData.i.i.4.0.i2.i.i.i
  br i1 %v255.i.i.i, label %52, label %48

; <label>:48                                      ; preds = %47
  br i1 %v252.i.i.i, label %51, label %49

; <label>:49                                      ; preds = %48
  %v318.i.i.i = fcmp fast ogt float %v284.i.i.i, 0.000000e+00
  %v319.i.i.i = select i1 %v318.i.i.i, i32 1, i32 -1
  %v320.i.i.i = bitcast float %tmp422.i.i.i to i32
  %v321.i.i.i = xor i32 %v320.i.i.i, %v319.i.i.i
  %v322.i.i.i = uitofp i32 %v321.i.i.i to float
  %v323.i.i.i = bitcast float %v284.i.i.i to i32
  %v324.i.i.i = xor i32 %v319.i.i.i, %v323.i.i.i
  %v325.i.i.i = uitofp i32 %v324.i.i.i to float
  %v326.i.i.i = fmul fast float %v325.i.i.i, %27
  %v327.i.i.i = fcmp fast ogt float %v322.i.i.i, %v326.i.i.i
  br i1 %v327.i.i.i, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i", label %50

; <label>:50                                      ; preds = %52, %51, %49
  %v328.i.i.i = fdiv fast float 1.000000e+00, %v284.i.i.i
  %v329.i.i.i = fmul fast float %v328.i.i.i, %v276.i.i.i
  %v330.i.i.i = fmul fast float %v328.i.i.i, %v279.i.i.i
  %v331.i.i.i = fmul fast float %v328.i.i.i, %tmp422.i.i.i
  br label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i"

; <label>:51                                      ; preds = %48
  %v314.i.i.i = fcmp fast olt float %tmp422.i.i.i, 0.000000e+00
  %v315.i.i.i = fmul fast float %v284.i.i.i, %27
  %v316.i.i.i = fcmp fast ogt float %tmp422.i.i.i, %v315.i.i.i
  %v317.i.i.i = or i1 %v314.i.i.i, %v316.i.i.i
  br i1 %v317.i.i.i, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i", label %50

; <label>:52                                      ; preds = %47
  %v310.i.i.i = fcmp fast ogt float %tmp422.i.i.i, 0.000000e+00
  %v311.i.i.i = fmul fast float %v284.i.i.i, %27
  %v312.i.i.i = fcmp fast olt float %tmp422.i.i.i, %v311.i.i.i
  %v313.i.i.i = or i1 %v310.i.i.i, %v312.i.i.i
  br i1 %v313.i.i.i, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i", label %50

"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i": ; preds = %54, %53, %52, %51, %50, %49, %46
  %.1.i0.i.i.i = phi float [ %.0174.i0.i.i.i, %54 ], [ %.0174.i0.i.i.i, %52 ], [ %v329.i.i.i, %50 ], [ %.0174.i0.i.i.i, %51 ], [ %.0174.i0.i.i.i, %49 ], [ %.0174.i0.i.i.i, %53 ], [ %.0174.i0.i.i.i, %46 ]
  %.1.i1.i.i.i = phi float [ %.0174.i1.i.i.i, %54 ], [ %.0174.i1.i.i.i, %52 ], [ %v330.i.i.i, %50 ], [ %.0174.i1.i.i.i, %51 ], [ %.0174.i1.i.i.i, %49 ], [ %.0174.i1.i.i.i, %53 ], [ %.0174.i1.i.i.i, %46 ]
  %.0173.i.i.i = phi float [ %27, %54 ], [ %27, %52 ], [ %v331.i.i.i, %50 ], [ %27, %51 ], [ %27, %49 ], [ %27, %53 ], [ %27, %46 ]
  %v332.i.i.i = fcmp fast olt float %.0173.i.i.i, %27
  %v333.i.i.i = fcmp fast ogt float %.0173.i.i.i, %15
  %v334.i.i.i = and i1 %v332.i.i.i, %v333.i.i.i
  %..i.i.i = select i1 %v334.i.i.i, i1 true, i1 false
  %.resultTriId.i.i.0.i.i.i = select i1 %v334.i.i.i, i32 %v219.i.i.i, i32 %resultTriId.i.i.0.i.i.i
  %.0173.RayTCurrent201.i.i.i = select i1 %v334.i.i.i, float %.0173.i.i.i, float %27
  %.1.i0.resultBary.i.i.0.i0.i.i.i = select i1 %v334.i.i.i, float %.1.i0.i.i.i, float %resultBary.i.i.0.i0.i.i.i
  %.1.i1.resultBary.i.i.0.i1.i.i.i = select i1 %v334.i.i.i, float %.1.i1.i.i.i, float %resultBary.i.i.0.i1.i.i.i
  br label %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i"

; <label>:53                                      ; preds = %45
  %v290.i.i.i = fcmp fast olt float %v276.i.i.i, 0.000000e+00
  %v291.i.i.i = fcmp fast olt float %v279.i.i.i, 0.000000e+00
  %v292.i.i.i = or i1 %v290.i.i.i, %v291.i.i.i
  %v293.i.i.i = fcmp fast olt float %v282.i.i.i, 0.000000e+00
  %v294.i.i.i = or i1 %v293.i.i.i, %v292.i.i.i
  %.old.i.i.i = fcmp fast oeq float %v284.i.i.i, 0.000000e+00
  %or.cond181.i.i.i = or i1 %v294.i.i.i, %.old.i.i.i
  br i1 %or.cond181.i.i.i, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i", label %47

; <label>:54                                      ; preds = %44
  %v285.i.i.i = fcmp fast ogt float %v276.i.i.i, 0.000000e+00
  %v286.i.i.i = fcmp fast ogt float %v279.i.i.i, 0.000000e+00
  %v287.i.i.i = or i1 %v285.i.i.i, %v286.i.i.i
  %v288.i.i.i = fcmp fast ogt float %v282.i.i.i, 0.000000e+00
  %v289.i.i.i = or i1 %v288.i.i.i, %v287.i.i.i
  %.old.old.i.i.i = fcmp fast oeq float %v284.i.i.i, 0.000000e+00
  %or.cond182.i.i.i = or i1 %v289.i.i.i, %.old.old.i.i.i
  br i1 %or.cond182.i.i.i, label %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i", label %47

"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i": ; preds = %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i", %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i"
  %.2.i0.i.i.i = phi float [ %.0174.i0.i.i.i, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i" ], [ %.1.i0.i.i.i, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i" ]
  %.2.i1.i.i.i = phi float [ %.0174.i1.i.i.i, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i" ], [ %.1.i1.i.i.i, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i" ]
  %bIsIntersect.i.i.i.0.i.i.i = phi i1 [ false, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i" ], [ %..i.i.i, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i" ]
  %.0170.i.i.i = phi i32 [ %resultTriId.i.i.0.i.i.i, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i" ], [ %.resultTriId.i.i.0.i.i.i, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i" ]
  %.0169.i.i.i = phi float [ %27, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i" ], [ %.0173.RayTCurrent201.i.i.i, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i" ]
  %.0.i0.i.i.i = phi float [ %resultBary.i.i.0.i0.i.i.i, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i" ], [ %.1.i0.resultBary.i.i.0.i0.i.i.i, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i" ]
  %.0.i1.i.i.i = phi float [ %resultBary.i.i.0.i1.i.i.i, %"\01?IsOpaque@@YA_N_NII@Z.exit.i.i.i.i.i" ], [ %.1.i1.resultBary.i.i.0.i1.i.i.i, %"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z.exit.i.i.i.i.i.i" ]
  %v335.i.i.i = and i1 %v218.i.i.i, %bIsIntersect.i.i.i.0.i.i.i
  br i1 %v335.i.i.i, label %55, label %29

; <label>:55                                      ; preds = %"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z.exit.i.i.i.i.i"
  %v337.i.i.i = add i32 %currentGpuVA.i.i.0.i0.i.i.i, 8
  %v339.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf, i32 %v337.i.i.i, i32 undef) #2
  %v340.i.i.i = extractvalue %dx.types.ResRet.i32 %v339.i.i.i, 0
  %v341.i.i.i = shl i32 %.0170.i.i.i, 3
  %v342.i.i.i = add i32 %v341.i.i.i, %currentGpuVA.i.i.0.i0.i.i.i
  %v343.i.i.i = add i32 %v342.i.i.i, %v340.i.i.i
  %v344.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf, i32 %v343.i.i.i, i32 undef) #2
  %v345.i.i.i = extractvalue %dx.types.ResRet.i32 %v344.i.i.i, 0
  %v347.i.i.i = mul i32 %v345.i.i.i, %arg3.int.i.i.i
  %v348.i.i.i = add i32 %instOffset.i.i.0.i.i.i, %arg2.int.i.i.i
  %v349.i.i.i = add i32 %v348.i.i.i, %v347.i.i.i
  %56 = bitcast float %.0.i0.i.i.i to i32
  %arrayidx.i.42.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %23
  store i32 %56, i32* %arrayidx.i.42.i.i.i
  %57 = bitcast float %.0.i1.i.i.i to i32
  %add.i.38.i.i.i = add nsw i32 %23, 1
  %arrayidx.i.40.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.38.i.i.i
  store i32 %57, i32* %arrayidx.i.40.i.i.i
  %v350.i.i.i = icmp eq i32 %ResetMatrices.i.i.0.i.i.i, 0
  %.i040.CurrentWorldToObject.i.i168.0.i0.i.i.i = select i1 %v350.i.i.i, float %.i040, float %CurrentWorldToObject.i.i168.0.i0.i.i.i
  %.i141.CurrentWorldToObject.i.i168.0.i1.i.i.i = select i1 %v350.i.i.i, float %.i141, float %CurrentWorldToObject.i.i168.0.i1.i.i.i
  %.i242.CurrentWorldToObject.i.i168.0.i2.i.i.i = select i1 %v350.i.i.i, float %.i242, float %CurrentWorldToObject.i.i168.0.i2.i.i.i
  %.i343.CurrentWorldToObject.i.i168.0.i3.i.i.i = select i1 %v350.i.i.i, float %.i343, float %CurrentWorldToObject.i.i168.0.i3.i.i.i
  %.i444.CurrentWorldToObject.i.i168.0.i4.i.i.i = select i1 %v350.i.i.i, float %.i444, float %CurrentWorldToObject.i.i168.0.i4.i.i.i
  %.i545.CurrentWorldToObject.i.i168.0.i5.i.i.i = select i1 %v350.i.i.i, float %.i545, float %CurrentWorldToObject.i.i168.0.i5.i.i.i
  %.i646.CurrentWorldToObject.i.i168.0.i6.i.i.i = select i1 %v350.i.i.i, float %.i646, float %CurrentWorldToObject.i.i168.0.i6.i.i.i
  %.i747.CurrentWorldToObject.i.i168.0.i7.i.i.i = select i1 %v350.i.i.i, float %.i747, float %CurrentWorldToObject.i.i168.0.i7.i.i.i
  %.i848.CurrentWorldToObject.i.i168.0.i8.i.i.i = select i1 %v350.i.i.i, float %.i848, float %CurrentWorldToObject.i.i168.0.i8.i.i.i
  %.i949.CurrentWorldToObject.i.i168.0.i9.i.i.i = select i1 %v350.i.i.i, float %.i949, float %CurrentWorldToObject.i.i168.0.i9.i.i.i
  %.i1050.CurrentWorldToObject.i.i168.0.i10.i.i.i = select i1 %v350.i.i.i, float %.i1050, float %CurrentWorldToObject.i.i168.0.i10.i.i.i
  %.i1151.CurrentWorldToObject.i.i168.0.i11.i.i.i = select i1 %v350.i.i.i, float %.i1151, float %CurrentWorldToObject.i.i168.0.i11.i.i.i
  %.i064.CurrentObjectToWorld.i.i167.0.i0.i.i.i = select i1 %v350.i.i.i, float %.i064, float %CurrentObjectToWorld.i.i167.0.i0.i.i.i
  %.i165.CurrentObjectToWorld.i.i167.0.i1.i.i.i = select i1 %v350.i.i.i, float %.i165, float %CurrentObjectToWorld.i.i167.0.i1.i.i.i
  %.i266.CurrentObjectToWorld.i.i167.0.i2.i.i.i = select i1 %v350.i.i.i, float %.i266, float %CurrentObjectToWorld.i.i167.0.i2.i.i.i
  %.i367.CurrentObjectToWorld.i.i167.0.i3.i.i.i = select i1 %v350.i.i.i, float %.i367, float %CurrentObjectToWorld.i.i167.0.i3.i.i.i
  %.i468.CurrentObjectToWorld.i.i167.0.i4.i.i.i = select i1 %v350.i.i.i, float %.i468, float %CurrentObjectToWorld.i.i167.0.i4.i.i.i
  %.i569.CurrentObjectToWorld.i.i167.0.i5.i.i.i = select i1 %v350.i.i.i, float %.i569, float %CurrentObjectToWorld.i.i167.0.i5.i.i.i
  %.i670.CurrentObjectToWorld.i.i167.0.i6.i.i.i = select i1 %v350.i.i.i, float %.i670, float %CurrentObjectToWorld.i.i167.0.i6.i.i.i
  %.i771.CurrentObjectToWorld.i.i167.0.i7.i.i.i = select i1 %v350.i.i.i, float %.i771, float %CurrentObjectToWorld.i.i167.0.i7.i.i.i
  %.i872.CurrentObjectToWorld.i.i167.0.i8.i.i.i = select i1 %v350.i.i.i, float %.i872, float %CurrentObjectToWorld.i.i167.0.i8.i.i.i
  %.i973.CurrentObjectToWorld.i.i167.0.i9.i.i.i = select i1 %v350.i.i.i, float %.i973, float %CurrentObjectToWorld.i.i167.0.i9.i.i.i
  %.i1074.CurrentObjectToWorld.i.i167.0.i10.i.i.i = select i1 %v350.i.i.i, float %.i1074, float %CurrentObjectToWorld.i.i167.0.i10.i.i.i
  %.i1175.CurrentObjectToWorld.i.i167.0.i11.i.i.i = select i1 %v350.i.i.i, float %.i1175, float %CurrentObjectToWorld.i.i167.0.i11.i.i.i
  %v363.i.i.i = and i32 %arg0.int.i.i.i, 4
  %v364.i.i.i = icmp eq i32 %v363.i.i.i, 0
  br i1 %v364.i.i.i, label %29, label %58

; <label>:58                                      ; preds = %55
  store i32 0, i32* %v71.i.i.i, align 4, !tbaa !49
  store i32 0, i32* %v57.i.i.i, align 4, !tbaa !49
  br label %29

"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i": ; preds = %43
  %v118.i.i.i = and i32 %v102.i.i.i, 2147483647
  %v119.i.i.i = mul i32 %v118.i.i.i, 112
  %v120.i.i.i = add i32 %v67.i.i.i, %v119.i.i.i
  %v122.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf291, i32 %v120.i.i.i, i32 undef) #2
  %v123.i.i.i = extractvalue %dx.types.ResRet.i32 %v122.i.i.i, 0
  %v124.i.i.i = extractvalue %dx.types.ResRet.i32 %v122.i.i.i, 1
  %v125.i.i.i = extractvalue %dx.types.ResRet.i32 %v122.i.i.i, 2
  %v126.i.i.i = extractvalue %dx.types.ResRet.i32 %v122.i.i.i, 3
  %v127.i.i.i = add i32 %v120.i.i.i, 16
  %v128.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf291, i32 %v127.i.i.i, i32 undef) #2
  %v129.i.i.i = extractvalue %dx.types.ResRet.i32 %v128.i.i.i, 0
  %v130.i.i.i = extractvalue %dx.types.ResRet.i32 %v128.i.i.i, 1
  %v131.i.i.i = extractvalue %dx.types.ResRet.i32 %v128.i.i.i, 2
  %v132.i.i.i = extractvalue %dx.types.ResRet.i32 %v128.i.i.i, 3
  %v133.i.i.i = add i32 %v120.i.i.i, 32
  %v134.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf291, i32 %v133.i.i.i, i32 undef) #2
  %v135.i.i.i = extractvalue %dx.types.ResRet.i32 %v134.i.i.i, 0
  %v136.i.i.i = extractvalue %dx.types.ResRet.i32 %v134.i.i.i, 1
  %v137.i.i.i = extractvalue %dx.types.ResRet.i32 %v134.i.i.i, 2
  %v138.i.i.i = extractvalue %dx.types.ResRet.i32 %v134.i.i.i, 3
  %v139.i.i.i = add i32 %v120.i.i.i, 48
  %v140.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf291, i32 %v139.i.i.i, i32 undef) #2
  %v141.i.i.i = extractvalue %dx.types.ResRet.i32 %v140.i.i.i, 0
  %v142.i.i.i = extractvalue %dx.types.ResRet.i32 %v140.i.i.i, 1
  %v143.i.i.i = extractvalue %dx.types.ResRet.i32 %v140.i.i.i, 2
  %v144.i.i.i = extractvalue %dx.types.ResRet.i32 %v140.i.i.i, 3
  %v145.i.i.i = add i32 %v120.i.i.i, 64
  %v146.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf291, i32 %v145.i.i.i, i32 undef) #2
  %v147.i.i.i = extractvalue %dx.types.ResRet.i32 %v146.i.i.i, 0
  %v148.i.i.i = extractvalue %dx.types.ResRet.i32 %v146.i.i.i, 1
  %v149.i.i.i = extractvalue %dx.types.ResRet.i32 %v146.i.i.i, 2
  %v150.i.i.i = extractvalue %dx.types.ResRet.i32 %v146.i.i.i, 3
  %v151.i.i.i = add i32 %v120.i.i.i, 80
  %v152.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf291, i32 %v151.i.i.i, i32 undef) #2
  %v153.i.i.i = extractvalue %dx.types.ResRet.i32 %v152.i.i.i, 0
  %v154.i.i.i = extractvalue %dx.types.ResRet.i32 %v152.i.i.i, 1
  %v155.i.i.i = extractvalue %dx.types.ResRet.i32 %v152.i.i.i, 2
  %v156.i.i.i = extractvalue %dx.types.ResRet.i32 %v152.i.i.i, 3
  %v157.i.i.i = add i32 %v120.i.i.i, 96
  %v158.i.i.i = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %DescriptorHeapBufferTable_UAV_rawbuf291, i32 %v157.i.i.i, i32 undef) #2
  %v159.i.i.i = extractvalue %dx.types.ResRet.i32 %v158.i.i.i, 0
  %v160.i.i.i = extractvalue %dx.types.ResRet.i32 %v158.i.i.i, 1
  %v161.i.i.i = extractvalue %dx.types.ResRet.i32 %v158.i.i.i, 2
  %v162.i.i.i = extractvalue %dx.types.ResRet.i32 %v158.i.i.i, 3
  %v163.i.i.i = bitcast i32 %v123.i.i.i to float
  %v164.i.i.i = bitcast i32 %v124.i.i.i to float
  %v165.i.i.i = bitcast i32 %v125.i.i.i to float
  %v166.i.i.i = bitcast i32 %v126.i.i.i to float
  %v167.i.i.i = bitcast i32 %v129.i.i.i to float
  %v168.i.i.i = bitcast i32 %v130.i.i.i to float
  %v169.i.i.i = bitcast i32 %v131.i.i.i to float
  %v170.i.i.i = bitcast i32 %v132.i.i.i to float
  %v171.i.i.i = bitcast i32 %v135.i.i.i to float
  %v172.i.i.i = bitcast i32 %v136.i.i.i to float
  %v173.i.i.i = bitcast i32 %v137.i.i.i to float
  %v174.i.i.i = bitcast i32 %v138.i.i.i to float
  %v175.i.i.i = and i32 %v142.i.i.i, 16777215
  %v176.i.i.i = and i32 %v141.i.i.i, 16777215
  %v177.i.i.i = lshr i32 %v141.i.i.i, 24
  %v178.i.i.i = and i32 %v177.i.i.i, %arg1.int.i.i.i
  %v179.i.i.i = icmp eq i32 %v178.i.i.i, 0
  %v180.i.i.i = bitcast i32 %v147.i.i.i to float
  %v181.i.i.i = bitcast i32 %v148.i.i.i to float
  %v182.i.i.i = bitcast i32 %v149.i.i.i to float
  %v183.i.i.i = bitcast i32 %v150.i.i.i to float
  %v184.i.i.i = bitcast i32 %v153.i.i.i to float
  %v185.i.i.i = bitcast i32 %v154.i.i.i to float
  %v186.i.i.i = bitcast i32 %v155.i.i.i to float
  %v187.i.i.i = bitcast i32 %v156.i.i.i to float
  %v188.i.i.i = bitcast i32 %v159.i.i.i to float
  %v189.i.i.i = bitcast i32 %v160.i.i.i to float
  %v190.i.i.i = bitcast i32 %v161.i.i.i to float
  %v191.i.i.i = bitcast i32 %v162.i.i.i to float
  br i1 %v179.i.i.i, label %29, label %59

; <label>:59                                      ; preds = %"\01?LoadBVHMetadata@@YA?AUBVHMetadata@@URWByteAddressBuffer@@I@Z.exit.i.i176.i.i.i"
  store i32 0, i32 addrspace(3)* %v85.i.i.i, align 4, !tbaa !49, !noalias !68
  %v192.i.i.i = lshr i32 %v142.i.i.i, 24
  %v193.i.i.i = fmul fast float %16, %v163.i.i.i
  %FMad248.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %17, float %v164.i.i.i, float %v193.i.i.i) #2
  %FMad247.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %18, float %v165.i.i.i, float %FMad248.i.i.i) #2
  %FMad246.i.i.i = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %v166.i.i.i, float %FMad247.i.i.i) #2
  %v194.i.i.i = fmul fast float %16, %v167.i.i.i
  %FMad245.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %17, float %v168.i.i.i, float %v194.i.i.i) #2
  %FMad244.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %18, float %v169.i.i.i, float %FMad245.i.i.i) #2
  %FMad243.i.i.i = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %v170.i.i.i, float %FMad244.i.i.i) #2
  %v195.i.i.i = fmul fast float %16, %v171.i.i.i
  %FMad242.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %17, float %v172.i.i.i, float %v195.i.i.i) #2
  %FMad241.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %18, float %v173.i.i.i, float %FMad242.i.i.i) #2
  %FMad240.i.i.i = call float @dx.op.tertiary.f32(i32 46, float 0.000000e+00, float %v174.i.i.i, float %FMad241.i.i.i) #2
  %v196.i.i.i = fmul fast float %12, %v163.i.i.i
  %FMad239.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %13, float %v164.i.i.i, float %v196.i.i.i) #2
  %FMad238.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %14, float %v165.i.i.i, float %FMad239.i.i.i) #2
  %FMad237.i.i.i = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %v166.i.i.i, float %FMad238.i.i.i) #2
  %v197.i.i.i = fmul fast float %12, %v167.i.i.i
  %FMad236.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %13, float %v168.i.i.i, float %v197.i.i.i) #2
  %FMad235.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %14, float %v169.i.i.i, float %FMad236.i.i.i) #2
  %FMad234.i.i.i = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %v170.i.i.i, float %FMad235.i.i.i) #2
  %v198.i.i.i = fmul fast float %12, %v171.i.i.i
  %FMad233.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %13, float %v172.i.i.i, float %v198.i.i.i) #2
  %FMad232.i.i.i = call float @dx.op.tertiary.f32(i32 46, float %14, float %v173.i.i.i, float %FMad233.i.i.i) #2
  %FMad.i.i.i = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %v174.i.i.i, float %FMad232.i.i.i) #2
  store float %FMad246.i.i.i, float* %v68.i.i.i, align 4
  store float %FMad243.i.i.i, float* %v69.i.i.i, align 4
  store float %FMad240.i.i.i, float* %v70.i.i.i, align 4
  %.i0294.i.i.i = fdiv fast float 1.000000e+00, %FMad246.i.i.i
  %.i1295.i.i.i = fdiv fast float 1.000000e+00, %FMad243.i.i.i
  %.i2296.i.i.i = fdiv fast float 1.000000e+00, %FMad240.i.i.i
  %.i0297.i.i.i = fmul fast float %.i0294.i.i.i, %FMad237.i.i.i
  %.i1298.i.i.i = fmul fast float %.i1295.i.i.i, %FMad234.i.i.i
  %.i2299.i.i.i = fmul fast float %.i2296.i.i.i, %FMad.i.i.i
  %FAbs.i.i.i = call float @dx.op.unary.f32(i32 6, float %FMad246.i.i.i) #2
  %FAbs202.i.i.i = call float @dx.op.unary.f32(i32 6, float %FMad243.i.i.i) #2
  %FAbs203.i.i.i = call float @dx.op.unary.f32(i32 6, float %FMad240.i.i.i) #2
  %v199.i.i.i = fcmp fast ogt float %FAbs.i.i.i, %FAbs202.i.i.i
  %v200.i.i.i = fcmp fast ogt float %FAbs.i.i.i, %FAbs203.i.i.i
  %v201.i.i.i = and i1 %v199.i.i.i, %v200.i.i.i
  br i1 %v201.i.i.i, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i", label %60

; <label>:60                                      ; preds = %59
  %v202.i.i.i = fcmp fast ogt float %FAbs202.i.i.i, %FAbs203.i.i.i
  br i1 %v202.i.i.i, label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i", label %61

; <label>:61                                      ; preds = %60
  br label %"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i"

"\01?GetIndexOfBiggestChannel@@YAHV?$vector@M$02@@@Z.exit.i.3.i.i.i.i.i": ; preds = %61, %60, %59
  %.0172.i.i.i = phi i32 [ 2, %61 ], [ 0, %59 ], [ 1, %60 ]
  %v203.i.i.i = add nuw nsw i32 %.0172.i.i.i, 1
  %v204.i.i.i = urem i32 %v203.i.i.i, 3
  %v205.i.i.i = add nuw nsw i32 %.0172.i.i.i, 2
  %v206.i.i.i = urem i32 %v205.i.i.i, 3
  %v207.i.i.i = getelementptr [3 x float], [3 x float]* %v22.i.i.i, i32 0, i32 %.0172.i.i.i
  %v208.i.i.i = load float, float* %v207.i.i.i, align 4, !tbaa !42, !noalias !71
  %v209.i.i.i = fcmp fast olt float %v208.i.i.i, 0.000000e+00
  %.5.0.i0.i.i.i = select i1 %v209.i.i.i, i32 %v206.i.i.i, i32 %v204.i.i.i
  %.5.0.i1.i.i.i = select i1 %v209.i.i.i, i32 %v204.i.i.i, i32 %v206.i.i.i
  %v210.i.i.i = getelementptr [3 x float], [3 x float]* %v22.i.i.i, i32 0, i32 %.5.0.i0.i.i.i
  %v211.i.i.i = load float, float* %v210.i.i.i, align 4, !tbaa !42, !noalias !71
  %v212.i.i.i = fdiv float %v211.i.i.i, %v208.i.i.i
  %v213.i.i.i = getelementptr [3 x float], [3 x float]* %v22.i.i.i, i32 0, i32 %.5.0.i1.i.i.i
  %v214.i.i.i = load float, float* %v213.i.i.i, align 4, !tbaa !42, !noalias !71
  %v215.i.i.i = fdiv float %v214.i.i.i, %v208.i.i.i
  %v216.i.i.i = fdiv float 1.000000e+00, %v208.i.i.i
  store i32 1, i32* %v71.i.i.i, align 4, !tbaa !49
  br label %29

state_1005.Fallback_TraceRay.ss_1.i.i:            ; preds = %while.body.i
  %add.i.7.i.2.i.i = add nsw i32 %6, 4
  %arrayidx.i.9.i.4.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.7.i.2.i.i
  %v24.int.i.i.i = load i32, i32* %arrayidx.i.9.i.4.i.i
  %add.i.6.i.i.i = add nsw i32 %6, 24
  %add.i.i.6.i.i = add nsw i32 %add.i.6.i.i.i, -1
  %arrayidx.i.4.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.i.6.i.i
  %62 = load i32, i32* %arrayidx.i.4.i.i.i, align 4
  %add2.i.i.i.i = add nsw i32 %add.i.6.i.i.i, -2
  %arrayidx4.i.i.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add2.i.i.i.i
  %63 = load i32, i32* %arrayidx4.i.i.i.i, align 4
  %arrayidx.i.i.10.i.i = getelementptr inbounds [256 x i32], [256 x i32]* %theStack.i, i32 0, i32 %add.i.6.i.i.i
  %ret.stateId.i.i.i = load i32, i32* %arrayidx.i.i.10.i.i
  br label %while.cond.i

fb_Fallback_Scheduler.exit:                       ; preds = %0, %while.cond.i
  ret void
}

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0, !0, !0, !1}
!llvm.module.flags = !{!2, !3}
!dx.version = !{!4}
!dx.valver = !{!5}
!dx.shaderModel = !{!6}
!dx.resources = !{!7}
!dx.typeAnnotations = !{!19, !35}
!dx.entryPoints = !{!39}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{!"FallbackLayer"}
!2 = !{i32 2, !"Dwarf Version", i32 4}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, i32 0}
!5 = !{i32 1, i32 2}
!6 = !{!"cs", i32 6, i32 0}
!7 = !{!8, !12, !16, null}
!8 = !{!9, !10, !11}
!9 = !{i32 0, %struct.ByteAddressBuffer* undef, !"HitGroupShaderTable", i32 214743647, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 1, %struct.ByteAddressBuffer* undef, !"RayGenShaderTable", i32 214743647, i32 2, i32 1, i32 11, i32 0, null}
!11 = !{i32 2, %struct.ByteAddressBuffer* undef, !"MissShaderTable", i32 214743647, i32 1, i32 1, i32 11, i32 0, null}
!12 = !{!13, !15}
!13 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"uavOutput", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !14}
!14 = !{i32 0, i32 9}
!15 = !{i32 1, [0 x %struct.RWByteAddressBuffer]* undef, !"DescriptorHeapBufferTable", i32 214743648, i32 0, i32 -1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{!17, !18}
!17 = !{i32 0, %AccelerationStructureList* undef, !"AccelerationStructureList", i32 214743647, i32 1, i32 1, i32 8, null}
!18 = !{i32 1, %Constants* undef, !"Constants", i32 214743647, i32 0, i32 1, i32 32, null}
!19 = !{i32 0, %Constants undef, !20, %struct.ByteAddressBuffer undef, !29, %struct.RWByteAddressBuffer undef, !29, %AccelerationStructureList undef, !31, %"class.RWTexture2D<vector<float, 4> >" undef, !33, %struct.RaytracingAccelerationStructure undef, !29}
!20 = !{i32 32, !21, !22, !23, !24, !25, !26, !27, !28}
!21 = !{i32 6, !"RayDispatchDimensionsWidth", i32 3, i32 0, i32 7, i32 5}
!22 = !{i32 6, !"RayDispatchDimensionsHeight", i32 3, i32 4, i32 7, i32 5}
!23 = !{i32 6, !"HitGroupShaderRecordStride", i32 3, i32 8, i32 7, i32 5}
!24 = !{i32 6, !"MissShaderRecordStride", i32 3, i32 12, i32 7, i32 5}
!25 = !{i32 6, !"SamplerDescriptorHeapStartLo", i32 3, i32 16, i32 7, i32 5}
!26 = !{i32 6, !"SamplerDescriptorHeapStartHi", i32 3, i32 20, i32 7, i32 5}
!27 = !{i32 6, !"SrvCbvUavDescriptorHeapStartLo", i32 3, i32 24, i32 7, i32 5}
!28 = !{i32 6, !"SrvCbvUavDescriptorHeapStartHi", i32 3, i32 28, i32 7, i32 5}
!29 = !{i32 4, !30}
!30 = !{i32 6, !"h", i32 3, i32 0, i32 7, i32 4}
!31 = !{i32 8, !32}
!32 = !{i32 6, !"TopLevelAccelerationStructureGpuVA", i32 3, i32 0, i32 7, i32 5}
!33 = !{i32 16, !34}
!34 = !{i32 6, !"h", i32 3, i32 0, i32 7, i32 9}
!35 = !{i32 1, void ()* @main, !36}
!36 = !{!37}
!37 = !{i32 0, !38, !38}
!38 = !{}
!39 = !{void ()* @main, !"main", null, !7, !40}
!40 = !{i32 0, i64 16, i32 4, !41}
!41 = !{i32 8, i32 8, i32 1}
!42 = !{!43, !43, i64 0}
!43 = !{!"float", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z: %agg.result"}
!48 = distinct !{!48, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z"}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !44, i64 0}
!51 = !{!52}
!52 = distinct !{!52, !53, !"\01?StackPush@@YAXAIAHII@Z: %stackTop"}
!53 = distinct !{!53, !"\01?StackPush@@YAXAIAHII@Z"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"\01?StackPop@@YAIAIAHI@Z: %stackTop"}
!56 = distinct !{!56, !"\01?StackPop@@YAIAIAHI@Z"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"\01?StackPush2@@YAXAIAH_NIII@Z: %stackTop"}
!59 = distinct !{!59, !"\01?StackPush2@@YAXAIAH_NIII@Z"}
!60 = !{!61, !63, !64, !66, !67}
!61 = distinct !{!61, !62, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z: %hitT"}
!62 = distinct !{!62, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z"}
!63 = distinct !{!63, !62, !"\01?RayTriangleIntersect@@YAXAIAMIAIAV?$vector@M$01@@V?$vector@M$02@@2V?$vector@H$02@@2222@Z: %bary"}
!64 = distinct !{!64, !65, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultBary"}
!65 = distinct !{!65, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z"}
!66 = distinct !{!66, !65, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultT"}
!67 = distinct !{!67, !65, !"\01?TestLeafNodeIntersections@@YA_NURWByteAddressBufferPointer@@V?$vector@I$01@@IV?$vector@M$02@@2V?$vector@H$02@@2AIAV?$vector@M$01@@AIAMAIAI@Z: %resultTriId"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"\01?StackPush@@YAXAIAHII@Z: %stackTop"}
!70 = distinct !{!70, !"\01?StackPush@@YAXAIAHII@Z"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z: %agg.result"}
!73 = distinct !{!73, !"\01?GetRayData@@YA?AURayData@@V?$vector@M$02@@0@Z"}
