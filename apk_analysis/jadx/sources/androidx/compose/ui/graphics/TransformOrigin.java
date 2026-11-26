package androidx.compose.ui.graphics;

import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
public final class TransformOrigin {
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Center = TransformOriginKt.TransformOrigin(0.5f, 0.5f);

    private /* synthetic */ TransformOrigin(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TransformOrigin m6632boximpl(long j) {
        return new TransformOrigin(j);
    }

    /* JADX INFO: renamed from: component1-impl, reason: not valid java name */
    public static final float m6633component1impl(long j) {
        return m6640getPivotFractionXimpl(j);
    }

    /* JADX INFO: renamed from: component2-impl, reason: not valid java name */
    public static final float m6634component2impl(long j) {
        return m6641getPivotFractionYimpl(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m6635constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: copy-zey9I6w, reason: not valid java name */
    public static final long m6636copyzey9I6w(long j, float f, float f2) {
        return TransformOriginKt.TransformOrigin(f, f2);
    }

    /* JADX INFO: renamed from: copy-zey9I6w$default, reason: not valid java name */
    public static /* synthetic */ long m6637copyzey9I6w$default(long j, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = m6640getPivotFractionXimpl(j);
        }
        if ((i & 2) != 0) {
            f2 = m6641getPivotFractionYimpl(j);
        }
        return m6636copyzey9I6w(j, f, f2);
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6638equalsimpl(long j, Object obj) {
        return (obj instanceof TransformOrigin) && j == ((TransformOrigin) obj).m6644unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6639equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getPackedValue$annotations() {
    }

    /* JADX INFO: renamed from: getPivotFractionX-impl, reason: not valid java name */
    public static final float m6640getPivotFractionXimpl(long j) {
        return Float.intBitsToFloat((int) (j >> 32));
    }

    /* JADX INFO: renamed from: getPivotFractionY-impl, reason: not valid java name */
    public static final float m6641getPivotFractionYimpl(long j) {
        return Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6642hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6643toStringimpl(long j) {
        return rg.g("TransformOrigin(packedValue=", j, ')');
    }

    public boolean equals(Object obj) {
        return m6638equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m6642hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m6643toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m6644unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCenter-SzJe1aQ, reason: not valid java name */
        public final long m6645getCenterSzJe1aQ() {
            return TransformOrigin.Center;
        }

        private Companion() {
        }
    }
}
