package androidx.compose.ui.text.internal;

import defpackage.h8;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class InlineClassHelperKt {
    public static final void checkPrecondition(boolean z, ll3<String> ll3Var) {
        if (z) {
            return;
        }
        throwIllegalStateException(ll3Var.invoke());
    }

    public static final <T> T checkPreconditionNotNull(T t, ll3<String> ll3Var) {
        if (t != null) {
            return t;
        }
        throwIllegalStateExceptionForNullCheck(ll3Var.invoke());
        h8.d();
        return null;
    }

    public static final void requirePrecondition(boolean z, ll3<String> ll3Var) {
        if (z) {
            return;
        }
        throwIllegalArgumentException(ll3Var.invoke());
    }

    public static final <T> T requirePreconditionNotNull(T t, ll3<String> ll3Var) {
        if (t != null) {
            return t;
        }
        throwIllegalArgumentExceptionForNullCheck(ll3Var.invoke());
        h8.d();
        return null;
    }

    public static final void throwIllegalArgumentException(String str) {
        throw new IllegalArgumentException(str);
    }

    public static final Void throwIllegalArgumentExceptionForNullCheck(String str) {
        throw new IllegalArgumentException(str);
    }

    public static final void throwIllegalStateException(String str) {
        throw new IllegalStateException(str);
    }

    public static final Void throwIllegalStateExceptionForNullCheck(String str) {
        throw new IllegalStateException(str);
    }
}
