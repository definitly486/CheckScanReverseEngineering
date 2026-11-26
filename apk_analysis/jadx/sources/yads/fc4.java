package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class fc4 {
    public final gc4 a(Context context) {
        gc4 gc4Var;
        gc4 gc4Var2 = gc4.d;
        if (gc4Var2 != null) {
            return gc4Var2;
        }
        synchronized (this) {
            try {
                gc4Var = gc4.d;
                if (gc4Var == null) {
                    fe5 fe5VarA = yg5.a().a(context);
                    gc4Var = new gc4(fe5VarA != null ? fe5VarA.b : 0);
                    gc4.d = gc4Var;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return gc4Var;
    }
}
