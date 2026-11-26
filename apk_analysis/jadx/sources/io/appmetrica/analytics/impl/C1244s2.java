package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.impl.C1244s2;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.s2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1244s2 {
    public final C1331vc a;
    public final ICommonExecutor b;
    public final long c;
    public boolean d = true;
    public final Runnable e = new Runnable() { // from class: b8a
        @Override // java.lang.Runnable
        public final void run() {
            C1244s2.a(this.b);
        }
    };

    public C1244s2(C1331vc c1331vc, IHandlerExecutor iHandlerExecutor, long j) {
        this.a = c1331vc;
        this.b = iHandlerExecutor;
        this.c = j;
    }

    public static final void a(C1244s2 c1244s2) {
        C1356wc c1356wc = c1244s2.a.a;
        Ei ei = c1356wc.h;
        ei.c.a(c1356wc.b.a);
    }
}
