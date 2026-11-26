package yads;

import defpackage.j59;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class my1 {
    public final ff3 a;
    public final sv5 b;
    public final zu5 c;

    public my1(ff3 ff3Var, sv5 sv5Var, zu5 zu5Var) {
        this.a = ff3Var;
        this.b = sv5Var;
        this.c = zu5Var;
    }

    public final void a(y52 y52Var, vq0 vq0Var, n32 n32Var, ms2 ms2Var) {
        ms2 ms2Var2;
        int iIntValue;
        zu5 zu5Var = this.c;
        String strA = vq0Var.o().a();
        String str = (String) n32Var.e.getValue();
        Map map = (Map) zu5Var.a.get(strA);
        Integer num = map != null ? (Integer) map.get(str) : null;
        if (num != null) {
            iIntValue = num.intValue();
            ms2Var2 = ms2Var;
        } else {
            ms2Var2 = ms2Var;
            long jLongValue = ((Number) y52Var.y.a((fs2) ms2Var2.a)).longValue();
            long j = jLongValue >> 31;
            iIntValue = (j == 0 || j == -1) ? (int) jLongValue : jLongValue > 0 ? Integer.MAX_VALUE : Integer.MIN_VALUE;
        }
        ArrayList arrayListA = du1.a(du1.a, y52Var.q, new defpackage.ye(4));
        int i = 0;
        for (Object obj : y52Var.q) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            a(((t52) obj).a, vq0Var, n32Var.a((String) arrayListA.get(i)), ms2Var2, iIntValue == i);
            ms2Var2 = ms2Var;
            i = i2;
        }
    }

    public final void b(br0 br0Var, vq0 vq0Var, n32 n32Var, ms2 ms2Var) {
        if (br0Var instanceof up0) {
            j81 j81Var = ((up0) br0Var).a;
            a(br0Var, vq0Var, j81Var.B, j81Var.z, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof yp0) {
            a(br0Var, vq0Var, ((yp0) br0Var).a.y, null, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof wp0) {
            og1 og1Var = ((wp0) br0Var).a;
            a(br0Var, vq0Var, og1Var.u, og1Var.s, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof cq0) {
            ur1 ur1Var = ((cq0) br0Var).a;
            a(br0Var, vq0Var, ur1Var.t, ur1Var.r, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof gq0) {
            gq0 gq0Var = (gq0) br0Var;
            ms2 ms2VarA = a(gq0Var, vq0Var, n32Var, ms2Var);
            z22 z22Var = gq0Var.a;
            String strA = a(z22Var, vq0Var, n32Var, ms2VarA.a);
            for (y22 y22Var : z22Var.I) {
                br0 br0Var2 = y22Var.c;
                if (br0Var2 != null) {
                    a(br0Var2, vq0Var, n32Var.a((String) defpackage.qn1.b0(n32Var.c), y22Var, y22Var.d), ms2VarA, defpackage.aa4.e(y22Var.d, strA));
                }
            }
            return;
        }
        if (br0Var instanceof iq0) {
            iq0 iq0Var = (iq0) br0Var;
            a(iq0Var.a, vq0Var, n32Var, a(iq0Var, vq0Var, n32Var, ms2Var));
            return;
        }
        if (br0Var instanceof vp0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof xp0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof zp0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof aq0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof bq0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof dq0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof eq0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof fq0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
            return;
        }
        if (br0Var instanceof jq0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
        } else if (br0Var instanceof kq0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
        } else if (br0Var instanceof hq0) {
            a(br0Var, vq0Var, n32Var, ms2Var);
        }
    }

    public final void a(br0 br0Var, vq0 vq0Var, List list, j71 j71Var, n32 n32Var, ms2 ms2Var) {
        ms2 ms2VarA = a(br0Var, vq0Var, n32Var, ms2Var);
        int i = 0;
        if (j71Var == null) {
            if (list != null) {
                ArrayList arrayListA = du1.a.a(list);
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i >= 0) {
                        b((br0) obj, vq0Var, n32Var.a((String) arrayListA.get(i)), ms2VarA);
                        i = i2;
                    } else {
                        u96.o();
                        throw null;
                    }
                }
                return;
            }
            return;
        }
        ArrayList arrayListA2 = f71.a(j71Var, ms2VarA.a);
        ArrayList arrayListB = du1.b(arrayListA2);
        for (Object obj2 : arrayListA2) {
            int i3 = i + 1;
            if (i >= 0) {
                cn1 cn1Var = (cn1) obj2;
                n32 n32VarA = n32Var.a((String) arrayListB.get(i));
                ms2 ms2VarA2 = vq0Var.z.a(n32VarA, cn1Var.a, cn1Var.b, ms2VarA.a);
                br0 br0Var2 = cn1Var.a;
                if (ms2VarA2 == null) {
                    ms2VarA2 = ms2VarA;
                }
                b(br0Var2, vq0Var, n32VarA, ms2VarA2);
                i = i3;
            } else {
                u96.o();
                throw null;
            }
        }
    }

    public static ms2 a(br0 br0Var, vq0 vq0Var, n32 n32Var, ms2 ms2Var) {
        ms2 ms2VarA = vq0Var.z.a(n32Var, br0Var, ms2Var.a);
        d26 d26Var = ms2VarA.b;
        if (d26Var != null) {
            d26Var.b(vq0Var);
        }
        return ms2VarA;
    }

    public final String a(z22 z22Var, vq0 vq0Var, n32 n32Var, gs2 gs2Var) {
        String strD = defpackage.cg.d(n32Var.c(), "/", n32Var.a());
        String strA = vq0Var.r().a();
        String strA2 = this.b.a(strA, strD);
        if (strA2 != null) {
            return strA2;
        }
        String strA3 = this.a.a(strA, strD);
        if (strA3 == null) {
            String str = z22Var.H;
            if (str != null) {
                u66 u66VarA = gs2Var.e().a(str);
                strA3 = String.valueOf(u66VarA != null ? u66VarA.b() : null);
            } else {
                strA3 = null;
            }
            if (strA3 == null) {
                as2 as2Var = z22Var.n;
                strA3 = as2Var != null ? (String) as2Var.a((fs2) gs2Var) : null;
                if (strA3 == null) {
                    y22 y22Var = (y22) defpackage.qn1.V(z22Var.I);
                    if (y22Var != null) {
                        return y22Var.d;
                    }
                    return null;
                }
            }
        }
        return strA3;
    }

    public static final j59 a(vq0 vq0Var, ms2 ms2Var) {
        d26 d26Var = ms2Var.b;
        if (d26Var != null) {
            d26Var.a(vq0Var);
        }
        return j59.a;
    }

    public static final br0 a(t52 t52Var) {
        return t52Var.a;
    }

    public final void a(br0 br0Var, vq0 vq0Var, n32 n32Var, ms2 ms2Var, boolean z) {
        if (z) {
            b(br0Var, vq0Var, n32Var, ms2Var);
        } else {
            vq0Var.z.a(vq0Var.z.a(n32Var, br0Var, ms2Var.a), n32Var, new defpackage.i1(vq0Var, 4));
        }
    }
}
