package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.e1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0881e1 implements Runnable {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;
    public final /* synthetic */ C1370x1 c;

    public RunnableC0881e1(C1370x1 c1370x1, String str, String str2) {
        this.c = c1370x1;
        this.a = str;
        this.b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0 c0 = this.c.a;
        String str = this.a;
        String str2 = this.b;
        c0.getClass();
        B0.c().a(str, str2);
    }
}
