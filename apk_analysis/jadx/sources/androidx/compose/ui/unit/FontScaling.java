package androidx.compose.ui.unit;

import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;

/* JADX INFO: loaded from: classes2.dex */
public interface FontScaling {

    public static final class DefaultImpls {
        public static /* synthetic */ void getFontScale$annotations() {
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-GaN1DYA, reason: not valid java name */
        public static float m9153toDpGaN1DYA(FontScaling fontScaling, long j) {
            return FontScaling.super.mo1429toDpGaN1DYA(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-0xMU5do, reason: not valid java name */
        public static long m9154toSp0xMU5do(FontScaling fontScaling, float f) {
            return FontScaling.super.mo1436toSp0xMU5do(f);
        }
    }

    float getFontScale();

    /* JADX INFO: renamed from: toDp-GaN1DYA */
    default float mo1429toDpGaN1DYA(long j) {
        if (!TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(j), TextUnitType.Companion.m9269getSpUIouoOA())) {
            InlineClassHelperKt.throwIllegalStateException("Only Sp can convert to Px");
        }
        FontScaleConverterFactory fontScaleConverterFactory = FontScaleConverterFactory.INSTANCE;
        if (!fontScaleConverterFactory.isNonLinearFontScalingActive(getFontScale())) {
            return Dp.m9042constructorimpl(getFontScale() * TextUnit.m9236getValueimpl(j));
        }
        FontScaleConverter fontScaleConverterForScale = fontScaleConverterFactory.forScale(getFontScale());
        if (fontScaleConverterForScale != null) {
            return Dp.m9042constructorimpl(fontScaleConverterForScale.convertSpToDp(TextUnit.m9236getValueimpl(j)));
        }
        return Dp.m9042constructorimpl(getFontScale() * TextUnit.m9236getValueimpl(j));
    }

    /* JADX INFO: renamed from: toSp-0xMU5do */
    default long mo1436toSp0xMU5do(float f) {
        FontScaleConverterFactory fontScaleConverterFactory = FontScaleConverterFactory.INSTANCE;
        if (!fontScaleConverterFactory.isNonLinearFontScalingActive(getFontScale())) {
            return TextUnitKt.getSp(f / getFontScale());
        }
        FontScaleConverter fontScaleConverterForScale = fontScaleConverterFactory.forScale(getFontScale());
        return TextUnitKt.getSp(fontScaleConverterForScale != null ? fontScaleConverterForScale.convertDpToSp(f) : f / getFontScale());
    }
}
