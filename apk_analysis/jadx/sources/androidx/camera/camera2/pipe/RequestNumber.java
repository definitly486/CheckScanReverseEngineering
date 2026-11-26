package androidx.camera.camera2.pipe;

import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class RequestNumber {
    private final long value;

    private /* synthetic */ RequestNumber(long j) {
        this.value = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ RequestNumber m639boximpl(long j) {
        return new RequestNumber(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m640constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m641equalsimpl(long j, Object obj) {
        return (obj instanceof RequestNumber) && j == ((RequestNumber) obj).m645unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m642equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m643hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m644toStringimpl(long j) {
        return rg.g("RequestNumber(value=", j, ')');
    }

    public boolean equals(Object obj) {
        return m641equalsimpl(this.value, obj);
    }

    public final long getValue() {
        return this.value;
    }

    public int hashCode() {
        return m643hashCodeimpl(this.value);
    }

    public String toString() {
        return m644toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m645unboximpl() {
        return this.value;
    }
}
