package androidx.compose.foundation.gestures;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.ScrollableKt", f = "Scrollable.kt", l = {1149}, m = "semanticsScrollBy-d-4ec7I", v = 1)
public final class ScrollableKt$semanticsScrollBy$1 extends f02 {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    public ScrollableKt$semanticsScrollBy$1(e02<? super ScrollableKt$semanticsScrollBy$1> e02Var) {
        super(e02Var);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ScrollableKt.m1600semanticsScrollByd4ec7I(null, 0L, this);
    }
}
