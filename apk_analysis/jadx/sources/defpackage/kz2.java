package defpackage;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes3.dex */
public final class kz2 implements vz2, yz2.a {
    public static final boolean h = Log.isLoggable("Engine", 2);
    public final vb4 a;
    public final xz2 b;
    public final iy4 c;
    public final b d;
    public final u47 e;
    public final a f;
    public final z6 g;

    public static class a {
        public final c a;
        public final f53.c b = f53.a(150, new C0297a());
        public int c;

        /* JADX INFO: renamed from: kz2$a$a, reason: collision with other inner class name */
        public class C0297a implements f53.b<od2<?>> {
            public C0297a() {
            }

            @Override // f53.b
            public final od2<?> create() {
                a aVar = a.this;
                return new od2<>(aVar.a, aVar.b);
            }
        }

        public a(c cVar) {
            this.a = cVar;
        }
    }

    public static class b {
        public final xq3 a;
        public final xq3 b;
        public final xq3 c;
        public final xq3 d;
        public final kz2 e;
        public final kz2 f;
        public final f53.c g = f53.a(150, new a());

        public class a implements f53.b<uz2<?>> {
            public a() {
            }

            @Override // f53.b
            public final uz2<?> create() {
                b bVar = b.this;
                return new uz2<>(bVar.a, bVar.b, bVar.c, bVar.d, bVar.e, bVar.f, bVar.g);
            }
        }

        public b(xq3 xq3Var, xq3 xq3Var2, xq3 xq3Var3, xq3 xq3Var4, kz2 kz2Var, kz2 kz2Var2) {
            this.a = xq3Var;
            this.b = xq3Var2;
            this.c = xq3Var3;
            this.d = xq3Var4;
            this.e = kz2Var;
            this.f = kz2Var2;
        }
    }

    public static class c implements od2.d {
        public final rn2.a a;
        public volatile rn2 b;

        public c(rn2.a aVar) {
            this.a = aVar;
        }

        public final rn2 a() {
            if (this.b == null) {
                synchronized (this) {
                    try {
                        if (this.b == null) {
                            File cacheDir = ((Context) ((bo2) this.a).a.a).getCacheDir();
                            co2 co2Var = null;
                            File file = cacheDir == null ? null : new File(cacheDir, "image_manager_disk_cache");
                            if (file != null && (file.isDirectory() || file.mkdirs())) {
                                co2Var = new co2(file);
                            }
                            this.b = co2Var;
                        }
                        if (this.b == null) {
                            this.b = new l1();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return this.b;
        }
    }

    public class d {
        public final uz2<?> a;
        public final y08 b;

        public d(y08 y08Var, uz2 uz2Var) {
            this.b = y08Var;
            this.a = uz2Var;
        }
    }

    public kz2(iy4 iy4Var, rn2.a aVar, xq3 xq3Var, xq3 xq3Var2, xq3 xq3Var3, xq3 xq3Var4) throws Throwable {
        this.c = iy4Var;
        c cVar = new c(aVar);
        z6 z6Var = new z6();
        this.g = z6Var;
        synchronized (this) {
            try {
                synchronized (z6Var) {
                    try {
                        try {
                            z6Var.d = this;
                        } catch (Throwable th) {
                            th = th;
                            while (true) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                }
                this.b = new xz2(0);
                this.a = new vb4();
                this.d = new b(xq3Var, xq3Var2, xq3Var3, xq3Var4, this, this);
                this.f = new a(cVar);
                this.e = new u47();
                iy4Var.d = this;
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public static void d(String str, long j, wz2 wz2Var) {
        StringBuilder sbD = fh.d(str, " in ");
        sbD.append(cv4.a(j));
        sbD.append("ms, key: ");
        sbD.append(wz2Var);
        Log.v("Engine", sbD.toString());
    }

    public static void f(e47 e47Var) {
        if (e47Var instanceof yz2) {
            ((yz2) e47Var).c();
        } else {
            fg.c("Cannot release anything but an EngineResource");
        }
    }

    @Override // yz2.a
    public final void a(kf4 kf4Var, yz2<?> yz2Var) {
        z6 z6Var = this.g;
        synchronized (z6Var) {
            z6.a aVar = (z6.a) z6Var.b.remove(kf4Var);
            if (aVar != null) {
                aVar.c = null;
                aVar.clear();
            }
        }
        if (yz2Var.b) {
            this.c.d(kf4Var, yz2Var);
        } else {
            this.e.a(yz2Var, false);
        }
    }

    public final d b(wq3 wq3Var, Object obj, kf4 kf4Var, int i, int i2, Class cls, Class cls2, jg6 jg6Var, sn2 sn2Var, zx0 zx0Var, boolean z, boolean z2, xz5 xz5Var, boolean z3, boolean z4, y08 y08Var, y13.a aVar) {
        long jElapsedRealtimeNanos;
        if (h) {
            int i3 = cv4.b;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        this.b.getClass();
        wz2 wz2Var = new wz2(obj, kf4Var, i, i2, zx0Var, cls, cls2, xz5Var);
        synchronized (this) {
            try {
                yz2<?> yz2VarC = c(wz2Var, z3, jElapsedRealtimeNanos);
                if (yz2VarC == null) {
                    return g(wq3Var, obj, kf4Var, i, i2, cls, cls2, jg6Var, sn2Var, zx0Var, z, z2, xz5Var, z3, z4, y08Var, aVar, wz2Var, jElapsedRealtimeNanos);
                }
                y08Var.j(yz2VarC, y82.MEMORY_CACHE, false);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final yz2<?> c(wz2 wz2Var, boolean z, long j) {
        yz2<?> yz2Var;
        Object obj;
        kz2 kz2Var;
        wz2 wz2Var2;
        yz2<?> yz2Var2;
        if (z) {
            z6 z6Var = this.g;
            synchronized (z6Var) {
                z6.a aVar = (z6.a) z6Var.b.get(wz2Var);
                if (aVar == null) {
                    yz2Var = null;
                } else {
                    yz2Var = aVar.get();
                    if (yz2Var == null) {
                        z6Var.b(aVar);
                    }
                }
            }
            if (yz2Var != null) {
                yz2Var.b();
            }
            if (yz2Var != null) {
                if (h) {
                    d("Loaded resource from active resources", j, wz2Var);
                }
                return yz2Var;
            }
            iy4 iy4Var = this.c;
            synchronized (iy4Var) {
                gy4.a aVar2 = (gy4.a) iy4Var.a.remove(wz2Var);
                if (aVar2 == null) {
                    obj = null;
                } else {
                    iy4Var.c -= (long) aVar2.b;
                    obj = aVar2.a;
                }
            }
            e47 e47Var = (e47) obj;
            if (e47Var == null) {
                kz2Var = this;
                wz2Var2 = wz2Var;
                yz2Var2 = null;
            } else if (e47Var instanceof yz2) {
                yz2Var2 = (yz2) e47Var;
                kz2Var = this;
                wz2Var2 = wz2Var;
            } else {
                kz2Var = this;
                wz2Var2 = wz2Var;
                yz2Var2 = new yz2<>(e47Var, true, true, wz2Var2, kz2Var);
            }
            if (yz2Var2 != null) {
                yz2Var2.b();
                kz2Var.g.a(wz2Var2, yz2Var2);
            }
            if (yz2Var2 != null) {
                if (h) {
                    d("Loaded resource from cache", j, wz2Var2);
                }
                return yz2Var2;
            }
        }
        return null;
    }

    public final synchronized void e(uz2<?> uz2Var, kf4 kf4Var, yz2<?> yz2Var) {
        if (yz2Var != null) {
            try {
                if (yz2Var.b) {
                    this.g.a(kf4Var, yz2Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        vb4 vb4Var = this.a;
        vb4Var.getClass();
        uz2Var.getClass();
        HashMap map = vb4Var.a;
        if (uz2Var == map.get(kf4Var)) {
            map.remove(kf4Var);
        }
    }

    public final d g(wq3 wq3Var, Object obj, kf4 kf4Var, int i, int i2, Class cls, Class cls2, jg6 jg6Var, sn2 sn2Var, Map map, boolean z, boolean z2, xz5 xz5Var, boolean z3, boolean z4, y08 y08Var, Executor executor, wz2 wz2Var, long j) {
        Executor executor2;
        uz2 uz2Var = (uz2) this.a.a.get(wz2Var);
        if (uz2Var != null) {
            uz2Var.a(y08Var, executor);
            if (h) {
                d("Added to existing load", j, wz2Var);
            }
            return new d(y08Var, uz2Var);
        }
        uz2 uz2Var2 = (uz2) this.d.g.acquire();
        synchronized (uz2Var2) {
            uz2Var2.l = wz2Var;
            uz2Var2.m = z3;
            uz2Var2.n = z4;
        }
        a aVar = this.f;
        od2<R> od2Var = (od2) aVar.b.acquire();
        int i3 = aVar.c;
        aVar.c = i3 + 1;
        md2<R> md2Var = od2Var.b;
        od2.d dVar = od2Var.e;
        md2Var.c = wq3Var;
        md2Var.d = obj;
        md2Var.n = kf4Var;
        md2Var.e = i;
        md2Var.f = i2;
        md2Var.p = sn2Var;
        md2Var.g = cls;
        md2Var.h = dVar;
        md2Var.k = cls2;
        md2Var.o = jg6Var;
        md2Var.i = xz5Var;
        md2Var.j = map;
        md2Var.q = z;
        md2Var.r = z2;
        od2Var.i = wq3Var;
        od2Var.j = kf4Var;
        od2Var.k = jg6Var;
        od2Var.l = wz2Var;
        od2Var.m = i;
        od2Var.n = i2;
        od2Var.o = sn2Var;
        od2Var.p = xz5Var;
        od2Var.q = uz2Var2;
        od2Var.r = i3;
        od2Var.t = od2.f.INITIALIZE;
        od2Var.v = obj;
        od2Var.w = wq3Var.g;
        od2Var.x = (Supplier) xz5Var.c(od2.I);
        vb4 vb4Var = this.a;
        vb4Var.getClass();
        vb4Var.a.put(wz2Var, uz2Var2);
        uz2Var2.a(y08Var, executor);
        synchronized (uz2Var2) {
            uz2Var2.u = od2Var;
            od2.g gVarI = od2Var.i(od2.g.INITIALIZE);
            if (gVarI == od2.g.RESOURCE_CACHE || gVarI == od2.g.DATA_CACHE) {
                executor2 = uz2Var2.h;
            } else {
                executor2 = uz2Var2.n ? uz2Var2.j : uz2Var2.i;
            }
            executor2.execute(od2Var);
        }
        if (h) {
            d("Started new load", j, wz2Var);
        }
        return new d(y08Var, uz2Var2);
    }
}
