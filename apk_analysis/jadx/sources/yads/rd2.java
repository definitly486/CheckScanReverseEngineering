package yads;

import defpackage.j59;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class rd2 {
    public abstract j59 a(br0 br0Var, tt ttVar, n32 n32Var);

    public final Object a(br0 br0Var, tt ttVar, n32 n32Var, List list, j71 j71Var, ArrayList arrayList) {
        n32 n32VarA;
        fs2 fs2Var;
        j59 j59VarA = a(br0Var, ttVar, n32Var);
        int i = 0;
        if (j71Var != null) {
            ArrayList arrayListA = f71.a(j71Var, ttVar.b);
            ArrayList arrayListB = du1.b(arrayListA);
            for (Object obj : arrayListA) {
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                cn1 cn1Var = (cn1) obj;
                n32 n32VarA2 = n32Var.a((String) arrayListB.get(i));
                ms2 ms2VarA = ttVar.a.z.a(n32VarA2, cn1Var.a, cn1Var.b, ttVar.b);
                if (ms2VarA == null || (fs2Var = ms2VarA.a) == null) {
                    fs2Var = cn1Var.b;
                }
                b(cn1Var.a, new tt(ttVar.a, fs2Var), n32VarA2);
                i = i2;
            }
        } else if (list != null) {
            ArrayList arrayListA2 = du1.a.a(list);
            for (Object obj2 : list) {
                int i3 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                br0 br0Var2 = (br0) obj2;
                if (arrayList == null || (n32VarA = (n32) arrayList.get(i)) == null) {
                    n32VarA = n32Var.a((String) arrayListA2.get(i));
                }
                b(br0Var2, ttVar, n32VarA);
                i = i3;
            }
        }
        return j59VarA;
    }

    public final Object b(br0 br0Var, tt ttVar, n32 n32Var) {
        gs2 gs2Var = ttVar.a.z.a(n32Var, br0Var, ttVar.b).a;
        tt ttVar2 = defpackage.aa4.e(ttVar.b, gs2Var) ? ttVar : new tt(ttVar.a, gs2Var);
        if (br0Var instanceof jq0) {
            return a((jq0) br0Var, ttVar2, n32Var);
        }
        if (br0Var instanceof zp0) {
            return a((zp0) br0Var, ttVar2, n32Var);
        }
        if (br0Var instanceof xp0) {
            return a((xp0) br0Var, ttVar2, n32Var);
        }
        if (br0Var instanceof eq0) {
            return a((eq0) br0Var, ttVar2, n32Var);
        }
        if (br0Var instanceof up0) {
            up0 up0Var = (up0) br0Var;
            j81 j81Var = up0Var.a;
            return a(this, up0Var, ttVar2, n32Var, j81Var.B, j81Var.z, 32);
        }
        if (br0Var instanceof yp0) {
            yp0 yp0Var = (yp0) br0Var;
            return a(this, yp0Var, ttVar2, n32Var, yp0Var.a.y, null, 48);
        }
        if (br0Var instanceof wp0) {
            wp0 wp0Var = (wp0) br0Var;
            og1 og1Var = wp0Var.a;
            return a(this, wp0Var, ttVar2, n32Var, og1Var.u, og1Var.s, 32);
        }
        if (br0Var instanceof cq0) {
            cq0 cq0Var = (cq0) br0Var;
            ur1 ur1Var = cq0Var.a;
            return a(this, cq0Var, ttVar2, n32Var, ur1Var.t, ur1Var.r, 32);
        }
        if (br0Var instanceof iq0) {
            iq0 iq0Var = (iq0) br0Var;
            List list = iq0Var.a.q;
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((t52) it.next()).a);
            }
            return a(this, iq0Var, ttVar2, n32Var, arrayList, null, 48);
        }
        if (!(br0Var instanceof gq0)) {
            if (br0Var instanceof vp0) {
                return a((vp0) br0Var, ttVar2, n32Var);
            }
            if (br0Var instanceof aq0) {
                return a((aq0) br0Var, ttVar2, n32Var);
            }
            if (br0Var instanceof fq0) {
                return a((fq0) br0Var, ttVar2, n32Var);
            }
            if (br0Var instanceof bq0) {
                return a((bq0) br0Var, ttVar2, n32Var);
            }
            if (br0Var instanceof dq0) {
                return a((dq0) br0Var, ttVar2, n32Var);
            }
            if (br0Var instanceof kq0) {
                return a((kq0) br0Var, ttVar2, n32Var);
            }
            if (br0Var instanceof hq0) {
                return a((hq0) br0Var, ttVar2, n32Var);
            }
            defpackage.me0.e();
            return null;
        }
        gq0 gq0Var = (gq0) br0Var;
        z22 z22Var = gq0Var.a;
        String str = z22Var.p;
        if (str == null && (str = z22Var.x) == null) {
            str = "";
        }
        List<y22> list2 = z22Var.I;
        ArrayList arrayList2 = new ArrayList();
        for (y22 y22Var : list2) {
            n32 n32VarA = y22Var.c == null ? null : n32Var.a(str, y22Var, y22Var.d);
            if (n32VarA != null) {
                arrayList2.add(n32VarA);
            }
        }
        List list3 = gq0Var.a.I;
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = list3.iterator();
        while (it2.hasNext()) {
            br0 br0Var2 = ((y22) it2.next()).c;
            if (br0Var2 != null) {
                arrayList3.add(br0Var2);
            }
        }
        return a(gq0Var, ttVar2, n32Var, arrayList3, null, arrayList2);
    }

    public Object a(vp0 vp0Var, tt ttVar, n32 n32Var) {
        return a(this, vp0Var, ttVar, n32Var, vp0Var.a.q, null, 48);
    }

    public static /* synthetic */ Object a(rd2 rd2Var, br0 br0Var, tt ttVar, n32 n32Var, List list, j71 j71Var, int i) {
        if ((i & 16) != 0) {
            j71Var = null;
        }
        return rd2Var.a(br0Var, ttVar, n32Var, list, j71Var, null);
    }

    public Object a(kq0 kq0Var, tt ttVar, n32 n32Var) {
        return a((br0) kq0Var, ttVar, n32Var);
    }
}
