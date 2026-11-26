package yads;

import android.app.Activity;
import android.view.ViewGroup;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class sr3 {
    public final d9 a;
    public final m2 b;
    public final i2 c;
    public final int d;
    public final x2 e;
    public final e4 f;
    public final bf5 g;
    public final tr3 h;
    public final ms3 i;
    public final jd0 j;

    public sr3(Activity activity, d9 d9Var, m2 m2Var, i2 i2Var, int i, x2 x2Var, e4 e4Var, bf5 bf5Var) {
        tr3 tr3Var = new tr3();
        ms3 ms3Var = new ms3(bf5Var);
        bf5Var.getClass();
        jd0 jd0Var = new jd0(re.a(activity, new lm6(((do6) bf5Var).a)), new e95().b(e4Var, d9Var));
        this.a = d9Var;
        this.b = m2Var;
        this.c = i2Var;
        this.d = i;
        this.e = x2Var;
        this.f = e4Var;
        this.g = bf5Var;
        this.h = tr3Var;
        this.i = ms3Var;
        this.j = jd0Var;
    }

    public final rr3 a(Activity activity, ViewGroup viewGroup, pg4 pg4Var, h80 h80Var, b4 b4Var, oa5 oa5Var, bx5 bx5Var, ln1 ln1Var, fo1 fo1Var, u6 u6Var) {
        mr3 mr3VarA = this.i.a(activity, this.a, pg4Var, h80Var, this.b, b4Var);
        e4 e4Var = this.f;
        bf5 bf5Var = this.g;
        d9 d9Var = this.a;
        x2 x2Var = this.e;
        int i = this.d;
        List listA = (d9Var.a == n70.REWARDED ? new db5(e4Var, bf5Var, x2Var, i) : new wp3(e4Var, bf5Var, x2Var, i)).a(activity, this.a, pg4Var, this.b, this.c, this.j, b4Var, oa5Var, bx5Var, ln1Var, fo1Var, u6Var);
        tr3 tr3Var = this.h;
        d9 d9Var2 = this.a;
        m2 m2Var = this.b;
        tr3Var.getClass();
        ArrayList arrayList = new ArrayList(defpackage.kn1.q(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            m2 m2Var2 = m2Var;
            arrayList.add(((k13) it.next()).a(activity, d9Var2, pg4Var, m2Var2, h80Var));
            m2Var = m2Var2;
        }
        return new rr3(activity, viewGroup, defpackage.qn1.h0(arrayList, u96.j(mr3VarA)));
    }
}
