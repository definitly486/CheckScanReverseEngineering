package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;

/* JADX INFO: loaded from: classes5.dex */
public final class G1 extends SafeRunnable {
    public final /* synthetic */ P1 a;

    public G1(P1 p1) {
        this.a = p1;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        synchronized (this.a) {
            try {
                P1 p1 = this.a;
                if (p1.c) {
                    p1.b.onCreate();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
