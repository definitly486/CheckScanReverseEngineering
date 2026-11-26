package io.appmetrica.analytics.impl;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.q0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1191q0 implements Runnable {
    public final /* synthetic */ C1242s0 a;

    public RunnableC1191q0(C1242s0 c1242s0) {
        this.a = c1242s0;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1242s0 c1242s0 = this.a;
        synchronized (c1242s0) {
            if (c1242s0.a != null && c1242s0.b()) {
                try {
                    c1242s0.d = null;
                    c1242s0.a.unbindService(c1242s0.j);
                } catch (Throwable unused) {
                }
            }
            c1242s0.d = null;
        }
    }
}
