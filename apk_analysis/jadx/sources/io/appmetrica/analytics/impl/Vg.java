package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;

/* JADX INFO: loaded from: classes5.dex */
public final class Vg implements InterfaceC1145o6 {
    public final Context a;
    public final C1143o4 b;
    public final IHandlerExecutor c = Fa.k().w().f();

    public Vg(Context context, C1143o4 c1143o4) {
        this.a = context;
        this.b = c1143o4;
    }

    public final void a(C0783a6 c0783a6, Bundle bundle) {
        if (c0783a6.m()) {
            return;
        }
        this.c.execute(new RunnableC1259sh(this.a, c0783a6, bundle, this.b));
    }

    public final void a(C0859d4 c0859d4, C0783a6 c0783a6, B4 b4) {
        this.b.a(c0859d4, b4).a(c0783a6, b4);
        this.b.a(c0859d4.b, c0859d4.c, c0859d4.d);
    }
}
