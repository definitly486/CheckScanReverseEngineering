package io.appmetrica.analytics.impl;

import android.os.Debug;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0854d extends Thread {
    public final AtomicBoolean a = new AtomicBoolean(true);
    public final /* synthetic */ C0879e b;

    public C0854d(C0879e c0879e) {
        this.b = c0879e;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (!isInterrupted() && this.a.get()) {
            this.b.e.set(false);
            C0879e c0879e = this.b;
            c0879e.c.postAtFrontOfQueue(c0879e.f);
            int i = this.b.b.get();
            while (i > 0) {
                try {
                    Thread.sleep(C0879e.g);
                    if (this.b.e.get()) {
                        break;
                    } else {
                        i--;
                    }
                } catch (InterruptedException unused) {
                    return;
                }
            }
            if (i == 0 && !Debug.isDebuggerConnected()) {
                Iterator it = this.b.a.iterator();
                while (it.hasNext()) {
                    ((InterfaceC0828c) it.next()).onAppNotResponding();
                }
            }
            while (!this.b.e.get()) {
                Thread.sleep(C0879e.g);
            }
        }
    }
}
