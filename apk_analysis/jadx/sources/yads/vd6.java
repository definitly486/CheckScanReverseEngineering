package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class vd6 {
    public final wd6 a(Context context) {
        wd6 wd6Var;
        wd6 wd6Var2 = wd6.d;
        if (wd6Var2 != null) {
            return wd6Var2;
        }
        synchronized (this) {
            wd6Var = wd6.d;
            if (wd6Var == null) {
                wd6Var = new wd6(context);
                wd6.d = wd6Var;
            }
        }
        return wd6Var;
    }
}
