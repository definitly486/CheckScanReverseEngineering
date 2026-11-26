package yads;

import android.view.ViewGroup;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class a62 extends oq {
    public final cs4 A;
    public final m62 o;
    public final boolean p;
    public tt q;
    public final qh2 r;
    public final w41 s;
    public final e62 t;
    public final z52 u;
    public n32 v;
    public final rt1 w;
    public final LinkedHashMap x;
    public final LinkedHashMap y;
    public List z;

    public a62(qg6 qg6Var, m62 m62Var, nq nqVar, a93 a93Var, boolean z, tt ttVar, pu5 pu5Var, qh2 qh2Var, w41 w41Var, e62 e62Var, z52 z52Var, n32 n32Var, rt1 rt1Var) {
        super(qg6Var, m62Var, nqVar, a93Var, pu5Var, e62Var, e62Var, z52Var);
        this.o = m62Var;
        this.p = z;
        this.q = ttVar;
        this.r = qh2Var;
        this.s = w41Var;
        this.t = e62Var;
        this.u = z52Var;
        this.v = n32Var;
        this.w = rt1Var;
        this.x = new LinkedHashMap();
        this.y = new LinkedHashMap();
        this.z = defpackage.kx2.b;
        this.A = new cs4(this.c);
    }

    public final void a(lq lqVar, int i) {
        this.z = du1.a(du1.a, lqVar.a(), new defpackage.o44(3));
        a(lqVar, this.q.b, s55.a(this.o));
        this.x.clear();
        this.c.setCurrentItem(i, true);
    }

    public final cs4 c() {
        return this.A;
    }

    public final void d() {
        for (Map.Entry entry : this.x.entrySet()) {
            ViewGroup viewGroup = (ViewGroup) entry.getKey();
            ou5 ou5Var = (ou5) entry.getValue();
            int i = ou5Var.a;
            LinkedHashMap linkedHashMap = this.y;
            Object obj = this.z.get(i);
            Object objA = linkedHashMap.get(obj);
            if (objA == null) {
                objA = this.v.a((String) this.z.get(i));
                linkedHashMap.put(obj, objA);
            }
            this.s.a(this.q, ou5Var.c, ou5Var.b, (n32) objA);
            viewGroup.requestLayout();
        }
    }

    public static final br0 a(t02 t02Var) {
        return t02Var.a.a;
    }
}
