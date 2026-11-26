package androidx.compose.ui.unit;

import androidx.media3.muxer.MuxerUtil;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TextUnit {
    public static final Companion Companion = new Companion(null);
    private static final TextUnitType[] TextUnitTypes;
    private static final long Unspecified;
    private final long packedValue;

    static {
        TextUnitType.Companion companion = TextUnitType.Companion;
        TextUnitTypes = new TextUnitType[]{TextUnitType.m9261boximpl(companion.m9270getUnspecifiedUIouoOA()), TextUnitType.m9261boximpl(companion.m9269getSpUIouoOA()), TextUnitType.m9261boximpl(companion.m9268getEmUIouoOA())};
        Unspecified = TextUnitKt.pack(0L, Float.NaN);
    }

    private /* synthetic */ TextUnit(long j) {
        this.packedValue = j;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ TextUnit m9226boximpl(long j) {
        return new TextUnit(j);
    }

    /* JADX INFO: renamed from: compareTo--R2X_6o, reason: not valid java name */
    public static final int m9227compareToR2X_6o(long j, long j2) {
        TextUnitKt.m9250checkArithmeticNB67dxo(j, j2);
        return Float.compare(m9236getValueimpl(j), m9236getValueimpl(j2));
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static long m9228constructorimpl(long j) {
        return j;
    }

    /* JADX INFO: renamed from: div-kPz2Gy4, reason: not valid java name */
    public static final long m9229divkPz2Gy4(long j, double d) {
        TextUnitKt.m9249checkArithmeticR2X_6o(j);
        return TextUnitKt.pack(m9234getRawTypeimpl(j), (float) (((double) m9236getValueimpl(j)) / d));
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m9232equalsimpl(long j, Object obj) {
        return (obj instanceof TextUnit) && j == ((TextUnit) obj).m9245unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m9233equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getRawType$annotations() {
    }

    /* JADX INFO: renamed from: getRawType-impl, reason: not valid java name */
    public static final long m9234getRawTypeimpl(long j) {
        return j & 1095216660480L;
    }

    /* JADX INFO: renamed from: getType-UIouoOA, reason: not valid java name */
    public static final long m9235getTypeUIouoOA(long j) {
        return TextUnitTypes[(int) (m9234getRawTypeimpl(j) >>> 32)].m9267unboximpl();
    }

    /* JADX INFO: renamed from: getValue-impl, reason: not valid java name */
    public static final float m9236getValueimpl(long j) {
        return Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m9237hashCodeimpl(long j) {
        return Long.hashCode(j);
    }

    /* JADX INFO: renamed from: isEm-impl, reason: not valid java name */
    public static final boolean m9238isEmimpl(long j) {
        return m9234getRawTypeimpl(j) == 8589934592L;
    }

    /* JADX INFO: renamed from: isSp-impl, reason: not valid java name */
    public static final boolean m9239isSpimpl(long j) {
        return m9234getRawTypeimpl(j) == 4294967296L;
    }

    /* JADX INFO: renamed from: times-kPz2Gy4, reason: not valid java name */
    public static final long m9240timeskPz2Gy4(long j, double d) {
        TextUnitKt.m9249checkArithmeticR2X_6o(j);
        return TextUnitKt.pack(m9234getRawTypeimpl(j), (float) (((double) m9236getValueimpl(j)) * d));
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m9243toStringimpl(long j) {
        long jM9235getTypeUIouoOA = m9235getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9270getUnspecifiedUIouoOA())) {
            return "Unspecified";
        }
        if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
            return m9236getValueimpl(j) + ".sp";
        }
        if (!TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA())) {
            return "Invalid";
        }
        return m9236getValueimpl(j) + ".em";
    }

    /* JADX INFO: renamed from: unaryMinus-XSAIIZE, reason: not valid java name */
    public static final long m9244unaryMinusXSAIIZE(long j) {
        TextUnitKt.m9249checkArithmeticR2X_6o(j);
        return TextUnitKt.pack(m9234getRawTypeimpl(j), -m9236getValueimpl(j));
    }

    public boolean equals(Object obj) {
        return m9232equalsimpl(this.packedValue, obj);
    }

    public int hashCode() {
        return m9237hashCodeimpl(this.packedValue);
    }

    public String toString() {
        return m9243toStringimpl(this.packedValue);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m9245unboximpl() {
        return this.packedValue;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getUnspecified-XSAIIZE$annotations, reason: not valid java name */
        public static /* synthetic */ void m9246getUnspecifiedXSAIIZE$annotations() {
        }

        public final TextUnitType[] getTextUnitTypes$ui_unit() {
            return TextUnit.TextUnitTypes;
        }

        /* JADX INFO: renamed from: getUnspecified-XSAIIZE, reason: not valid java name */
        public final long m9247getUnspecifiedXSAIIZE() {
            return TextUnit.Unspecified;
        }

        private Companion() {
        }
    }

    /* JADX INFO: renamed from: div-kPz2Gy4, reason: not valid java name */
    public static final long m9230divkPz2Gy4(long j, float f) {
        TextUnitKt.m9249checkArithmeticR2X_6o(j);
        return TextUnitKt.pack(m9234getRawTypeimpl(j), m9236getValueimpl(j) / f);
    }

    /* JADX INFO: renamed from: times-kPz2Gy4, reason: not valid java name */
    public static final long m9241timeskPz2Gy4(long j, float f) {
        TextUnitKt.m9249checkArithmeticR2X_6o(j);
        return TextUnitKt.pack(m9234getRawTypeimpl(j), m9236getValueimpl(j) * f);
    }

    /* JADX INFO: renamed from: div-kPz2Gy4, reason: not valid java name */
    public static final long m9231divkPz2Gy4(long j, int i) {
        TextUnitKt.m9249checkArithmeticR2X_6o(j);
        return TextUnitKt.pack(m9234getRawTypeimpl(j), m9236getValueimpl(j) / i);
    }

    /* JADX INFO: renamed from: times-kPz2Gy4, reason: not valid java name */
    public static final long m9242timeskPz2Gy4(long j, int i) {
        TextUnitKt.m9249checkArithmeticR2X_6o(j);
        return TextUnitKt.pack(m9234getRawTypeimpl(j), m9236getValueimpl(j) * i);
    }
}
