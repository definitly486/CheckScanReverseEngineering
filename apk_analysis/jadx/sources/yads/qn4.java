package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qn4 {
    public static final Object a = new Object();
    public static volatile e85 b;

    public static final e85 a(Context context) {
        e85 e85VarA;
        e85 e85Var = b;
        if (e85Var != null) {
            return e85Var;
        }
        synchronized (a) {
            e85VarA = b;
            if (e85VarA == null) {
                e85VarA = f85.a(context, in4.a(context));
                b = e85VarA;
                e85VarA.a();
            }
        }
        return e85VarA;
    }
}
