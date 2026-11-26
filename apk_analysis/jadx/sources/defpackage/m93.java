package defpackage;

import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes5.dex */
public abstract class m93 implements Closeable {
    public final boolean b;
    public boolean c;
    public int d;
    public final ReentrantLock e = new ReentrantLock();

    public static final class a implements s18 {
        public final m93 b;
        public long c;
        public boolean d;

        public a(m93 m93Var) {
            m93Var.getClass();
            this.b = m93Var;
            this.c = 0L;
        }

        @Override // defpackage.s18
        public final void H(bu0 bu0Var, long j) {
            bu0Var.getClass();
            if (this.d) {
                ah.f("closed");
                return;
            }
            long j2 = this.c;
            m93 m93Var = this.b;
            m93Var.getClass();
            h.b(bu0Var.c, 0L, j);
            long j3 = j2 + j;
            long j4 = j2;
            while (j4 < j3) {
                gl7 gl7Var = bu0Var.b;
                gl7Var.getClass();
                int iMin = (int) Math.min(j3 - j4, gl7Var.c - gl7Var.b);
                m93Var.v(gl7Var.b, iMin, j4, gl7Var.a);
                int i = gl7Var.b + iMin;
                gl7Var.b = i;
                long j5 = iMin;
                j4 += j5;
                bu0Var.c -= j5;
                if (i == gl7Var.c) {
                    bu0Var.b = gl7Var.a();
                    il7.a(gl7Var);
                }
            }
            this.c += j;
        }

        @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.d) {
                return;
            }
            this.d = true;
            m93 m93Var = this.b;
            ReentrantLock reentrantLock = m93Var.e;
            reentrantLock.lock();
            try {
                int i = m93Var.d - 1;
                m93Var.d = i;
                if (i == 0 && m93Var.c) {
                    j59 j59Var = j59.a;
                    reentrantLock.unlock();
                    m93Var.m();
                    return;
                }
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        @Override // defpackage.s18, java.io.Flushable
        public final void flush() {
            if (this.d) {
                ah.f("closed");
            } else {
                this.b.n();
            }
        }

        @Override // defpackage.s18
        public final wv8 r() {
            return wv8.d;
        }
    }

    public static final class b implements v48 {
        public final m93 b;
        public long c;
        public boolean d;

        public b(m93 m93Var, long j) {
            this.b = m93Var;
            this.c = j;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.d) {
                return;
            }
            this.d = true;
            m93 m93Var = this.b;
            ReentrantLock reentrantLock = m93Var.e;
            reentrantLock.lock();
            try {
                int i = m93Var.d - 1;
                m93Var.d = i;
                if (i == 0 && m93Var.c) {
                    j59 j59Var = j59.a;
                    reentrantLock.unlock();
                    m93Var.m();
                    return;
                }
                reentrantLock.unlock();
            } catch (Throwable th) {
                reentrantLock.unlock();
                throw th;
            }
        }

        @Override // defpackage.v48
        public final wv8 r() {
            return wv8.d;
        }

        @Override // defpackage.v48
        public final long t0(bu0 bu0Var, long j) {
            long j2;
            long j3;
            bu0Var.getClass();
            if (this.d) {
                ah.f("closed");
                return 0L;
            }
            long j4 = this.c;
            if (j < 0) {
                c9.f(r01.c(j, "byteCount < 0: "));
                return 0L;
            }
            long j5 = j + j4;
            long j6 = j4;
            while (true) {
                if (j6 < j5) {
                    gl7 gl7VarY0 = bu0Var.y0(1);
                    byte[] bArr = gl7VarY0.a;
                    int i = gl7VarY0.c;
                    j2 = -1;
                    long j7 = j5;
                    int iO = this.b.o(i, (int) Math.min(j5 - j6, 8192 - i), j6, bArr);
                    if (iO == -1) {
                        if (gl7VarY0.b == gl7VarY0.c) {
                            bu0Var.b = gl7VarY0.a();
                            il7.a(gl7VarY0);
                        }
                        if (j4 == j6) {
                            j3 = -1;
                            break;
                        }
                    } else {
                        gl7VarY0.c += iO;
                        long j8 = iO;
                        j6 += j8;
                        bu0Var.c += j8;
                        j5 = j7;
                    }
                } else {
                    j2 = -1;
                }
                j3 = j6 - j4;
                break;
            }
            if (j3 != j2) {
                this.c += j3;
            }
            return j3;
        }
    }

    public m93(boolean z) {
        this.b = z;
    }

    public static a y(m93 m93Var) {
        if (!m93Var.b) {
            ah.f("file handle is read-only");
            return null;
        }
        ReentrantLock reentrantLock = m93Var.e;
        reentrantLock.lock();
        try {
            if (m93Var.c) {
                throw new IllegalStateException("closed");
            }
            m93Var.d++;
            reentrantLock.unlock();
            return new a(m93Var);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final b E(long j) {
        ReentrantLock reentrantLock = this.e;
        reentrantLock.lock();
        try {
            if (this.c) {
                throw new IllegalStateException("closed");
            }
            this.d++;
            reentrantLock.unlock();
            return new b(this, j);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ReentrantLock reentrantLock = this.e;
        reentrantLock.lock();
        try {
            if (this.c) {
                reentrantLock.unlock();
                return;
            }
            this.c = true;
            if (this.d != 0) {
                reentrantLock.unlock();
                return;
            }
            j59 j59Var = j59.a;
            reentrantLock.unlock();
            m();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void flush() {
        if (!this.b) {
            ah.f("file handle is read-only");
            return;
        }
        ReentrantLock reentrantLock = this.e;
        reentrantLock.lock();
        try {
            if (this.c) {
                throw new IllegalStateException("closed");
            }
            j59 j59Var = j59.a;
            reentrantLock.unlock();
            n();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public abstract void m();

    public abstract void n();

    public abstract int o(int i, int i2, long j, byte[] bArr);

    public abstract long p();

    public final long size() {
        ReentrantLock reentrantLock = this.e;
        reentrantLock.lock();
        try {
            if (this.c) {
                throw new IllegalStateException("closed");
            }
            j59 j59Var = j59.a;
            reentrantLock.unlock();
            return p();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public abstract void v(int i, int i2, long j, byte[] bArr);
}
