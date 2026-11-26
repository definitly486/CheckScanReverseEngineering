package androidx.compose.animation.core;

import androidx.media3.muxer.MuxerUtil;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class Motion {
    private final long packedValue;

    private /* synthetic */ Motion(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ Motion m1217boximpl(long j) {
        return new Motion(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1218constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1219equalsimpl(long j, Object obj) {
        return (obj instanceof Motion) && j == ((Motion) obj).m1225unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1220equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getValue-impl, reason: not valid java name */
    public static final float m1221getValueimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* JADX INFO: renamed from: getVelocity-impl, reason: not valid java name */
    public static final float m1222getVelocityimpl(long j) {
        return Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1223hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1224toStringimpl(long j) {
        return rg.g("Motion(packedValue=", j, ')');
    }

    public boolean equals(Object obj) {
        return m1219equalsimpl(this.packedValue, obj);
    }

    public final long getPackedValue() {
        return this.packedValue;
    }

    public int hashCode() {
        return m1223hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m1224toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1225unboximpl() {
        return this.packedValue;
    }
}
