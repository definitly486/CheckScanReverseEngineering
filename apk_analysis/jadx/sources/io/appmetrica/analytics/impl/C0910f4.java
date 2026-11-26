package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.f4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0910f4 {
    public final C0884e4 a;
    public volatile M9 b;
    public volatile M9 c;
    public volatile M9 d;

    public C0910f4() {
        this(new C0884e4());
    }

    public final IHandlerExecutor a() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.a.getClass();
                        HandlerThreadC1202qb handlerThreadC1202qbA = M9.a("IAA-CDE");
                        this.b = new M9(handlerThreadC1202qbA, handlerThreadC1202qbA.getLooper(), new Handler(handlerThreadC1202qbA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }

    public final IHandlerExecutor b() {
        if (this.d == null) {
            synchronized (this) {
                try {
                    if (this.d == null) {
                        this.a.getClass();
                        HandlerThreadC1202qb handlerThreadC1202qbA = M9.a("IAA-CPT");
                        this.d = new M9(handlerThreadC1202qbA, handlerThreadC1202qbA.getLooper(), new Handler(handlerThreadC1202qbA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.d;
    }

    public final ICommonExecutor c() {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        this.a.getClass();
                        HandlerThreadC1202qb handlerThreadC1202qbA = M9.a("IAA-CRS");
                        this.c = new M9(handlerThreadC1202qbA, handlerThreadC1202qbA.getLooper(), new Handler(handlerThreadC1202qbA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }

    public C0910f4(C0884e4 c0884e4) {
        this.a = c0884e4;
    }
}
