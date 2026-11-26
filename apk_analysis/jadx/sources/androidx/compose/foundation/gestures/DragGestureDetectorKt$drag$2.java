package androidx.compose.foundation.gestures;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {1159}, m = "drag-VnAYq1g", v = 1)
public final class DragGestureDetectorKt$drag$2 extends f02 {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    int label;
    /* synthetic */ Object result;

    public DragGestureDetectorKt$drag$2(e02<? super DragGestureDetectorKt$drag$2> e02Var) {
        super(e02Var);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.m1503dragVnAYq1g(null, 0L, null, null, null, this);
    }
}
