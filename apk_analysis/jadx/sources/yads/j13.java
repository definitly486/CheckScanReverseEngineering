package yads;

import android.app.Activity;
import android.widget.RelativeLayout;

/* JADX INFO: loaded from: classes6.dex */
public final class j13 {
    public final d9 a;
    public final RelativeLayout b;
    public final bf5 c;
    public final bj4 d;
    public final sr3 e;
    public final c4 f;

    public j13(Activity activity, d9 d9Var, RelativeLayout relativeLayout, m2 m2Var, i2 i2Var, int i, x2 x2Var, e4 e4Var, bf5 bf5Var) {
        zg5 zg5Var;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        bj4 bj4Var = new bj4(x2Var, new z03(zg5Var2.a(activity)));
        sr3 sr3Var = new sr3(activity, d9Var, m2Var, i2Var, i, x2Var, e4Var, bf5Var);
        c4 c4Var = new c4(x2Var);
        this.a = d9Var;
        this.b = relativeLayout;
        this.c = bf5Var;
        this.d = bj4Var;
        this.e = sr3Var;
        this.f = c4Var;
    }
}
