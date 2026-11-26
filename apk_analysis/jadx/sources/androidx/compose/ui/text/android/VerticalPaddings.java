package androidx.compose.ui.text.android;

import androidx.media3.muxer.MuxerUtil;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class VerticalPaddings {
    private final long packedValue;

    private /* synthetic */ VerticalPaddings(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ VerticalPaddings m8538boximpl(long j) {
        return new VerticalPaddings(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m8539constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m8540equalsimpl(long j, Object obj) {
        return (obj instanceof VerticalPaddings) && j == ((VerticalPaddings) obj).m8546unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m8541equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getBottomPadding-impl, reason: not valid java name */
    public static final int m8542getBottomPaddingimpl(long j) {
        return (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    /* JADX INFO: renamed from: getTopPadding-impl, reason: not valid java name */
    public static final int m8543getTopPaddingimpl(long j) {
        return (int) (j >> 32);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m8544hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m8545toStringimpl(long j) {
        return rg.g("VerticalPaddings(packedValue=", j, ')');
    }

    public boolean equals(Object obj) {
        return m8540equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m8544hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m8545toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m8546unboximpl() {
        return this.packedValue;
    }
}
