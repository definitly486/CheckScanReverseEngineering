package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class xk4 {
    public final ql0 a;
    public final wk4 b;

    public xk4(Context context, e4 e4Var, bf5 bf5Var, d9 d9Var) {
        br2 br2Var;
        this.a = new ql0(context.getApplicationContext(), e4Var, bf5Var, d9Var);
        br2 br2Var2 = br2.c;
        if (br2Var2 == null) {
            synchronized (br2.b) {
                br2Var = br2.c;
                if (br2Var == null) {
                    br2Var = new br2();
                    br2.c = br2Var;
                }
            }
            br2Var2 = br2Var;
        }
        this.b = new wk4(br2Var2);
    }
}
