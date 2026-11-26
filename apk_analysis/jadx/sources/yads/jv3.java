package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class jv3 {
    public static kv3 a(Context context) {
        if (kv3.g == null) {
            synchronized (kv3.f) {
                try {
                    if (kv3.g == null) {
                        kv3.g = new kv3(context);
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        kv3 kv3Var = kv3.g;
        if (kv3Var != null) {
            return kv3Var;
        }
        defpackage.ah.f("Required value was null.");
        return null;
    }
}
