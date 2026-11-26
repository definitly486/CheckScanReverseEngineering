package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.Iterator;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.z1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1420z1 implements Runnable {
    public final /* synthetic */ Context a;

    public RunnableC1420z1(Context context) {
        this.a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0900ek c0900ek = Bj.a;
        Context context = this.a;
        synchronized (c0900ek) {
            try {
                if (c0900ek.b == null) {
                    c0900ek.b = AbstractC1337vi.a.a(context, "20799a27-fa80-4b36-b2db-0f8141f24180");
                    Iterator it = c0900ek.a.iterator();
                    while (it.hasNext()) {
                        ((InterfaceC0788ab) it.next()).a(c0900ek.b);
                    }
                    c0900ek.a.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
