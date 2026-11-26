package yads;

import android.content.Context;

/* JADX INFO: loaded from: classes6.dex */
public final class s0 {
    public static Boolean a;

    public static boolean a(Context context) {
        Boolean bool = a;
        if (bool != null) {
            return bool.booleanValue();
        }
        r0.a(context);
        Boolean bool2 = a;
        bool2.getClass();
        return bool2.booleanValue();
    }
}
