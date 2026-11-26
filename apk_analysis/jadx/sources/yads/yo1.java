package yads;

import defpackage.j59;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yo1 extends rd2 implements hs2 {
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();

    public final void a(x02 x02Var, fs2 fs2Var) {
        Object objA = x02Var.a();
        af1 af1Var = objA instanceof af1 ? (af1) objA : null;
        if (af1Var == null) {
            return;
        }
        as2 as2Var = af1Var.b;
        yr2 yr2Var = as2Var instanceof yr2 ? (yr2) as2Var : null;
        if (yr2Var == null) {
            return;
        }
        a(yr2Var.a(fs2Var, new defpackage.uh0(this, yr2Var, fs2Var, 1)));
    }

    @Override // yads.hs2
    public final List f() {
        return this.b;
    }

    @Override // yads.rd2
    public final j59 a(br0 br0Var, tt ttVar, n32 n32Var) {
        p41 p41VarA = br0Var.a();
        fs2 fs2Var = ttVar.b;
        a(p41VarA.getWidth(), fs2Var);
        a(p41VarA.getHeight(), fs2Var);
        return j59.a;
    }

    public static final j59 a(yo1 yo1Var, yr2 yr2Var, fs2 fs2Var, long j) {
        yo1Var.a.addAll(yr2Var.b(fs2Var));
        return j59.a;
    }
}
