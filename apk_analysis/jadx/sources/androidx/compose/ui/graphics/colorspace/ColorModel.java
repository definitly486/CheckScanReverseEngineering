package androidx.compose.ui.graphics.colorspace;

import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ColorModel {
    private final long packedValue;
    public static final Companion Companion = new Companion(null);
    private static final long Rgb = m6660constructorimpl(12884901888L);
    private static final long Xyz = m6660constructorimpl(12884901889L);
    private static final long Lab = m6660constructorimpl(12884901890L);
    private static final long Cmyk = m6660constructorimpl(17179869187L);

    private /* synthetic */ ColorModel(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ ColorModel m6659boximpl(long j) {
        return new ColorModel(j);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m6660constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m6661equalsimpl(long j, Object obj) {
        return (obj instanceof ColorModel) && j == ((ColorModel) obj).m6666unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m6662equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getComponentCount$annotations() {
    }

    /* JADX INFO: renamed from: getComponentCount-impl, reason: not valid java name */
    public static final int m6663getComponentCountimpl(long j) {
        return (int) (j >> 32);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m6664hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m6665toStringimpl(long j) {
        if (m6662equalsimpl0(j, Rgb)) {
            return "Rgb";
        }
        if (m6662equalsimpl0(j, Xyz)) {
            return "Xyz";
        }
        if (m6662equalsimpl0(j, Lab)) {
            return "Lab";
        }
        return m6662equalsimpl0(j, Cmyk) ? "Cmyk" : "Unknown";
    }

    public boolean equals(Object obj) {
        return m6661equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m6664hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m6665toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m6666unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getCmyk-xdoWZVw, reason: not valid java name */
        public final long m6667getCmykxdoWZVw() {
            return ColorModel.Cmyk;
        }

        /* JADX INFO: renamed from: getLab-xdoWZVw, reason: not valid java name */
        public final long m6668getLabxdoWZVw() {
            return ColorModel.Lab;
        }

        /* JADX INFO: renamed from: getRgb-xdoWZVw, reason: not valid java name */
        public final long m6669getRgbxdoWZVw() {
            return ColorModel.Rgb;
        }

        /* JADX INFO: renamed from: getXyz-xdoWZVw, reason: not valid java name */
        public final long m6670getXyzxdoWZVw() {
            return ColorModel.Xyz;
        }

        private Companion() {
        }
    }
}
