package androidx.compose.foundation.gestures;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {1159}, m = "awaitHorizontalDragOrCancellation-rnUCldI", v = 1)
public final class DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1 extends f02 {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    public DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1(e02<? super DragGestureDetectorKt$awaitHorizontalDragOrCancellation$1> e02Var) {
        super(e02Var);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.m1492awaitHorizontalDragOrCancellationrnUCldI(null, 0L, this);
    }
}
