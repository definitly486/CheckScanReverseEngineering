package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class mn2 {
    public final os5 a = new os5();

    public final String a(Context context, String str) {
        String strA;
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
        return (fe5VarA == null || !fe5VarA.B || (strA = this.a.a(context, str)) == null) ? str : strA;
    }
}
