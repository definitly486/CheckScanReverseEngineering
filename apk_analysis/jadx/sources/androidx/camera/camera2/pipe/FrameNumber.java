package androidx.camera.camera2.pipe;

import defpackage.r01;

/* JADX INFO: loaded from: classes.dex */
public final class FrameNumber {
    private final long value;

    private /* synthetic */ FrameNumber(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FrameNumber m463boximpl(long j) {
        return new FrameNumber(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m464constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m465equalsimpl(long j, Object obj) {
        return (obj instanceof FrameNumber) && j == ((FrameNumber) obj).m469unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m466equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m467hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m468toStringimpl(long j) {
        return r01.c(j, "Frame-");
    }

    public boolean equals(Object obj) {
        return m465equalsimpl(this.value, obj);
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return m467hashCodeimpl(this.value);
    }

    public String toString() {
        return m468toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m469unboximpl() {
        return this.value;
    }
}
