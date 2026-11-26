package androidx.camera.camera2.pipe;

import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class CameraTimestamp {
    private final long value;

    private /* synthetic */ CameraTimestamp(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ CameraTimestamp m393boximpl(long j) {
        return new CameraTimestamp(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m394constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m395equalsimpl(long j, Object obj) {
        return (obj instanceof CameraTimestamp) && j == ((CameraTimestamp) obj).m399unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m396equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m397hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m398toStringimpl(long j) {
        return rg.g("CameraTimestamp(value=", j, ')');
    }

    public boolean equals(Object obj) {
        return m395equalsimpl(this.value, obj);
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return m397hashCodeimpl(this.value);
    }

    public String toString() {
        return m398toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m399unboximpl() {
        return this.value;
    }
}
