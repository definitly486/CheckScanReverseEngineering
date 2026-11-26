package androidx.camera.viewfinder.core.impl;

import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class OffsetF {
    private final long packedOffsets;

    private /* synthetic */ OffsetF(long j) {
        this.packedOffsets = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ OffsetF m995boximpl(long j) {
        return new OffsetF(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m996constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m997equalsimpl(long j, Object obj) {
        return (obj instanceof OffsetF) && j == ((OffsetF) obj).m1003unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m998equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getX-impl, reason: not valid java name */
    public static final float m999getXimpl(long j) {
        return TransformationsKt.unpackFloat1(j);
    }

    /* JADX INFO: renamed from: getY-impl, reason: not valid java name */
    public static final float m1000getYimpl(long j) {
        return TransformationsKt.unpackFloat2(j);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1001hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1002toStringimpl(long j) {
        return rg.g("OffsetF(packedOffsets=", j, ')');
    }

    public boolean equals(Object obj) {
        return m997equalsimpl(this.packedOffsets, obj);
    }

    public int hashCode() {
        return m1001hashCodeimpl(this.packedOffsets);
    }

    public String toString() {
        return m1002toStringimpl(this.packedOffsets);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1003unboximpl() {
        return this.packedOffsets;
    }
}
