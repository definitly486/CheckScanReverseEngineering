package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class rn4 {
    public final un4 a(Context context) {
        un4 un4Var;
        un4 un4Var2 = un4.e;
        if (un4Var2 != null) {
            return un4Var2;
        }
        synchronized (this) {
            un4Var = un4.e;
            if (un4Var == null) {
                un4Var = new un4(context.getApplicationContext());
                un4.e = un4Var;
            }
        }
        return un4Var;
    }
}
