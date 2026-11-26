package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class kf6 {
    public final no6 a;
    public final cm5 b;

    public kf6(no6 no6Var) {
        cm5 cm5Var = new cm5();
        this.a = no6Var;
        this.b = cm5Var;
    }

    public final jf6 a(Context context, ja6 ja6Var, jb6 jb6Var) {
        ff6 ff6Var = new ff6(context);
        hd6 hd6Var = new hd6(context);
        k50 k50Var = new k50();
        k50Var.a.add(new z90(ja6Var.a, ff6Var, hd6Var));
        k50Var.a.add(new hc6(ja6Var.b, ff6Var));
        mo6 mo6Var = this.a.a.a(context) ? new mo6(context, jb6Var, this.b.a(ja6Var.a), ja6Var.b.n) : null;
        if (mo6Var != null) {
            k50Var.a.add(mo6Var);
        }
        return new jf6(k50Var);
    }
}
