package io.appmetrica.analytics.impl;

import defpackage.cx9;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
import java.io.File;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.hg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC0974hg implements Runnable {
    public final File a;
    public final Function b;
    public final Consumer c;
    public final Consumer d;
    public final C1123na e;
    public final InterfaceC1289tl f;

    public RunnableC0974hg(File file, Function function, Consumer consumer, Consumer consumer2, C1123na c1123na, InterfaceC1289tl interfaceC1289tl) {
        this.a = file;
        this.b = function;
        this.c = consumer;
        this.d = consumer2;
        this.e = c1123na;
        this.f = interfaceC1289tl;
    }

    public static final void a(File file) {
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.a.exists()) {
            J9 j9B = this.e.b(this.a.getName());
            Consumer cx9Var = this.c;
            try {
                j9B.a.lock();
                j9B.b.a();
                if (!this.a.exists()) {
                    cx9Var.consume(this.a);
                    j9B.c();
                    C1123na c1123na = this.e;
                    String name = this.a.getName();
                    synchronized (c1123na) {
                        c1123na.b.remove(name);
                    }
                    return;
                }
                Object objApply = this.b.apply(this.a);
                if (objApply != null) {
                    if (this.f.a(objApply)) {
                        this.d.consume(objApply);
                    } else {
                        cx9Var = new cx9();
                    }
                }
            } catch (Throwable unused) {
            }
            cx9Var.consume(this.a);
            j9B.c();
            this.e.a(this.a.getName());
        }
    }
}
