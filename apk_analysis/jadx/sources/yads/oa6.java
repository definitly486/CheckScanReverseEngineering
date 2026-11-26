package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public abstract class oa6 {
    public static pa6 a(Context context) {
        pa6 pa6Var;
        pa6 pa6Var2 = pa6.c;
        if (pa6Var2 != null) {
            return pa6Var2;
        }
        synchronized (pa6.b) {
            pa6Var = pa6.c;
            if (pa6Var == null) {
                e85 e85VarA = cm6.a(context, 1);
                e85VarA.a(new t75());
                pa6Var = new pa6(e85VarA);
                pa6.c = pa6Var;
            }
        }
        return pa6Var;
    }
}
