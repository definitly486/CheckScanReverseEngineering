package yads;

import android.view.View;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class oh2 {
    public final v41 a;

    public oh2(v41 v41Var) {
        this.a = v41Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(tt ttVar, View view, br0 br0Var, n32 n32Var) {
        oh2 oh2Var;
        View view2;
        j59 j59Var;
        view.getClass();
        br0 br0VarA = ((wh1) view).a();
        if (br0Var == br0VarA) {
            return;
        }
        this.a.a(ttVar, view, br0Var, br0VarA);
        if (n32Var != null) {
            p41 p41VarA = br0Var.a();
            p41VarA.getClass();
            a(view, ttVar, p41VarA, br0VarA != null ? br0VarA.a() : null, n32Var);
            j59Var = j59.a;
            this = this;
            view2 = view;
        } else {
            oh2Var = this;
            ttVar = ttVar;
            view2 = view;
            j59Var = null;
        }
        if (j59Var == null) {
            p41 p41VarA2 = br0Var.a();
            p41VarA2.getClass();
            oh2Var.a(view2, ttVar, p41VarA2, br0VarA != null ? br0VarA.a() : null);
        }
    }

    public final void a(tt ttVar, ds1 ds1Var, aq0 aq0Var) {
        a(ttVar, ds1Var, aq0Var, (n32) null);
    }

    public void a(View view, tt ttVar, p41 p41Var, p41 p41Var2) {
    }

    public void a(View view, tt ttVar, p41 p41Var, p41 p41Var2, n32 n32Var) {
        a(view, ttVar, p41Var, p41Var2);
    }
}
