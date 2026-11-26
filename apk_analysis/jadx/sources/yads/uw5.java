package yads;

import android.os.SystemClock;
import defpackage.gi8;
import defpackage.j59;
import defpackage.ll3;
import defpackage.q07;
import yads.uw5;

/* JADX INFO: loaded from: classes6.dex */
public final class uw5 {
    public final String a;
    public final ox5 b;
    public final px5 c;
    public final qx5 d;
    public final rx5 e;
    public final ao2 f;
    public Long g;
    public Long h;
    public Long i;
    public Long j;
    public long l;
    public tw5 k = tw5.STOPPED;
    public long m = -1;
    public long n = -1;
    public final defpackage.cl4 o = defpackage.nm4.a(defpackage.po4.NONE, new gi8(3));

    public uw5(String str, ox5 ox5Var, px5 px5Var, qx5 qx5Var, rx5 rx5Var, ao2 ao2Var) {
        this.a = str;
        this.b = ox5Var;
        this.c = px5Var;
        this.d = qx5Var;
        this.e = rx5Var;
        this.f = ao2Var;
    }

    public static final j59 a(long j, uw5 uw5Var, q07 q07Var, long j2, ll3 ll3Var) {
        long jC = j - uw5Var.c();
        Long l = uw5Var.g;
        rx5 rx5Var = uw5Var.e;
        if (l != null) {
            long jC2 = uw5Var.c();
            long jLongValue = l.longValue();
            if (jC2 > jLongValue) {
                jC2 = jLongValue;
            }
            rx5Var.invoke(Long.valueOf(jC2));
        } else {
            rx5Var.invoke(Long.valueOf(uw5Var.c()));
        }
        q07Var.b--;
        if (1 <= jC && jC < j2) {
            uw5Var.b();
            uw5Var.a(jC, jC, new defpackage.dz0(ll3Var, 3));
        } else if (jC <= 0) {
            ll3Var.invoke();
        }
        return j59.a;
    }

    public static final vx2 j() {
        return new vx2();
    }

    public final void b(long j) {
        a(j, j - (c() % j), new defpackage.az0(this, 5));
    }

    public final long c() {
        return (this.m == -1 ? 0L : SystemClock.elapsedRealtime() - this.m) + this.l;
    }

    public final void d() {
        int iOrdinal = this.k.ordinal();
        if (iOrdinal == 0) {
            a("The timer '" + this.a + "' already stopped!");
            return;
        }
        if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                return;
            }
            a("The timer '" + this.a + "' already paused!");
            return;
        }
        this.k = tw5.PAUSED;
        this.b.invoke(Long.valueOf(c()));
        if (this.m != -1) {
            this.l += SystemClock.elapsedRealtime() - this.m;
            this.n = SystemClock.elapsedRealtime();
            this.m = -1L;
        }
        b();
        this.m = -1L;
    }

    public final void e() {
        a();
        h();
    }

    public final void f() {
        int iOrdinal = this.k.ordinal();
        if (iOrdinal == 0) {
            a("The timer '" + this.a + "' is stopped!");
            return;
        }
        if (iOrdinal != 1) {
            if (iOrdinal != 2) {
                return;
            }
            this.k = tw5.WORKING;
            this.n = -1L;
            g();
            return;
        }
        a("The timer '" + this.a + "' already working!");
    }

    public final void g() {
        Long l = this.j;
        Long l2 = this.i;
        if (l != null && this.n != -1 && SystemClock.elapsedRealtime() - this.n > l.longValue()) {
            Long l3 = this.g;
            rx5 rx5Var = this.e;
            if (l3 != null) {
                long jC = c();
                long jLongValue = l3.longValue();
                if (jC > jLongValue) {
                    jC = jLongValue;
                }
                rx5Var.invoke(Long.valueOf(jC));
            } else {
                rx5Var.invoke(Long.valueOf(c()));
            }
        }
        if (l == null && l2 != null) {
            a(l2.longValue());
            return;
        }
        if (l != null && l2 != null) {
            a(l2.longValue(), l.longValue());
        } else {
            if (l == null || l2 != null) {
                return;
            }
            b(l.longValue());
        }
    }

    public final void h() {
        int iOrdinal = this.k.ordinal();
        if (iOrdinal == 0) {
            b();
            this.i = this.g;
            this.j = this.h;
            this.k = tw5.WORKING;
            this.c.invoke(Long.valueOf(c()));
            g();
            return;
        }
        if (iOrdinal == 1) {
            a("The timer '" + this.a + "' already working!");
            return;
        }
        if (iOrdinal != 2) {
            return;
        }
        a("The timer '" + this.a + "' paused!");
    }

    public final void i() {
        int iOrdinal = this.k.ordinal();
        if (iOrdinal == 0) {
            a("The timer '" + this.a + "' already stopped!");
            return;
        }
        if (iOrdinal == 1 || iOrdinal == 2) {
            this.k = tw5.STOPPED;
            this.d.invoke(Long.valueOf(c()));
            b();
            this.m = -1L;
            this.n = -1L;
            this.l = 0L;
        }
    }

    public final void b() {
        ((vx2) this.o.getValue()).a.removeCallbacksAndMessages(null);
    }

    public static final j59 a(uw5 uw5Var) {
        Long l = uw5Var.g;
        rx5 rx5Var = uw5Var.e;
        if (l != null) {
            long jC = uw5Var.c();
            long jLongValue = l.longValue();
            if (jC > jLongValue) {
                jC = jLongValue;
            }
            rx5Var.invoke(Long.valueOf(jC));
        } else {
            rx5Var.invoke(Long.valueOf(uw5Var.c()));
        }
        return j59.a;
    }

    public final void a(final long j) {
        long jC = j - c();
        if (jC >= 0) {
            a(jC, jC, new ll3() { // from class: sea
                @Override // defpackage.ll3
                public final Object invoke() {
                    return uw5.a(this.b, j);
                }
            });
            return;
        }
        this.d.invoke(Long.valueOf(j));
        this.m = -1L;
        this.n = -1L;
        this.l = 0L;
    }

    public static final j59 a(uw5 uw5Var, long j) {
        uw5Var.b();
        uw5Var.d.invoke(Long.valueOf(j));
        uw5Var.k = tw5.STOPPED;
        uw5Var.m = -1L;
        uw5Var.n = -1L;
        uw5Var.l = 0L;
        return j59.a;
    }

    /* JADX WARN: Type inference failed for: r7v0, types: [tea] */
    public final void a(final long j, final long j2) {
        long jC = j2 - (c() % j2);
        final q07 q07Var = new q07();
        q07Var.b = (j / j2) - (c() / j2);
        final ?? r7 = new ll3() { // from class: tea
            @Override // defpackage.ll3
            public final Object invoke() {
                return uw5.a(q07Var, this, j);
            }
        };
        a(j2, jC, new ll3() { // from class: uea
            @Override // defpackage.ll3
            public final Object invoke() {
                return uw5.a(j, this, q07Var, j2, r7);
            }
        });
    }

    public static final j59 a(q07 q07Var, uw5 uw5Var, long j) {
        if (q07Var.b > 0) {
            uw5Var.e.invoke(Long.valueOf(j));
        }
        uw5Var.d.invoke(Long.valueOf(j));
        uw5Var.b();
        uw5Var.m = -1L;
        uw5Var.n = -1L;
        uw5Var.l = 0L;
        uw5Var.k = tw5.STOPPED;
        return j59.a;
    }

    public final void a(long j, long j2, ll3 ll3Var) {
        this.m = SystemClock.elapsedRealtime();
        vx2 vx2Var = (vx2) this.o.getValue();
        vx2Var.a.postDelayed(new ux2(vx2Var, j, ll3Var), j2);
    }

    public static final j59 a(ll3 ll3Var) {
        ll3Var.invoke();
        return j59.a;
    }

    public final void a(String str) {
        ao2 ao2Var = this.f;
        ao2Var.b.add(new IllegalArgumentException(str));
        ao2Var.a();
    }

    public final void a() {
        int iOrdinal = this.k.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2) {
            this.k = tw5.STOPPED;
            b();
            this.b.invoke(Long.valueOf(c()));
            this.m = -1L;
            this.n = -1L;
            this.l = 0L;
        }
    }
}
