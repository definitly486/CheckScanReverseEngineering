package yads;

import defpackage.j59;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class bw1 extends dj2 {
    public final xv1 a;
    public final dw1 b = new dw1();
    public final /* synthetic */ ew1 c;

    public bw1(ew1 ew1Var, xv1 xv1Var, sv1 sv1Var, fs2 fs2Var) {
        this.c = ew1Var;
        this.a = xv1Var;
    }

    @Override // yads.dj2
    public final Object a(kq0 kq0Var, fs2 fs2Var) {
        c(kq0Var, fs2Var);
        if (yv1.a.a(kq0Var, fs2Var)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = kq0Var.a.Q.iterator();
            while (it.hasNext()) {
                arrayList.add(((ah2) it.next()).d.a(fs2Var));
            }
            this.c.getClass();
            aw1.a.getClass();
            this.b.a.add(zv1.b);
        }
        return j59.a;
    }

    public final void c(br0 br0Var, fs2 fs2Var) {
        ArrayList arrayListA;
        ti1 ti1Var = this.c.a;
        if (ti1Var != null && (arrayListA = ti1Var.a(br0Var, fs2Var, this.a)) != null) {
            Iterator it = arrayListA.iterator();
            while (it.hasNext()) {
                this.b.a.add(new cw1((du3) it.next()));
            }
        }
        hd1 hd1Var = this.c.c;
        p41 p41VarA = br0Var.a();
        if (hd1Var.a(p41VarA)) {
            Iterator it2 = hd1Var.a.iterator();
            while (it2.hasNext()) {
                ((id1) it2.next()).a(p41VarA);
            }
        }
    }

    @Override // yads.dj2
    public final Object a(yp0 yp0Var, fs2 fs2Var) {
        Iterator it = f71.a(yp0Var.a).iterator();
        while (it.hasNext()) {
            b((br0) it.next(), fs2Var);
        }
        c(yp0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(wp0 wp0Var, fs2 fs2Var) {
        og1 og1Var = wp0Var.a;
        for (cn1 cn1Var : f71.a(og1Var.u, og1Var.s, fs2Var)) {
            b(cn1Var.a, cn1Var.b);
        }
        c(wp0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(cq0 cq0Var, fs2 fs2Var) {
        ur1 ur1Var = cq0Var.a;
        for (cn1 cn1Var : f71.a(ur1Var.t, ur1Var.r, fs2Var)) {
            b(cn1Var.a, cn1Var.b);
        }
        c(cq0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(iq0 iq0Var, fs2 fs2Var) {
        Iterator it = iq0Var.a.q.iterator();
        while (it.hasNext()) {
            b(((t52) it.next()).a, fs2Var);
        }
        c(iq0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(gq0 gq0Var, fs2 fs2Var) {
        Iterator it = gq0Var.a.I.iterator();
        while (it.hasNext()) {
            br0 br0Var = ((y22) it.next()).c;
            if (br0Var != null) {
                b(br0Var, fs2Var);
            }
        }
        c(gq0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(vp0 vp0Var, fs2 fs2Var) {
        List list = vp0Var.a.q;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                b((br0) it.next(), fs2Var);
            }
        }
        this.b.a.add(this.c.b.a());
        c(vp0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final /* bridge */ /* synthetic */ Object a(br0 br0Var, fs2 fs2Var) {
        c(br0Var, fs2Var);
        return j59.a;
    }

    @Override // yads.dj2
    public final Object a(up0 up0Var, fs2 fs2Var) {
        j81 j81Var = up0Var.a;
        for (cn1 cn1Var : f71.a(j81Var.B, j81Var.z, fs2Var)) {
            b(cn1Var.a, cn1Var.b);
        }
        c(up0Var, fs2Var);
        return j59.a;
    }
}
