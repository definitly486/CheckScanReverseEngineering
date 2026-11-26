package yads;

import android.os.Handler;
import android.util.Pair;
import androidx.media3.common.C;

/* JADX INFO: loaded from: classes6.dex */
public final class d14 {
    public final hx5 a = new hx5();
    public final jx5 b = new jx5();
    public final ge c;
    public final Handler d;
    public long e;
    public int f;
    public boolean g;
    public a14 h;
    public a14 i;
    public a14 j;
    public int k;
    public Object l;
    public long m;

    public d14(ge geVar, Handler handler) {
        this.c = geVar;
        this.d = handler;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:74:0x01d1  */
    public final c14 a(kx5 kx5Var, a14 a14Var, long j) {
        boolean z;
        kx5 kx5Var2;
        Object obj;
        long j2;
        boolean z2;
        c14 c14Var = a14Var.f;
        long j3 = (a14Var.o + c14Var.e) - j;
        boolean z3 = c14Var.g;
        h14 h14Var = c14Var.a;
        if (z3) {
            int iA = kx5Var.a(kx5Var.a(h14Var.a), this.a, this.b, this.f, this.g);
            if (iA == -1) {
                return null;
            }
            int i = kx5Var.a(iA, this.a, true).d;
            Object obj2 = this.a.c;
            obj2.getClass();
            long j4 = c14Var.a.d;
            long j5 = 0;
            if (kx5Var.a(i, this.b, 0L).p == iA) {
                Pair pairA = kx5Var.a(this.b, this.a, i, C.TIME_UNSET, Math.max(0L, j3));
                if (pairA == null) {
                    return null;
                }
                Object obj3 = pairA.first;
                long jLongValue = ((Long) pairA.second).longValue();
                a14 a14Var2 = a14Var.l;
                if (a14Var2 == null || !a14Var2.b.equals(obj3)) {
                    j4 = this.e;
                    this.e = 1 + j4;
                } else {
                    j4 = a14Var2.f.a.d;
                }
                obj = obj3;
                j2 = jLongValue;
                j5 = -9223372036854775807L;
            } else {
                obj = obj2;
                j2 = 0;
            }
            h14 h14VarA = a(kx5Var, obj, j2, j4, this.b, this.a);
            if (j5 != C.TIME_UNSET && c14Var.c != C.TIME_UNSET) {
                if (kx5Var.a(c14Var.a.a, this.a).h.b > 0) {
                    a6 a6Var = this.a.h;
                    if (a6Var.a(a6Var.e).h) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                } else {
                    z2 = false;
                }
                if (h14VarA.a() && z2) {
                    j5 = c14Var.c;
                } else if (z2) {
                    j2 = c14Var.c;
                }
            }
            long j6 = j5;
            kx5Var.a(h14VarA.a, this.a);
            boolean zA = h14VarA.a();
            Object obj4 = h14VarA.a;
            return zA ? a(kx5Var, obj4, h14VarA.b, h14VarA.c, j6, h14VarA.d) : a(kx5Var, obj4, j2, j6, h14VarA.d);
        }
        kx5Var.a(h14Var.a, this.a);
        if (!h14Var.a()) {
            int iA2 = this.a.a(h14Var.e);
            if (this.a.h.a(h14Var.e).h) {
                z5 z5VarA = this.a.h.a(h14Var.e);
                if ((z5VarA.c != -1 ? z5VarA.e[iA2] : 0) == 3) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            if (iA2 != this.a.h.a(h14Var.e).c && !z) {
                return a(kx5Var, h14Var.a, h14Var.e, iA2, c14Var.e, h14Var.d);
            }
            Object obj5 = h14Var.a;
            int i2 = h14Var.e;
            kx5Var.a(obj5, this.a);
            long j7 = this.a.h.a(i2).b;
            hx5 hx5Var = this.a;
            return a(kx5Var, h14Var.a, j7 == Long.MIN_VALUE ? hx5Var.e : hx5Var.h.a(i2).g + j7, c14Var.e, h14Var.d);
        }
        int i3 = h14Var.b;
        int i4 = this.a.h.a(i3).c;
        if (i4 == -1) {
            return null;
        }
        int iA3 = this.a.h.a(i3).a(h14Var.c);
        if (iA3 < i4) {
            return a(kx5Var, h14Var.a, i3, iA3, c14Var.c, h14Var.d);
        }
        long jLongValue2 = c14Var.c;
        if (jLongValue2 == C.TIME_UNSET) {
            jx5 jx5Var = this.b;
            hx5 hx5Var2 = this.a;
            Pair pairA2 = kx5Var.a(jx5Var, hx5Var2, hx5Var2.d, C.TIME_UNSET, Math.max(0L, j3));
            kx5Var2 = kx5Var;
            if (pairA2 == null) {
                return null;
            }
            jLongValue2 = ((Long) pairA2.second).longValue();
        } else {
            kx5Var2 = kx5Var;
        }
        Object obj6 = h14Var.a;
        int i5 = h14Var.b;
        kx5Var2.a(obj6, this.a);
        long j8 = this.a.h.a(i5).b;
        hx5 hx5Var3 = this.a;
        return a(kx5Var, h14Var.a, Math.max(j8 == Long.MIN_VALUE ? hx5Var3.e : hx5Var3.h.a(i5).g + j8, jLongValue2), c14Var.c, h14Var.d);
    }

    public final void b() {
        if (this.k == 0) {
            return;
        }
        a14 a14Var = this.h;
        if (a14Var == null) {
            defpackage.ud.g();
            return;
        }
        this.l = a14Var.b;
        this.m = a14Var.f.a.d;
        while (a14Var != null) {
            a14Var.b();
            a14Var = a14Var.l;
        }
        this.h = null;
        this.j = null;
        this.i = null;
        this.k = 0;
        c();
    }

    public final void c() {
        le3 le3Var = oe3.c;
        final ke3 ke3Var = new ke3();
        for (a14 a14Var = this.h; a14Var != null; a14Var = a14Var.l) {
            ke3Var.a(a14Var.f.a);
        }
        a14 a14Var2 = this.i;
        final h14 h14Var = a14Var2 == null ? null : a14Var2.f.a;
        this.d.post(new Runnable() { // from class: js9
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(ke3Var, h14Var);
            }
        });
    }

    public final boolean a(a14 a14Var) {
        int i = 0;
        if (a14Var != null) {
            if (a14Var == this.j) {
                return false;
            }
            this.j = a14Var;
            boolean z = false;
            while (true) {
                a14Var = a14Var.l;
                if (a14Var == null) {
                    break;
                }
                if (a14Var == this.i) {
                    this.i = this.h;
                    z = true;
                }
                a14Var.b();
                this.k--;
            }
            a14 a14Var2 = this.j;
            if (a14Var2.l != null) {
                a14Var2.a();
                a14Var2.l = null;
                while (true) {
                    q06 q06Var = a14Var2.n;
                    if (i >= q06Var.a) {
                        break;
                    }
                    boolean zA = q06Var.a(i);
                    er2 er2Var = a14Var2.n.c[i];
                    if (zA && er2Var != null) {
                        er2Var.a();
                    }
                    i++;
                }
            }
            c();
            return z;
        }
        defpackage.ud.g();
        return false;
    }

    public final boolean a(kx5 kx5Var, long j, long j2) {
        c14 c14VarA;
        a14 a14Var = this.h;
        a14 a14Var2 = null;
        while (a14Var != null) {
            c14 c14Var = a14Var.f;
            if (a14Var2 == null) {
                c14VarA = a(kx5Var, c14Var);
            } else {
                c14 c14VarA2 = a(kx5Var, a14Var2, j);
                if (c14VarA2 == null) {
                    return !a(a14Var2);
                }
                if (c14Var.b != c14VarA2.b || !c14Var.a.equals(c14VarA2.a)) {
                    return !a(a14Var2);
                }
                c14VarA = c14VarA2;
            }
            long j3 = c14Var.c;
            c14 c14Var2 = j3 == c14VarA.c ? c14VarA : new c14(c14VarA.a, c14VarA.b, j3, c14VarA.d, c14VarA.e, c14VarA.f, c14VarA.g, c14VarA.h, c14VarA.i);
            a14Var.f = c14Var2;
            long j4 = c14Var.e;
            long j5 = c14VarA.e;
            if (j4 != C.TIME_UNSET && j4 != j5) {
                Object obj = a14Var.a;
                if (obj instanceof t00) {
                    long j6 = c14Var2.d;
                    if (j6 == C.TIME_UNSET) {
                        j6 = Long.MIN_VALUE;
                    }
                    t00 t00Var = (t00) obj;
                    t00Var.f = 0L;
                    t00Var.g = j6;
                }
                boolean z = a14Var == this.i && !c14Var2.f && (j2 == Long.MIN_VALUE || j2 >= ((j5 > C.TIME_UNSET ? 1 : (j5 == C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : a14Var.o + j5));
                if (a(a14Var) || z) {
                    return false;
                }
                return r4;
            }
            a14Var2 = a14Var;
            a14Var = a14Var.l;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0040  */
    public final c14 a(kx5 kx5Var, c14 c14Var) {
        boolean z;
        long jA;
        boolean z2;
        int i;
        h14 h14Var = c14Var.a;
        boolean z3 = false;
        boolean z4 = !h14Var.a() && h14Var.e == -1;
        if (h14Var.a() || h14Var.e != -1) {
            z = false;
        } else {
            if (kx5Var.a(kx5Var.a(h14Var.a, this.a).d, this.b, 0L).q == kx5Var.a(h14Var.a)) {
                z = true;
            } else {
                z = false;
            }
        }
        boolean zA = a(kx5Var, h14Var, z4);
        kx5Var.a(c14Var.a.a, this.a);
        long j = (h14Var.a() || (i = h14Var.e) == -1) ? -9223372036854775807L : this.a.h.a(i).b;
        if (h14Var.a()) {
            jA = this.a.a(h14Var.b, h14Var.c);
        } else {
            jA = (j == C.TIME_UNSET || j == Long.MIN_VALUE) ? this.a.e : j;
        }
        if (h14Var.a()) {
            z3 = this.a.h.a(h14Var.b).h;
        } else {
            int i2 = h14Var.e;
            if (i2 != -1 && this.a.h.a(i2).h) {
                z2 = true;
            }
            return new c14(h14Var, c14Var.b, c14Var.c, j, jA, z2, z4, z, zA);
        }
        z2 = z3;
        return new c14(h14Var, c14Var.b, c14Var.c, j, jA, z2, z4, z, zA);
    }

    public static h14 a(kx5 kx5Var, Object obj, long j, long j2, jx5 jx5Var, hx5 hx5Var) {
        kx5Var.a(obj, hx5Var);
        kx5Var.a(hx5Var.d, jx5Var, 0L);
        int iA = kx5Var.a(obj);
        while (hx5Var.e == 0) {
            a6 a6Var = hx5Var.h;
            if (a6Var.b <= 0 || !a6Var.a(a6Var.e).h || hx5Var.b(0L) != -1) {
                break;
            }
            int i = iA + 1;
            if (iA >= jx5Var.q) {
                break;
            }
            kx5Var.a(i, hx5Var, true);
            obj = hx5Var.c;
            obj.getClass();
            iA = i;
        }
        kx5Var.a(obj, hx5Var);
        int iB = hx5Var.b(j);
        if (iB == -1) {
            return new h14(obj, j2, hx5Var.a(j));
        }
        return new h14(obj, iB, hx5Var.a(iB), j2);
    }

    public final void a(ke3 ke3Var, h14 h14Var) {
        ge geVar = this.c;
        k55 k55VarA = ke3Var.a();
        cj0 cj0Var = (cj0) geVar;
        bj0 bj0Var = cj0Var.d;
        eq2 eq2Var = cj0Var.g;
        eq2Var.getClass();
        bj0Var.getClass();
        bj0Var.b = oe3.a(k55VarA);
        if (!k55VarA.isEmpty()) {
            bj0Var.e = (h14) k55VarA.get(0);
            h14Var.getClass();
            bj0Var.f = h14Var;
        }
        if (bj0Var.d == null) {
            bj0Var.d = bj0.a(eq2Var, bj0Var.b, bj0Var.e, bj0Var.a);
        }
        eq2Var.q();
        bj0Var.a(eq2Var.b0.a);
    }

    public final h14 a(kx5 kx5Var, Object obj, long j) {
        long j2;
        int iA;
        Object obj2 = obj;
        int i = kx5Var.a(obj2, this.a).d;
        Object obj3 = this.l;
        if (obj3 != null && (iA = kx5Var.a(obj3)) != -1 && kx5Var.a(iA, this.a, false).d == i) {
            j2 = this.m;
        } else {
            a14 a14Var = this.h;
            while (true) {
                if (a14Var != null) {
                    if (a14Var.b.equals(obj2)) {
                        j2 = a14Var.f.a.d;
                        break;
                    }
                    a14Var = a14Var.l;
                } else {
                    a14 a14Var2 = this.h;
                    while (true) {
                        if (a14Var2 != null) {
                            int iA2 = kx5Var.a(a14Var2.b);
                            if (iA2 != -1 && kx5Var.a(iA2, this.a, false).d == i) {
                                j2 = a14Var2.f.a.d;
                                break;
                            }
                            a14Var2 = a14Var2.l;
                        } else {
                            j2 = this.e;
                            this.e = 1 + j2;
                            if (this.h != null) {
                                break;
                            }
                            this.l = obj2;
                            this.m = j2;
                            break;
                        }
                    }
                }
            }
        }
        kx5Var.a(obj2, this.a);
        kx5Var.a(this.a.d, this.b, 0L);
        boolean z = false;
        for (int iA3 = kx5Var.a(obj); iA3 >= this.b.p; iA3--) {
            kx5Var.a(iA3, this.a, true);
            hx5 hx5Var = this.a;
            boolean z2 = hx5Var.h.b > 0;
            z |= z2;
            if (hx5Var.b(hx5Var.e) != -1) {
                obj2 = this.a.c;
                obj2.getClass();
            }
            if (z && (!z2 || this.a.e != 0)) {
                break;
            }
        }
        return a(kx5Var, obj2, j, j2, this.b, this.a);
    }

    public final boolean a(kx5 kx5Var) {
        kx5 kx5Var2;
        a14 a14Var;
        a14 a14Var2 = this.h;
        if (a14Var2 == null) {
            return true;
        }
        int iA = kx5Var.a(a14Var2.b);
        while (true) {
            kx5Var2 = kx5Var;
            iA = kx5Var2.a(iA, this.a, this.b, this.f, this.g);
            while (true) {
                a14Var = a14Var2.l;
                if (a14Var == null || a14Var2.f.g) {
                    break;
                }
                a14Var2 = a14Var;
            }
            if (iA == -1 || a14Var == null || kx5Var2.a(a14Var.b) != iA) {
                break;
            }
            a14Var2 = a14Var;
            kx5Var = kx5Var2;
        }
        boolean zA = a(a14Var2);
        a14Var2.f = a(kx5Var2, a14Var2.f);
        return !zA;
    }

    public final a14 a() {
        a14 a14Var = this.h;
        if (a14Var == null) {
            return null;
        }
        if (a14Var == this.i) {
            this.i = a14Var.l;
        }
        a14Var.b();
        int i = this.k - 1;
        this.k = i;
        if (i == 0) {
            this.j = null;
            a14 a14Var2 = this.h;
            this.l = a14Var2.b;
            this.m = a14Var2.f.a.d;
        }
        this.h = this.h.l;
        c();
        return this.h;
    }

    public final c14 a(kx5 kx5Var, Object obj, int i, int i2, long j, long j2) {
        h14 h14Var = new h14(obj, i, i2, j2);
        long jA = kx5Var.a(obj, this.a).a(i, i2);
        long jMax = i2 == this.a.a(i) ? this.a.h.c : 0L;
        boolean z = this.a.h.a(i).h;
        if (jA != C.TIME_UNSET && jMax >= jA) {
            jMax = Math.max(0L, jA - 1);
        }
        return new c14(h14Var, jMax, j, C.TIME_UNSET, jA, z, false, false, false);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x009d  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:68:0x0105  */
    /* JADX WARN: Code duplicated, block: B:9:0x002c  */
    public final c14 a(kx5 kx5Var, Object obj, long j, long j2, long j3) {
        boolean z;
        boolean z2;
        long j4;
        long j5;
        long j6;
        long j7;
        long jMax;
        kx5Var.a(obj, this.a);
        int iA = this.a.a(j);
        hx5 hx5Var = this.a;
        int i = 1;
        if (iA == -1) {
            a6 a6Var = hx5Var.h;
            if (a6Var.b <= 0 || !a6Var.a(a6Var.e).h) {
                z = false;
                break;
            }
            z = true;
        } else {
            if (!hx5Var.h.a(iA).h) {
                z = false;
                break;
            }
            long j8 = this.a.h.a(iA).b;
            hx5 hx5Var2 = this.a;
            if (j8 != hx5Var2.e) {
                z = false;
                break;
            }
            z5 z5VarA = hx5Var2.h.a(iA);
            if (z5VarA.c != -1) {
                int i2 = 0;
                while (true) {
                    if (i2 >= z5VarA.c) {
                        z = true;
                        iA = -1;
                        break;
                    }
                    int i3 = z5VarA.e[i2];
                    if (i3 == 0 || i3 == 1) {
                        z = false;
                        break;
                    }
                    i2++;
                }
            } else {
                z = false;
                break;
            }
        }
        h14 h14Var = new h14(obj, j3, iA);
        boolean z3 = !h14Var.a() && iA == -1;
        if (h14Var.a() || iA != -1) {
            z2 = false;
        } else {
            if (kx5Var.a(kx5Var.a(obj, this.a).d, this.b, 0L).q == kx5Var.a(obj)) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        boolean zA = a(kx5Var, h14Var, z3);
        boolean z4 = iA != -1 && this.a.h.a(iA).h;
        if (iA != -1) {
            z5 z5VarA2 = this.a.h.a(iA);
            j4 = C.TIME_UNSET;
            j6 = z5VarA2.b;
        } else {
            j4 = C.TIME_UNSET;
            if (z) {
                j6 = this.a.e;
            } else {
                j5 = -9223372036854775807L;
            }
            if (j5 != j4 || j5 == Long.MIN_VALUE) {
                j7 = this.a.e;
            } else {
                j7 = j5;
            }
            if (j7 != j4 || j < j7) {
                jMax = j;
            } else {
                if (!zA && z) {
                    i = 0;
                }
                jMax = Math.max(0L, j7 - ((long) i));
            }
            return new c14(h14Var, jMax, j2, j5, j7, z4, z3, z2, zA);
        }
        j5 = j6;
        if (j5 != j4) {
            j7 = this.a.e;
        } else {
            j7 = this.a.e;
        }
        if (j7 != j4) {
            jMax = j;
        } else {
            jMax = j;
        }
        return new c14(h14Var, jMax, j2, j5, j7, z4, z3, z2, zA);
    }

    public final boolean a(kx5 kx5Var, h14 h14Var, boolean z) {
        int iA = kx5Var.a(h14Var.a);
        return !kx5Var.a(kx5Var.a(iA, this.a, false).d, this.b, 0L).j && kx5Var.a(iA, this.a, this.b, this.f, this.g) == -1 && z;
    }
}
