package io.appmetrica.analytics.push.impl;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public final class D0 {
    public final C0 a;

    public D0(Context context) {
        if (G2.a()) {
            this.a = new A1(context);
        } else {
            this.a = new F2();
        }
    }

    public final C0 a() {
        return this.a;
    }
}
