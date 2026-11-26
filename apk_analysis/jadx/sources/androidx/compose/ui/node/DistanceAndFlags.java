package androidx.compose.ui.node;

import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class DistanceAndFlags {
    private final long packedValue;

    private /* synthetic */ DistanceAndFlags(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ DistanceAndFlags m7891boximpl(long j) {
        return new DistanceAndFlags(j);
    }

    /* JADX INFO: renamed from: compareTo-9YPOF3E, reason: not valid java name */
    public static final int m7892compareTo9YPOF3E(long j, long j2) {
        boolean zM7899isInLayerimpl = m7899isInLayerimpl(j);
        if (zM7899isInLayerimpl != m7899isInLayerimpl(j2)) {
            return zM7899isInLayerimpl ? -1 : 1;
        }
        int iSignum = (int) Math.signum(m7896getDistanceimpl(j) - m7896getDistanceimpl(j2));
        if (Math.min(m7896getDistanceimpl(j), m7896getDistanceimpl(j2)) >= 0.0f && m7898isInExpandedBoundsimpl(j) != m7898isInExpandedBoundsimpl(j2)) {
            return m7898isInExpandedBoundsimpl(j) ? -1 : 1;
        }
        return iSignum;
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m7893constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m7894equalsimpl(long j, Object obj) {
        return (obj instanceof DistanceAndFlags) && j == ((DistanceAndFlags) obj).m7901unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m7895equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getDistance-impl, reason: not valid java name */
    public static final float m7896getDistanceimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m7897hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: isInExpandedBounds-impl, reason: not valid java name */
    public static final boolean m7898isInExpandedBoundsimpl(long j) {
        return (j & 2) != 0;
    }

    /* JADX INFO: renamed from: isInLayer-impl, reason: not valid java name */
    public static final boolean m7899isInLayerimpl(long j) {
        return (j & 1) != 0;
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m7900toStringimpl(long j) {
        return rg.g("DistanceAndFlags(packedValue=", j, ')');
    }

    public boolean equals(Object obj) {
        return m7894equalsimpl(this.packedValue, obj);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public int hashCode() {
        return m7897hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m7900toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m7901unboximpl() {
        return this.packedValue;
    }
}
