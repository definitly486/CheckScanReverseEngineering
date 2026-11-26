package yads;

import android.os.SystemClock;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class rb5 implements RunnableFuture {
    public final m50 b = new m50();
    public final m50 c = new m50();
    public final Object d = new Object();
    public Exception e;
    public Object f;
    public Thread g;
    public boolean h;

    public void a() {
    }

    public abstract Object b();

    public final Object c() throws ExecutionException {
        if (this.h) {
            throw new CancellationException();
        }
        Exception exc = this.e;
        if (exc == null) {
            return this.f;
        }
        throw new ExecutionException(exc);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this.d) {
            try {
                if (!this.h && !this.c.c()) {
                    this.h = true;
                    a();
                    Thread thread = this.g;
                    if (thread == null) {
                        this.b.d();
                        this.c.d();
                    } else if (z) {
                        thread.interrupt();
                    }
                    return true;
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) throws TimeoutException {
        boolean z;
        long jConvert = TimeUnit.MILLISECONDS.convert(j, timeUnit);
        m50 m50Var = this.c;
        synchronized (m50Var) {
            try {
                if (jConvert <= 0) {
                    z = m50Var.a;
                } else {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long j2 = jConvert + jElapsedRealtime;
                    if (j2 < jElapsedRealtime) {
                        m50Var.a();
                    } else {
                        while (!m50Var.a && jElapsedRealtime < j2) {
                            m50Var.wait(j2 - jElapsedRealtime);
                            jElapsedRealtime = SystemClock.elapsedRealtime();
                        }
                    }
                    z = m50Var.a;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            return c();
        }
        throw new TimeoutException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.h;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z;
        m50 m50Var = this.c;
        synchronized (m50Var) {
            z = m50Var.a;
        }
        return z;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        synchronized (this.d) {
            try {
                if (this.h) {
                    return;
                }
                this.g = Thread.currentThread();
                this.b.d();
                try {
                    try {
                        this.f = b();
                        synchronized (this.d) {
                            this.c.d();
                            this.g = null;
                            Thread.interrupted();
                        }
                    } catch (Throwable th) {
                        synchronized (this.d) {
                            this.c.d();
                            this.g = null;
                            Thread.interrupted();
                            throw th;
                        }
                    }
                } catch (Exception e) {
                    this.e = e;
                    synchronized (this.d) {
                        this.c.d();
                        this.g = null;
                        Thread.interrupted();
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        this.c.a();
        return c();
    }
}
