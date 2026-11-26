package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class y08<R> implements c37, v18 {
    public static final boolean C = Log.isLoggable("GlideRequest", 2);
    public boolean A;
    public final RuntimeException B;
    public final String a;
    public final c78.a b;
    public final Object c;
    public final j37 d;
    public final Context e;
    public final wq3 f;
    public final Object g;
    public final Class<R> h;
    public final ee0<?> i;
    public final int j;
    public final int k;
    public final jg6 l;
    public final wk8<R> m;
    public final List<o37<R>> n;
    public final l29<? super R> o;
    public final y13.a p;
    public e47<R> q;
    public kz2.d r;
    public long s;
    public volatile kz2 t;
    public a u;
    public Drawable v;
    public Drawable w;
    public Drawable x;
    public int y;
    public int z;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a CLEARED;
        public static final a COMPLETE;
        public static final a FAILED;
        public static final a PENDING;
        public static final a RUNNING;
        public static final a WAITING_FOR_SIZE;

        static {
            a aVar = new a("PENDING", 0);
            PENDING = aVar;
            a aVar2 = new a("RUNNING", 1);
            RUNNING = aVar2;
            a aVar3 = new a("WAITING_FOR_SIZE", 2);
            WAITING_FOR_SIZE = aVar3;
            a aVar4 = new a("COMPLETE", 3);
            COMPLETE = aVar4;
            a aVar5 = new a("FAILED", 4);
            FAILED = aVar5;
            a aVar6 = new a("CLEARED", 5);
            CLEARED = aVar6;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public y08(Context context, wq3 wq3Var, Object obj, Object obj2, Class cls, ee0 ee0Var, int i, int i2, jg6 jg6Var, wk8 wk8Var, ArrayList arrayList, j37 j37Var, kz2 kz2Var, l29 l29Var) {
        y13.a aVar = y13.a;
        this.a = C ? String.valueOf(hashCode()) : null;
        this.b = new c78.a();
        this.c = obj;
        this.e = context;
        this.f = wq3Var;
        this.g = obj2;
        this.h = cls;
        this.i = ee0Var;
        this.j = i;
        this.k = i2;
        this.l = jg6Var;
        this.m = wk8Var;
        this.n = arrayList;
        this.d = j37Var;
        this.t = kz2Var;
        this.o = l29Var;
        this.p = aVar;
        this.u = a.PENDING;
        if (this.B == null && wq3Var.g.a.containsKey(tq3.class)) {
            this.B = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // defpackage.c37
    public final boolean a() {
        boolean z;
        synchronized (this.c) {
            z = this.u == a.COMPLETE;
        }
        return z;
    }

    @Override // defpackage.v18
    public final void b(int i, int i2) {
        Object obj;
        int iRound = i;
        this.b.a();
        Object obj2 = this.c;
        synchronized (obj2) {
            try {
                try {
                    boolean z = C;
                    if (z) {
                        g("Got onSizeReady in " + cv4.a(this.s));
                    }
                    if (this.u != a.WAITING_FOR_SIZE) {
                        return;
                    }
                    a aVar = a.RUNNING;
                    this.u = aVar;
                    this.i.getClass();
                    if (iRound != Integer.MIN_VALUE) {
                        iRound = Math.round(iRound * 1.0f);
                    }
                    this.y = iRound;
                    this.z = i2 == Integer.MIN_VALUE ? i2 : Math.round(1.0f * i2);
                    if (z) {
                        g("finished setup for calling load in " + cv4.a(this.s));
                    }
                    kz2 kz2Var = this.t;
                    wq3 wq3Var = this.f;
                    Object obj3 = this.g;
                    ee0<?> ee0Var = this.i;
                    try {
                        try {
                            try {
                                try {
                                    this.r = kz2Var.b(wq3Var, obj3, ee0Var.k, this.y, this.z, ee0Var.p, this.h, this.l, ee0Var.c, ee0Var.o, ee0Var.l, ee0Var.t, ee0Var.n, ee0Var.h, ee0Var.u, this, this.p);
                                    if (this.u != aVar) {
                                        this.r = null;
                                    }
                                    if (z) {
                                        g("finished onSizeReady in " + cv4.a(this.s));
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    obj = obj2;
                                    throw th;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                obj = obj2;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            obj = obj2;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        obj = obj2;
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
                obj = obj2;
            }
        }
    }

    @Override // defpackage.c37
    public final boolean c() {
        boolean z;
        synchronized (this.c) {
            z = this.u == a.CLEARED;
        }
        return z;
    }

    @Override // defpackage.c37
    public final void clear() {
        synchronized (this.c) {
            try {
                if (this.A) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.b.a();
                a aVar = this.u;
                a aVar2 = a.CLEARED;
                if (aVar == aVar2) {
                    return;
                }
                e();
                e47<R> e47Var = this.q;
                if (e47Var != null) {
                    this.q = null;
                } else {
                    e47Var = null;
                }
                j37 j37Var = this.d;
                if (j37Var == null || j37Var.g(this)) {
                    this.m.onLoadCleared(f());
                }
                this.u = aVar2;
                if (e47Var != null) {
                    this.t.getClass();
                    kz2.f(e47Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.c37
    public final boolean d(c37 c37Var) {
        int i;
        int i2;
        Object obj;
        Class<R> cls;
        ee0<?> ee0Var;
        jg6 jg6Var;
        int size;
        int i3;
        int i4;
        Object obj2;
        Class<R> cls2;
        ee0<?> ee0Var2;
        jg6 jg6Var2;
        int size2;
        boolean zA;
        boolean zJ;
        if (c37Var instanceof y08) {
            synchronized (this.c) {
                try {
                    i = this.j;
                    i2 = this.k;
                    obj = this.g;
                    cls = this.h;
                    ee0Var = this.i;
                    jg6Var = this.l;
                    List<o37<R>> list = this.n;
                    size = list != null ? list.size() : 0;
                } catch (Throwable th) {
                    throw th;
                }
            }
            y08 y08Var = (y08) c37Var;
            synchronized (y08Var.c) {
                try {
                    i3 = y08Var.j;
                    i4 = y08Var.k;
                    obj2 = y08Var.g;
                    cls2 = y08Var.h;
                    ee0Var2 = y08Var.i;
                    jg6Var2 = y08Var.l;
                    List<o37<R>> list2 = y08Var.n;
                    size2 = list2 != null ? list2.size() : 0;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            if (i == i3 && i2 == i4) {
                if (obj == null) {
                    zA = obj2 == null;
                } else {
                    zA = obj instanceof jc5 ? ((jc5) obj).a() : obj.equals(obj2);
                }
                if (zA && cls.equals(cls2)) {
                    if (ee0Var == null) {
                        zJ = ee0Var2 == null;
                    } else {
                        zJ = ee0Var.j(ee0Var2);
                    }
                    if (zJ && jg6Var == jg6Var2 && size == size2) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void e() {
        if (this.A) {
            ah.f("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
            return;
        }
        this.b.a();
        this.m.removeCallback(this);
        kz2.d dVar = this.r;
        if (dVar != null) {
            synchronized (kz2.this) {
                dVar.a.h(dVar.b);
            }
            this.r = null;
        }
    }

    public final Drawable f() {
        int i;
        Drawable drawable = this.w;
        if (drawable != null) {
            return drawable;
        }
        ee0<?> ee0Var = this.i;
        ShapeDrawable shapeDrawable = ee0Var.f;
        this.w = shapeDrawable;
        if (shapeDrawable != null || (i = ee0Var.g) <= 0) {
            return shapeDrawable;
        }
        Resources.Theme theme = ee0Var.r;
        Context context = this.e;
        if (theme == null) {
            theme = context.getTheme();
        }
        Drawable drawableA = cs2.a(context, context, i, theme);
        this.w = drawableA;
        return drawableA;
    }

    public final void g(String str) {
        StringBuilder sbD = fh.d(str, " this: ");
        sbD.append(this.a);
        Log.v("GlideRequest", sbD.toString());
    }

    public final void h(GlideException glideException, int i) {
        boolean zOnLoadFailed;
        Drawable drawableF;
        this.b.a();
        synchronized (this.c) {
            try {
                glideException.getClass();
                this.f.getClass();
                if (4 <= i) {
                    Log.w("Glide", "Load failed for [" + this.g + "] with dimensions [" + this.y + "x" + this.z + "]", glideException);
                    glideException.e();
                }
                Drawable drawableA = null;
                this.r = null;
                this.u = a.FAILED;
                j37 j37Var = this.d;
                if (j37Var != null) {
                    j37Var.h(this);
                }
                boolean z = true;
                this.A = true;
                try {
                    List<o37<R>> list = this.n;
                    if (list != null) {
                        zOnLoadFailed = false;
                        for (o37<R> o37Var : list) {
                            Object obj = this.g;
                            wk8<R> wk8Var = this.m;
                            j37 j37Var2 = this.d;
                            zOnLoadFailed |= o37Var.onLoadFailed(glideException, obj, wk8Var, j37Var2 == null || !j37Var2.getRoot().a());
                        }
                    } else {
                        zOnLoadFailed = false;
                    }
                    if (!zOnLoadFailed) {
                        j37 j37Var3 = this.d;
                        if (j37Var3 != null && !j37Var3.e(this)) {
                            z = false;
                        }
                        if (z) {
                            if (this.g != null) {
                                drawableF = null;
                            } else {
                                drawableF = this.x;
                                if (drawableF == null) {
                                    this.i.getClass();
                                    this.x = null;
                                    drawableF = null;
                                }
                            }
                            if (drawableF == null) {
                                Drawable drawable = this.v;
                                if (drawable == null) {
                                    ee0<?> ee0Var = this.i;
                                    ee0Var.getClass();
                                    this.v = null;
                                    int i2 = ee0Var.e;
                                    if (i2 > 0) {
                                        Context context = this.e;
                                        Resources.Theme theme = this.i.r;
                                        if (theme == null) {
                                            theme = context.getTheme();
                                        }
                                        drawableA = cs2.a(context, context, i2, theme);
                                        this.v = drawableA;
                                    }
                                } else {
                                    drawableA = drawable;
                                }
                                drawableF = drawableA;
                            }
                            if (drawableF == null) {
                                drawableF = f();
                            }
                            this.m.onLoadFailed(drawableF);
                        }
                    }
                    this.A = false;
                } catch (Throwable th) {
                    this.A = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // defpackage.c37
    public final void i() {
        synchronized (this.c) {
            try {
                if (this.A) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.b.a();
                int i = cv4.b;
                this.s = SystemClock.elapsedRealtimeNanos();
                if (this.g == null) {
                    if (eb9.j(this.j, this.k)) {
                        this.y = this.j;
                        this.z = this.k;
                    }
                    Drawable drawable = this.x;
                    if (drawable == null) {
                        this.i.getClass();
                        drawable = null;
                        this.x = null;
                    }
                    h(new GlideException("Received null model"), drawable == null ? 5 : 3);
                    return;
                }
                a aVar = this.u;
                if (aVar == a.RUNNING) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (aVar == a.COMPLETE) {
                    j(this.q, y82.MEMORY_CACHE, false);
                    return;
                }
                List<o37<R>> list = this.n;
                if (list != null) {
                    for (o37<R> o37Var : list) {
                    }
                }
                a aVar2 = a.WAITING_FOR_SIZE;
                this.u = aVar2;
                if (eb9.j(this.j, this.k)) {
                    b(this.j, this.k);
                } else {
                    this.m.getSize(this);
                }
                a aVar3 = this.u;
                if (aVar3 == a.RUNNING || aVar3 == aVar2) {
                    j37 j37Var = this.d;
                    if (j37Var == null || j37Var.e(this)) {
                        this.m.onLoadStarted(f());
                    }
                }
                if (C) {
                    g("finished run method in " + cv4.a(this.s));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // defpackage.c37
    public final boolean isComplete() {
        boolean z;
        synchronized (this.c) {
            z = this.u == a.COMPLETE;
        }
        return z;
    }

    @Override // defpackage.c37
    public final boolean isRunning() {
        boolean z;
        synchronized (this.c) {
            try {
                a aVar = this.u;
                z = aVar == a.RUNNING || aVar == a.WAITING_FOR_SIZE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void j(e47<?> e47Var, y82 y82Var, boolean z) {
        this.b.a();
        e47<?> e47Var2 = null;
        try {
            synchronized (this.c) {
                try {
                    this.r = null;
                    if (e47Var == null) {
                        h(new GlideException("Expected to receive a Resource<R> with an object of " + this.h + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = e47Var.get();
                    try {
                        if (obj == null || !this.h.isAssignableFrom(obj.getClass())) {
                            this.q = null;
                            StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                            sb.append(this.h);
                            sb.append(" but instead got ");
                            sb.append(obj != null ? obj.getClass() : "");
                            sb.append("{");
                            sb.append(obj);
                            sb.append("} inside Resource{");
                            sb.append(e47Var);
                            sb.append("}.");
                            sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                            h(new GlideException(sb.toString()), 5);
                        } else {
                            j37 j37Var = this.d;
                            if (j37Var == null || j37Var.f(this)) {
                                k(e47Var, obj, y82Var, z);
                                return;
                            } else {
                                this.q = null;
                                this.u = a.COMPLETE;
                            }
                        }
                        this.t.getClass();
                        kz2.f(e47Var);
                    } catch (Throwable th) {
                        e47Var2 = e47Var;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (e47Var2 != null) {
                this.t.getClass();
                kz2.f(e47Var2);
            }
            throw th3;
        }
    }

    public final void k(e47<R> e47Var, R r, y82 y82Var, boolean z) {
        boolean z2;
        j37 j37Var = this.d;
        boolean z3 = j37Var == null || !j37Var.getRoot().a();
        this.u = a.COMPLETE;
        this.q = e47Var;
        this.f.getClass();
        if (j37Var != null) {
            j37Var.b(this);
        }
        this.A = true;
        try {
            List<o37<R>> list = this.n;
            if (list != null) {
                z2 = false;
                for (o37<R> o37Var : list) {
                    R r2 = r;
                    y82 y82Var2 = y82Var;
                    boolean zOnResourceReady = o37Var.onResourceReady(r2, this.g, this.m, y82Var2, z3) | z2;
                    if (o37Var instanceof v33) {
                        zOnResourceReady |= ((v33) o37Var).a();
                    }
                    z2 = zOnResourceReady;
                    r = r2;
                    y82Var = y82Var2;
                }
            } else {
                z2 = false;
            }
            R r3 = r;
            y82 y82Var3 = y82Var;
            if (!z2) {
                this.m.onResourceReady(r3, this.o.a(y82Var3));
            }
        } finally {
            this.A = false;
        }
    }

    @Override // defpackage.c37
    public final void pause() {
        synchronized (this.c) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        Object obj;
        Class<R> cls;
        synchronized (this.c) {
            obj = this.g;
            cls = this.h;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
