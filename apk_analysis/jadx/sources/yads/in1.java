package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class in1 {
    public final jn1 a(Context context) {
        jn1 jn1Var = jn1.d;
        if (jn1Var != null) {
            return jn1Var;
        }
        synchronized (this) {
            jn1 jn1Var2 = jn1.d;
            if (jn1Var2 != null) {
                return jn1Var2;
            }
            jn1 jn1Var3 = new jn1(context, jn1.c);
            jn1.d = jn1Var3;
            return jn1Var3;
        }
    }
}
