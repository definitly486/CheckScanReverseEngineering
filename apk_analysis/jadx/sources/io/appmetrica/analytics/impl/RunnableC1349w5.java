package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.w5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1349w5 implements Runnable {
    public final /* synthetic */ InterfaceC1075le a;
    public final /* synthetic */ C1374x5 b;

    public RunnableC1349w5(C1374x5 c1374x5, InterfaceC1075le interfaceC1075le) {
        this.b = c1374x5;
        this.a = interfaceC1075le;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.b) {
            try {
                C1374x5 c1374x5 = this.b;
                Object obj = c1374x5.a;
                if (obj == null) {
                    c1374x5.b.add(this.a);
                } else {
                    this.a.consume(obj);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
