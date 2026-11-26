package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.HashMap;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.wi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1362wi {
    public final HashMap a = new HashMap();
    public final C0 b;

    public C1362wi(C0 c0) {
        this.b = c0;
    }

    public final C1157oi a(Context context, String str) {
        C1157oi c1157oi;
        C1157oi c1157oi2 = (C1157oi) this.a.get(str);
        if (c1157oi2 != null) {
            return c1157oi2;
        }
        synchronized (this.a) {
            try {
                c1157oi = (C1157oi) this.a.get(str);
                if (c1157oi == null) {
                    IHandlerExecutor iHandlerExecutorA = C1169p4.l().c.a();
                    this.b.getClass();
                    if (B0.e == null) {
                        ((M9) iHandlerExecutorA).b.post(new RunnableC1312ui(this, context));
                    }
                    c1157oi = new C1157oi(context.getApplicationContext(), str, new C0());
                    this.a.put(str, c1157oi);
                    c1157oi.c(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1157oi;
    }

    public static C1362wi a() {
        return AbstractC1337vi.a;
    }
}
