package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.SolidColor;
import defpackage.al5;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nf0;

/* JADX INFO: loaded from: classes2.dex */
public interface TextForegroundStyle {
    public static final Companion Companion = Companion.$$INSTANCE;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final TextForegroundStyle from(Brush brush, float f) {
            if (brush == null) {
                return Unspecified.INSTANCE;
            }
            if (brush instanceof SolidColor) {
                return m8947from8_81llA(TextDrawStyleKt.m8946modulateDxMtmZc(((SolidColor) brush).m6588getValue0d7_KjU(), f));
            }
            if (brush instanceof ShaderBrush) {
                return new BrushStyle((ShaderBrush) brush, f);
            }
            me0.e();
            return null;
        }

        /* JADX INFO: renamed from: from-8_81llA, reason: not valid java name */
        public final TextForegroundStyle m8947from8_81llA(long j) {
            return j != 16 ? new ColorStyle(j, null) : Unspecified.INSTANCE;
        }
    }

    public static final class Unspecified implements TextForegroundStyle {
        public static final int $stable = 0;
        public static final Unspecified INSTANCE = new Unspecified();

        private Unspecified() {
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public float getAlpha() {
            return Float.NaN;
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        public Brush getBrush() {
            return null;
        }

        @Override // androidx.compose.ui.text.style.TextForegroundStyle
        /* JADX INFO: renamed from: getColor-0d7_KjU */
        public long mo8800getColor0d7_KjU() {
            return Color.Companion.m6268getUnspecified0d7_KjU();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static float merge$lambda$0(TextForegroundStyle textForegroundStyle) {
        return ((BrushStyle) textForegroundStyle).getAlpha();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static TextForegroundStyle merge$lambda$1(TextForegroundStyle textForegroundStyle) {
        return textForegroundStyle;
    }

    float getAlpha();

    Brush getBrush();

    /* JADX INFO: renamed from: getColor-0d7_KjU */
    long mo8800getColor0d7_KjU();

    default TextForegroundStyle merge(TextForegroundStyle textForegroundStyle) {
        boolean z = textForegroundStyle instanceof BrushStyle;
        if (z && (this instanceof BrushStyle)) {
            BrushStyle brushStyle = (BrushStyle) textForegroundStyle;
            return new BrushStyle(brushStyle.getValue(), TextDrawStyleKt.takeOrElse(brushStyle.getAlpha(), new al5(this, 2)));
        }
        if (!z || (this instanceof BrushStyle)) {
            return (z || !(this instanceof BrushStyle)) ? textForegroundStyle.takeOrElse(new nf0(this, 4)) : this;
        }
        return textForegroundStyle;
    }

    default TextForegroundStyle takeOrElse(ll3<? extends TextForegroundStyle> ll3Var) {
        return !equals(Unspecified.INSTANCE) ? this : ll3Var.invoke();
    }
}
