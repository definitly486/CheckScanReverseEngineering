package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class t1 implements e98 {
    public static final Logger b = Logger.getLogger(t1.class.getName());

    public static abstract class a implements da5.b {
        public vk2 a;
        public final Object b = new Object();
        public final g39 c;
        public final da5 d;
        public int e;
        public boolean f;
        public boolean g;
        public final int h;

        public a(int i, g88 g88Var, g39 g39Var) {
            o8.l(g39Var, "transportTracer");
            this.c = g39Var;
            da5 da5Var = new da5(this, i, g88Var, g39Var);
            this.d = da5Var;
            this.a = da5Var;
            this.h = 32768;
        }

        @Override // da5.b
        public final void a(j98.a aVar) {
            ((t.b) this).k.a(aVar);
        }

        public final void d(int i) {
            boolean z;
            synchronized (this.b) {
                o8.s(this.f, "onStreamAllocated was not called, but it seems the stream is active");
                int i2 = this.e;
                int i3 = this.h;
                z = false;
                boolean z2 = i2 < i3;
                int i4 = i2 - i;
                this.e = i4;
                boolean z3 = i4 < i3;
                if (!z2 && z3) {
                    z = true;
                }
            }
            if (z) {
                f();
            }
        }

        public final boolean e() {
            boolean z;
            synchronized (this.b) {
                try {
                    z = this.f && this.e < this.h && !this.g;
                } catch (Throwable th) {
                    throw th;
                }
            }
            return z;
        }

        public final void f() {
            boolean zE;
            synchronized (this.b) {
                try {
                    zE = e();
                    if (!zE) {
                        Logger logger = t1.b;
                        Level level = Level.FINEST;
                        if (logger.isLoggable(level)) {
                            logger.log(level, "Stream not ready so skip notifying listener.\ndetails: allocated/deallocated:{0}/{3}, sent queued: {1}, ready thresh: {2}", new Object[]{Boolean.valueOf(this.f), Integer.valueOf(this.e), Integer.valueOf(this.h), Boolean.valueOf(this.g)});
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (zE) {
                ((t.b) this).k.d();
            }
        }
    }

    @Override // defpackage.e98
    public final void c(qu1 qu1Var) {
        k().c(qu1Var);
    }

    @Override // defpackage.e98
    public final void d(InputStream inputStream) {
        o8.l(inputStream, TJAdUnitConstants.String.MESSAGE);
        try {
            if (!k().isClosed()) {
                k().d(inputStream);
            }
        } finally {
            vs3.b(inputStream);
        }
    }

    @Override // defpackage.e98
    public final void e() {
        a aVarN = n();
        da5 da5Var = aVarN.d;
        da5Var.b = aVarN;
        aVarN.a = da5Var;
    }

    @Override // defpackage.e98
    public final void flush() {
        if (k().isClosed()) {
            return;
        }
        k().flush();
    }

    @Override // defpackage.e98
    public boolean isReady() {
        return n().e();
    }

    public abstract wk3 k();

    @Override // defpackage.e98
    public final void m() {
        a aVarN = n();
        aVarN.getClass();
        r46.b();
        s1 s1Var = new s1(aVarN);
        synchronized (((kv5.b) aVarN).x) {
            s1Var.run();
        }
    }

    public abstract a n();
}
