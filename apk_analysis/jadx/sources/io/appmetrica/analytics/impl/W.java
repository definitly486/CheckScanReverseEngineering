package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes5.dex */
public final class W extends gh4 implements ll3 {
    public final /* synthetic */ X a;
    public final /* synthetic */ Pi b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public W(X x, Xn xn) {
        super(0);
        this.a = x;
        this.b = xn;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        X x = this.a;
        K k = x.h;
        Context context = x.a;
        Pi pi = this.b;
        k.getClass();
        return K.a(new J(k, context, pi));
    }
}
