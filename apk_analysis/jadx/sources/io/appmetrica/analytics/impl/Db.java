package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class Db implements Runnable {
    public final WeakReference a;
    public final WeakReference b;

    public Db(Handler handler, W2 w2) {
        this.a = new WeakReference(handler);
        this.b = new WeakReference(w2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        Handler handler = (Handler) this.a.get();
        W2 w2 = (W2) this.b.get();
        if (handler == null || w2 == null) {
            return;
        }
        boolean zF = w2.b.f();
        if (!zF) {
            PublicLogger publicLogger = w2.c;
            Set set = I9.a;
            EnumC1176pb enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
            C0781a4 c0781a4 = new C0781a4("", "", 3, 0, publicLogger);
            Ei ei = w2.h;
            Mh mh = w2.b;
            ei.getClass();
            ei.a(Ei.a(c0781a4, mh), mh, 1, (Map) null);
        }
        if (zF) {
            return;
        }
        Cb.a(handler, w2, this);
    }
}
