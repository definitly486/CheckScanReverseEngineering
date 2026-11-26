package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import defpackage.gh4;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class ColorVectorConverterKt$ColorToVector$1 extends gh4 implements nl3<ColorSpace, TwoWayConverter<Color, AnimationVector4D>> {
    public static final ColorVectorConverterKt$ColorToVector$1 INSTANCE = new ColorVectorConverterKt$ColorToVector$1();

    /* JADX INFO: renamed from: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1$1, reason: invalid class name */
    public static final class AnonymousClass1 extends gh4 implements nl3<Color, AnimationVector4D> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ AnimationVector4D invoke(Color color) {
            return m1088invoke8_81llA(color.m6242unboximpl());
        }

        /* JADX INFO: renamed from: invoke-8_81llA, reason: not valid java name */
        public final AnimationVector4D m1088invoke8_81llA(long j) {
            long jM6229convertvNxB06k = Color.m6229convertvNxB06k(j, ColorSpaces.INSTANCE.getOklab());
            return new AnimationVector4D(Color.m6234getAlphaimpl(jM6229convertvNxB06k), Color.m6238getRedimpl(jM6229convertvNxB06k), Color.m6237getGreenimpl(jM6229convertvNxB06k), Color.m6235getBlueimpl(jM6229convertvNxB06k));
        }
    }

    /* JADX INFO: renamed from: androidx.compose.animation.ColorVectorConverterKt$ColorToVector$1$2, reason: invalid class name */
    public static final class AnonymousClass2 extends gh4 implements nl3<AnimationVector4D, Color> {
        final /* synthetic */ ColorSpace $colorSpace;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(ColorSpace colorSpace) {
            super(1);
            this.$colorSpace = colorSpace;
        }

        @Override // defpackage.nl3
        public /* bridge */ /* synthetic */ Color invoke(AnimationVector4D animationVector4D) {
            return Color.m6222boximpl(m1089invokevNxB06k(animationVector4D));
        }

        /* JADX INFO: renamed from: invoke-vNxB06k, reason: not valid java name */
        public final long m1089invokevNxB06k(AnimationVector4D animationVector4D) {
            float v2 = animationVector4D.getV2();
            if (v2 < 0.0f) {
                v2 = 0.0f;
            }
            if (v2 > 1.0f) {
                v2 = 1.0f;
            }
            float v3 = animationVector4D.getV3();
            if (v3 < -0.5f) {
                v3 = -0.5f;
            }
            if (v3 > 0.5f) {
                v3 = 0.5f;
            }
            float v4 = animationVector4D.getV4();
            float f = v4 >= -0.5f ? v4 : -0.5f;
            float f2 = f <= 0.5f ? f : 0.5f;
            float v1 = animationVector4D.getV1();
            float f3 = v1 >= 0.0f ? v1 : 0.0f;
            return Color.m6229convertvNxB06k(ColorKt.Color(v2, v3, f2, f3 <= 1.0f ? f3 : 1.0f, ColorSpaces.INSTANCE.getOklab()), this.$colorSpace);
        }
    }

    public ColorVectorConverterKt$ColorToVector$1() {
        super(1);
    }

    @Override // defpackage.nl3
    public final TwoWayConverter<Color, AnimationVector4D> invoke(ColorSpace colorSpace) {
        return VectorConvertersKt.TwoWayConverter(AnonymousClass1.INSTANCE, new AnonymousClass2(colorSpace));
    }
}
