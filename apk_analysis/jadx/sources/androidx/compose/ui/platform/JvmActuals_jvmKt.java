package androidx.compose.ui.platform;

import defpackage.ll3;
import defpackage.ul2;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class JvmActuals_jvmKt {
    public static final Object nativeClass(Object obj) {
        return obj.getClass();
    }

    public static final String simpleIdentityToString(Object obj, String str) {
        if (str == null) {
            str = obj.getClass().isAnonymousClass() ? obj.getClass().getName() : obj.getClass().getSimpleName();
        }
        return str + '@' + String.format("%07x", Arrays.copyOf(new Object[]{Integer.valueOf(System.identityHashCode(obj))}, 1));
    }

    @ul2
    /* JADX INFO: renamed from: synchronized, reason: not valid java name */
    public static final <R> R m8202synchronized(Object obj, ll3<? extends R> ll3Var) {
        R rInvoke;
        synchronized (obj) {
            rInvoke = ll3Var.invoke();
        }
        return rInvoke;
    }
}
