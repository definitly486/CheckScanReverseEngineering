package androidx.compose.ui.internal;

import defpackage.ag;
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
        throw ag.e(ll3Var.invoke());
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

    public static final void throwIndexOutOfBoundsException(String str) {
        throw new IndexOutOfBoundsException(str);
    }

    public static final void throwUnsupportedOperationException(String str) {
        throw new UnsupportedOperationException(str);
    }

    public static final void checkPrecondition(boolean z) {
        if (z) {
            return;
        }
        throwIllegalStateException("Check failed.");
    }

    public static final <T> T checkPreconditionNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw ag.e("Required value was null.");
    }
}
