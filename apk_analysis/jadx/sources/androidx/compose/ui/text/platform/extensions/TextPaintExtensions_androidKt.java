package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import defpackage.aa4;
import defpackage.fm3;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class TextPaintExtensions_androidKt {
    public static final SpanStyle applySpanStyle(AndroidTextPaint androidTextPaint, SpanStyle spanStyle, fm3<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> fm3Var, Density density, boolean z) {
        long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(spanStyle.m8433getFontSizeXSAIIZE());
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
            androidTextPaint.setTextSize(density.mo1433toPxR2X_6o(spanStyle.m8433getFontSizeXSAIIZE()));
        } else if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA())) {
            androidTextPaint.setTextSize(TextUnit.m9236getValueimpl(spanStyle.m8433getFontSizeXSAIIZE()) * androidTextPaint.getTextSize());
        }
        if (hasFontAttributes(spanStyle)) {
            FontFamily fontFamily = spanStyle.getFontFamily();
            FontWeight fontWeight = spanStyle.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            FontStyle fontStyleM8434getFontStyle4Lr2A7w = spanStyle.m8434getFontStyle4Lr2A7w();
            FontStyle fontStyleM8600boximpl = FontStyle.m8600boximpl(fontStyleM8434getFontStyle4Lr2A7w != null ? fontStyleM8434getFontStyle4Lr2A7w.m8606unboximpl() : FontStyle.Companion.m8610getNormal_LCdwA());
            FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = spanStyle.m8435getFontSynthesisZQGJjVo();
            androidTextPaint.setTypeface(fm3Var.invoke(fontFamily, fontWeight, fontStyleM8600boximpl, FontSynthesis.m8611boximpl(fontSynthesisM8435getFontSynthesisZQGJjVo != null ? fontSynthesisM8435getFontSynthesisZQGJjVo.m8619unboximpl() : FontSynthesis.Companion.m8620getAllGVVA2EU())));
        }
        if (spanStyle.getLocaleList() != null && !aa4.e(spanStyle.getLocaleList(), LocaleList.Companion.getCurrent())) {
            LocaleListHelperMethods.INSTANCE.setTextLocales(androidTextPaint, spanStyle.getLocaleList());
        }
        if (spanStyle.getFontFeatureSettings() != null && !aa4.e(spanStyle.getFontFeatureSettings(), "")) {
            androidTextPaint.setFontFeatureSettings(spanStyle.getFontFeatureSettings());
        }
        if (spanStyle.getTextGeometricTransform() != null && !aa4.e(spanStyle.getTextGeometricTransform(), TextGeometricTransform.Companion.getNone$ui_text())) {
            androidTextPaint.setTextScaleX(spanStyle.getTextGeometricTransform().getScaleX() * androidTextPaint.getTextScaleX());
            androidTextPaint.setTextSkewX(spanStyle.getTextGeometricTransform().getSkewX() + androidTextPaint.getTextSkewX());
        }
        androidTextPaint.m8760setColor8_81llA(spanStyle.m8432getColor0d7_KjU());
        androidTextPaint.m8758setBrush12SF9DM(spanStyle.getBrush(), Size.Companion.m6064getUnspecifiedNHjbRc(), spanStyle.getAlpha());
        androidTextPaint.setShadow(spanStyle.getShadow());
        androidTextPaint.setTextDecoration(spanStyle.getTextDecoration());
        androidTextPaint.setDrawStyle(spanStyle.getDrawStyle());
        if (TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(spanStyle.m8436getLetterSpacingXSAIIZE()), companion.m9269getSpUIouoOA()) && TextUnit.m9236getValueimpl(spanStyle.m8436getLetterSpacingXSAIIZE()) != 0.0f) {
            float textScaleX = androidTextPaint.getTextScaleX() * androidTextPaint.getTextSize();
            float fMo1433toPxR2X_6o = density.mo1433toPxR2X_6o(spanStyle.m8436getLetterSpacingXSAIIZE());
            if (textScaleX != 0.0f) {
                androidTextPaint.setLetterSpacing(fMo1433toPxR2X_6o / textScaleX);
            }
        } else if (TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(spanStyle.m8436getLetterSpacingXSAIIZE()), companion.m9268getEmUIouoOA())) {
            androidTextPaint.setLetterSpacing(TextUnit.m9236getValueimpl(spanStyle.m8436getLetterSpacingXSAIIZE()));
        }
        return m8775generateFallbackSpanStyle62GTOB8(spanStyle.m8436getLetterSpacingXSAIIZE(), z, spanStyle.m8430getBackground0d7_KjU(), spanStyle.m8431getBaselineShift5SSeXJ0());
    }

    public static /* synthetic */ SpanStyle applySpanStyle$default(AndroidTextPaint androidTextPaint, SpanStyle spanStyle, fm3 fm3Var, Density density, boolean z, int i, Object obj) {
        if ((i & 8) != 0) {
            z = false;
        }
        return applySpanStyle(androidTextPaint, spanStyle, fm3Var, density, z);
    }

    public static final float correctBlurRadius(float f) {
        if (f == 0.0f) {
            return Float.MIN_VALUE;
        }
        return f;
    }

    /* JADX INFO: renamed from: generateFallbackSpanStyle-62GTOB8, reason: not valid java name */
    private static final SpanStyle m8775generateFallbackSpanStyle62GTOB8(long j, boolean z, long j2, BaselineShift baselineShift) {
        long jM6268getUnspecified0d7_KjU = j2;
        boolean z2 = false;
        boolean z3 = z && TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(j), TextUnitType.Companion.m9269getSpUIouoOA()) && TextUnit.m9236getValueimpl(j) != 0.0f;
        Color.Companion companion = Color.Companion;
        boolean z4 = (Color.m6233equalsimpl0(jM6268getUnspecified0d7_KjU, companion.m6268getUnspecified0d7_KjU()) || Color.m6233equalsimpl0(jM6268getUnspecified0d7_KjU, companion.m6267getTransparent0d7_KjU())) ? false : true;
        if (baselineShift != null) {
            if (!BaselineShift.m8785equalsimpl0(baselineShift.m8788unboximpl(), BaselineShift.Companion.m8793getNoney9eOQZs())) {
                z2 = true;
            }
        }
        if (!z3 && !z4 && !z2) {
            return null;
        }
        long jM9247getUnspecifiedXSAIIZE = z3 ? j : TextUnit.Companion.m9247getUnspecifiedXSAIIZE();
        if (!z4) {
            jM6268getUnspecified0d7_KjU = companion.m6268getUnspecified0d7_KjU();
        }
        return new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, jM9247getUnspecifiedXSAIIZE, z2 ? baselineShift : null, (TextGeometricTransform) null, (LocaleList) null, jM6268getUnspecified0d7_KjU, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 63103, (jh2) null);
    }

    public static final boolean hasFontAttributes(SpanStyle spanStyle) {
        return (spanStyle.getFontFamily() == null && spanStyle.m8434getFontStyle4Lr2A7w() == null && spanStyle.getFontWeight() == null) ? false : true;
    }

    public static final void setTextMotion(AndroidTextPaint androidTextPaint, TextMotion textMotion) {
        if (textMotion == null) {
            textMotion = TextMotion.Companion.getStatic();
        }
        androidTextPaint.setFlags(textMotion.getSubpixelTextPositioning$ui_text() ? androidTextPaint.getFlags() | 128 : androidTextPaint.getFlags() & (-129));
        int iM8954getLinearity4e0Vf04$ui_text = textMotion.m8954getLinearity4e0Vf04$ui_text();
        TextMotion.Linearity.Companion companion = TextMotion.Linearity.Companion;
        if (TextMotion.Linearity.m8958equalsimpl0(iM8954getLinearity4e0Vf04$ui_text, companion.m8963getLinear4e0Vf04())) {
            androidTextPaint.setFlags(androidTextPaint.getFlags() | 64);
            androidTextPaint.setHinting(0);
        } else if (TextMotion.Linearity.m8958equalsimpl0(iM8954getLinearity4e0Vf04$ui_text, companion.m8962getFontHinting4e0Vf04())) {
            androidTextPaint.getFlags();
            androidTextPaint.setHinting(1);
        } else if (!TextMotion.Linearity.m8958equalsimpl0(iM8954getLinearity4e0Vf04$ui_text, companion.m8964getNone4e0Vf04())) {
            androidTextPaint.getFlags();
        } else {
            androidTextPaint.getFlags();
            androidTextPaint.setHinting(0);
        }
    }
}
