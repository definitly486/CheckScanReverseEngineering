package defpackage;

import androidx.media3.common.C;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import okhttp3.internal.http2.StreamResetException;

/* JADX INFO: loaded from: classes5.dex */
public final class vy3 {
    public final int a;
    public final hy3 b;
    public long c;
    public long d;
    public long e;
    public long f;
    public final ArrayDeque<jv3> g;
    public boolean h;
    public final b i;
    public final a j;
    public final c k;
    public final c l;
    public p03 m;
    public IOException n;

    public final class a implements s18 {
        public final boolean b;
        public final bu0 c = new bu0();
        public boolean d;

        public a(boolean z) {
            this.b = z;
        }

        @Override // defpackage.s18
        public final void H(bu0 bu0Var, long j) throws SocketTimeoutException {
            bu0Var.getClass();
            byte[] bArr = gb9.a;
            bu0 bu0Var2 = this.c;
            bu0Var2.H(bu0Var, j);
            while (bu0Var2.c >= 16384) {
                a(false);
            }
        }

        public final void a(boolean z) throws SocketTimeoutException {
            long jMin;
            boolean z2;
            vy3 vy3Var = vy3.this;
            synchronized (vy3Var) {
                try {
                    vy3Var.l.h();
                    while (vy3Var.e >= vy3Var.f && !this.b && !this.d) {
                        try {
                            synchronized (vy3Var) {
                                p03 p03Var = vy3Var.m;
                                if (p03Var != null) {
                                    break;
                                }
                                try {
                                    vy3Var.wait();
                                } catch (InterruptedException unused) {
                                    Thread.currentThread().interrupt();
                                    throw new InterruptedIOException();
                                }
                            }
                        } catch (Throwable th) {
                            vy3Var.l.k();
                            throw th;
                        }
                    }
                    vy3Var.l.k();
                    vy3Var.b();
                    jMin = Math.min(vy3Var.f - vy3Var.e, this.c.c);
                    vy3Var.e += jMin;
                    z2 = z && jMin == this.c.c;
                    j59 j59Var = j59.a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            vy3.this.l.h();
            try {
                vy3 vy3Var2 = vy3.this;
                vy3Var2.b.m(vy3Var2.a, z2, this.c, jMin);
            } finally {
                vy3.this.l.k();
            }
        }

        @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws SocketTimeoutException {
            boolean z;
            vy3 vy3Var = vy3.this;
            byte[] bArr = gb9.a;
            synchronized (vy3Var) {
                if (this.d) {
                    return;
                }
                synchronized (vy3Var) {
                    z = vy3Var.m == null;
                    j59 j59Var = j59.a;
                }
                vy3 vy3Var2 = vy3.this;
                if (!vy3Var2.j.b) {
                    if (this.c.c > 0) {
                        while (this.c.c > 0) {
                            a(true);
                        }
                    } else if (z) {
                        vy3Var2.b.m(vy3Var2.a, true, null, 0L);
                    }
                }
                synchronized (vy3.this) {
                    this.d = true;
                    j59 j59Var2 = j59.a;
                }
                vy3.this.b.x.flush();
                vy3.this.a();
            }
        }

        @Override // defpackage.s18, java.io.Flushable
        public final void flush() throws SocketTimeoutException {
            vy3 vy3Var = vy3.this;
            byte[] bArr = gb9.a;
            synchronized (vy3Var) {
                vy3Var.b();
                j59 j59Var = j59.a;
            }
            while (this.c.c > 0) {
                a(false);
                vy3.this.b.x.flush();
            }
        }

        @Override // defpackage.s18
        public final wv8 r() {
            return vy3.this.l;
        }
    }

    public final class b implements v48 {
        public final long b;
        public boolean c;
        public final bu0 d = new bu0();
        public final bu0 e = new bu0();
        public boolean f;

        public b(long j, boolean z) {
            this.b = j;
            this.c = z;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            long j;
            vy3 vy3Var = vy3.this;
            synchronized (vy3Var) {
                this.f = true;
                bu0 bu0Var = this.e;
                j = bu0Var.c;
                bu0Var.p();
                vy3Var.notifyAll();
                j59 j59Var = j59.a;
            }
            if (j > 0) {
                vy3 vy3Var2 = vy3.this;
                byte[] bArr = gb9.a;
                vy3Var2.b.g(j);
            }
            vy3.this.a();
        }

        @Override // defpackage.v48
        public final wv8 r() {
            return vy3.this.k;
        }

        /* JADX WARN: Code duplicated, block: B:47:0x009e A[LOOP:0: B:4:0x000d->B:47:0x009e, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:50:0x00a6 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:51:0x00a7 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:52:0x00a9 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:53:0x00aa  */
        /* JADX WARN: Code duplicated, block: B:76:0x00a2 A[SYNTHETIC] */
        @Override // defpackage.v48
        public final long t0(bu0 bu0Var, long j) throws Throwable {
            p03 p03Var;
            Throwable streamResetException;
            boolean z;
            long j2;
            long jT0;
            bu0Var.getClass();
            long j3 = 0;
            if (j < 0) {
                c9.f(r01.c(j, "byteCount < 0: "));
                return 0L;
            }
            while (true) {
                vy3 vy3Var = vy3.this;
                synchronized (vy3Var) {
                    vy3Var.k.h();
                    try {
                        synchronized (vy3Var) {
                            p03Var = vy3Var.m;
                        }
                        if (z) {
                            if (jT0 != -1) {
                                return jT0;
                            }
                            if (streamResetException == null) {
                                return -1L;
                            }
                            throw streamResetException;
                        }
                        j3 = j2;
                    } catch (Throwable th) {
                        vy3Var.k.k();
                        throw th;
                    }
                }
                if (p03Var != null && !this.c) {
                    streamResetException = vy3Var.n;
                    if (streamResetException == null) {
                        synchronized (vy3Var) {
                            p03 p03Var2 = vy3Var.m;
                            p03Var2.getClass();
                            streamResetException = new StreamResetException(p03Var2);
                        }
                    }
                    throw th;
                }
                streamResetException = null;
                if (this.f) {
                    throw new IOException("stream closed");
                }
                bu0 bu0Var2 = this.e;
                long j4 = bu0Var2.c;
                z = false;
                if (j4 > j3) {
                    jT0 = bu0Var2.t0(bu0Var, Math.min(j, j4));
                    long j5 = vy3Var.c + jT0;
                    vy3Var.c = j5;
                    j2 = j3;
                    long j6 = j5 - vy3Var.d;
                    if (streamResetException == null && j6 >= vy3Var.b.q.a() / 2) {
                        vy3Var.b.o(vy3Var.a, j6);
                        vy3Var.d = vy3Var.c;
                    }
                } else {
                    j2 = j3;
                    if (!this.c && streamResetException == null) {
                        try {
                            vy3Var.wait();
                            z = true;
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    }
                    jT0 = -1;
                }
                vy3Var.k.k();
                j59 j59Var = j59.a;
                if (z) {
                    if (jT0 != -1) {
                        return jT0;
                    }
                    if (streamResetException == null) {
                        return -1L;
                    }
                    throw streamResetException;
                }
                j3 = j2;
            }
        }
    }

    public final class c extends at {
        public c() {
        }

        @Override // defpackage.at
        public final void j() {
            vy3.this.e(p03.CANCEL);
            hy3 hy3Var = vy3.this.b;
            synchronized (hy3Var) {
                long j = hy3Var.o;
                long j2 = hy3Var.n;
                if (j < j2) {
                    return;
                }
                hy3Var.n = j2 + 1;
                hy3Var.p = System.nanoTime() + C.NANOS_PER_SECOND;
                j59 j59Var = j59.a;
                hy3Var.i.c(new py3(me0.d(new StringBuilder(), hy3Var.d, " ping"), hy3Var), 0L);
            }
        }

        public final void k() throws SocketTimeoutException {
            if (i()) {
                throw new SocketTimeoutException("timeout");
            }
        }
    }

    public vy3(int i, hy3 hy3Var, boolean z, boolean z2, jv3 jv3Var) {
        hy3Var.getClass();
        this.a = i;
        this.b = hy3Var;
        this.f = hy3Var.r.a();
        ArrayDeque<jv3> arrayDeque = new ArrayDeque<>();
        this.g = arrayDeque;
        this.i = new b(hy3Var.q.a(), z2);
        this.j = new a(z);
        this.k = new c();
        this.l = new c();
        if (jv3Var == null) {
            if (g()) {
                return;
            }
            ah.f("remotely-initiated streams should have headers");
            throw null;
        }
        if (g()) {
            ah.f("locally-initiated streams shouldn't have headers yet");
            throw null;
        }
        arrayDeque.add(jv3Var);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001c  */
    public final void a() {
        boolean z;
        boolean zH;
        byte[] bArr = gb9.a;
        synchronized (this) {
            try {
                b bVar = this.i;
                if (bVar.c || !bVar.f) {
                    z = false;
                } else {
                    a aVar = this.j;
                    if (aVar.b || aVar.d) {
                        z = true;
                    } else {
                        z = false;
                    }
                }
                zH = h();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            c(p03.CANCEL, null);
        } else {
            if (zH) {
                return;
            }
            this.b.e(this.a);
        }
    }

    public final void b() throws IOException {
        a aVar = this.j;
        if (aVar.d) {
            ki0.d("stream closed");
            return;
        }
        if (aVar.b) {
            ki0.d("stream finished");
            return;
        }
        p03 p03Var = this.m;
        if (p03Var != null) {
            IOException iOException = this.n;
            if (iOException == null) {
                throw new StreamResetException(p03Var);
            }
        }
    }

    public final void c(p03 p03Var, IOException iOException) {
        p03Var.getClass();
        if (d(p03Var, iOException)) {
            hy3 hy3Var = this.b;
            hy3Var.getClass();
            hy3Var.x.g(this.a, p03Var);
        }
    }

    public final boolean d(p03 p03Var, IOException iOException) {
        byte[] bArr = gb9.a;
        synchronized (this) {
            if (this.m != null) {
                return false;
            }
            this.m = p03Var;
            this.n = iOException;
            notifyAll();
            if (this.i.c && this.j.b) {
                return false;
            }
            j59 j59Var = j59.a;
            this.b.e(this.a);
            return true;
        }
    }

    public final void e(p03 p03Var) {
        p03Var.getClass();
        if (d(p03Var, null)) {
            this.b.n(this.a, p03Var);
        }
    }

    public final a f() {
        synchronized (this) {
            try {
                if (!this.h && !g()) {
                    throw new IllegalStateException("reply before requesting the sink");
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.j;
    }

    public final boolean g() {
        boolean z = (this.a & 1) == 1;
        this.b.getClass();
        return true == z;
    }

    public final synchronized boolean h() {
        try {
            if (this.m != null) {
                return false;
            }
            b bVar = this.i;
            if (bVar.c || bVar.f) {
                a aVar = this.j;
                if ((aVar.b || aVar.d) && this.h) {
                    return false;
                }
            }
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void i(jv3 jv3Var, boolean z) {
        boolean zH;
        jv3Var.getClass();
        byte[] bArr = gb9.a;
        synchronized (this) {
            try {
                if (this.h && z) {
                    this.i.getClass();
                } else {
                    this.h = true;
                    this.g.add(jv3Var);
                }
                if (z) {
                    this.i.c = true;
                }
                zH = h();
                notifyAll();
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (zH) {
            return;
        }
        this.b.e(this.a);
    }
}
