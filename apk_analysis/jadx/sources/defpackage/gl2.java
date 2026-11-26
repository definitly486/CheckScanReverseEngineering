package defpackage;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.tapjoy.TJAdUnitConstants;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class gl2 implements cm1 {
    public final String b;
    public volatile boolean c;
    public dm1 d;
    public cm1 e;
    public h88 f;
    public k h;
    public long i;
    public long j;
    public List<Runnable> g = new ArrayList();
    public ArrayList k = new ArrayList();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            gl2.this.e.e();
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ qu1 b;

        public b(qu1 qu1Var) {
            this.b = qu1Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            gl2.this.e.c(this.b);
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ yd2 b;

        public c(yd2 yd2Var) {
            this.b = yd2Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            gl2.this.e.f(this.b);
        }
    }

    public class d implements Runnable {
        public final /* synthetic */ int b;

        public d(int i) {
            this.b = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            gl2.this.e.a(this.b);
        }
    }

    public class e implements Runnable {
        public final /* synthetic */ int b;

        public e(int i) {
            this.b = i;
        }

        @Override // java.lang.Runnable
        public final void run() {
            gl2.this.e.b(this.b);
        }
    }

    public class f implements Runnable {
        public final /* synthetic */ xc2 b;

        public f(xc2 xc2Var) {
            this.b = xc2Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            gl2.this.e.g(this.b);
        }
    }

    public class g implements Runnable {
        public final /* synthetic */ InputStream b;

        public g(InputStream inputStream) {
            this.b = inputStream;
        }

        @Override // java.lang.Runnable
        public final void run() {
            gl2.this.e.d(this.b);
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            gl2.this.e.flush();
        }
    }

    public class i implements Runnable {
        public final /* synthetic */ h88 b;

        public i(h88 h88Var) {
            this.b = h88Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            gl2.this.e.j(this.b);
        }
    }

    public class j implements Runnable {
        public j() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            gl2.this.e.h();
        }
    }

    public static class k implements dm1 {
        public final dm1 a;
        public volatile boolean b;
        public List<Runnable> c = new ArrayList();

        public class a implements Runnable {
            public final /* synthetic */ j98.a b;

            public a(j98.a aVar) {
                this.b = aVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k.this.a.a(this.b);
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                k.this.a.d();
            }
        }

        public class c implements Runnable {
            public final /* synthetic */ la5 b;

            public c(la5 la5Var) {
                this.b = la5Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k.this.a.b(this.b);
            }
        }

        public class d implements Runnable {
            public final /* synthetic */ h88 b;
            public final /* synthetic */ dm1.a c;
            public final /* synthetic */ la5 d;

            public d(h88 h88Var, dm1.a aVar, la5 la5Var) {
                this.b = h88Var;
                this.c = aVar;
                this.d = la5Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                k.this.a.c(this.b, this.c, this.d);
            }
        }

        public k(dm1 dm1Var) {
            this.a = dm1Var;
        }

        @Override // defpackage.j98
        public final void a(j98.a aVar) {
            if (this.b) {
                this.a.a(aVar);
            } else {
                e(new a(aVar));
            }
        }

        @Override // defpackage.dm1
        public final void b(la5 la5Var) {
            e(new c(la5Var));
        }

        @Override // defpackage.dm1
        public final void c(h88 h88Var, dm1.a aVar, la5 la5Var) {
            e(new d(h88Var, aVar, la5Var));
        }

        @Override // defpackage.j98
        public final void d() {
            if (this.b) {
                this.a.d();
            } else {
                e(new b());
            }
        }

        public final void e(Runnable runnable) {
            synchronized (this) {
                try {
                    if (this.b) {
                        runnable.run();
                    } else {
                        this.c.add(runnable);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public gl2(String str) {
        this.b = str;
    }

    @Override // defpackage.cm1
    public final void a(int i2) {
        o8.s(this.d == null, "May only be called before start");
        this.k.add(new d(i2));
    }

    @Override // defpackage.cm1
    public final void b(int i2) {
        o8.s(this.d == null, "May only be called before start");
        this.k.add(new e(i2));
    }

    @Override // defpackage.e98
    public final void c(qu1 qu1Var) {
        o8.s(this.d == null, "May only be called before start");
        this.k.add(new b(qu1Var));
    }

    @Override // defpackage.e98
    public final void d(InputStream inputStream) {
        o8.s(this.d != null, "May only be called after start");
        o8.l(inputStream, TJAdUnitConstants.String.MESSAGE);
        if (this.c) {
            this.e.d(inputStream);
        } else {
            k(new g(inputStream));
        }
    }

    @Override // defpackage.e98
    public final void e() {
        o8.s(this.d == null, "May only be called before start");
        this.k.add(new a());
    }

    @Override // defpackage.cm1
    public final void f(yd2 yd2Var) {
        o8.s(this.d == null, "May only be called before start");
        o8.l(yd2Var, "decompressorRegistry");
        this.k.add(new c(yd2Var));
    }

    @Override // defpackage.e98
    public final void flush() {
        o8.s(this.d != null, "May only be called after start");
        if (this.c) {
            this.e.flush();
        } else {
            k(new h());
        }
    }

    @Override // defpackage.cm1
    public final void g(xc2 xc2Var) {
        o8.s(this.d == null, "May only be called before start");
        this.k.add(new f(xc2Var));
    }

    @Override // defpackage.cm1
    public final void h() {
        o8.s(this.d != null, "May only be called after start");
        k(new j());
    }

    @Override // defpackage.cm1
    public final void i(dm1 dm1Var) {
        h88 h88Var;
        boolean z;
        o8.l(dm1Var, ServiceSpecificExtraArgs.CastExtraArgs.LISTENER);
        o8.s(this.d == null, "already started");
        synchronized (this) {
            try {
                h88Var = this.f;
                z = this.c;
                if (!z) {
                    k kVar = new k(dm1Var);
                    this.h = kVar;
                    dm1Var = kVar;
                }
                this.d = dm1Var;
                this.i = System.nanoTime();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (h88Var != null) {
            dm1Var.c(h88Var, dm1.a.PROCESSED, new la5());
        } else if (z) {
            o(dm1Var);
        }
    }

    @Override // defpackage.e98
    public final boolean isReady() {
        if (this.c) {
            return this.e.isReady();
        }
        return false;
    }

    @Override // defpackage.cm1
    public void j(h88 h88Var) {
        boolean z = false;
        boolean z2 = true;
        o8.s(this.d != null, "May only be called after start");
        o8.l(h88Var, "reason");
        synchronized (this) {
            try {
                cm1 cm1Var = this.e;
                if (cm1Var == null) {
                    d31 d31Var = d31.e;
                    if (cm1Var != null) {
                        z2 = false;
                    }
                    o8.q("realStream already set to %s", z2, cm1Var);
                    this.e = d31Var;
                    this.j = System.nanoTime();
                    this.f = h88Var;
                } else {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            k(new i(h88Var));
            return;
        }
        n();
        p(h88Var);
        this.d.c(h88Var, dm1.a.PROCESSED, new la5());
    }

    public final void k(Runnable runnable) {
        o8.s(this.d != null, "May only be called after start");
        synchronized (this) {
            try {
                if (this.c) {
                    runnable.run();
                } else {
                    this.g.add(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.cm1
    public void l(y54 y54Var) {
        synchronized (this) {
            try {
                if (this.d == null) {
                    return;
                }
                if (this.e != null) {
                    y54Var.a("" + (this.j - this.i) + "ns", this.b.concat("_delay"));
                    this.e.l(y54Var);
                } else {
                    y54Var.a("" + (System.nanoTime() - this.i) + "ns", this.b.concat("_delay"));
                    y54Var.a.add("was_still_waiting");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.e98
    public final void m() {
        o8.s(this.d != null, "May only be called after start");
        if (this.c) {
            this.e.m();
        } else {
            k(new fl2(this, 0));
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002f A[Catch: all -> 0x002d, TryCatch #1 {all -> 0x002d, blocks: (B:11:0x001f, B:13:0x0027, B:14:0x002b, B:18:0x002f, B:19:0x0033), top: B:41:0x001f }] */
    /* JADX WARN: Code duplicated, block: B:23:0x003e A[LOOP:3: B:21:0x0038->B:23:0x003e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:27:0x004f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x001f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x0027 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0019  */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0057, code lost:
    
        r0 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005f, code lost:
    
        if (r0.hasNext() == false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0061, code lost:
    
        r0.next().run();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n() {
        /*
            r5 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L5:
            monitor-enter(r5)
            java.util.List<java.lang.Runnable> r1 = r5.g     // Catch: java.lang.Throwable -> L50
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L50
            if (r1 == 0) goto L52
            r0 = 0
            r5.g = r0     // Catch: java.lang.Throwable -> L50
            r1 = 1
            r5.c = r1     // Catch: java.lang.Throwable -> L50
            gl2$k r2 = r5.h     // Catch: java.lang.Throwable -> L50
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L50
            if (r2 == 0) goto L4f
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
        L1e:
            monitor-enter(r2)
            java.util.List<java.lang.Runnable> r3 = r2.c     // Catch: java.lang.Throwable -> L2d
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L2d
            if (r3 == 0) goto L2f
            r2.c = r0     // Catch: java.lang.Throwable -> L2d
            r2.b = r1     // Catch: java.lang.Throwable -> L2d
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2d
            return
        L2d:
            r5 = move-exception
            goto L4d
        L2f:
            java.util.List<java.lang.Runnable> r3 = r2.c     // Catch: java.lang.Throwable -> L2d
            r2.c = r5     // Catch: java.lang.Throwable -> L2d
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2d
            java.util.Iterator r5 = r3.iterator()
        L38:
            boolean r4 = r5.hasNext()
            if (r4 == 0) goto L48
            java.lang.Object r4 = r5.next()
            java.lang.Runnable r4 = (java.lang.Runnable) r4
            r4.run()
            goto L38
        L48:
            r3.clear()
            r5 = r3
            goto L1e
        L4d:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2d
            throw r5
        L4f:
            return
        L50:
            r0 = move-exception
            goto L70
        L52:
            java.util.List<java.lang.Runnable> r1 = r5.g     // Catch: java.lang.Throwable -> L50
            r5.g = r0     // Catch: java.lang.Throwable -> L50
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L50
            java.util.Iterator r0 = r1.iterator()
        L5b:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L6b
            java.lang.Object r2 = r0.next()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            r2.run()
            goto L5b
        L6b:
            r1.clear()
            r0 = r1
            goto L5
        L70:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L50
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gl2.n():void");
    }

    public final void o(dm1 dm1Var) {
        Iterator it = this.k.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.k = null;
        this.e.i(dm1Var);
    }

    public void p(h88 h88Var) {
        throw null;
    }
}
