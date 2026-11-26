package androidx.compose.ui.unit;

import defpackage.ah;

/* JADX INFO: loaded from: classes2.dex */
public interface FontScalingLinear {

    public static final class DefaultImpls {
        public static /* synthetic */ void getFontScale$annotations() {
        }

        @Deprecated
        /* JADX INFO: renamed from: toDp-GaN1DYA, reason: not valid java name */
        public static float m9159toDpGaN1DYA(FontScalingLinear fontScalingLinear, long j) {
            return FontScalingLinear.super.m9157toDpGaN1DYA(j);
        }

        @Deprecated
        /* JADX INFO: renamed from: toSp-0xMU5do, reason: not valid java name */
        public static long m9160toSp0xMU5do(FontScalingLinear fontScalingLinear, float f) {
            return FontScalingLinear.super.m9158toSp0xMU5do(f);
        }
    }

    float getFontScale();

    /* JADX INFO: renamed from: toDp-GaN1DYA, reason: not valid java name */
    default float m9157toDpGaN1DYA(long j) {
        if (TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(j), TextUnitType.Companion.m9269getSpUIouoOA())) {
            return Dp.m9042constructorimpl(getFontScale() * TextUnit.m9236getValueimpl(j));
        }
        ah.f("Only Sp can convert to Px");
        return 0.0f;
    }

    /* JADX INFO: renamed from: toSp-0xMU5do, reason: not valid java name */
    default long m9158toSp0xMU5do(float f) {
        return TextUnitKt.getSp(f / getFontScale());
    }
}
