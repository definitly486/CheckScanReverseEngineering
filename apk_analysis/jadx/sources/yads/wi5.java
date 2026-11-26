package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class wi5 {
    public static final Object a = new Object();
    public static volatile xi5 b;

    public static xi5 a(Context context) {
        xi5 xi5Var;
        xi5 xi5Var2 = b;
        if (xi5Var2 != null) {
            return xi5Var2;
        }
        synchronized (a) {
            xi5Var = b;
            if (xi5Var == null) {
                xi5Var = new xi5(bv3.a(context, "YadPreferenceFile"));
                b = xi5Var;
            }
        }
        return xi5Var;
    }
}
