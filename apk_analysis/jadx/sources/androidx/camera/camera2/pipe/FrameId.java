package androidx.camera.camera2.pipe;

import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class FrameId {
    private final long value;

    private /* synthetic */ FrameId(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ FrameId m454boximpl(long j) {
        return new FrameId(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m455constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m456equalsimpl(long j, Object obj) {
        return (obj instanceof FrameId) && j == ((FrameId) obj).m460unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m457equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m458hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m459toStringimpl(long j) {
        return rg.g("FrameId(value=", j, ')');
    }

    public boolean equals(Object obj) {
        return m456equalsimpl(this.value, obj);
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return m458hashCodeimpl(this.value);
    }

    public String toString() {
        return m459toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m460unboximpl() {
        return this.value;
    }
}
