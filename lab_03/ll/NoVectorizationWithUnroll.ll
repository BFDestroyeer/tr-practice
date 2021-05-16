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
  br label %5

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %5, %1
  %6 = phi i64 [ 0, %1 ], [ %30, %5 ]
  %7 = getelementptr inbounds i32, i32* %3, i64 %6
  %8 = trunc i64 %6 to i32
  store i32 %8, i32* %7, align 4, !tbaa !7
  %9 = or i64 %6, 1
  %10 = getelementptr inbounds i32, i32* %3, i64 %9
  %11 = trunc i64 %9 to i32
  store i32 %11, i32* %10, align 4, !tbaa !7
  %12 = or i64 %6, 2
  %13 = getelementptr inbounds i32, i32* %3, i64 %12
  %14 = trunc i64 %12 to i32
  store i32 %14, i32* %13, align 4, !tbaa !7
  %15 = or i64 %6, 3
  %16 = getelementptr inbounds i32, i32* %3, i64 %15
  %17 = trunc i64 %15 to i32
  store i32 %17, i32* %16, align 4, !tbaa !7
  %18 = or i64 %6, 4
  %19 = getelementptr inbounds i32, i32* %3, i64 %18
  %20 = trunc i64 %18 to i32
  store i32 %20, i32* %19, align 4, !tbaa !7
  %21 = or i64 %6, 5
  %22 = getelementptr inbounds i32, i32* %3, i64 %21
  %23 = trunc i64 %21 to i32
  store i32 %23, i32* %22, align 4, !tbaa !7
  %24 = or i64 %6, 6
  %25 = getelementptr inbounds i32, i32* %3, i64 %24
  %26 = trunc i64 %24 to i32
  store i32 %26, i32* %25, align 4, !tbaa !7
  %27 = or i64 %6, 7
  %28 = getelementptr inbounds i32, i32* %3, i64 %27
  %29 = trunc i64 %27 to i32
  store i32 %29, i32* %28, align 4, !tbaa !7
  %30 = add nuw nsw i64 %6, 8
  %31 = icmp eq i64 %30, 1048576
  br i1 %31, label %4, label %5
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
