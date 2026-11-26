package androidx.camera.camera2.pipe.core;

import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class TimestampNs {
    private final long value;

    private /* synthetic */ TimestampNs(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TimestampNs m856boximpl(long j) {
        return new TimestampNs(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m857constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m858equalsimpl(long j, Object obj) {
        return (obj instanceof TimestampNs) && j == ((TimestampNs) obj).m864unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m859equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m860hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: minus-pEw-518, reason: not valid java name */
    public static final long m861minuspEw518(long j, long j2) {
        return DurationNs.m845constructorimpl(j - j2);
    }

    /* JADX INFO: renamed from: plus-rKz7-cU, reason: not valid java name */
    public static final long m862plusrKz7cU(long j, long j2) {
        return m857constructorimpl(j + j2);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m863toStringimpl(long j) {
        return rg.g("TimestampNs(value=", j, ')');
    }

    public boolean equals(Object obj) {
        return m858equalsimpl(this.value, obj);
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return m860hashCodeimpl(this.value);
    }

    public String toString() {
        return m863toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m864unboximpl() {
        return this.value;
    }
}
