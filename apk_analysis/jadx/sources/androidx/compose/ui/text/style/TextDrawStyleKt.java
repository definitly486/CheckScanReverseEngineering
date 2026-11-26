package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.SpanStyleKt;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class TextDrawStyleKt {
    public static final TextForegroundStyle lerp(TextForegroundStyle textForegroundStyle, TextForegroundStyle textForegroundStyle2, float f) {
        boolean z = textForegroundStyle instanceof BrushStyle;
        if (!z && !(textForegroundStyle2 instanceof BrushStyle)) {
            return TextForegroundStyle.Companion.m8947from8_81llA(ColorKt.m6283lerpjxsXWHM(textForegroundStyle.mo8800getColor0d7_KjU(), textForegroundStyle2.mo8800getColor0d7_KjU(), f));
        }
        if (!z || !(textForegroundStyle2 instanceof BrushStyle)) {
            return (TextForegroundStyle) SpanStyleKt.lerpDiscrete(textForegroundStyle, textForegroundStyle2, f);
        }
        BrushStyle brushStyle = (BrushStyle) textForegroundStyle;
        BrushStyle brushStyle2 = (BrushStyle) textForegroundStyle2;
        return TextForegroundStyle.Companion.from((Brush) SpanStyleKt.lerpDiscrete(brushStyle.getBrush(), brushStyle2.getBrush(), f), MathHelpersKt.lerp(brushStyle.getAlpha(), brushStyle2.getAlpha(), f));
    }

    /* JADX INFO: renamed from: modulate-DxMtmZc, reason: not valid java name */
    public static final long m8946modulateDxMtmZc(long j, float f) {
        return (Float.isNaN(f) || f >= 1.0f) ? j : Color.m6231copywmQWz5c$default(j, Color.m6234getAlphaimpl(j) * f, 0.0f, 0.0f, 0.0f, 14, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float takeOrElse(float f, ll3<Float> ll3Var) {
        return Float.isNaN(f) ? ll3Var.invoke().floatValue() : f;
    }
}
