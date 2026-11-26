package androidx.compose.ui.unit;

import androidx.compose.ui.util.MathHelpersKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class TextUnitKt {
    private static final long UNIT_MASK = 1095216660480L;
    private static final long UNIT_TYPE_EM = 8589934592L;
    private static final long UNIT_TYPE_SP = 4294967296L;
    private static final long UNIT_TYPE_UNSPECIFIED = 0;

    /* JADX INFO: renamed from: TextUnit-anM5pPY, reason: not valid java name */
    public static final long m9248TextUnitanM5pPY(float f, long j) {
        return pack(j, f);
    }

    /* JADX INFO: renamed from: checkArithmetic--R2X_6o, reason: not valid java name */
    public static final void m9249checkArithmeticR2X_6o(long j) {
        if (TextUnit.m9234getRawTypeimpl(j) == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for Unspecified type.");
        }
    }

    /* JADX INFO: renamed from: checkArithmetic-NB67dxo, reason: not valid java name */
    public static final void m9250checkArithmeticNB67dxo(long j, long j2) {
        if (!((TextUnit.m9234getRawTypeimpl(j) == 0 || TextUnit.m9234getRawTypeimpl(j2) == 0) ? false : true)) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for Unspecified type.");
        }
        if (TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(j), TextUnit.m9235getTypeUIouoOA(j2))) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for " + ((Object) TextUnitType.m9266toStringimpl(TextUnit.m9235getTypeUIouoOA(j))) + " and " + ((Object) TextUnitType.m9266toStringimpl(TextUnit.m9235getTypeUIouoOA(j2))));
    }

    /* JADX INFO: renamed from: checkArithmetic-vU-0ePk, reason: not valid java name */
    public static final void m9251checkArithmeticvU0ePk(long j, long j2, long j3) {
        boolean z = false;
        if (!((TextUnit.m9234getRawTypeimpl(j) == 0 || TextUnit.m9234getRawTypeimpl(j2) == 0 || TextUnit.m9234getRawTypeimpl(j3) == 0) ? false : true)) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for Unspecified type.");
        }
        if (TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(j), TextUnit.m9235getTypeUIouoOA(j2)) && TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(j2), TextUnit.m9235getTypeUIouoOA(j3))) {
            z = true;
        }
        if (z) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for " + ((Object) TextUnitType.m9266toStringimpl(TextUnit.m9235getTypeUIouoOA(j))) + " and " + ((Object) TextUnitType.m9266toStringimpl(TextUnit.m9235getTypeUIouoOA(j2))));
    }

    public static final long getEm(double d) {
        return pack(UNIT_TYPE_EM, (float) d);
    }

    public static /* synthetic */ void getEm$annotations(double d) {
    }

    public static /* synthetic */ void getEm$annotations(float f) {
    }

    public static final long getSp(double d) {
        return pack(UNIT_TYPE_SP, (float) d);
    }

    public static /* synthetic */ void getSp$annotations(double d) {
    }

    public static /* synthetic */ void getSp$annotations(float f) {
    }

    /* JADX INFO: renamed from: isSpecified--R2X_6o, reason: not valid java name */
    public static final boolean m9252isSpecifiedR2X_6o(long j) {
        return !(TextUnit.m9234getRawTypeimpl(j) == 0);
    }

    /* JADX INFO: renamed from: isSpecified--R2X_6o$annotations, reason: not valid java name */
    public static /* synthetic */ void m9253isSpecifiedR2X_6o$annotations(long j) {
    }

    /* JADX INFO: renamed from: isUnspecified--R2X_6o, reason: not valid java name */
    public static final boolean m9254isUnspecifiedR2X_6o(long j) {
        return TextUnit.m9234getRawTypeimpl(j) == 0;
    }

    /* JADX INFO: renamed from: isUnspecified--R2X_6o$annotations, reason: not valid java name */
    public static /* synthetic */ void m9255isUnspecifiedR2X_6o$annotations(long j) {
    }

    /* JADX INFO: renamed from: lerp-C3pnCVY, reason: not valid java name */
    public static final long m9256lerpC3pnCVY(long j, long j2, float f) {
        m9250checkArithmeticNB67dxo(j, j2);
        return pack(TextUnit.m9234getRawTypeimpl(j), MathHelpersKt.lerp(TextUnit.m9236getValueimpl(j), TextUnit.m9236getValueimpl(j2), f));
    }

    public static final long pack(long j, float f) {
        return TextUnit.m9228constructorimpl(j | (((long) Float.floatToRawIntBits(f)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: takeOrElse-eAf_CNQ, reason: not valid java name */
    public static final long m9257takeOrElseeAf_CNQ(long j, ll3<TextUnit> ll3Var) {
        return !((TextUnit.m9234getRawTypeimpl(j) > 0L ? 1 : (TextUnit.m9234getRawTypeimpl(j) == 0L ? 0 : -1)) == 0) ? j : ll3Var.invoke().m9245unboximpl();
    }

    /* JADX INFO: renamed from: times-mpE4wyQ, reason: not valid java name */
    public static final long m9258timesmpE4wyQ(double d, long j) {
        m9249checkArithmeticR2X_6o(j);
        return pack(TextUnit.m9234getRawTypeimpl(j), TextUnit.m9236getValueimpl(j) * ((float) d));
    }

    public static /* synthetic */ void getEm$annotations(int i) {
    }

    public static /* synthetic */ void getSp$annotations(int i) {
    }

    public static final long getEm(float f) {
        return pack(UNIT_TYPE_EM, f);
    }

    public static final long getSp(float f) {
        return pack(UNIT_TYPE_SP, f);
    }

    public static final long getEm(int i) {
        return pack(UNIT_TYPE_EM, i);
    }

    public static final long getSp(int i) {
        return pack(UNIT_TYPE_SP, i);
    }

    /* JADX INFO: renamed from: times-mpE4wyQ, reason: not valid java name */
    public static final long m9259timesmpE4wyQ(float f, long j) {
        m9249checkArithmeticR2X_6o(j);
        return pack(TextUnit.m9234getRawTypeimpl(j), TextUnit.m9236getValueimpl(j) * f);
    }

    /* JADX INFO: renamed from: times-mpE4wyQ, reason: not valid java name */
    public static final long m9260timesmpE4wyQ(int i, long j) {
        m9249checkArithmeticR2X_6o(j);
        return pack(TextUnit.m9234getRawTypeimpl(j), TextUnit.m9236getValueimpl(j) * i);
    }
}
