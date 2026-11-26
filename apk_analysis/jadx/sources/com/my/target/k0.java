package com.my.target;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import defpackage.a52;
import defpackage.fg;
import defpackage.jt;
import defpackage.k8a;
import defpackage.kha;
import defpackage.ll6;
import defpackage.n4a;
import defpackage.s5a;
import defpackage.vp9;
import defpackage.y14;
import defpackage.zn9;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class k0 {
    public final m1.b a;
    public boolean b;
    public boolean c;
    public final e3 d;
    public s5a e;
    public final n4a f;
    public final Context g;
    public final String h;
    public float i;
    public final a j = new a();
    public final vp9 k;
    public final e0 l;

    public static final class a {
        public final jt a;
        public float b;

        public a() {
            jt jtVar = new jt();
            jtVar.b = new AtomicLong(Double.doubleToRawLongBits(0.0d));
            this.a = jtVar;
            this.b = 0.0f;
        }
    }

    public k0(kha khaVar, e3 e3Var, Context context, m1.b bVar, vp9 vp9Var) {
        this.k = vp9Var;
        this.d = e3Var;
        this.a = bVar;
        if (context != null) {
            this.g = context.getApplicationContext();
        }
        if (khaVar == null) {
            return;
        }
        n4a n4aVar = khaVar.a;
        this.f = n4aVar;
        n4aVar.getClass();
        this.e = new s5a(new ArrayList(n4aVar.c), n4aVar.a, null);
        this.h = khaVar.B;
        this.i = khaVar.z;
        zn9 zn9Var = khaVar.P;
        this.l = new e0(n4aVar, zn9Var.c, zn9Var.d);
    }

    public static k0 a(kha khaVar, e3 e3Var, m1.b bVar, Context context) {
        return new k0(khaVar, e3Var, context, bVar, new vp9(new Handler(Looper.getMainLooper())));
    }

    public final boolean b() {
        return this.g == null || this.f == null || this.l == null || this.e == null;
    }

    public final void c(float f, float f2) {
        long j;
        Map map = Collections.EMPTY_MAP;
        e();
        float fMin = Math.min(f, f2);
        a aVar = this.j;
        if (1 == y14.a(fMin, aVar.b)) {
            jt jtVar = aVar.a;
            double d = fMin - aVar.b;
            do {
                j = jtVar.b.get();
            } while (!jtVar.b.compareAndSet(j, Double.doubleToRawLongBits(Double.longBitsToDouble(j) + d)));
        }
        aVar.b = fMin;
        if (b()) {
            return;
        }
        boolean z = this.b;
        m1.b bVar = this.a;
        e0 e0Var = this.l;
        if (!z) {
            HashMap map2 = new HashMap(map);
            if (e0Var.b.j("playbackStarted")) {
                e0Var.a("playbackStarted");
            }
            n4a n4aVar = e0Var.b;
            m1.a aVar2 = m1.a;
            if (aVar2 != null) {
                aVar2.a(n4aVar.f("playbackStarted"), map2, 1, bVar);
            }
            this.b = true;
        }
        if (f2 > 0.0f && this.i > 0.0f) {
            this.i = f2;
        }
        if (!this.e.b.isEmpty()) {
            s5a s5aVarA = this.e.a();
            List list = s5aVarA.b;
            Iterator it = this.e.b.iterator();
            while (it.hasNext()) {
                k8a k8aVar = (k8a) it.next();
                float f3 = k8aVar.f;
                float f4 = k8aVar.g;
                if (f3 == -1.0f && f4 >= 0.0f) {
                    f3 = (f4 * f2) / 100.0f;
                    k8aVar.f = f3;
                    k8aVar.g = -1.0f;
                }
                if (y14.a(f3, f) != 1) {
                    list.add(k8aVar);
                    it.remove();
                }
            }
            e0Var.getClass();
            if (!list.isEmpty()) {
                if (e0Var.d || e0Var.c) {
                    e0Var.a("progressStats, pos=" + f + ", dur=" + f2);
                }
                if (m1.a != null && !list.isEmpty()) {
                    m1.a.a(s5aVarA, map, 1, bVar);
                }
            }
        }
        e3 e3Var = this.d;
        if (e3Var != null && e3Var.h != null) {
            int i = -1;
            if (f2 != 0.0f) {
                float f5 = f / f2;
                if (y14.a(f5, 0.0f) != -1) {
                    if (y14.a(f5, 0.25f) == -1) {
                        i = 0;
                    } else if (y14.a(f5, 0.5f) == -1) {
                        i = 1;
                    } else if (y14.a(f5, 0.75f) == -1) {
                        i = 2;
                    } else {
                        i = y14.a(f5, 1.0f) == -1 ? 3 : 4;
                    }
                }
            }
            int i2 = e3Var.d;
            if (i != i2 && i > i2) {
                if (e3Var.h != null) {
                    y14.r(null, "OmTracker: sendQuartile() called with: quartile = [" + i + "]");
                    try {
                        if (i == 0) {
                            e3Var.h.start(f2, e3Var.e);
                        } else if (i == 1) {
                            e3Var.h.firstQuartile();
                        } else if (i == 2) {
                            e3Var.h.midpoint();
                        } else if (i == 3) {
                            e3Var.h.thirdQuartile();
                        } else if (i == 4) {
                            e3Var.h.complete();
                        }
                    } catch (Throwable th) {
                        fg.e(null, new StringBuilder("OmTracker: Unable to track quartiles: "), th);
                    }
                }
                e3Var.d = i;
            }
        }
        if (this.i <= 0.0f || f2 <= 0.0f || TextUtils.isEmpty(this.h) || Math.abs(f2 - this.i) <= 1.5f) {
            return;
        }
        y14.w("PlaybackTracker", "The diff between expected duration = " + this.i + " and the received duration = " + f2 + " from the player is more than duration error limit = 1.5");
    }

    public final void d(boolean z) {
        if (b()) {
            return;
        }
        e0 e0Var = this.l;
        if (z) {
            m1.d(e0Var.b, "volumeOn", 999, null);
        } else {
            m1.d(e0Var.b, "volumeOff", 999, null);
        }
        e3 e3Var = this.d;
        if (e3Var != null) {
            float f = z ? 1.0f : 0.0f;
            if (e3Var.h == null || y14.a(f, e3Var.e) == 0) {
                return;
            }
            e3Var.e = f;
            try {
                e3Var.h.volumeChange(f);
            } catch (Throwable th) {
                fg.e(null, new StringBuilder("OmTracker: Unable to track media volume: "), th);
            }
        }
    }

    public final void e() {
        n4a n4aVar;
        e0 e0Var;
        a aVar;
        synchronized (this) {
            n4aVar = this.f;
            e0Var = this.l;
            aVar = this.j;
        }
        if (n4aVar == null || e0Var == null) {
            return;
        }
        vp9 vp9Var = this.k;
        a52 a52Var = new a52(4, aVar, e0Var);
        synchronized (vp9Var) {
            synchronized (vp9Var) {
                try {
                    ll6 ll6Var = vp9Var.b;
                    if (ll6Var != null) {
                        vp9Var.a.removeCallbacks(ll6Var);
                        vp9Var.b = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ll6 ll6Var2 = new ll6(a52Var, 1);
        vp9Var.b = ll6Var2;
        vp9Var.a.postDelayed(ll6Var2, 10000L);
    }

    public final void f() {
        if (b()) {
            return;
        }
        n4a n4aVar = this.f;
        n4aVar.getClass();
        this.e = new s5a(new ArrayList(n4aVar.c), n4aVar.a, null);
        this.b = false;
        this.c = false;
    }

    public final void g() {
        e();
        if (b()) {
            return;
        }
        float f = this.i;
        c(f, f);
        if (this.c) {
            return;
        }
        m1.e(this.l.b, "playbackCompleted", Collections.EMPTY_MAP, 1);
        this.c = true;
    }

    public final void h() {
        e();
        if (b()) {
            return;
        }
        e0 e0Var = this.l;
        if (e0Var.b.j("closedByUser")) {
            e0Var.a("closedByUser");
        }
        m1.d(e0Var.b, "closedByUser", 999, null);
    }

    public final void i() {
        e();
        if (b()) {
            return;
        }
        m1.e(this.l.b, "playbackPaused", Collections.EMPTY_MAP, 1);
        e3 e3Var = this.d;
        if (e3Var != null) {
            e3Var.b(0);
        }
    }

    public final void j() {
        e();
        if (b()) {
            return;
        }
        Map map = Collections.EMPTY_MAP;
        e0 e0Var = this.l;
        if (e0Var.b.j("playbackError")) {
            e0Var.a("playbackError");
        }
        n4a n4aVar = e0Var.b;
        m1.e(n4aVar, "error", map, 1);
        m1.e(n4aVar, "playbackError", map, 1);
        e3 e3Var = this.d;
        if (e3Var != null) {
            e3Var.b(3);
        }
    }

    public final void k() {
        e();
        if (b()) {
            return;
        }
        e0 e0Var = this.l;
        if (e0Var.b.j("playbackTimeout")) {
            e0Var.a("playbackTimeout");
        }
        m1.d(e0Var.b, "playbackTimeout", 1, null);
    }

    public final void l() {
        e();
        if (b()) {
            return;
        }
        m1.e(this.l.b, "playbackResumed", Collections.EMPTY_MAP, 1);
        e3 e3Var = this.d;
        if (e3Var != null) {
            e3Var.b(1);
        }
    }
}
