package yads;

import android.app.Activity;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class db5 implements qn0 {
    public final ta5 a;

    public db5(e4 e4Var, bf5 bf5Var, x2 x2Var, int i) {
        this.a = new ta5(e4Var, bf5Var, x2Var, i);
    }

    @Override // yads.qn0
    public final List a(Activity activity, d9 d9Var, pg4 pg4Var, m2 m2Var, i2 i2Var, jd0 jd0Var, b4 b4Var, oa5 oa5Var, bx5 bx5Var, ln1 ln1Var, fo1 fo1Var, u6 u6Var) {
        io1 io1Var;
        ArrayList arrayList = new ArrayList();
        ta5 ta5Var = this.a;
        ta5Var.getClass();
        try {
            if (!ta5Var.e.a(activity) || fo1Var == null) {
                io1Var = null;
            } else {
                io1Var = new io1(fo1Var, ta5Var.a, ta5Var.b, ta5.a(d9Var, pg4Var, i2Var, b4Var, oa5Var, bx5Var, fo1Var, u6Var), ta5Var.c, ln1Var, ta5Var.d);
            }
        } catch (Throwable unused) {
        }
        if (io1Var != null) {
            arrayList.add(io1Var);
        }
        return arrayList;
    }
}
