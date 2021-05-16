; ModuleID = 'run-fn.bc'
source_filename = "test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.testFunc = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int> >::_Vector_impl_data" = type { i32*, i32*, i32* }

$_ZN8testFunc3runEv = comdat any

; Function Attrs: noinline nounwind uwtable
define weak_odr dso_local void @_ZN8testFunc3runEv(%struct.testFunc* %0) local_unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %struct.testFunc, %struct.testFunc* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load i32*, i32** %2, align 8, !tbaa !2
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %33, %4 ]
  %6 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %1 ], [ %34, %4 ]
  %7 = getelementptr inbounds i32, i32* %3, i64 %5
  %8 = add <4 x i32> %6, <i32 4, i32 4, i32 4, i32 4>
  %9 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> %6, <4 x i32>* %9, align 4, !tbaa !7
  %10 = getelementptr inbounds i32, i32* %7, i64 4
  %11 = bitcast i32* %10 to <4 x i32>*
  store <4 x i32> %8, <4 x i32>* %11, align 4, !tbaa !7
  %12 = or i64 %5, 8
  %13 = add <4 x i32> %6, <i32 8, i32 8, i32 8, i32 8>
  %14 = getelementptr inbounds i32, i32* %3, i64 %12
  %15 = add <4 x i32> %6, <i32 12, i32 12, i32 12, i32 12>
  %16 = bitcast i32* %14 to <4 x i32>*
  store <4 x i32> %13, <4 x i32>* %16, align 4, !tbaa !7
  %17 = getelementptr inbounds i32, i32* %14, i64 4
  %18 = bitcast i32* %17 to <4 x i32>*
  store <4 x i32> %15, <4 x i32>* %18, align 4, !tbaa !7
  %19 = or i64 %5, 16
  %20 = add <4 x i32> %6, <i32 16, i32 16, i32 16, i32 16>
  %21 = getelementptr inbounds i32, i32* %3, i64 %19
  %22 = add <4 x i32> %6, <i32 20, i32 20, i32 20, i32 20>
  %23 = bitcast i32* %21 to <4 x i32>*
  store <4 x i32> %20, <4 x i32>* %23, align 4, !tbaa !7
  %24 = getelementptr inbounds i32, i32* %21, i64 4
  %25 = bitcast i32* %24 to <4 x i32>*
  store <4 x i32> %22, <4 x i32>* %25, align 4, !tbaa !7
  %26 = or i64 %5, 24
  %27 = add <4 x i32> %6, <i32 24, i32 24, i32 24, i32 24>
  %28 = getelementptr inbounds i32, i32* %3, i64 %26
  %29 = add <4 x i32> %6, <i32 28, i32 28, i32 28, i32 28>
  %30 = bitcast i32* %28 to <4 x i32>*
  store <4 x i32> %27, <4 x i32>* %30, align 4, !tbaa !7
  %31 = getelementptr inbounds i32, i32* %28, i64 4
  %32 = bitcast i32* %31 to <4 x i32>*
  store <4 x i32> %29, <4 x i32>* %32, align 4, !tbaa !7
  %33 = add nuw nsw i64 %5, 32
  %34 = add <4 x i32> %6, <i32 32, i32 32, i32 32, i32 32>
  %35 = icmp eq i64 %33, 1048576
  br i1 %35, label %36, label %4, !llvm.loop !9

36:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0-4ubuntu1 "}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !4, i64 0, !4, i64 8, !4, i64 16}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
