package androidx.compose.foundation.gestures;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {1076}, m = "awaitLongPressOrCancellation-rnUCldI", v = 1)
public final class DragGestureDetectorKt$awaitLongPressOrCancellation$1 extends f02 {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;

    public DragGestureDetectorKt$awaitLongPressOrCancellation$1(e02<? super DragGestureDetectorKt$awaitLongPressOrCancellation$1> e02Var) {
        super(e02Var);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.m1495awaitLongPressOrCancellationrnUCldI(null, 0L, this);
    }
}
