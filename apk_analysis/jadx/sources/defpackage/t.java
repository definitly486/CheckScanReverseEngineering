package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import io.grpc.c;
import io.grpc.f;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class t extends t1 implements cm1 {
    public static final Logger i = Logger.getLogger(t.class.getName());
    public final g39 c;
    public final wk3 d;
    public final boolean e;
    public final boolean f;
    public la5 g;
    public volatile boolean h;

    public class a implements wk3 {
        public la5 a;
        public boolean b;
        public final g88 c;
        public byte[] d;

        public a(la5 la5Var, g88 g88Var) {
            o8.l(la5Var, "headers");
            this.a = la5Var;
            this.c = g88Var;
        }

        @Override // defpackage.wk3
        public final void b(int i) {
        }

        @Override // defpackage.wk3
        public final wk3 c(qu1 qu1Var) {
            return this;
        }

        @Override // defpackage.wk3
        public final void close() {
            this.b = true;
            o8.s(this.d != null, "Lack of request message. GET request is only supported for unary requests");
            t.this.o().a(this.a, this.d);
            this.d = null;
            this.a = null;
        }

        @Override // defpackage.wk3
        public final void d(InputStream inputStream) {
            g88 g88Var = this.c;
            y14[] y14VarArr = g88Var.a;
            o8.s(this.d == null, "writePayload should not be called multiple times");
            try {
                this.d = dx0.b(inputStream);
                for (y14 y14Var : y14VarArr) {
                    y14Var.J(0);
                }
                byte[] bArr = this.d;
                long length = bArr.length;
                long length2 = bArr.length;
                for (y14 y14Var2 : g88Var.a) {
                    y14Var2.K(0, length, length2);
                }
                long length3 = this.d.length;
                for (y14 y14Var3 : y14VarArr) {
                    y14Var3.L(length3);
                }
                long length4 = this.d.length;
                for (y14 y14Var4 : y14VarArr) {
                    y14Var4.M(length4);
                }
            } catch (IOException e) {
                ti0.f(e);
            }
        }

        @Override // defpackage.wk3
        public final void flush() {
        }

        @Override // defpackage.wk3
        public final boolean isClosed() {
            return this.b;
        }
    }

    public static abstract class b extends t1.a {
        public final g88 i;
        public boolean j;
        public dm1 k;
        public yd2 l;
        public boolean m;
        public a n;
        public volatile boolean o;
        public boolean p;
        public boolean q;

        public class a implements Runnable {
            public final /* synthetic */ h88 b;
            public final /* synthetic */ dm1.a c;
            public final /* synthetic */ la5 d;

            public a(h88 h88Var, dm1.a aVar, la5 la5Var) {
                this.b = h88Var;
                this.c = aVar;
                this.d = la5Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                b.this.g(this.b, this.c, this.d);
            }
        }

        public b(int i, g88 g88Var, g39 g39Var, io.grpc.b bVar) {
            super(i, g88Var, g39Var);
            this.l = yd2.d;
            this.m = false;
            this.i = g88Var;
            bVar.getClass();
        }

        public final void g(h88 h88Var, dm1.a aVar, la5 la5Var) {
            if (this.j) {
                return;
            }
            this.j = true;
            g88 g88Var = this.i;
            if (g88Var.b.compareAndSet(false, true)) {
                for (y14 y14Var : g88Var.a) {
                    y14Var.N(h88Var);
                }
            }
            if (this.c != null) {
                h88Var.f();
            }
            this.k.c(h88Var, aVar, la5Var);
        }

        public final void h(la5 la5Var) throws EOFException {
            o8.s(!this.p, "Received headers on closed stream");
            for (y14 y14Var : this.i.a) {
                ((c) y14Var).W(la5Var);
            }
            String str = (String) la5Var.c(vs3.d);
            if (str != null) {
                yd2.a aVar = this.l.a.get(str);
                bn1 bn1Var = aVar != null ? aVar.a : null;
                if (bn1Var == null) {
                    ((kv5.b) this).n(h88.l.h("Can't find decompressor for ".concat(str)).a());
                    return;
                } else if (bn1Var != bn1.b.a) {
                    this.a.e(bn1Var);
                }
            }
            this.k.b(la5Var);
        }

        public final void i(h88 h88Var, dm1.a aVar, boolean z, la5 la5Var) {
            o8.l(h88Var, NotificationCompat.CATEGORY_STATUS);
            if (!this.p || z) {
                this.p = true;
                this.q = h88Var.f();
                synchronized (this.b) {
                    this.g = true;
                }
                if (this.m) {
                    this.n = null;
                    g(h88Var, aVar, la5Var);
                    return;
                }
                this.n = new a(h88Var, aVar, la5Var);
                vk2 vk2Var = this.a;
                if (z) {
                    vk2Var.close();
                } else {
                    vk2Var.n();
                }
            }
        }

        public final void j(h88 h88Var, boolean z, la5 la5Var) {
            i(h88Var, dm1.a.PROCESSED, z, la5Var);
        }
    }

    public t(x65 x65Var, g88 g88Var, g39 g39Var, la5 la5Var, io.grpc.b bVar, boolean z) {
        o8.l(la5Var, "headers");
        o8.l(g39Var, "transportTracer");
        this.c = g39Var;
        this.e = !Boolean.TRUE.equals(bVar.a(vs3.n));
        this.f = z;
        if (z) {
            this.d = new a(la5Var, g88Var);
        } else {
            this.d = new ea5(this, x65Var, g88Var);
            this.g = la5Var;
        }
    }

    @Override // defpackage.cm1
    public final void a(int i2) {
        n().a.a(i2);
    }

    @Override // defpackage.cm1
    public final void b(int i2) {
        this.d.b(i2);
    }

    @Override // defpackage.cm1
    public final void f(yd2 yd2Var) {
        kv5.b bVarN = n();
        o8.s(bVarN.k == null, "Already called start");
        o8.l(yd2Var, "decompressorRegistry");
        bVarN.l = yd2Var;
    }

    @Override // defpackage.cm1
    public final void g(xc2 xc2Var) {
        la5 la5Var = this.g;
        la5.b bVar = vs3.c;
        la5Var.a(bVar);
        this.g.e(bVar, Long.valueOf(xc2Var.a()));
    }

    @Override // defpackage.cm1
    public final void h() {
        if (n().o) {
            return;
        }
        n().o = true;
        this.d.close();
    }

    @Override // defpackage.cm1
    public final void i(dm1 dm1Var) {
        kv5.b bVarN = n();
        o8.s(bVarN.k == null, "Already called setListener");
        o8.l(dm1Var, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        bVarN.k = dm1Var;
        if (this.f) {
            return;
        }
        o().a(this.g, null);
        this.g = null;
    }

    @Override // defpackage.t1, defpackage.e98
    public final boolean isReady() {
        return super.isReady() && !this.h;
    }

    @Override // defpackage.cm1
    public final void j(h88 h88Var) {
        o8.f(!h88Var.f(), "Should not cancel with OK status");
        this.h = true;
        kv5.a aVarO = o();
        aVarO.getClass();
        r46.c();
        try {
            synchronized (kv5.this.n.x) {
                kv5.this.n.m(h88Var, true, null);
            }
            r46.a.getClass();
        } catch (Throwable th) {
            try {
                r46.a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // defpackage.t1
    public final wk3 k() {
        return this.d;
    }

    @Override // defpackage.cm1
    public final void l(y54 y54Var) {
        y54Var.a(((kv5) this).p.a.get(f.a), "remote_addr");
    }

    public abstract kv5.a o();

    public final void p(ll9 ll9Var, boolean z, boolean z2, int i2) {
        bu0 bu0Var;
        o8.f(ll9Var != null || z, "null frame before EOS");
        kv5.a aVarO = o();
        aVarO.getClass();
        r46.c();
        try {
            if (ll9Var == null) {
                bu0Var = kv5.r;
            } else {
                bu0Var = ((sv5) ll9Var).a;
                int i3 = (int) bu0Var.c;
                if (i3 > 0) {
                    kv5.b bVar = kv5.this.n;
                    synchronized (bVar.b) {
                        bVar.e += i3;
                    }
                }
            }
            synchronized (kv5.this.n.x) {
                kv5.this.n.o(bu0Var, z, z2);
                g39 g39Var = kv5.this.c;
                if (i2 == 0) {
                    g39Var.getClass();
                } else {
                    g39Var.getClass();
                    g39Var.a.b();
                }
            }
            r46.a.getClass();
        } catch (Throwable th) {
            try {
                r46.a.getClass();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // defpackage.t1
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public abstract kv5.b n();
}
