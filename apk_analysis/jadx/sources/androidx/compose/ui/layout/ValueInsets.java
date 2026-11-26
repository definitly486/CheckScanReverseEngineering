package androidx.compose.ui.layout;

import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class ValueInsets {
    private final long packedValue;

    private /* synthetic */ ValueInsets(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ValueInsets m7835boximpl(long j) {
        return new ValueInsets(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m7836constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7837equalsimpl(long j, Object obj) {
        return (obj instanceof ValueInsets) && j == ((ValueInsets) obj).m7845unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7838equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getBottom-impl, reason: not valid java name */
    public static final int m7839getBottomimpl(long j) {
        return (int) (j & 65535);
    }

    /* JADX INFO: renamed from: getLeft-impl, reason: not valid java name */
    public static final int m7840getLeftimpl(long j) {
        return (int) ((j >>> 48) & 65535);
    }

    /* JADX INFO: renamed from: getRight-impl, reason: not valid java name */
    public static final int m7841getRightimpl(long j) {
        return (int) ((j >>> 16) & 65535);
    }

    /* JADX INFO: renamed from: getTop-impl, reason: not valid java name */
    public static final int m7842getTopimpl(long j) {
        return (int) ((j >>> 32) & 65535);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7843hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7844toStringimpl(long j) {
        StringBuilder sb = new StringBuilder("ValueInsets(");
        sb.append((int) ((j >>> 48) & 65535));
        sb.append(", ");
        sb.append((int) ((j >>> 32) & 65535));
        sb.append(", ");
        sb.append((int) ((j >>> 16) & 65535));
        sb.append(", ");
        return rg.h(sb, (int) (j & 65535), ')');
    }

    public boolean equals(Object obj) {
        return m7837equalsimpl(this.packedValue, obj);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public int hashCode() {
        return m7843hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m7844toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m7845unboximpl() {
        return this.packedValue;
    }
}
