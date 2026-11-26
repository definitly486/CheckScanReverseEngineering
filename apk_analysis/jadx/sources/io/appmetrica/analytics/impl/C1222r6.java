package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.aa4;
import defpackage.j59;
import defpackage.x07;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import java.io.File;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.r6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1222r6 implements Consumer {
    public final Executor a;
    public final Xg b;

    public C1222r6(Context context, InterfaceC1145o6 interfaceC1145o6, EnumC1176pb enumC1176pb, InterfaceC1289tl interfaceC1289tl, Executor executor, String str, InterfaceC1400y6 interfaceC1400y6) {
        this.a = executor;
        this.b = new Xg(context, interfaceC1145o6, enumC1176pb, interfaceC1289tl, interfaceC1400y6);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final void consume(File file) {
        if (file == null) {
            return;
        }
        Executor executor = this.a;
        Xg xg = this.b;
        Bb bb = xg.d;
        Consumer consumer = xg.f;
        Context context = xg.a;
        if (C1123na.c == null) {
            synchronized (x07.a(C1123na.class)) {
                try {
                    if (C1123na.c == null) {
                        C1123na.c = new C1123na(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        C1123na c1123na = C1123na.c;
        if (c1123na != null) {
            executor.execute(new RunnableC0974hg(file, bb, bb, consumer, c1123na, xg.b));
        } else {
            aa4.j("INSTANCE");
            throw null;
        }
    }
}
