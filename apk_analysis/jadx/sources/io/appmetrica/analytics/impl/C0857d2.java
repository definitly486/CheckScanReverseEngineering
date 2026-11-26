package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.logger.LoggerStorage;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.d2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0857d2 implements Thread.UncaughtExceptionHandler {
    public static final AtomicBoolean e = new AtomicBoolean();
    public final Ta a;
    public final E6 b = C1169p4.l().n();
    public final A6 c = new A6();
    public final Rn d = new Rn();

    public C0857d2(C1325v6 c1325v6) {
        this.a = c1325v6;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        StackTraceElement[] stackTraceElementArrB;
        try {
            e.set(true);
            Ta ta = this.a;
            Kn knApply = this.c.apply(thread);
            Rn rn = this.d;
            Thread threadA = rn.a.a();
            ArrayList arrayListA = rn.a(threadA, thread);
            if (thread != threadA) {
                try {
                    stackTraceElementArrB = rn.a.b();
                    if (stackTraceElementArrB == null) {
                        try {
                            stackTraceElementArrB = threadA.getStackTrace();
                        } catch (SecurityException unused) {
                        }
                    }
                } catch (SecurityException unused2) {
                    stackTraceElementArrB = null;
                }
                arrayListA.add(0, (Kn) rn.b.apply(threadA, stackTraceElementArrB));
            }
            ta.a(th, new Y(knApply, arrayListA, this.b.a.a()));
        } catch (Throwable th2) {
            LoggerStorage.getMainPublicOrAnonymousLogger().error(th2, th2.getMessage(), new Object[0]);
        }
    }
}
