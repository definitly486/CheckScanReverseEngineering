package androidx.collection.internal;

import defpackage.ll3;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class RuntimeHelpersKt {
    public static final void checkPrecondition(boolean z, ll3<String> ll3Var) {
        ll3Var.getClass();
        if (z) {
            return;
        }
        throwIllegalStateException(ll3Var.invoke());
    }

    public static final void requirePrecondition(boolean z, ll3<String> ll3Var) {
        ll3Var.getClass();
        if (z) {
            return;
        }
        throwIllegalArgumentException(ll3Var.invoke());
    }

    public static final void throwIllegalArgumentException(String str) {
        str.getClass();
        throw new IllegalArgumentException(str);
    }

    public static final void throwIllegalStateException(String str) {
        str.getClass();
        throw new IllegalStateException(str);
    }

    public static final void throwIndexOutOfBoundsException(String str) {
        str.getClass();
        throw new IndexOutOfBoundsException(str);
    }

    public static final void throwNoSuchElementException(String str) {
        str.getClass();
        throw new NoSuchElementException(str);
    }

    public static final Void throwNoSuchElementExceptionForInline(String str) {
        str.getClass();
        throw new NoSuchElementException(str);
    }
}
