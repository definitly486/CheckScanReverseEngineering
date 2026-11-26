package androidx.compose.ui.unit;

import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class InlineClassHelperKt {
    public static final long DualFloatSignBit = -9223372034707292160L;

    public static final void checkPrecondition(boolean z, ll3<String> ll3Var) {
        if (z) {
            return;
        }
        throwIllegalStateException(ll3Var.invoke());
    }

    public static final void requirePrecondition(boolean z, ll3<String> ll3Var) {
        if (z) {
            return;
        }
        throwIllegalArgumentException(ll3Var.invoke());
    }

    public static final void throwIllegalArgumentException(String str) {
        throw new IllegalArgumentException(str);
    }

    public static final void throwIllegalStateException(String str) {
        throw new IllegalStateException(str);
    }
}
