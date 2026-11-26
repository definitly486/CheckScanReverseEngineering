package yads;

import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class k11 {
    public static final xr2 i;
    public static final w91 j;
    public static final xr2 k;
    public final as2 a;
    public final as2 b;
    public final as2 c;
    public final List d;
    public final as2 e;
    public final x91 f;
    public final as2 g;
    public final as2 h;

    static {
        wr2.a(300L);
        i = wr2.a(o11.SPRING);
        j = new w91(new sj1());
        k = wr2.a(0L);
    }

    public k11(as2 as2Var, as2 as2Var2, as2 as2Var3, List list, as2 as2Var4, x91 x91Var, as2 as2Var5, as2 as2Var6) {
        this.a = as2Var;
        this.b = as2Var2;
        this.c = as2Var3;
        this.d = list;
        this.e = as2Var4;
        this.f = x91Var;
        this.g = as2Var5;
        this.h = as2Var6;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:53:0x00dd A[RETURN] */
    public final boolean a(k11 k11Var, fs2 fs2Var, fs2 fs2Var2) {
        as2 as2Var;
        Double d;
        as2 as2Var2;
        if (k11Var != null && ((Number) this.a.a(fs2Var)).longValue() == ((Number) k11Var.a.a(fs2Var2)).longValue()) {
            as2 as2Var3 = this.b;
            Double d2 = as2Var3 != null ? (Double) as2Var3.a(fs2Var) : null;
            as2 as2Var4 = k11Var.b;
            if (defpackage.aa4.b(d2, as2Var4 != null ? (Double) as2Var4.a(fs2Var2) : null) && this.c.a(fs2Var) == k11Var.c.a(fs2Var2)) {
                List list = this.d;
                List list2 = k11Var.d;
                if (list != null) {
                    if (list2 != null && list.size() == list2.size()) {
                        int i2 = 0;
                        for (Object obj : list) {
                            int i3 = i2 + 1;
                            if (i2 < 0) {
                                u96.o();
                                throw null;
                            }
                            if (((k11) obj).a((k11) list2.get(i2), fs2Var, fs2Var2)) {
                                i2 = i3;
                            }
                        }
                        if (this.e.a(fs2Var) == k11Var.e.a(fs2Var2) && this.f.a(k11Var.f, fs2Var, fs2Var2) && ((Number) this.g.a(fs2Var)).longValue() == ((Number) k11Var.g.a(fs2Var2)).longValue()) {
                            as2Var = this.h;
                            if (as2Var != null) {
                                d = (Double) as2Var.a(fs2Var);
                            } else {
                                d = null;
                            }
                            as2Var2 = k11Var.h;
                            if (defpackage.aa4.b(d, as2Var2 != null ? (Double) as2Var2.a(fs2Var2) : null)) {
                                return true;
                            }
                        }
                    }
                } else if (list2 == null) {
                    if (this.e.a(fs2Var) == k11Var.e.a(fs2Var2)) {
                        as2Var = this.h;
                        if (as2Var != null) {
                            d = (Double) as2Var.a(fs2Var);
                        } else {
                            d = null;
                        }
                        as2Var2 = k11Var.h;
                        if (defpackage.aa4.b(d, as2Var2 != null ? (Double) as2Var2.a(fs2Var2) : null)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public /* synthetic */ k11(xr2 xr2Var, xr2 xr2Var2, xr2 xr2Var3, xr2 xr2Var4) {
        this(xr2Var, xr2Var2, i, null, xr2Var3, j, k, xr2Var4);
    }
}
