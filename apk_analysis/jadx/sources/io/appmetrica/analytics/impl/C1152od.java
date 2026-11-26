package io.appmetrica.analytics.impl;

import defpackage.vt8;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.od, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1152od {
    public final Executor a;
    public final Nl b;
    public final String c;
    public final SystemTimeProvider d;

    public C1152od(IHandlerExecutor iHandlerExecutor, Kd kd, String str, SystemTimeProvider systemTimeProvider) {
        this.a = iHandlerExecutor;
        this.b = kd;
        this.c = str;
        this.d = systemTimeProvider;
    }

    public static final void a(C1152od c1152od, List list) {
        C0900ek c0900ek = Bj.a;
        C1204qd c1204qd = new C1204qd(c1152od.b, c1152od.c, c1152od.d, list);
        c0900ek.getClass();
        c0900ek.a(new Rj(c1204qd));
    }

    public final void a(List list) {
        this.a.execute(new vt8(1, this, list));
    }
}
