package com.my.tracker.obfuscated;

import android.os.Handler;
import android.os.Looper;
import defpackage.h72;
import java.util.ArrayDeque;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m {
    public static final Handler a;
    public static final Executor b;
    public static final Executor c;
    public static final Executor d;
    public static final Executor e;
    public static final Executor f;
    private static final Executor g;
    private static final a h;

    static {
        Handler handler = new Handler(Looper.getMainLooper());
        a = handler;
        b = Executors.newSingleThreadExecutor();
        c = Executors.newSingleThreadExecutor();
        d = Executors.newSingleThreadExecutor();
        e = Executors.newSingleThreadExecutor();
        f = Executors.newSingleThreadExecutor();
        g = new h72(handler);
        h = new a();
    }

    public static void a(Runnable runnable) {
        b.execute(h.a(runnable));
    }

    public static void b(Runnable runnable) {
        c.execute(h.a(runnable));
    }

    public static void c(Runnable runnable) {
        d.execute(h.a(runnable));
    }

    public static void d(Runnable runnable) {
        e.execute(h.a(runnable));
    }

    public static void e(Runnable runnable) {
        f.execute(h.a(runnable));
    }

    public static void f(Runnable runnable) {
        Runnable runnableA = h.a(runnable);
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnableA.run();
        } else {
            g.execute(runnableA);
        }
    }

    public static final class a {
        private final ArrayDeque a = new ArrayDeque();

        /* JADX INFO: renamed from: com.my.tracker.obfuscated.m$a$a, reason: collision with other inner class name */
        public static final class RunnableC0154a implements Runnable {
            final a a;
            volatile Runnable b;

            public RunnableC0154a(a aVar) {
                this.a = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    Runnable runnable = this.b;
                    if (runnable != null) {
                        runnable.run();
                    }
                    a aVar = this.a;
                    if (aVar != null) {
                        aVar.a(this);
                    }
                } catch (Throwable th) {
                    try {
                        b3.b("RunnableThrowableDecorator: exception has been caught", th);
                    } finally {
                        a aVar2 = this.a;
                        if (aVar2 != null) {
                            aVar2.a(this);
                        }
                    }
                }
            }
        }

        public a() {
            for (int i = 0; i < 64; i++) {
                this.a.add(new RunnableC0154a(this));
            }
        }

        public Runnable a(Runnable runnable) {
            RunnableC0154a runnableC0154a;
            synchronized (this) {
                runnableC0154a = (RunnableC0154a) this.a.pollFirst();
            }
            if (runnableC0154a == null) {
                runnableC0154a = new RunnableC0154a(null);
            }
            runnableC0154a.b = runnable;
            return runnableC0154a;
        }

        public void a(RunnableC0154a runnableC0154a) {
            synchronized (this) {
                runnableC0154a.b = null;
                this.a.add(runnableC0154a);
            }
        }
    }
}
