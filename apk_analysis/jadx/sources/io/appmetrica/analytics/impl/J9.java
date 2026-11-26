package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes5.dex */
public final class J9 {
    public final ReentrantLock a;
    public final C1097ma b;

    public J9(Context context, String str) {
        this(new ReentrantLock(), new C1097ma(context, str));
    }

    public final void a() {
        this.a.lock();
        this.b.a();
    }

    public final void b() {
        this.b.b();
        this.a.unlock();
    }

    public final void c() {
        C1097ma c1097ma = this.b;
        synchronized (c1097ma) {
            c1097ma.b();
            c1097ma.a.delete();
        }
        this.a.unlock();
    }

    public J9(ReentrantLock reentrantLock, C1097ma c1097ma) {
        this.a = reentrantLock;
        this.b = c1097ma;
    }
}
