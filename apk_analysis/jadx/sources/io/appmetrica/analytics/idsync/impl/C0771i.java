package io.appmetrica.analytics.idsync.impl;

import defpackage.aa4;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.idsync.impl.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0771i extends SafeRunnable {
    public final /* synthetic */ C0773k a;

    public C0771i(C0773k c0773k) {
        this.a = c0773k;
    }

    @Override // io.appmetrica.analytics.coreutils.internal.executors.SafeRunnable
    public final void runSafety() {
        C0765c c0765c;
        if (this.a.f && (c0765c = this.a.e) != null) {
            this.a.getClass();
            if (C0773k.a(c0765c)) {
                List list = c0765c.c;
                C0773k c0773k = this.a;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    c0773k.d.a((G) it.next());
                }
                C0773k c0773k2 = this.a;
                IHandlerExecutor iHandlerExecutor = c0773k2.c;
                C0771i c0771i = c0773k2.g;
                if (c0771i != null) {
                    iHandlerExecutor.executeDelayed(c0771i, c0773k2.b);
                } else {
                    aa4.j("syncRunnable");
                    throw null;
                }
            }
        }
    }
}
