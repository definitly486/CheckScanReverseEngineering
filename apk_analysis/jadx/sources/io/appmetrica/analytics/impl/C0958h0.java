package io.appmetrica.analytics.impl;

import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0958h0 implements Qn {
    public final /* synthetic */ C0984i0 a;

    public C0958h0(C0984i0 c0984i0) {
        this.a = c0984i0;
    }

    @Override // io.appmetrica.analytics.impl.Qn
    public final Thread a() {
        return this.a.b;
    }

    @Override // io.appmetrica.analytics.impl.Qn
    public final StackTraceElement[] b() {
        C0984i0 c0984i0 = this.a;
        return (StackTraceElement[]) c0984i0.a.get(c0984i0.b);
    }

    @Override // io.appmetrica.analytics.impl.Qn
    public final Map<Thread, StackTraceElement[]> c() {
        return this.a.a;
    }
}
