package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class eq4 {
    public final zg5 a;

    public eq4() {
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
        this.a = zg5Var2;
    }

    public final boolean a(Context context) {
        if (!ya.a(context)) {
            return false;
        }
        fe5 fe5VarA = this.a.a(context);
        return !(fe5VarA != null ? fe5VarA.w : true);
    }
}
