package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class re {
    public static final q84 a(Context context, lm6 lm6Var) {
        if (r84.b == null) {
            synchronized (q84.e) {
                try {
                    if (r84.b == null) {
                        Context contextA = w60.a(context);
                        r84.b = r84.a(contextA, r84.a.a(contextA), lm6Var);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        q84 q84Var = r84.b;
        if (q84Var != null) {
            return q84Var;
        }
        defpackage.ah.f("Required value was null.");
        return null;
    }
}
