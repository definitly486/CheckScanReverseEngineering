package yads;

import android.content.Context;
import defpackage.j59;

/* JADX INFO: loaded from: classes6.dex */
public abstract class q93 {
    public static final Object a = new Object();
    public static volatile c23 b;

    public static final c23 a(Context context) {
        if (b == null) {
            synchronized (a) {
                try {
                    if (b == null) {
                        b = new c23(context, "com.huawei.hms.location.LocationServices");
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        c23 c23Var = b;
        if (c23Var != null) {
            return c23Var;
        }
        defpackage.ah.f("Required value was null.");
        return null;
    }
}
