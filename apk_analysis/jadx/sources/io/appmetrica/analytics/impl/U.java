package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.gh4;
import defpackage.ll3;

/* JADX INFO: loaded from: classes5.dex */
public final class U extends gh4 implements ll3 {
    public final /* synthetic */ X a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public U(X x) {
        super(0);
        this.a = x;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        X x = this.a;
        K k = x.f;
        Context context = x.a;
        k.getClass();
        return K.a(new I(k, context));
    }
}
