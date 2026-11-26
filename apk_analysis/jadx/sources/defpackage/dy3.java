package defpackage;

import androidx.media3.muxer.WebmConstants;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes5.dex */
public final class dy3 implements o13 {
    public final OkHttpClient a;
    public final ly6 b;
    public final wu0 c;
    public final vu0 d;
    public int e;
    public final mv3 f;
    public jv3 g;

    public abstract class a implements v48 {
        public final sj3 b;
        public boolean c;

        public a() {
            this.b = new sj3(dy3.this.c.r());
        }

        public final void m() {
            dy3 dy3Var = dy3.this;
            int i = dy3Var.e;
            if (i == 6) {
                return;
            }
            if (i != 5) {
                j2.c(dy3Var.e, "state: ");
                return;
            }
            sj3 sj3Var = this.b;
            wv8 wv8Var = sj3Var.e;
            wv8.a aVar = wv8.d;
            aVar.getClass();
            sj3Var.e = aVar;
            wv8Var.a();
            wv8Var.b();
            dy3Var.e = 6;
        }

        @Override // defpackage.v48
        public final wv8 r() {
            return this.b;
        }

        @Override // defpackage.v48
        public long t0(bu0 bu0Var, long j) throws IOException {
            dy3 dy3Var = dy3.this;
            bu0Var.getClass();
            try {
                return dy3Var.c.t0(bu0Var, j);
            } catch (IOException e) {
                dy3Var.b.l();
                m();
                throw e;
            }
        }
    }

    public final class b implements s18 {
        public final sj3 b;
        public boolean c;

        public b() {
            this.b = new sj3(dy3.this.d.r());
        }

        @Override // defpackage.s18
        public final void H(bu0 bu0Var, long j) {
            vu0 vu0Var = dy3.this.d;
            bu0Var.getClass();
            if (this.c) {
                ah.f("closed");
            } else {
                if (j == 0) {
                    return;
                }
                vu0Var.k(j);
                vu0Var.l("\r\n");
                vu0Var.H(bu0Var, j);
                vu0Var.l("\r\n");
            }
        }

        @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            if (this.c) {
                return;
            }
            this.c = true;
            dy3.this.d.l("0\r\n\r\n");
            sj3 sj3Var = this.b;
            wv8 wv8Var = sj3Var.e;
            wv8.a aVar = wv8.d;
            aVar.getClass();
            sj3Var.e = aVar;
            wv8Var.a();
            wv8Var.b();
            dy3.this.e = 3;
        }

        @Override // defpackage.s18, java.io.Flushable
        public final synchronized void flush() {
            if (this.c) {
                return;
            }
            dy3.this.d.flush();
        }

        @Override // defpackage.s18
        public final wv8 r() {
            return this.b;
        }
    }

    public final class c extends a {
        public final fz3 e;
        public long f;
        public boolean g;
        public final /* synthetic */ dy3 h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(dy3 dy3Var, fz3 fz3Var) {
            super();
            fz3Var.getClass();
            this.h = dy3Var;
            this.e = fz3Var;
            this.f = -1L;
            this.g = true;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean zT;
            if (this.c) {
                return;
            }
            if (this.g) {
                byte[] bArr = gb9.a;
                TimeUnit.MILLISECONDS.getClass();
                try {
                    zT = gb9.t(this, 100);
                } catch (IOException unused) {
                    zT = false;
                }
                if (!zT) {
                    this.h.b.l();
                    m();
                }
            }
            this.c = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:30:0x009b, code lost:
        
            if (r11.g == false) goto L31;
         */
        @Override // dy3.a, defpackage.v48
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long t0(defpackage.bu0 r12, long r13) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: dy3.c.t0(bu0, long):long");
        }
    }

    public final class d extends a {
        public long e;

        public d(long j) {
            super();
            this.e = j;
            if (j == 0) {
                m();
            }
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean zT;
            if (this.c) {
                return;
            }
            if (this.e != 0) {
                byte[] bArr = gb9.a;
                TimeUnit.MILLISECONDS.getClass();
                try {
                    zT = gb9.t(this, 100);
                } catch (IOException unused) {
                    zT = false;
                }
                if (!zT) {
                    dy3.this.b.l();
                    m();
                }
            }
            this.c = true;
        }

        @Override // dy3.a, defpackage.v48
        public final long t0(bu0 bu0Var, long j) throws IOException {
            bu0Var.getClass();
            if (j < 0) {
                c9.f(r01.c(j, "byteCount < 0: "));
                return 0L;
            }
            if (this.c) {
                ah.f("closed");
                return 0L;
            }
            long j2 = this.e;
            if (j2 == 0) {
                return -1L;
            }
            long jT0 = super.t0(bu0Var, Math.min(j2, j));
            if (jT0 == -1) {
                dy3.this.b.l();
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                m();
                throw protocolException;
            }
            long j3 = this.e - jT0;
            this.e = j3;
            if (j3 == 0) {
                m();
            }
            return jT0;
        }
    }

    public final class e implements s18 {
        public final sj3 b;
        public boolean c;

        public e() {
            this.b = new sj3(dy3.this.d.r());
        }

        @Override // defpackage.s18
        public final void H(bu0 bu0Var, long j) {
            bu0Var.getClass();
            if (this.c) {
                ah.f("closed");
            } else {
                gb9.c(bu0Var.c, 0L, j);
                dy3.this.d.H(bu0Var, j);
            }
        }

        @Override // defpackage.s18, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.c) {
                return;
            }
            this.c = true;
            sj3 sj3Var = this.b;
            wv8 wv8Var = sj3Var.e;
            wv8.a aVar = wv8.d;
            aVar.getClass();
            sj3Var.e = aVar;
            wv8Var.a();
            wv8Var.b();
            dy3.this.e = 3;
        }

        @Override // defpackage.s18, java.io.Flushable
        public final void flush() {
            if (this.c) {
                return;
            }
            dy3.this.d.flush();
        }

        @Override // defpackage.s18
        public final wv8 r() {
            return this.b;
        }
    }

    public final class f extends a {
        public boolean e;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.c) {
                return;
            }
            if (!this.e) {
                m();
            }
            this.c = true;
        }

        @Override // dy3.a, defpackage.v48
        public final long t0(bu0 bu0Var, long j) throws IOException {
            bu0Var.getClass();
            if (j < 0) {
                c9.f(r01.c(j, "byteCount < 0: "));
                return 0L;
            }
            if (this.c) {
                ah.f("closed");
                return 0L;
            }
            if (this.e) {
                return -1L;
            }
            long jT0 = super.t0(bu0Var, j);
            if (jT0 != -1) {
                return jT0;
            }
            this.e = true;
            m();
            return -1L;
        }
    }

    public dy3(OkHttpClient okHttpClient, ly6 ly6Var, iy6 iy6Var, hy6 hy6Var) {
        iy6Var.getClass();
        hy6Var.getClass();
        this.a = okHttpClient;
        this.b = ly6Var;
        this.c = iy6Var;
        this.d = hy6Var;
        this.f = new mv3(iy6Var);
    }

    @Override // defpackage.o13
    public final ly6 a() {
        return this.b;
    }

    @Override // defpackage.o13
    public final s18 b(b37 b37Var, long j) {
        b37Var.getClass();
        if ("chunked".equalsIgnoreCase(b37Var.c.a("Transfer-Encoding"))) {
            if (this.e == 1) {
                this.e = 2;
                return new b();
            }
            js2.c(this.e, "state: ");
            return null;
        }
        if (j == -1) {
            ah.f("Cannot stream a request body without chunked encoding or a known content length!");
            return null;
        }
        if (this.e == 1) {
            this.e = 2;
            return new e();
        }
        js2.c(this.e, "state: ");
        return null;
    }

    @Override // defpackage.o13
    public final v48 c(z47 z47Var) {
        if (!az3.a(z47Var)) {
            return i(0L);
        }
        if ("chunked".equalsIgnoreCase(z47.n(z47Var, "Transfer-Encoding"))) {
            fz3 fz3Var = z47Var.b.a;
            if (this.e == 4) {
                this.e = 5;
                return new c(this, fz3Var);
            }
            js2.c(this.e, "state: ");
            return null;
        }
        long j = gb9.j(z47Var);
        if (j != -1) {
            return i(j);
        }
        if (this.e != 4) {
            js2.c(this.e, "state: ");
            return null;
        }
        this.e = 5;
        this.b.l();
        return new f();
    }

    @Override // defpackage.o13
    public final void cancel() {
        Socket socket = this.b.c;
        if (socket != null) {
            gb9.e(socket);
        }
    }

    @Override // defpackage.o13
    public final void d() {
        this.d.flush();
    }

    @Override // defpackage.o13
    public final void e() {
        this.d.flush();
    }

    @Override // defpackage.o13
    public final void f(b37 b37Var) {
        b37Var.getClass();
        Proxy.Type type = this.b.b.b.type();
        type.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(b37Var.b);
        sb.append(' ');
        fz3 fz3Var = b37Var.a;
        if (fz3Var.j || type != Proxy.Type.HTTP) {
            String strB = fz3Var.b();
            String strD = fz3Var.d();
            if (strD != null) {
                strB = strB + '?' + strD;
            }
            sb.append(strB);
        } else {
            sb.append(fz3Var);
        }
        sb.append(" HTTP/1.1");
        j(b37Var.c, sb.toString());
    }

    @Override // defpackage.o13
    public final long g(z47 z47Var) {
        if (!az3.a(z47Var)) {
            return 0L;
        }
        if ("chunked".equalsIgnoreCase(z47.n(z47Var, "Transfer-Encoding"))) {
            return -1L;
        }
        return gb9.j(z47Var);
    }

    @Override // defpackage.o13
    public final z47.a h(boolean z) {
        mv3 mv3Var = this.f;
        wu0 wu0Var = mv3Var.a;
        int i = this.e;
        fz3.a aVar = null;
        if (i != 1 && i != 2 && i != 3) {
            js2.c(this.e, "state: ");
            return null;
        }
        try {
            String strS = wu0Var.S(mv3Var.b);
            mv3Var.b -= (long) strS.length();
            k88 k88VarA = k88.a.a(strS);
            int i2 = k88VarA.b;
            z47.a aVar2 = new z47.a();
            ts6 ts6Var = k88VarA.a;
            ts6Var.getClass();
            aVar2.b = ts6Var;
            aVar2.c = i2;
            aVar2.d = k88VarA.c;
            jv3.a aVar3 = new jv3.a();
            while (true) {
                String strS2 = wu0Var.S(mv3Var.b);
                mv3Var.b -= (long) strS2.length();
                if (strS2.length() == 0) {
                    break;
                }
                aVar3.b(strS2);
            }
            aVar2.f = aVar3.e().d();
            if (z && i2 == 100) {
                return null;
            }
            if (i2 == 100) {
                this.e = 3;
                return aVar2;
            }
            if (102 > i2 || i2 >= 200) {
                this.e = 4;
                return aVar2;
            }
            this.e = 3;
            return aVar2;
        } catch (EOFException e2) {
            fz3 fz3Var = this.b.b.a.h;
            try {
                fz3.a aVar4 = new fz3.a();
                aVar4.c(fz3Var, "/...");
                aVar = aVar4;
            } catch (IllegalArgumentException unused) {
            }
            aVar.getClass();
            aVar.b = fz3.b.a("", 0, 0, WebmConstants.MkvEbmlElement.REFERENCE_BLOCK, " \"':;<=>@[]^`{}|/\\?#");
            aVar.c = fz3.b.a("", 0, 0, WebmConstants.MkvEbmlElement.REFERENCE_BLOCK, " \"':;<=>@[]^`{}|/\\?#");
            throw new IOException("unexpected end of stream on ".concat(aVar.a().i), e2);
        }
    }

    public final d i(long j) {
        if (this.e == 4) {
            this.e = 5;
            return new d(j);
        }
        js2.c(this.e, "state: ");
        return null;
    }

    public final void j(jv3 jv3Var, String str) {
        if (this.e != 0) {
            js2.c(this.e, "state: ");
            return;
        }
        vu0 vu0Var = this.d;
        vu0Var.l(str).l("\r\n");
        int size = jv3Var.size();
        for (int i = 0; i < size; i++) {
            vu0Var.l(jv3Var.b(i)).l(": ").l(jv3Var.g(i)).l("\r\n");
        }
        vu0Var.l("\r\n");
        this.e = 1;
    }
}
