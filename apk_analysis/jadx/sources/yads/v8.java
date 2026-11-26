package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class v8 {
    public final am0 a(Context context, int i) {
        Integer num;
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
        fe5 fe5VarA = zg5Var2.a(context);
        return new am0(i, 1.0f, (fe5VarA == null || (num = fe5VarA.M) == null) ? 0 : num.intValue());
    }
}
