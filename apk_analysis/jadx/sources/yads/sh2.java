package yads;

import defpackage.j59;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class sh2 extends rd2 {
    public final xv1 a;
    public final dw1 b = new dw1();
    public final /* synthetic */ th2 c;

    public sh2(th2 th2Var, xv1 xv1Var, sv1 sv1Var) {
        this.c = th2Var;
        this.a = xv1Var;
    }

    public final void a(br0 br0Var, tt ttVar) {
        ArrayList arrayListA;
        ti1 ti1Var = this.c.a;
        if (ti1Var != null && (arrayListA = ti1Var.a(br0Var, ttVar.b, this.a)) != null) {
            Iterator it = arrayListA.iterator();
            while (it.hasNext()) {
                this.b.a.add(new cw1((du3) it.next()));
            }
        }
        hd1 hd1Var = this.c.c;
        p41 p41VarA = br0Var.a();
        fs2 fs2Var = ttVar.b;
        if (hd1Var.a(p41VarA)) {
            Iterator it2 = hd1Var.a.iterator();
            while (it2.hasNext()) {
                ((id1) it2.next()).a(p41VarA);
            }
        }
    }

    @Override // yads.rd2
    public final /* bridge */ /* synthetic */ j59 a(br0 br0Var, tt ttVar, n32 n32Var) {
        a(br0Var, ttVar);
        return j59.a;
    }

    @Override // yads.rd2
    public final Object a(vp0 vp0Var, tt ttVar, n32 n32Var) {
        super.a(vp0Var, ttVar, n32Var);
        this.b.a.add(this.c.b.a());
        return j59.a;
    }

    @Override // yads.rd2
    public final Object a(kq0 kq0Var, tt ttVar, n32 n32Var) {
        a(kq0Var, ttVar);
        if (yv1.a.a(kq0Var, ttVar.b)) {
            ArrayList arrayList = new ArrayList();
            Iterator it = kq0Var.a.Q.iterator();
            while (it.hasNext()) {
                arrayList.add(((ah2) it.next()).d.a(ttVar.b));
            }
            this.c.getClass();
            aw1.a.getClass();
            this.b.a.add(zv1.b);
        }
        return j59.a;
    }
}
