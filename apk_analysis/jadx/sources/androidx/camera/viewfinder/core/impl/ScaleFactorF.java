package androidx.camera.viewfinder.core.impl;

import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
public final class ScaleFactorF {
    private final long packedScales;

    private /* synthetic */ ScaleFactorF(long j) {
        this.packedScales = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ScaleFactorF m1004boximpl(long j) {
        return new ScaleFactorF(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m1005constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1006equalsimpl(long j, Object obj) {
        return (obj instanceof ScaleFactorF) && j == ((ScaleFactorF) obj).m1012unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1007equalsimpl0(long j, long j2) {
        return j == j2;
    }

    /* JADX INFO: renamed from: getScaleX-impl, reason: not valid java name */
    public static final float m1008getScaleXimpl(long j) {
        return TransformationsKt.unpackFloat1(j);
    }

    /* JADX INFO: renamed from: getScaleY-impl, reason: not valid java name */
    public static final float m1009getScaleYimpl(long j) {
        return TransformationsKt.unpackFloat2(j);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1010hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1011toStringimpl(long j) {
        return rg.g("ScaleFactorF(packedScales=", j, ')');
    }

    public boolean equals(Object obj) {
        return m1006equalsimpl(this.packedScales, obj);
    }

    public int hashCode() {
        return m1010hashCodeimpl(this.packedScales);
    }

    public String toString() {
        return m1011toStringimpl(this.packedScales);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m1012unboximpl() {
        return this.packedScales;
    }
}
