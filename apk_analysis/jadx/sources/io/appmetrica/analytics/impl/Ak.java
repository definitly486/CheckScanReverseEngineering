package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class Ak {
    public final C1439zk a;
    public volatile M9 b;
    public volatile M9 c;
    public volatile M9 d;
    public volatile M9 e;
    public volatile M9 f;
    public volatile M9 g;
    public volatile ExecutorC1414yk h;
    public volatile M9 i;

    public Ak(C1439zk c1439zk) {
        new HashMap();
        this.a = c1439zk;
    }

    public final IHandlerExecutor a() {
        if (this.g == null) {
            synchronized (this) {
                try {
                    if (this.g == null) {
                        this.a.getClass();
                        HandlerThreadC1202qb handlerThreadC1202qbA = M9.a("IAA-SDE");
                        this.g = new M9(handlerThreadC1202qbA, handlerThreadC1202qbA.getLooper(), new Handler(handlerThreadC1202qbA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.g;
    }

    public final IHandlerExecutor b() {
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.a.getClass();
                        HandlerThreadC1202qb handlerThreadC1202qbA = M9.a("IAA-SC");
                        this.b = new M9(handlerThreadC1202qbA, handlerThreadC1202qbA.getLooper(), new Handler(handlerThreadC1202qbA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }

    public final IHandlerExecutor c() {
        if (this.d == null) {
            synchronized (this) {
                try {
                    if (this.d == null) {
                        this.a.getClass();
                        HandlerThreadC1202qb handlerThreadC1202qbA = M9.a("IAA-SMH-1");
                        this.d = new M9(handlerThreadC1202qbA, handlerThreadC1202qbA.getLooper(), new Handler(handlerThreadC1202qbA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.d;
    }

    public final IHandlerExecutor d() {
        if (this.e == null) {
            synchronized (this) {
                try {
                    if (this.e == null) {
                        this.a.getClass();
                        HandlerThreadC1202qb handlerThreadC1202qbA = M9.a("IAA-SNTPE");
                        this.e = new M9(handlerThreadC1202qbA, handlerThreadC1202qbA.getLooper(), new Handler(handlerThreadC1202qbA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.e;
    }

    public final IHandlerExecutor e() {
        if (this.i == null) {
            synchronized (this) {
                try {
                    if (this.i == null) {
                        this.a.getClass();
                        HandlerThreadC1202qb handlerThreadC1202qbA = M9.a("IAA-SPT");
                        this.i = new M9(handlerThreadC1202qbA, handlerThreadC1202qbA.getLooper(), new Handler(handlerThreadC1202qbA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.i;
    }

    public final IHandlerExecutor f() {
        if (this.c == null) {
            synchronized (this) {
                try {
                    if (this.c == null) {
                        this.a.getClass();
                        HandlerThreadC1202qb handlerThreadC1202qbA = M9.a("IAA-STE");
                        this.c = new M9(handlerThreadC1202qbA, handlerThreadC1202qbA.getLooper(), new Handler(handlerThreadC1202qbA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.c;
    }

    public final IHandlerExecutor g() {
        if (this.f == null) {
            synchronized (this) {
                try {
                    if (this.f == null) {
                        this.a.getClass();
                        HandlerThreadC1202qb handlerThreadC1202qbA = M9.a("IAA-SIO");
                        this.f = new M9(handlerThreadC1202qbA, handlerThreadC1202qbA.getLooper(), new Handler(handlerThreadC1202qbA.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f;
    }

    public Ak() {
        this(new C1439zk());
    }
}
