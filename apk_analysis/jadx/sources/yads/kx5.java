package yads;

import android.util.Pair;
import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public abstract class kx5 implements kv {
    public static final gx5 b = new gx5();

    public abstract int a();

    public abstract int a(Object obj);

    public final Pair a(jx5 jx5Var, hx5 hx5Var, int i, long j, long j2) {
        zj.a(i, b());
        a(i, jx5Var, j2);
        if (j == C.TIME_UNSET) {
            j = jx5Var.n;
            if (j == C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = jx5Var.p;
        a(i2, hx5Var, false);
        while (i2 < jx5Var.q && hx5Var.f != j) {
            int i3 = i2 + 1;
            if (a(i3, hx5Var, false).f > j) {
                break;
            }
            i2 = i3;
        }
        a(i2, hx5Var, true);
        long jMin = j - hx5Var.f;
        long j3 = hx5Var.e;
        if (j3 != C.TIME_UNSET) {
            jMin = Math.min(jMin, j3 - 1);
        }
        long jMax = Math.max(0L, jMin);
        Object obj = hx5Var.c;
        obj.getClass();
        return Pair.create(obj, Long.valueOf(jMax));
    }

    public abstract Object a(int i);

    public abstract hx5 a(int i, hx5 hx5Var, boolean z);

    public abstract jx5 a(int i, jx5 jx5Var, long j);

    public abstract int b();

    public int b(boolean z) {
        if (c()) {
            return -1;
        }
        return b() - 1;
    }

    public final boolean c() {
        return b() == 0;
    }

    public final boolean equals(Object obj) {
        int iB;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kx5)) {
            return false;
        }
        kx5 kx5Var = (kx5) obj;
        if (kx5Var.b() != b() || kx5Var.a() != a()) {
            return false;
        }
        jx5 jx5Var = new jx5();
        hx5 hx5Var = new hx5();
        jx5 jx5Var2 = new jx5();
        hx5 hx5Var2 = new hx5();
        for (int i = 0; i < b(); i++) {
            if (!a(i, jx5Var, 0L).equals(kx5Var.a(i, jx5Var2, 0L))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < a(); i2++) {
            if (!a(i2, hx5Var, true).equals(kx5Var.a(i2, hx5Var2, true))) {
                return false;
            }
        }
        int iA = a(true);
        if (iA != kx5Var.a(true) || (iB = b(true)) != kx5Var.b(true)) {
            return false;
        }
        while (iA != iB) {
            int iA2 = a(iA, 0, true);
            if (iA2 != kx5Var.a(iA, 0, true)) {
                return false;
            }
            iA = iA2;
        }
        return true;
    }

    public final int hashCode() {
        jx5 jx5Var = new jx5();
        hx5 hx5Var = new hx5();
        int iB = b() + 217;
        for (int i = 0; i < b(); i++) {
            iB = (iB * 31) + a(i, jx5Var, 0L).hashCode();
        }
        int iA = a() + (iB * 31);
        for (int i2 = 0; i2 < a(); i2++) {
            iA = (iA * 31) + a(i2, hx5Var, true).hashCode();
        }
        int iA2 = a(true);
        while (iA2 != -1) {
            iA = (iA * 31) + iA2;
            iA2 = a(iA2, 0, true);
        }
        return iA;
    }

    public int a(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == b(z)) {
                return -1;
            }
            return i + 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == b(z) ? a(z) : i + 1;
        }
        defpackage.ud.g();
        return 0;
    }

    public int a(int i, int i2) {
        if (i2 == 0) {
            if (i == a(false)) {
                return -1;
            }
            return i - 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == a(false) ? b(false) : i - 1;
        }
        defpackage.ud.g();
        return 0;
    }

    public int a(boolean z) {
        return c() ? -1 : 0;
    }

    public final Pair a(jx5 jx5Var, hx5 hx5Var, int i, long j) {
        Pair pairA = a(jx5Var, hx5Var, i, j, 0L);
        pairA.getClass();
        return pairA;
    }

    public hx5 a(Object obj, hx5 hx5Var) {
        return a(a(obj), hx5Var, true);
    }

    public final int a(int i, hx5 hx5Var, jx5 jx5Var, int i2, boolean z) {
        int i3 = a(i, hx5Var, false).d;
        if (a(i3, jx5Var, 0L).q != i) {
            return i + 1;
        }
        int iA = a(i3, i2, z);
        if (iA == -1) {
            return -1;
        }
        return a(iA, jx5Var, 0L).p;
    }
}
