package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.h1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0959h1 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ C1370x1 b;

    public RunnableC0959h1(C1370x1 c1370x1, String str) {
        this.b = c1370x1;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1370x1.a(this.b).b(this.a);
    }
}
