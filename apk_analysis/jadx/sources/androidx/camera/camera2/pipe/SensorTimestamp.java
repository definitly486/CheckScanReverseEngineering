package androidx.camera.camera2.pipe;

import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class SensorTimestamp {
    private final long value;

    private /* synthetic */ SensorTimestamp(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ SensorTimestamp m670boximpl(long j) {
        return new SensorTimestamp(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m671constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m672equalsimpl(long j, Object obj) {
        return (obj instanceof SensorTimestamp) && j == ((SensorTimestamp) obj).m676unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m673equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m674hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m675toStringimpl(long j) {
        return rg.g("SensorTimestamp(value=", j, ')');
    }

    public boolean equals(Object obj) {
        return m672equalsimpl(this.value, obj);
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return m674hashCodeimpl(this.value);
    }

    public String toString() {
        return m675toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m676unboximpl() {
        return this.value;
    }
}
