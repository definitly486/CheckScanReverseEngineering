package androidx.compose.foundation.gestures;

import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;

/* JADX INFO: loaded from: classes.dex */
@bd2(c = "androidx.compose.foundation.gestures.Scrollable2DKt", f = "Scrollable2D.kt", l = {514}, m = "semanticsScrollBy-d-4ec7I", v = 1)
public final class Scrollable2DKt$semanticsScrollBy$1 extends f02 {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    public Scrollable2DKt$semanticsScrollBy$1(e02<? super Scrollable2DKt$semanticsScrollBy$1> e02Var) {
        super(e02Var);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return Scrollable2DKt.m1597semanticsScrollByd4ec7I(null, 0L, this);
    }
}
