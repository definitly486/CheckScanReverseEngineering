package defpackage;

import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes3.dex */
public final class od2<R> implements t82.a, Runnable, Comparable<od2<?>>, f53.d {
    public static final qz5<Supplier<Integer>> I = new qz5<>("glide_thread_priority_override", null, qz5.e);
    public kf4 A;
    public Object B;
    public y82 C;
    public s82<?> D;
    public volatile t82 E;
    public volatile boolean F;
    public volatile boolean G;
    public boolean H;
    public final d e;
    public final Pools.Pool<od2<?>> f;
    public wq3 i;
    public kf4 j;
    public jg6 k;
    public wz2 l;
    public int m;
    public int n;
    public sn2 o;
    public xz5 p;
    public uz2 q;
    public int r;
    public g s;
    public f t;
    public long u;
    public Object v;
    public yq3 w;
    public Supplier<Integer> x;
    public Thread y;
    public kf4 z;
    public final md2<R> b = new md2<>();
    public final ArrayList c = new ArrayList();
    public final c78.a d = new c78.a();
    public final c<?> g = new c<>();
    public final e h = new e();

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;
        public static final /* synthetic */ int[] c;

        static {
            int[] iArr = new int[rx2.values().length];
            c = iArr;
            try {
                iArr[rx2.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                c[rx2.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[g.values().length];
            b = iArr2;
            try {
                iArr2[g.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[g.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[g.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[g.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[g.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[f.values().length];
            a = iArr3;
            try {
                iArr3[f.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[f.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[f.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    public final class b<Z> {
        public final y82 a;

        public b(y82 y82Var) {
            this.a = y82Var;
        }
    }

    public static class c<Z> {
        public kf4 a;
        public l47<Z> b;
        public su4<Z> c;
    }

    public interface d {
    }

    public static class e {
        public boolean a;
        public boolean b;
        public boolean c;

        public final boolean a() {
            return (this.c || this.b) && this.a;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class f {
        private static final /* synthetic */ f[] $VALUES;
        public static final f DECODE_DATA;
        public static final f INITIALIZE;
        public static final f SWITCH_TO_SOURCE_SERVICE;

        static {
            f fVar = new f("INITIALIZE", 0);
            INITIALIZE = fVar;
            f fVar2 = new f("SWITCH_TO_SOURCE_SERVICE", 1);
            SWITCH_TO_SOURCE_SERVICE = fVar2;
            f fVar3 = new f("DECODE_DATA", 2);
            DECODE_DATA = fVar3;
            $VALUES = new f[]{fVar, fVar2, fVar3};
        }

        public f() {
            throw null;
        }

        public static f valueOf(String str) {
            return (f) Enum.valueOf(f.class, str);
        }

        public static f[] values() {
            return (f[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class g {
        private static final /* synthetic */ g[] $VALUES;
        public static final g DATA_CACHE;
        public static final g ENCODE;
        public static final g FINISHED;
        public static final g INITIALIZE;
        public static final g RESOURCE_CACHE;
        public static final g SOURCE;

        static {
            g gVar = new g("INITIALIZE", 0);
            INITIALIZE = gVar;
            g gVar2 = new g("RESOURCE_CACHE", 1);
            RESOURCE_CACHE = gVar2;
            g gVar3 = new g("DATA_CACHE", 2);
            DATA_CACHE = gVar3;
            g gVar4 = new g("SOURCE", 3);
            SOURCE = gVar4;
            g gVar5 = new g("ENCODE", 4);
            ENCODE = gVar5;
            g gVar6 = new g("FINISHED", 5);
            FINISHED = gVar6;
            $VALUES = new g[]{gVar, gVar2, gVar3, gVar4, gVar5, gVar6};
        }

        public g() {
            throw null;
        }

        public static g valueOf(String str) {
            return (g) Enum.valueOf(g.class, str);
        }

        public static g[] values() {
            return (g[]) $VALUES.clone();
        }
    }

    public od2(kz2.c cVar, f53.c cVar2) {
        this.e = cVar;
        this.f = cVar2;
    }

    @Override // t82.a
    public final void a(kf4 kf4Var, Exception exc, s82<?> s82Var, y82 y82Var) {
        s82Var.b();
        GlideException glideException = new GlideException("Fetching data failed", Collections.singletonList(exc));
        Class<?> clsA = s82Var.a();
        glideException.c = kf4Var;
        glideException.d = y82Var;
        glideException.e = clsA;
        this.c.add(glideException);
        if (Thread.currentThread() != this.y) {
            n(f.SWITCH_TO_SOURCE_SERVICE);
        } else {
            p();
        }
    }

    @Override // t82.a
    public final void c(kf4 kf4Var, Object obj, s82<?> s82Var, y82 y82Var, kf4 kf4Var2) {
        this.z = kf4Var;
        this.B = obj;
        this.D = s82Var;
        this.C = y82Var;
        this.A = kf4Var2;
        this.H = kf4Var != this.b.a().get(0);
        if (Thread.currentThread() != this.y) {
            n(f.DECODE_DATA);
        } else {
            g();
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(od2<?> od2Var) {
        od2<?> od2Var2 = od2Var;
        int iOrdinal = this.k.ordinal() - od2Var2.k.ordinal();
        return iOrdinal == 0 ? this.r - od2Var2.r : iOrdinal;
    }

    @Override // f53.d
    public final c78.a d() {
        return this.d;
    }

    public final <Data> e47<R> e(s82<?> s82Var, Data data, y82 y82Var) {
        if (data == null) {
            s82Var.b();
            return null;
        }
        try {
            int i = cv4.b;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            e47<R> e47VarF = f(data, y82Var);
            if (Log.isLoggable("DecodeJob", 2)) {
                j(jElapsedRealtimeNanos, "Decoded result " + e47VarF, null);
            }
            return e47VarF;
        } finally {
            s82Var.b();
        }
    }

    public final <Data> e47<R> f(Data data, y82 y82Var) {
        Class<?> cls = data.getClass();
        md2<R> md2Var = this.b;
        gs4<Data, ?, R> gs4VarC = md2Var.c(cls);
        xz5 xz5Var = this.p;
        boolean z = y82Var == y82.RESOURCE_DISK_CACHE || md2Var.r;
        qz5<Boolean> qz5Var = vq2.i;
        Boolean bool = (Boolean) xz5Var.c(qz5Var);
        if (bool == null || (bool.booleanValue() && !z)) {
            xz5Var = new xz5();
            zx0 zx0Var = this.p.b;
            zx0 zx0Var2 = xz5Var.b;
            zx0Var2.putAll((SimpleArrayMap) zx0Var);
            zx0Var2.put(qz5Var, Boolean.valueOf(z));
        }
        xz5 xz5Var2 = xz5Var;
        com.bumptech.glide.load.data.a aVarG = this.i.a().g(data);
        try {
            return gs4VarC.a(this.m, this.n, new b(y82Var), xz5Var2, aVarG);
        } finally {
            aVarG.b();
        }
    }

    public final void g() {
        su4 su4VarE;
        boolean zA;
        Supplier<Integer> supplier;
        if (Log.isLoggable("DecodeJob", 2)) {
            j(this.u, "Retrieved data", "data: " + this.B + ", cache key: " + this.z + ", fetcher: " + this.D);
        }
        su4 su4Var = null;
        if (this.w.a.containsKey(uq3.class) && (supplier = this.x) != null && supplier.get() != null) {
            try {
                Process.setThreadPriority(Process.myTid(), this.x.get().intValue());
            } catch (IllegalArgumentException | SecurityException e2) {
                this.x = null;
                if (Log.isLoggable("DecodeJob", 2)) {
                    Log.v("DecodeJob", "Failed to set thread priority; using default priority for any subsequent jobs.", e2);
                }
            }
        }
        try {
            su4VarE = e(this.D, this.B, this.C);
        } catch (GlideException e3) {
            kf4 kf4Var = this.A;
            y82 y82Var = this.C;
            e3.c = kf4Var;
            e3.d = y82Var;
            e3.e = null;
            this.c.add(e3);
            su4VarE = null;
        }
        if (su4VarE == null) {
            p();
            return;
        }
        y82 y82Var2 = this.C;
        boolean z = this.H;
        if (su4VarE instanceof g54) {
            ((g54) su4VarE).initialize();
        }
        if (this.g.c != null) {
            su4Var = (su4) su4.f.acquire();
            su4Var.e = false;
            su4Var.d = true;
            su4Var.c = su4VarE;
            su4VarE = su4Var;
        }
        if (this.w.a.containsKey(uq3.class)) {
            o();
        }
        r();
        uz2<?> uz2Var = this.q;
        synchronized (uz2Var) {
            uz2Var.o = su4VarE;
            uz2Var.p = y82Var2;
            uz2Var.w = z;
        }
        synchronized (uz2Var) {
            try {
                uz2Var.c.a();
                if (uz2Var.v) {
                    uz2Var.o.recycle();
                    uz2Var.g();
                } else {
                    if (uz2Var.b.b.isEmpty()) {
                        throw new IllegalStateException("Received a resource without any callbacks to notify");
                    }
                    if (uz2Var.q) {
                        throw new IllegalStateException("Already have resource");
                    }
                    uz2.c cVar = uz2Var.f;
                    e47<?> e47Var = uz2Var.o;
                    boolean z2 = uz2Var.m;
                    wz2 wz2Var = uz2Var.l;
                    yz2.a aVar = uz2Var.d;
                    cVar.getClass();
                    uz2Var.t = new yz2<>(e47Var, z2, true, wz2Var, aVar);
                    uz2Var.q = true;
                    uz2.e eVar = uz2Var.b;
                    eVar.getClass();
                    ArrayList<uz2.d> arrayList = new ArrayList(eVar.b);
                    uz2Var.e(arrayList.size() + 1);
                    ((kz2) uz2Var.g).e(uz2Var, uz2Var.l, uz2Var.t);
                    for (uz2.d dVar : arrayList) {
                        dVar.b.execute(new uz2.b(dVar.a));
                    }
                    uz2Var.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.s = g.ENCODE;
        try {
            c<?> cVar2 = this.g;
            if (cVar2.c != null) {
                try {
                    ((kz2.c) this.e).a().a(cVar2.a, new q82(cVar2.b, cVar2.c, this.p));
                    cVar2.c.b();
                } catch (Throwable th2) {
                    cVar2.c.b();
                    throw th2;
                }
            }
            if (su4Var != null) {
                su4Var.b();
            }
            e eVar2 = this.h;
            synchronized (eVar2) {
                eVar2.b = true;
                zA = eVar2.a();
            }
            if (zA) {
                l();
            }
        } catch (Throwable th3) {
            if (su4Var == null) {
                throw th3;
            }
            su4Var.b();
            throw th3;
        }
    }

    public final t82 h() {
        int i = a.b[this.s.ordinal()];
        md2<R> md2Var = this.b;
        if (i == 1) {
            return new g47(md2Var, this);
        }
        if (i == 2) {
            return new o82(md2Var.a(), md2Var, this);
        }
        if (i == 3) {
            return new z48(md2Var, this);
        }
        if (i == 4) {
            return null;
        }
        qz0.g(this.s, "Unrecognized stage: ");
        return null;
    }

    public final g i(g gVar) {
        int i = a.b[gVar.ordinal()];
        if (i == 1) {
            return this.o.a() ? g.DATA_CACHE : i(g.DATA_CACHE);
        }
        if (i == 2) {
            return g.SOURCE;
        }
        if (i == 3 || i == 4) {
            return g.FINISHED;
        }
        if (i == 5) {
            return this.o.b() ? g.RESOURCE_CACHE : i(g.RESOURCE_CACHE);
        }
        r01.e(gVar, "Unrecognized stage: ");
        return null;
    }

    public final void j(long j, String str, String str2) {
        StringBuilder sbD = fh.d(str, " in ");
        sbD.append(cv4.a(j));
        sbD.append(", load key: ");
        sbD.append(this.l);
        sbD.append(str2 != null ? ", ".concat(str2) : "");
        sbD.append(", thread: ");
        sbD.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sbD.toString());
    }

    public final void k() {
        boolean zA;
        if (this.w.a.containsKey(uq3.class)) {
            o();
        }
        r();
        GlideException glideException = new GlideException("Failed to load resource", new ArrayList(this.c));
        uz2<?> uz2Var = this.q;
        synchronized (uz2Var) {
            uz2Var.r = glideException;
        }
        synchronized (uz2Var) {
            try {
                uz2Var.c.a();
                if (uz2Var.v) {
                    uz2Var.g();
                } else {
                    if (uz2Var.b.b.isEmpty()) {
                        throw new IllegalStateException("Received an exception without any callbacks to notify");
                    }
                    if (uz2Var.s) {
                        throw new IllegalStateException("Already failed once");
                    }
                    uz2Var.s = true;
                    wz2 wz2Var = uz2Var.l;
                    uz2.e eVar = uz2Var.b;
                    eVar.getClass();
                    ArrayList<uz2.d> arrayList = new ArrayList(eVar.b);
                    uz2Var.e(arrayList.size() + 1);
                    ((kz2) uz2Var.g).e(uz2Var, wz2Var, null);
                    for (uz2.d dVar : arrayList) {
                        dVar.b.execute(new uz2.a(dVar.a));
                    }
                    uz2Var.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        e eVar2 = this.h;
        synchronized (eVar2) {
            eVar2.c = true;
            zA = eVar2.a();
        }
        if (zA) {
            l();
        }
    }

    public final void l() {
        e eVar = this.h;
        synchronized (eVar) {
            eVar.b = false;
            eVar.a = false;
            eVar.c = false;
        }
        c<?> cVar = this.g;
        cVar.a = null;
        cVar.b = null;
        cVar.c = null;
        md2<R> md2Var = this.b;
        md2Var.c = null;
        md2Var.d = null;
        md2Var.n = null;
        md2Var.g = null;
        md2Var.k = null;
        md2Var.i = null;
        md2Var.o = null;
        md2Var.j = null;
        md2Var.p = null;
        md2Var.a.clear();
        md2Var.l = false;
        md2Var.b.clear();
        md2Var.m = false;
        this.F = false;
        this.i = null;
        this.j = null;
        this.p = null;
        this.k = null;
        this.l = null;
        this.q = null;
        this.s = null;
        this.E = null;
        this.y = null;
        this.z = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.u = 0L;
        this.G = false;
        this.v = null;
        this.c.clear();
        this.f.release(this);
    }

    public final void n(f fVar) {
        this.t = fVar;
        uz2 uz2Var = this.q;
        (uz2Var.n ? uz2Var.j : uz2Var.i).execute(this);
    }

    public final void o() {
        if (!this.w.a.containsKey(uq3.class)) {
            ah.f("OverrideGlideThreadPriority experiment is not enabled.");
            return;
        }
        Supplier<Integer> supplier = this.x;
        if (supplier == null || supplier.get() == null) {
            return;
        }
        try {
            Process.setThreadPriority(Process.myTid(), 9);
        } catch (IllegalArgumentException | SecurityException e2) {
            this.x = null;
            if (Log.isLoggable("DecodeJob", 2)) {
                Log.v("DecodeJob", "Failed to set thread priority; using default priority for any subsequent jobs.", e2);
            }
        }
    }

    public final void p() {
        this.y = Thread.currentThread();
        int i = cv4.b;
        this.u = SystemClock.elapsedRealtimeNanos();
        boolean zB = false;
        while (!this.G && this.E != null && !(zB = this.E.b())) {
            this.s = i(this.s);
            this.E = h();
            if (this.s == g.SOURCE) {
                n(f.SWITCH_TO_SOURCE_SERVICE);
                return;
            }
        }
        if ((this.s == g.FINISHED || this.G) && !zB) {
            k();
        }
    }

    public final void q() {
        int i = a.a[this.t.ordinal()];
        if (i == 1) {
            this.s = i(g.INITIALIZE);
            this.E = h();
            p();
        } else if (i == 2) {
            p();
        } else if (i == 3) {
            g();
        } else {
            qz0.g(this.t, "Unrecognized run reason: ");
        }
    }

    public final void r() {
        this.d.a();
        if (this.F) {
            h2.e("Already notified", this.c.isEmpty() ? null : (Throwable) dd2.b(1, this.c));
        } else {
            this.F = true;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        s82<?> s82Var = this.D;
        try {
            try {
                try {
                    if (this.G) {
                        k();
                        if (s82Var != null) {
                            s82Var.b();
                            return;
                        }
                        return;
                    }
                    q();
                    if (s82Var != null) {
                        s82Var.b();
                    }
                } catch (Throwable th) {
                    if (Log.isLoggable("DecodeJob", 3)) {
                        Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.G + ", stage: " + this.s, th);
                    }
                    if (this.s != g.ENCODE) {
                        this.c.add(th);
                        k();
                    }
                    if (!this.G) {
                        throw th;
                    }
                    throw th;
                }
            } catch (vy0 e2) {
                throw e2;
            }
        } catch (Throwable th2) {
            if (s82Var != null) {
                s82Var.b();
            }
            throw th2;
        }
    }
}
