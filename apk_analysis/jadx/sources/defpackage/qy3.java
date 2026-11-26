package defpackage;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import okhttp3.OkHttpClient;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.StreamResetException;

/* JADX INFO: loaded from: classes5.dex */
public final class qy3 implements o13 {
    public static final List<String> g = gb9.k("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");
    public static final List<String> h = gb9.k("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");
    public final ly6 a;
    public final ez6 b;
    public final hy3 c;
    public volatile vy3 d;
    public final ts6 e;
    public volatile boolean f;

    public qy3(OkHttpClient okHttpClient, ly6 ly6Var, ez6 ez6Var, hy3 hy3Var) {
        okHttpClient.getClass();
        hy3Var.getClass();
        this.a = ly6Var;
        this.b = ez6Var;
        this.c = hy3Var;
        List<ts6> list = okHttpClient.t;
        ts6 ts6Var = ts6.H2_PRIOR_KNOWLEDGE;
        this.e = list.contains(ts6Var) ? ts6Var : ts6.HTTP_2;
    }

    @Override // defpackage.o13
    public final ly6 a() {
        return this.a;
    }

    @Override // defpackage.o13
    public final s18 b(b37 b37Var, long j) {
        b37Var.getClass();
        vy3 vy3Var = this.d;
        vy3Var.getClass();
        return vy3Var.f();
    }

    @Override // defpackage.o13
    public final v48 c(z47 z47Var) {
        vy3 vy3Var = this.d;
        vy3Var.getClass();
        return vy3Var.i;
    }

    @Override // defpackage.o13
    public final void cancel() {
        this.f = true;
        vy3 vy3Var = this.d;
        if (vy3Var != null) {
            vy3Var.e(p03.CANCEL);
        }
    }

    @Override // defpackage.o13
    public final void d() {
        this.c.x.flush();
    }

    @Override // defpackage.o13
    public final void e() throws SocketTimeoutException {
        vy3 vy3Var = this.d;
        vy3Var.getClass();
        vy3Var.f().close();
    }

    @Override // defpackage.o13
    public final void f(b37 b37Var) throws IOException {
        int i;
        vy3 vy3Var;
        boolean z;
        b37Var.getClass();
        if (this.d != null) {
            return;
        }
        boolean z2 = b37Var.d != null;
        jv3 jv3Var = b37Var.c;
        ArrayList arrayList = new ArrayList(jv3Var.size() + 4);
        arrayList.add(new av3(av3.f, b37Var.b));
        gx0 gx0Var = av3.g;
        fz3 fz3Var = b37Var.a;
        fz3Var.getClass();
        String strB = fz3Var.b();
        String strD = fz3Var.d();
        if (strD != null) {
            strB = strB + '?' + strD;
        }
        arrayList.add(new av3(gx0Var, strB));
        String strA = jv3Var.a("Host");
        if (strA != null) {
            arrayList.add(new av3(av3.i, strA));
        }
        arrayList.add(new av3(av3.h, fz3Var.a));
        int size = jv3Var.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strB2 = jv3Var.b(i2);
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = strB2.toLowerCase(locale);
            lowerCase.getClass();
            if (!g.contains(lowerCase) || (lowerCase.equals("te") && aa4.e(jv3Var.g(i2), "trailers"))) {
                arrayList.add(new av3(lowerCase, jv3Var.g(i2)));
            }
        }
        hy3 hy3Var = this.c;
        hy3Var.getClass();
        boolean z3 = !z2;
        synchronized (hy3Var.x) {
            synchronized (hy3Var) {
                try {
                    if (hy3Var.f > 1073741823) {
                        hy3Var.f(p03.REFUSED_STREAM);
                    }
                    if (hy3Var.g) {
                        throw new ConnectionShutdownException();
                    }
                    i = hy3Var.f;
                    hy3Var.f = i + 2;
                    vy3Var = new vy3(i, hy3Var, z3, false, null);
                    z = !z2 || hy3Var.u >= hy3Var.v || vy3Var.e >= vy3Var.f;
                    if (vy3Var.h()) {
                        hy3Var.c.put(Integer.valueOf(i), vy3Var);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            hy3Var.x.f(arrayList, i, z3);
        }
        if (z) {
            hy3Var.x.flush();
        }
        this.d = vy3Var;
        boolean z4 = this.f;
        vy3 vy3Var2 = this.d;
        if (z4) {
            vy3Var2.getClass();
            vy3Var2.e(p03.CANCEL);
            ki0.d("Canceled");
        } else {
            vy3Var2.getClass();
            vy3Var2.k.g(this.b.g);
            vy3 vy3Var3 = this.d;
            vy3Var3.getClass();
            vy3Var3.l.g(this.b.h);
        }
    }

    @Override // defpackage.o13
    public final long g(z47 z47Var) {
        if (az3.a(z47Var)) {
            return gb9.j(z47Var);
        }
        return 0L;
    }

    @Override // defpackage.o13
    public final z47.a h(boolean z) throws IOException {
        jv3 jv3Var;
        vy3 vy3Var = this.d;
        if (vy3Var == null) {
            ki0.d("stream wasn't created");
            return null;
        }
        synchronized (vy3Var) {
            vy3Var.k.h();
            while (vy3Var.g.isEmpty() && vy3Var.m == null) {
                try {
                    try {
                        vy3Var.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                } catch (Throwable th) {
                    vy3Var.k.k();
                    throw th;
                }
            }
            vy3Var.k.k();
            if (vy3Var.g.isEmpty()) {
                IOException iOException = vy3Var.n;
                if (iOException != null) {
                    throw iOException;
                }
                p03 p03Var = vy3Var.m;
                p03Var.getClass();
                throw new StreamResetException(p03Var);
            }
            jv3 jv3VarRemoveFirst = vy3Var.g.removeFirst();
            jv3VarRemoveFirst.getClass();
            jv3Var = jv3VarRemoveFirst;
        }
        ts6 ts6Var = this.e;
        ts6Var.getClass();
        jv3.a aVar = new jv3.a();
        int size = jv3Var.size();
        k88 k88VarA = null;
        for (int i = 0; i < size; i++) {
            String strB = jv3Var.b(i);
            String strG = jv3Var.g(i);
            if (aa4.e(strB, ":status")) {
                k88VarA = k88.a.a("HTTP/1.1 " + strG);
            } else if (!h.contains(strB)) {
                aVar.c(strB, strG);
            }
        }
        if (k88VarA == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        z47.a aVar2 = new z47.a();
        aVar2.b = ts6Var;
        aVar2.c = k88VarA.b;
        aVar2.d = k88VarA.c;
        aVar2.f = aVar.e().d();
        if (z && aVar2.c == 100) {
            return null;
        }
        return aVar2;
    }
}
