package defpackage;

import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class uz2<R> implements f53.d {
    public static final c x = new c();
    public final e b;
    public final c78.a c;
    public final yz2.a d;
    public final Pools.Pool<uz2<?>> e;
    public final c f;
    public final vz2 g;
    public final xq3 h;
    public final xq3 i;
    public final xq3 j;
    public final AtomicInteger k;
    public wz2 l;
    public boolean m;
    public boolean n;
    public e47<?> o;
    public y82 p;
    public boolean q;
    public GlideException r;
    public boolean s;
    public yz2<?> t;
    public od2<R> u;
    public volatile boolean v;
    public boolean w;

    public class a implements Runnable {
        public final y08 b;

        public a(y08 y08Var) {
            this.b = y08Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            y08 y08Var = this.b;
            y08Var.b.a();
            synchronized (y08Var.c) {
                synchronized (uz2.this) {
                    try {
                        if (uz2.this.b.b.contains(new d(this.b, y13.b))) {
                            uz2 uz2Var = uz2.this;
                            y08 y08Var2 = this.b;
                            uz2Var.getClass();
                            try {
                                y08Var2.h(uz2Var.r, 5);
                            } catch (Throwable th) {
                                throw new vy0(th);
                            }
                        }
                        uz2.this.c();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public class b implements Runnable {
        public final y08 b;

        public b(y08 y08Var) {
            this.b = y08Var;
        }

        @Override // java.lang.Runnable
        public final void run() {
            y08 y08Var = this.b;
            y08Var.b.a();
            synchronized (y08Var.c) {
                synchronized (uz2.this) {
                    try {
                        if (uz2.this.b.b.contains(new d(this.b, y13.b))) {
                            uz2.this.t.b();
                            uz2 uz2Var = uz2.this;
                            y08 y08Var2 = this.b;
                            uz2Var.getClass();
                            try {
                                y08Var2.j(uz2Var.t, uz2Var.p, uz2Var.w);
                                uz2.this.h(this.b);
                            } catch (Throwable th) {
                                throw new vy0(th);
                            }
                        }
                        uz2.this.c();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    public static class c {
    }

    public static final class d {
        public final y08 a;
        public final Executor b;

        public d(y08 y08Var, Executor executor) {
            this.a = y08Var;
            this.b = executor;
        }

        public final boolean equals(Object obj) {
            return (obj instanceof d) && this.a == ((d) obj).a;
        }

        public final int hashCode() {
            return this.a.hashCode();
        }
    }

    public static final class e implements Iterable<d> {
        public final ArrayList b;

        public e(ArrayList arrayList) {
            this.b = arrayList;
        }

        @Override // java.lang.Iterable
        public final Iterator<d> iterator() {
            return this.b.iterator();
        }
    }

    public uz2() {
        throw null;
    }

    public uz2(xq3 xq3Var, xq3 xq3Var2, xq3 xq3Var3, xq3 xq3Var4, kz2 kz2Var, kz2 kz2Var2, f53.c cVar) {
        this.b = new e(new ArrayList(2));
        this.c = new c78.a();
        this.k = new AtomicInteger();
        this.h = xq3Var;
        this.i = xq3Var2;
        this.j = xq3Var4;
        this.g = kz2Var;
        this.d = kz2Var2;
        this.e = cVar;
        this.f = x;
    }

    public final synchronized void a(y08 y08Var, Executor executor) {
        try {
            this.c.a();
            this.b.b.add(new d(y08Var, executor));
            if (this.q) {
                e(1);
                executor.execute(new b(y08Var));
            } else if (this.s) {
                e(1);
                executor.execute(new a(y08Var));
            } else {
                r96.a(!this.v, "Cannot add callbacks to a cancelled EngineJob");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void b() {
        if (f()) {
            return;
        }
        this.v = true;
        od2<R> od2Var = this.u;
        od2Var.G = true;
        t82 t82Var = od2Var.E;
        if (t82Var != null) {
            t82Var.cancel();
        }
        vz2 vz2Var = this.g;
        wz2 wz2Var = this.l;
        kz2 kz2Var = (kz2) vz2Var;
        synchronized (kz2Var) {
            vb4 vb4Var = kz2Var.a;
            vb4Var.getClass();
            HashMap map = vb4Var.a;
            if (this == map.get(wz2Var)) {
                map.remove(wz2Var);
            }
        }
    }

    public final void c() {
        yz2<?> yz2Var;
        synchronized (this) {
            try {
                this.c.a();
                r96.a(f(), "Not yet complete!");
                int iDecrementAndGet = this.k.decrementAndGet();
                r96.a(iDecrementAndGet >= 0, "Can't decrement below 0");
                if (iDecrementAndGet == 0) {
                    yz2Var = this.t;
                    g();
                } else {
                    yz2Var = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (yz2Var != null) {
            yz2Var.c();
        }
    }

    @Override // f53.d
    public final c78.a d() {
        return this.c;
    }

    public final synchronized void e(int i) {
        yz2<?> yz2Var;
        r96.a(f(), "Not yet complete!");
        if (this.k.getAndAdd(i) == 0 && (yz2Var = this.t) != null) {
            yz2Var.b();
        }
    }

    public final boolean f() {
        return this.s || this.q || this.v;
    }

    public final synchronized void g() {
        boolean zA;
        if (this.l == null) {
            throw new IllegalArgumentException();
        }
        this.b.b.clear();
        this.l = null;
        this.t = null;
        this.o = null;
        this.s = false;
        this.v = false;
        this.q = false;
        this.w = false;
        od2<R> od2Var = this.u;
        od2.e eVar = od2Var.h;
        synchronized (eVar) {
            eVar.a = true;
            zA = eVar.a();
        }
        if (zA) {
            od2Var.l();
        }
        this.u = null;
        this.r = null;
        this.p = null;
        this.e.release(this);
    }

    public final synchronized void h(y08 y08Var) {
        try {
            this.c.a();
            this.b.b.remove(new d(y08Var, y13.b));
            if (this.b.b.isEmpty()) {
                b();
                if (this.q || this.s) {
                    if (this.k.get() == 0) {
                        g();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
