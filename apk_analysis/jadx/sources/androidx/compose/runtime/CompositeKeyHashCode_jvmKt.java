package androidx.compose.runtime;

import defpackage.ga1;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositeKeyHashCode_jvmKt {
    public static final int CompositeKeyHashSizeBits = 64;
    public static final long EmptyCompositeKeyHashCode = 0;

    public static final long CompositeKeyHashCode(int i) {
        return i;
    }

    public static final long bottomUpCompoundWith(long j, int i, int i2) {
        return j ^ Long.rotateLeft(i, i2);
    }

    public static final long compoundWith(long j, int i, int i2) {
        return Long.rotateLeft(j, i2) ^ ((long) i);
    }

    public static final long toLong(long j) {
        return j;
    }

    public static final String toString(long j, int i) {
        ga1.b(i);
        String string = Long.toString(j, i);
        string.getClass();
        return string;
    }

    public static final long unCompoundWith(long j, int i, int i2) {
        return Long.rotateRight(j ^ ((long) i), i2);
    }

    public static final long bottomUpCompoundWith(long j, long j2, int i) {
        return j ^ Long.rotateLeft(j2, i);
    }
}
