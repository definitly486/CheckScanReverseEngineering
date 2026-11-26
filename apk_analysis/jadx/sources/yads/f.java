package yads;

import android.util.Pair;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f extends kx5 {
    public final int c;
    public final ik5 d;

    public f(ik5 ik5Var) {
        this.d = ik5Var;
        this.c = ik5Var.b.length;
    }

    public static Object c(Object obj) {
        return ((Pair) obj).first;
    }

    @Override // yads.kx5
    public final int a(int i, int i2) {
        hx4 hx4Var = (hx4) this;
        int iA = u56.a(hx4Var.h, i + 1, false, false);
        int i3 = hx4Var.h[iA];
        int iA2 = hx4Var.i[iA].a(i - i3, i2 == 2 ? 0 : i2);
        if (iA2 != -1) {
            return i3 + iA2;
        }
        int iB = b(iA, false);
        while (iB != -1 && hx4Var.i[iB].c()) {
            iB = b(iB, false);
        }
        if (iB != -1) {
            return hx4Var.i[iB].b(false) + hx4Var.h[iB];
        }
        if (i2 == 2) {
            return b(false);
        }
        return -1;
    }

    @Override // yads.kx5
    public final int b(boolean z) {
        int iB;
        int i = this.c;
        if (i == 0) {
            return -1;
        }
        if (z) {
            int[] iArr = this.d.b;
            iB = iArr.length > 0 ? iArr[iArr.length - 1] : -1;
        } else {
            iB = i - 1;
        }
        do {
            hx4 hx4Var = (hx4) this;
            if (!hx4Var.i[iB].c()) {
                return hx4Var.i[iB].b(z) + hx4Var.h[iB];
            }
            iB = b(iB, z);
        } while (iB != -1);
        return -1;
    }

    public static Object b(Object obj) {
        return ((Pair) obj).second;
    }

    public final int b(int i, boolean z) {
        if (z) {
            ik5 ik5Var = this.d;
            int i2 = ik5Var.c[i] - 1;
            if (i2 >= 0) {
                return ik5Var.b[i2];
            }
        } else if (i > 0) {
            return i - 1;
        }
        return -1;
    }

    public static Object a(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    @Override // yads.kx5
    public final int a(int i, int i2, boolean z) {
        hx4 hx4Var = (hx4) this;
        int iA = u56.a(hx4Var.h, i + 1, false, false);
        int i3 = hx4Var.h[iA];
        int iA2 = hx4Var.i[iA].a(i - i3, i2 != 2 ? i2 : 0, z);
        if (iA2 != -1) {
            return i3 + iA2;
        }
        int iA3 = a(iA, z);
        while (iA3 != -1 && hx4Var.i[iA3].c()) {
            iA3 = a(iA3, z);
        }
        if (iA3 != -1) {
            return hx4Var.i[iA3].a(z) + hx4Var.h[iA3];
        }
        if (i2 == 2) {
            return a(z);
        }
        return -1;
    }

    @Override // yads.kx5
    public final hx5 a(Object obj, hx5 hx5Var) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        hx4 hx4Var = (hx4) this;
        Integer num = (Integer) hx4Var.k.get(obj2);
        int iIntValue = num == null ? -1 : num.intValue();
        int i = hx4Var.h[iIntValue];
        hx4Var.i[iIntValue].a(obj3, hx5Var);
        hx5Var.d += i;
        hx5Var.c = obj;
        return hx5Var;
    }

    @Override // yads.kx5
    public final int a(boolean z) {
        if (this.c == 0) {
            return -1;
        }
        int iA = 0;
        if (z) {
            int[] iArr = this.d.b;
            iA = iArr.length > 0 ? iArr[0] : -1;
        }
        do {
            hx4 hx4Var = (hx4) this;
            if (hx4Var.i[iA].c()) {
                iA = a(iA, z);
            } else {
                return hx4Var.i[iA].a(z) + hx4Var.h[iA];
            }
        } while (iA != -1);
        return -1;
    }

    @Override // yads.kx5
    public final jx5 a(int i, jx5 jx5Var, long j) {
        hx4 hx4Var = (hx4) this;
        int iA = u56.a(hx4Var.h, i + 1, false, false);
        int i2 = hx4Var.h[iA];
        int i3 = hx4Var.g[iA];
        hx4Var.i[iA].a(i - i2, jx5Var, j);
        Object objCreate = hx4Var.j[iA];
        if (!jx5.s.equals(jx5Var.b)) {
            objCreate = Pair.create(objCreate, jx5Var.b);
        }
        jx5Var.b = objCreate;
        jx5Var.p += i3;
        jx5Var.q += i3;
        return jx5Var;
    }

    @Override // yads.kx5
    public final hx5 a(int i, hx5 hx5Var, boolean z) {
        hx4 hx4Var = (hx4) this;
        int iA = u56.a(hx4Var.g, i + 1, false, false);
        int i2 = hx4Var.h[iA];
        hx4Var.i[iA].a(i - hx4Var.g[iA], hx5Var, z);
        hx5Var.d += i2;
        if (z) {
            Object obj = hx4Var.j[iA];
            Object obj2 = hx5Var.c;
            obj2.getClass();
            hx5Var.c = Pair.create(obj, obj2);
        }
        return hx5Var;
    }

    @Override // yads.kx5
    public final int a(Object obj) {
        int iA;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        hx4 hx4Var = (hx4) this;
        Integer num = (Integer) hx4Var.k.get(obj2);
        int iIntValue = num == null ? -1 : num.intValue();
        if (iIntValue == -1 || (iA = hx4Var.i[iIntValue].a(obj3)) == -1) {
            return -1;
        }
        return hx4Var.g[iIntValue] + iA;
    }

    @Override // yads.kx5
    public final Object a(int i) {
        hx4 hx4Var = (hx4) this;
        int iA = u56.a(hx4Var.g, i + 1, false, false);
        return Pair.create(hx4Var.j[iA], hx4Var.i[iA].a(i - hx4Var.g[iA]));
    }

    public final int a(int i, boolean z) {
        if (z) {
            ik5 ik5Var = this.d;
            int i2 = ik5Var.c[i] + 1;
            int[] iArr = ik5Var.b;
            if (i2 < iArr.length) {
                return iArr[i2];
            }
            return -1;
        }
        if (i < this.c - 1) {
            return i + 1;
        }
        return -1;
    }
}
