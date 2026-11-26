package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class ce4 {
    public final bf5 a;

    public ce4(bf5 bf5Var) {
        this.a = bf5Var;
    }

    public final rt a(Context context, ee4 ee4Var, hm4 hm4Var, fm4 fm4Var, of4 of4Var, sz2 sz2Var, sd4 sd4Var, ba baVar) {
        yh4 yh4Var = yh4.b;
        if (yh4Var == null) {
            synchronized (yh4.a) {
                yh4Var = yh4.b;
                if (yh4Var == null) {
                    yh4Var = new yh4();
                    yh4.b = yh4Var;
                }
            }
        }
        ae4 ae4Var = new ae4(hm4Var.a, yh4Var);
        return new rt(ee4Var, new ch4(ae4Var, ee4Var.b), hm4Var, fm4Var, of4Var, new x5(sz2Var), new lh4(context, ae4Var, yh4Var), this.a, sd4Var, baVar);
    }
}
