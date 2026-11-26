package defpackage;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes5.dex */
public final class kh2 extends c13 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;
    public static final kh2 k;
    public static final long l;

    static {
        Long l2;
        kh2 kh2Var = new kh2();
        k = kh2Var;
        kh2Var.q0(false);
        try {
            l2 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l2 = 1000L;
        }
        l = TimeUnit.MILLISECONDS.toNanos(l2.longValue());
    }

    public final synchronized void E0() {
        int i = debugStatus;
        if (i == 2 || i == 3) {
            debugStatus = 3;
            Unsafe unsafe = pz0.a;
            unsafe.putObjectVolatile(this, c13.i, (Object) null);
            unsafe.putObjectVolatile(this, c13.g, (Object) null);
            notifyAll();
        }
    }

    @Override // defpackage.wk2
    public final hp2 X(long j, Runnable runnable, o22 o22Var) {
        long j2 = 0;
        if (j > 0) {
            j2 = j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j;
        }
        if (j2 >= 4611686018427387903L) {
            return go5.b;
        }
        long jNanoTime = System.nanoTime();
        c13.b bVar = new c13.b(j2 + jNanoTime, runnable);
        D0(jNanoTime, bVar);
        return bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        pt8.a.set(this);
        try {
            synchronized (this) {
                int i = debugStatus;
                if (i == 2 || i == 3) {
                    _thread = null;
                    E0();
                    if (C0()) {
                        return;
                    }
                    x0();
                    return;
                }
                debugStatus = 1;
                notifyAll();
                long j = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long jR0 = r0();
                    if (jR0 == Long.MAX_VALUE) {
                        long jNanoTime = System.nanoTime();
                        if (j == Long.MAX_VALUE) {
                            j = l + jNanoTime;
                        }
                        long j2 = j - jNanoTime;
                        if (j2 <= 0) {
                            _thread = null;
                            E0();
                            if (C0()) {
                                return;
                            }
                            x0();
                            return;
                        }
                        if (jR0 > j2) {
                            jR0 = j2;
                        }
                    } else {
                        j = Long.MAX_VALUE;
                    }
                    if (jR0 > 0) {
                        int i2 = debugStatus;
                        if (i2 == 2 || i2 == 3) {
                            _thread = null;
                            E0();
                            if (C0()) {
                                return;
                            }
                            x0();
                            return;
                        }
                        LockSupport.parkNanos(this, jR0);
                    }
                }
            }
        } catch (Throwable th) {
            _thread = null;
            E0();
            if (!C0()) {
                x0();
            }
            throw th;
        }
    }

    @Override // defpackage.c13, defpackage.b13
    public final void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    @Override // defpackage.r22
    public final String toString() {
        return "DefaultExecutor";
    }

    @Override // defpackage.d13
    public final Thread x0() {
        Thread thread;
        Thread thread2 = _thread;
        if (thread2 != null) {
            return thread2;
        }
        synchronized (this) {
            thread = _thread;
            if (thread == null) {
                thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
                _thread = thread;
                thread.setContextClassLoader(k.getClass().getClassLoader());
                thread.setDaemon(true);
                thread.start();
            }
        }
        return thread;
    }

    @Override // defpackage.d13
    public final void y0(long j, c13.c cVar) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // defpackage.c13
    public final void z0(Runnable runnable) {
        if (debugStatus == 4) {
            throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
        }
        super.z0(runnable);
    }
}
