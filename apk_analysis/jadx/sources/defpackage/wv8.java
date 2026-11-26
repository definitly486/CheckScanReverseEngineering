package defpackage;

import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class wv8 {
    public static final a d = new a();
    public boolean a;
    public long b;
    public long c;

    public static final class a extends wv8 {
        @Override // defpackage.wv8
        public final wv8 d(long j) {
            return this;
        }

        @Override // defpackage.wv8
        public final void f() {
        }

        @Override // defpackage.wv8
        public final wv8 g(long j) {
            TimeUnit.MILLISECONDS.getClass();
            return this;
        }
    }

    public wv8 a() {
        this.a = false;
        return this;
    }

    public wv8 b() {
        this.c = 0L;
        return this;
    }

    public long c() {
        if (this.a) {
            return this.b;
        }
        ah.f("No deadline");
        return 0L;
    }

    public wv8 d(long j) {
        this.a = true;
        this.b = j;
        return this;
    }

    public boolean e() {
        return this.a;
    }

    public void f() throws InterruptedIOException {
        if (Thread.currentThread().isInterrupted()) {
            throw new InterruptedIOException("interrupted");
        }
        if (this.a && this.b - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public wv8 g(long j) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        timeUnit.getClass();
        if (j >= 0) {
            this.c = timeUnit.toNanos(j);
            return this;
        }
        c9.f(r01.c(j, "timeout < 0: "));
        return null;
    }
}
