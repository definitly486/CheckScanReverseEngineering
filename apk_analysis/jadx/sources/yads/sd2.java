package yads;

import defpackage.nl3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sd2 implements vd2 {
    public final cn1 a;
    public final nl3 b;
    public final nl3 c;
    public boolean d;
    public List e;
    public int f;

    public sd2(cn1 cn1Var, nl3 nl3Var, nl3 nl3Var2) {
        this.a = cn1Var;
        this.b = nl3Var;
        this.c = nl3Var2;
    }

    @Override // yads.vd2
    public final cn1 a() {
        ArrayList arrayList;
        if (!this.d) {
            nl3 nl3Var = this.b;
            if (nl3Var != null && !((Boolean) nl3Var.invoke(this.a.a)).booleanValue()) {
                return null;
            }
            this.d = true;
            return this.a;
        }
        List listA = this.e;
        if (listA == null) {
            cn1 cn1Var = this.a;
            br0 br0Var = cn1Var.a;
            fs2 fs2Var = cn1Var.b;
            boolean z = br0Var instanceof jq0;
            List list = defpackage.kx2.b;
            if (z || (br0Var instanceof zp0) || (br0Var instanceof xp0) || (br0Var instanceof eq0) || (br0Var instanceof aq0) || (br0Var instanceof fq0) || (br0Var instanceof bq0) || (br0Var instanceof vp0) || (br0Var instanceof dq0) || (br0Var instanceof kq0) || (br0Var instanceof hq0)) {
                listA = list;
            } else if (br0Var instanceof up0) {
                j81 j81Var = ((up0) br0Var).a;
                listA = f71.a(j81Var.B, j81Var.z, fs2Var);
            } else if (br0Var instanceof yp0) {
                List list2 = ((yp0) br0Var).a.y;
                if (list2 != null) {
                    list = list2;
                }
                listA = f71.a(list, fs2Var);
            } else if (br0Var instanceof wp0) {
                og1 og1Var = ((wp0) br0Var).a;
                listA = f71.a(og1Var.u, og1Var.s, fs2Var);
            } else if (br0Var instanceof cq0) {
                ur1 ur1Var = ((cq0) br0Var).a;
                listA = f71.a(ur1Var.t, ur1Var.r, fs2Var);
            } else {
                if (br0Var instanceof iq0) {
                    List list3 = ((iq0) br0Var).a.q;
                    arrayList = new ArrayList(defpackage.kn1.q(list3, 10));
                    Iterator it = list3.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new cn1(((t52) it.next()).a, fs2Var));
                    }
                } else {
                    if (!(br0Var instanceof gq0)) {
                        defpackage.me0.e();
                        return null;
                    }
                    List list4 = ((gq0) br0Var).a.I;
                    arrayList = new ArrayList();
                    Iterator it2 = list4.iterator();
                    while (it2.hasNext()) {
                        br0 br0Var2 = ((y22) it2.next()).c;
                        cn1 cn1Var2 = br0Var2 != null ? new cn1(br0Var2, fs2Var) : null;
                        if (cn1Var2 != null) {
                            arrayList.add(cn1Var2);
                        }
                    }
                }
                listA = arrayList;
            }
            this.e = listA;
        }
        if (this.f < listA.size()) {
            int i = this.f;
            this.f = i + 1;
            return (cn1) listA.get(i);
        }
        nl3 nl3Var2 = this.c;
        if (nl3Var2 != null) {
            nl3Var2.invoke(this.a.a);
        }
        return null;
    }

    @Override // yads.vd2
    public final cn1 b() {
        return this.a;
    }
}
