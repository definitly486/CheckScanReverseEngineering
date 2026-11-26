package androidx.compose.ui.graphics;

import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class InlineClassHelperKt {
    public static final void requirePrecondition(boolean z, ll3<String> ll3Var) {
        if (z) {
            return;
        }
        throwIllegalArgumentException(ll3Var.invoke());
    }

    public static final void throwIllegalArgumentException(String str) {
        throw new IllegalArgumentException(str);
    }
}
