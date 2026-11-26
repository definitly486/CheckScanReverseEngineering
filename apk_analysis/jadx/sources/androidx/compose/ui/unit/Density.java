package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.media3.muxer.MuxerUtil;

/* JADX INFO: loaded from: classes2.dex */
public interface Density extends FontScaling {
    float getDensity();

    /* JADX INFO: renamed from: roundToPx--R2X_6o */
    default int mo1427roundToPxR2X_6o(long j) {
        return Math.round(mo1433toPxR2X_6o(j));
    }

    /* JADX INFO: renamed from: roundToPx-0680j_4 */
    default int mo1428roundToPx0680j_4(float f) {
        float fMo1434toPx0680j_4 = mo1434toPx0680j_4(f);
        if (Float.isInfinite(fMo1434toPx0680j_4)) {
            return Integer.MAX_VALUE;
        }
        return Math.round(fMo1434toPx0680j_4);
    }

    /* JADX INFO: renamed from: toDp-u2uoSUM */
    default float mo1431toDpu2uoSUM(int i) {
        return Dp.m9042constructorimpl(i / getDensity());
    }

    /* JADX INFO: renamed from: toDpSize-k-rfVVM */
    default long mo1432toDpSizekrfVVM(long j) {
        return j != androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats ? DpKt.m9064DpSizeYgX7TsA(mo1430toDpu2uoSUM(Float.intBitsToFloat((int) (j >> 32))), mo1430toDpu2uoSUM(Float.intBitsToFloat((int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))) : DpSize.Companion.m9149getUnspecifiedMYxV2XQ();
    }

    /* JADX INFO: renamed from: toPx--R2X_6o */
    default float mo1433toPxR2X_6o(long j) {
        if (!TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(j), TextUnitType.Companion.m9269getSpUIouoOA())) {
            InlineClassHelperKt.throwIllegalStateException("Only Sp can convert to Px");
        }
        return mo1434toPx0680j_4(mo1429toDpGaN1DYA(j));
    }

    /* JADX INFO: renamed from: toPx-0680j_4 */
    default float mo1434toPx0680j_4(float f) {
        return getDensity() * f;
    }

    default Rect toRect(DpRect dpRect) {
        return new Rect(mo1434toPx0680j_4(dpRect.m9125getLeftD9Ej5fM()), mo1434toPx0680j_4(dpRect.m9127getTopD9Ej5fM()), mo1434toPx0680j_4(dpRect.m9126getRightD9Ej5fM()), mo1434toPx0680j_4(dpRect.m9124getBottomD9Ej5fM()));
    }

    /* JADX INFO: renamed from: toSize-XkaWNTQ */
    default long mo1435toSizeXkaWNTQ(long j) {
        if (j == androidx.compose.ui.geometry.InlineClassHelperKt.UnspecifiedPackedFloats) {
            return Size.Companion.m6064getUnspecifiedNHjbRc();
        }
        float fMo1434toPx0680j_4 = mo1434toPx0680j_4(DpSize.m9140getWidthD9Ej5fM(j));
        float fMo1434toPx0680j_5 = mo1434toPx0680j_4(DpSize.m9138getHeightD9Ej5fM(j));
        return Size.m6047constructorimpl((((long) Float.floatToRawIntBits(fMo1434toPx0680j_4)) << 32) | (((long) Float.floatToRawIntBits(fMo1434toPx0680j_5)) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: toSp-kPz2Gy4 */
    default long mo1438toSpkPz2Gy4(int i) {
        return mo1436toSp0xMU5do(mo1431toDpu2uoSUM(i));
    }

    public static final class DefaultImpls {
        public static /* synthetic */ void getDensity$annotations() {
        }

        @Deprecated
        /* JADX INFO: renamed from: roundToPx--R2X_6o, reason: not valid java name */
        public static int m9028roundToPxR2X_6o(Density density, long j) {
            return Density.super.mo1427roundToPxR2X_6o(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: roundToPx-0680j_4, reason: not valid java name */
        public static int m9029roundToPx0680j_4(Density density, float f) {
            return Density.super.mo1428roundToPx0680j_4(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-GaN1DYA, reason: not valid java name */
        public static float m9030toDpGaN1DYA(Density density, long j) {
            return Density.super.mo1429toDpGaN1DYA(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m9032toDpu2uoSUM(Density density, int i) {
            return Density.super.mo1431toDpu2uoSUM(i);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDpSize-k-rfVVM, reason: not valid java name */
        public static long m9033toDpSizekrfVVM(Density density, long j) {
            return Density.super.mo1432toDpSizekrfVVM(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toPx--R2X_6o, reason: not valid java name */
        public static float m9034toPxR2X_6o(Density density, long j) {
            return Density.super.mo1433toPxR2X_6o(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toPx-0680j_4, reason: not valid java name */
        public static float m9035toPx0680j_4(Density density, float f) {
            return Density.super.mo1434toPx0680j_4(f);
        }

        @Deprecated
        public static Rect toRect(Density density, DpRect dpRect) {
            return Density.super.toRect(dpRect);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSize-XkaWNTQ, reason: not valid java name */
        public static long m9036toSizeXkaWNTQ(Density density, long j) {
            return Density.super.mo1435toSizeXkaWNTQ(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-0xMU5do, reason: not valid java name */
        public static long m9037toSp0xMU5do(Density density, float f) {
            return Density.super.mo1436toSp0xMU5do(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m9039toSpkPz2Gy4(Density density, int i) {
            return Density.super.mo1438toSpkPz2Gy4(i);
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-u2uoSUM, reason: not valid java name */
        public static float m9031toDpu2uoSUM(Density density, float f) {
            return Density.super.mo1430toDpu2uoSUM(f);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-kPz2Gy4, reason: not valid java name */
        public static long m9038toSpkPz2Gy4(Density density, float f) {
            return Density.super.mo1437toSpkPz2Gy4(f);
        }
    }

    /* JADX INFO: renamed from: toSp-kPz2Gy4 */
    default long mo1437toSpkPz2Gy4(float f) {
        return mo1436toSp0xMU5do(mo1430toDpu2uoSUM(f));
    }

    /* JADX INFO: renamed from: toDp-u2uoSUM */
    default float mo1430toDpu2uoSUM(float f) {
        return Dp.m9042constructorimpl(f / getDensity());
    }
}
