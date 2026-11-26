package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.ShadowKt;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.FontWeightKt;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.BaselineShiftKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextGeometricTransformKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.aa4;
import defpackage.gr2;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class SpanStyleKt {
    private static final long DefaultBackgroundColor;
    private static final long DefaultColor;
    private static final TextForegroundStyle DefaultColorForegroundStyle;
    private static final long DefaultFontSize = TextUnitKt.getSp(14);
    private static final long DefaultLetterSpacing = TextUnitKt.getSp(0);

    static {
        Color.Companion companion = Color.Companion;
        DefaultBackgroundColor = companion.m6267getTransparent0d7_KjU();
        long jM6258getBlack0d7_KjU = companion.m6258getBlack0d7_KjU();
        DefaultColor = jM6258getBlack0d7_KjU;
        DefaultColorForegroundStyle = TextForegroundStyle.Companion.m8947from8_81llA(jM6258getBlack0d7_KjU);
    }

    private static final Shadow dropAlpha(Shadow shadow) {
        return Shadow.m6572copyqcb84PM$default(shadow, Color.m6231copywmQWz5c$default(shadow.m6576getColor0d7_KjU(), 0.0f, 0.0f, 0.0f, 0.0f, 14, null), 0L, 0.0f, 6, null);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0183  */
    /* JADX WARN: Code duplicated, block: B:102:0x0187  */
    /* JADX WARN: Code duplicated, block: B:105:0x0193  */
    /* JADX WARN: Code duplicated, block: B:106:0x0198  */
    /* JADX WARN: Code duplicated, block: B:108:0x019c  */
    /* JADX WARN: Code duplicated, block: B:110:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:112:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:113:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:117:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:119:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:11:0x003a A[PHI: r11
      0x003a: PHI (r11v7 long) = 
      (r11v1 long)
      (r11v1 long)
      (r11v1 long)
      (r11v1 long)
      (r11v1 long)
      (r11v1 long)
      (r11v1 long)
      (r11v1 long)
      (r11v1 long)
      (r11v1 long)
      (r11v1 long)
      (r11v8 long)
     binds: [B:41:0x00ab, B:53:0x00dd, B:50:0x00d1, B:47:0x00c5, B:44:0x00b9, B:39:0x009d, B:34:0x008e, B:28:0x0076, B:25:0x006e, B:22:0x0062, B:19:0x0056, B:9:0x0037] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:121:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:124:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:125:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:83:0x013e  */
    /* JADX WARN: Code duplicated, block: B:84:0x0147  */
    /* JADX WARN: Code duplicated, block: B:87:0x0157  */
    /* JADX WARN: Code duplicated, block: B:88:0x015c  */
    /* JADX WARN: Code duplicated, block: B:91:0x0166  */
    /* JADX WARN: Code duplicated, block: B:93:0x016c  */
    /* JADX WARN: Code duplicated, block: B:94:0x0171  */
    /* JADX WARN: Code duplicated, block: B:96:0x0175  */
    /* JADX WARN: Code duplicated, block: B:97:0x017a  */
    /* JADX WARN: Code duplicated, block: B:99:0x017e  */
    /* JADX INFO: renamed from: fastMerge-dSHsh3o, reason: not valid java name */
    public static final SpanStyle m8437fastMergedSHsh3o(SpanStyle spanStyle, long j, Brush brush, float f, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle) {
        long jM8433getFontSizeXSAIIZE;
        TextGeometricTransform textGeometricTransform2;
        long jM8430getBackground0d7_KjU;
        DrawStyle drawStyle2;
        TextForegroundStyle textForegroundStyleM8947from8_81llA;
        FontFamily fontFamily2;
        FontWeight fontWeight2;
        FontStyle fontStyleM8434getFontStyle4Lr2A7w;
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo;
        long jM8436getLetterSpacingXSAIIZE;
        LocaleList localeList2;
        DrawStyle drawStyle3;
        String fontFeatureSettings = str;
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = baselineShift;
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow2 = shadow;
        if (!(TextUnit.m9234getRawTypeimpl(j2) == 0)) {
            jM8433getFontSizeXSAIIZE = j2;
            if (!TextUnit.m9233equalsimpl0(jM8433getFontSizeXSAIIZE, spanStyle.m8433getFontSizeXSAIIZE())) {
                textGeometricTransform2 = textGeometricTransform;
                jM8430getBackground0d7_KjU = j4;
                drawStyle2 = drawStyle;
            }
            if (brush != null) {
                textForegroundStyleM8947from8_81llA = TextForegroundStyle.Companion.from(brush, f);
            } else {
                textForegroundStyleM8947from8_81llA = TextForegroundStyle.Companion.m8947from8_81llA(j);
            }
            TextForegroundStyle textForegroundStyleMerge = spanStyle.getTextForegroundStyle$ui_text().merge(textForegroundStyleM8947from8_81llA);
            if (fontFamily == null) {
                fontFamily2 = spanStyle.getFontFamily();
            } else {
                fontFamily2 = fontFamily;
            }
            if (TextUnit.m9234getRawTypeimpl(jM8433getFontSizeXSAIIZE) == 0) {
                jM8433getFontSizeXSAIIZE = spanStyle.m8433getFontSizeXSAIIZE();
            }
            if (fontWeight == null) {
                fontWeight2 = spanStyle.getFontWeight();
            } else {
                fontWeight2 = fontWeight;
            }
            if (fontStyle == null) {
                fontStyleM8434getFontStyle4Lr2A7w = spanStyle.m8434getFontStyle4Lr2A7w();
            } else {
                fontStyleM8434getFontStyle4Lr2A7w = fontStyle;
            }
            if (fontSynthesis == null) {
                fontSynthesisM8435getFontSynthesisZQGJjVo = spanStyle.m8435getFontSynthesisZQGJjVo();
            } else {
                fontSynthesisM8435getFontSynthesisZQGJjVo = fontSynthesis;
            }
            if (fontFeatureSettings == null) {
                fontFeatureSettings = spanStyle.getFontFeatureSettings();
            }
            if (TextUnit.m9234getRawTypeimpl(j3) == 0) {
                jM8436getLetterSpacingXSAIIZE = spanStyle.m8436getLetterSpacingXSAIIZE();
            } else {
                jM8436getLetterSpacingXSAIIZE = j3;
            }
            if (baselineShiftM8431getBaselineShift5SSeXJ0 == null) {
                baselineShiftM8431getBaselineShift5SSeXJ0 = spanStyle.m8431getBaselineShift5SSeXJ0();
            }
            if (textGeometricTransform2 == null) {
                textGeometricTransform2 = spanStyle.getTextGeometricTransform();
            }
            if (localeList == null) {
                localeList2 = spanStyle.getLocaleList();
            } else {
                localeList2 = localeList;
            }
            if (jM8430getBackground0d7_KjU == 16) {
                jM8430getBackground0d7_KjU = spanStyle.m8430getBackground0d7_KjU();
            }
            if (textDecoration2 == null) {
                textDecoration2 = spanStyle.getTextDecoration();
            }
            if (shadow2 == null) {
                shadow2 = spanStyle.getShadow();
            }
            Shadow shadow3 = shadow2;
            PlatformSpanStyle platformSpanStyleMergePlatformStyle = mergePlatformStyle(spanStyle, platformSpanStyle);
            if (drawStyle2 == null) {
                drawStyle3 = spanStyle.getDrawStyle();
            } else {
                drawStyle3 = drawStyle2;
            }
            return new SpanStyle(textForegroundStyleMerge, jM8433getFontSizeXSAIIZE, fontWeight2, fontStyleM8434getFontStyle4Lr2A7w, fontSynthesisM8435getFontSynthesisZQGJjVo, fontFamily2, fontFeatureSettings, jM8436getLetterSpacingXSAIIZE, baselineShiftM8431getBaselineShift5SSeXJ0, textGeometricTransform2, localeList2, jM8430getBackground0d7_KjU, textDecoration2, shadow3, platformSpanStyleMergePlatformStyle, drawStyle3, (jh2) null);
        }
        jM8433getFontSizeXSAIIZE = j2;
        if ((brush != null || j == 16 || Color.m6233equalsimpl0(j, spanStyle.getTextForegroundStyle$ui_text().mo8800getColor0d7_KjU())) && ((fontStyle == null || fontStyle.equals(spanStyle.m8434getFontStyle4Lr2A7w())) && ((fontWeight == null || fontWeight.equals(spanStyle.getFontWeight())) && (fontFamily == null || fontFamily == spanStyle.getFontFamily())))) {
            if ((TextUnit.m9234getRawTypeimpl(j3) == 0) || TextUnit.m9233equalsimpl0(j3, spanStyle.m8436getLetterSpacingXSAIIZE())) {
                if ((textDecoration2 == null || textDecoration2.equals(spanStyle.getTextDecoration())) && aa4.e(brush, spanStyle.getTextForegroundStyle$ui_text().getBrush()) && ((brush == null || f == spanStyle.getTextForegroundStyle$ui_text().getAlpha()) && ((fontSynthesis == null || fontSynthesis.equals(spanStyle.m8435getFontSynthesisZQGJjVo())) && ((fontFeatureSettings == null || fontFeatureSettings.equals(spanStyle.getFontFeatureSettings())) && (baselineShiftM8431getBaselineShift5SSeXJ0 == null || baselineShiftM8431getBaselineShift5SSeXJ0.equals(spanStyle.m8431getBaselineShift5SSeXJ0())))))) {
                    if (textGeometricTransform != null) {
                        textGeometricTransform2 = textGeometricTransform;
                        if (textGeometricTransform2.equals(spanStyle.getTextGeometricTransform())) {
                        }
                    } else {
                        textGeometricTransform2 = textGeometricTransform;
                    }
                    if (localeList == null || localeList.equals(spanStyle.getLocaleList())) {
                        if (j4 != 16) {
                            jM8430getBackground0d7_KjU = j4;
                            if (Color.m6233equalsimpl0(jM8430getBackground0d7_KjU, spanStyle.m8430getBackground0d7_KjU())) {
                            }
                        } else {
                            jM8430getBackground0d7_KjU = j4;
                        }
                        if ((shadow2 == null || shadow2.equals(spanStyle.getShadow())) && (platformSpanStyle == null || platformSpanStyle.equals(spanStyle.getPlatformStyle()))) {
                            drawStyle2 = drawStyle;
                            if (drawStyle2 == null || drawStyle2.equals(spanStyle.getDrawStyle())) {
                                return spanStyle;
                            }
                        }
                    }
                    drawStyle2 = drawStyle;
                } else {
                    textGeometricTransform2 = textGeometricTransform;
                }
                jM8430getBackground0d7_KjU = j4;
                drawStyle2 = drawStyle;
            } else {
                textGeometricTransform2 = textGeometricTransform;
                jM8430getBackground0d7_KjU = j4;
                drawStyle2 = drawStyle;
            }
        } else {
            textGeometricTransform2 = textGeometricTransform;
            jM8430getBackground0d7_KjU = j4;
            drawStyle2 = drawStyle;
        }
        if (brush != null) {
            textForegroundStyleM8947from8_81llA = TextForegroundStyle.Companion.from(brush, f);
        } else {
            textForegroundStyleM8947from8_81llA = TextForegroundStyle.Companion.m8947from8_81llA(j);
        }
        TextForegroundStyle textForegroundStyleMerge2 = spanStyle.getTextForegroundStyle$ui_text().merge(textForegroundStyleM8947from8_81llA);
        if (fontFamily == null) {
            fontFamily2 = spanStyle.getFontFamily();
        } else {
            fontFamily2 = fontFamily;
        }
        if (TextUnit.m9234getRawTypeimpl(jM8433getFontSizeXSAIIZE) == 0) {
            jM8433getFontSizeXSAIIZE = spanStyle.m8433getFontSizeXSAIIZE();
        }
        if (fontWeight == null) {
            fontWeight2 = spanStyle.getFontWeight();
        } else {
            fontWeight2 = fontWeight;
        }
        if (fontStyle == null) {
            fontStyleM8434getFontStyle4Lr2A7w = spanStyle.m8434getFontStyle4Lr2A7w();
        } else {
            fontStyleM8434getFontStyle4Lr2A7w = fontStyle;
        }
        if (fontSynthesis == null) {
            fontSynthesisM8435getFontSynthesisZQGJjVo = spanStyle.m8435getFontSynthesisZQGJjVo();
        } else {
            fontSynthesisM8435getFontSynthesisZQGJjVo = fontSynthesis;
        }
        if (fontFeatureSettings == null) {
            fontFeatureSettings = spanStyle.getFontFeatureSettings();
        }
        if (TextUnit.m9234getRawTypeimpl(j3) == 0) {
            jM8436getLetterSpacingXSAIIZE = spanStyle.m8436getLetterSpacingXSAIIZE();
        } else {
            jM8436getLetterSpacingXSAIIZE = j3;
        }
        if (baselineShiftM8431getBaselineShift5SSeXJ0 == null) {
            baselineShiftM8431getBaselineShift5SSeXJ0 = spanStyle.m8431getBaselineShift5SSeXJ0();
        }
        if (textGeometricTransform2 == null) {
            textGeometricTransform2 = spanStyle.getTextGeometricTransform();
        }
        if (localeList == null) {
            localeList2 = spanStyle.getLocaleList();
        } else {
            localeList2 = localeList;
        }
        if (jM8430getBackground0d7_KjU == 16) {
            jM8430getBackground0d7_KjU = spanStyle.m8430getBackground0d7_KjU();
        }
        if (textDecoration2 == null) {
            textDecoration2 = spanStyle.getTextDecoration();
        }
        if (shadow2 == null) {
            shadow2 = spanStyle.getShadow();
        }
        Shadow shadow4 = shadow2;
        PlatformSpanStyle platformSpanStyleMergePlatformStyle2 = mergePlatformStyle(spanStyle, platformSpanStyle);
        if (drawStyle2 == null) {
            drawStyle3 = spanStyle.getDrawStyle();
        } else {
            drawStyle3 = drawStyle2;
        }
        return new SpanStyle(textForegroundStyleMerge2, jM8433getFontSizeXSAIIZE, fontWeight2, fontStyleM8434getFontStyle4Lr2A7w, fontSynthesisM8435getFontSynthesisZQGJjVo, fontFamily2, fontFeatureSettings, jM8436getLetterSpacingXSAIIZE, baselineShiftM8431getBaselineShift5SSeXJ0, textGeometricTransform2, localeList2, jM8430getBackground0d7_KjU, textDecoration2, shadow4, platformSpanStyleMergePlatformStyle2, drawStyle3, (jh2) null);
    }

    public static final SpanStyle lerp(SpanStyle spanStyle, SpanStyle spanStyle2, float f) {
        TextForegroundStyle textForegroundStyleLerp = TextDrawStyleKt.lerp(spanStyle.getTextForegroundStyle$ui_text(), spanStyle2.getTextForegroundStyle$ui_text(), f);
        FontFamily fontFamily = (FontFamily) lerpDiscrete(spanStyle.getFontFamily(), spanStyle2.getFontFamily(), f);
        long jM8438lerpTextUnitInheritableC3pnCVY = m8438lerpTextUnitInheritableC3pnCVY(spanStyle.m8433getFontSizeXSAIIZE(), spanStyle2.m8433getFontSizeXSAIIZE(), f);
        FontWeight fontWeight = spanStyle.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontWeight fontWeight2 = spanStyle2.getFontWeight();
        if (fontWeight2 == null) {
            fontWeight2 = FontWeight.Companion.getNormal();
        }
        FontWeight fontWeightLerp = FontWeightKt.lerp(fontWeight, fontWeight2, f);
        FontStyle fontStyle = (FontStyle) lerpDiscrete(spanStyle.m8434getFontStyle4Lr2A7w(), spanStyle2.m8434getFontStyle4Lr2A7w(), f);
        FontSynthesis fontSynthesis = (FontSynthesis) lerpDiscrete(spanStyle.m8435getFontSynthesisZQGJjVo(), spanStyle2.m8435getFontSynthesisZQGJjVo(), f);
        String str = (String) lerpDiscrete(spanStyle.getFontFeatureSettings(), spanStyle2.getFontFeatureSettings(), f);
        long jM8438lerpTextUnitInheritableC3pnCVY2 = m8438lerpTextUnitInheritableC3pnCVY(spanStyle.m8436getLetterSpacingXSAIIZE(), spanStyle2.m8436getLetterSpacingXSAIIZE(), f);
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = spanStyle.m8431getBaselineShift5SSeXJ0();
        float fM8788unboximpl = baselineShiftM8431getBaselineShift5SSeXJ0 != null ? baselineShiftM8431getBaselineShift5SSeXJ0.m8788unboximpl() : BaselineShift.m8783constructorimpl(0.0f);
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ1 = spanStyle2.m8431getBaselineShift5SSeXJ0();
        float fM8798lerpjWV1Mfo = BaselineShiftKt.m8798lerpjWV1Mfo(fM8788unboximpl, baselineShiftM8431getBaselineShift5SSeXJ1 != null ? baselineShiftM8431getBaselineShift5SSeXJ1.m8788unboximpl() : BaselineShift.m8783constructorimpl(0.0f), f);
        TextGeometricTransform textGeometricTransform = spanStyle.getTextGeometricTransform();
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.Companion.getNone$ui_text();
        }
        TextGeometricTransform textGeometricTransform2 = spanStyle2.getTextGeometricTransform();
        if (textGeometricTransform2 == null) {
            textGeometricTransform2 = TextGeometricTransform.Companion.getNone$ui_text();
        }
        return new SpanStyle(textForegroundStyleLerp, jM8438lerpTextUnitInheritableC3pnCVY, fontWeightLerp, fontStyle, fontSynthesis, fontFamily, str, jM8438lerpTextUnitInheritableC3pnCVY2, BaselineShift.m8782boximpl(fM8798lerpjWV1Mfo), TextGeometricTransformKt.lerp(textGeometricTransform, textGeometricTransform2, f), (LocaleList) lerpDiscrete(spanStyle.getLocaleList(), spanStyle2.getLocaleList(), f), ColorKt.m6283lerpjxsXWHM(spanStyle.m8430getBackground0d7_KjU(), spanStyle2.m8430getBackground0d7_KjU(), f), (TextDecoration) lerpDiscrete(spanStyle.getTextDecoration(), spanStyle2.getTextDecoration(), f), nullSafeLerp(spanStyle.getShadow(), spanStyle2.getShadow(), f), lerpPlatformStyle(spanStyle.getPlatformStyle(), spanStyle2.getPlatformStyle(), f), (DrawStyle) lerpDiscrete(spanStyle.getDrawStyle(), spanStyle2.getDrawStyle(), f), (jh2) null);
    }

    public static final <T> T lerpDiscrete(T t, T t2, float f) {
        return ((double) f) < 0.5d ? t : t2;
    }

    private static final PlatformSpanStyle lerpPlatformStyle(PlatformSpanStyle platformSpanStyle, PlatformSpanStyle platformSpanStyle2, float f) {
        if (platformSpanStyle == null && platformSpanStyle2 == null) {
            return null;
        }
        if (platformSpanStyle == null) {
            platformSpanStyle = PlatformSpanStyle.Companion.getDefault();
        }
        if (platformSpanStyle2 == null) {
            platformSpanStyle2 = PlatformSpanStyle.Companion.getDefault();
        }
        return AndroidTextStyle_androidKt.lerp(platformSpanStyle, platformSpanStyle2, f);
    }

    /* JADX INFO: renamed from: lerpTextUnitInheritable-C3pnCVY, reason: not valid java name */
    public static final long m8438lerpTextUnitInheritableC3pnCVY(long j, long j2, float f) {
        return (TextUnit.m9234getRawTypeimpl(j) == 0 || TextUnit.m9234getRawTypeimpl(j2) == 0) ? ((TextUnit) lerpDiscrete(TextUnit.m9226boximpl(j), TextUnit.m9226boximpl(j2), f)).m9245unboximpl() : TextUnitKt.m9256lerpC3pnCVY(j, j2, f);
    }

    private static final PlatformSpanStyle mergePlatformStyle(SpanStyle spanStyle, PlatformSpanStyle platformSpanStyle) {
        if (spanStyle.getPlatformStyle() == null) {
            return platformSpanStyle;
        }
        return platformSpanStyle == null ? spanStyle.getPlatformStyle() : spanStyle.getPlatformStyle().merge(platformSpanStyle);
    }

    public static final Shadow nullSafeLerp(Shadow shadow, Shadow shadow2, float f) {
        if (!ComposeUiTextFlags.isCorrectShadowLerpWithNullsEnabled) {
            if (shadow == null) {
                shadow = new Shadow(0L, 0L, 0.0f, 7, null);
            }
            if (shadow2 == null) {
                shadow2 = new Shadow(0L, 0L, 0.0f, 7, null);
            }
            return ShadowKt.lerp(shadow, shadow2, f);
        }
        if (shadow == null && shadow2 == null) {
            return null;
        }
        if (shadow != null) {
            return shadow2 == null ? ShadowKt.lerp(shadow, dropAlpha(shadow), f) : ShadowKt.lerp(shadow, shadow2, f);
        }
        shadow2.getClass();
        return ShadowKt.lerp(dropAlpha(shadow2), shadow2, f);
    }

    public static final SpanStyle resolveSpanStyleDefaults(SpanStyle spanStyle) {
        TextForegroundStyle textForegroundStyleTakeOrElse = spanStyle.getTextForegroundStyle$ui_text().takeOrElse(new gr2(3));
        long jM8433getFontSizeXSAIIZE = TextUnit.m9234getRawTypeimpl(spanStyle.m8433getFontSizeXSAIIZE()) == 0 ? DefaultFontSize : spanStyle.m8433getFontSizeXSAIIZE();
        FontWeight fontWeight = spanStyle.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontWeight fontWeight2 = fontWeight;
        FontStyle fontStyleM8434getFontStyle4Lr2A7w = spanStyle.m8434getFontStyle4Lr2A7w();
        FontStyle fontStyleM8600boximpl = FontStyle.m8600boximpl(fontStyleM8434getFontStyle4Lr2A7w != null ? fontStyleM8434getFontStyle4Lr2A7w.m8606unboximpl() : FontStyle.Companion.m8610getNormal_LCdwA());
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = spanStyle.m8435getFontSynthesisZQGJjVo();
        FontSynthesis fontSynthesisM8611boximpl = FontSynthesis.m8611boximpl(fontSynthesisM8435getFontSynthesisZQGJjVo != null ? fontSynthesisM8435getFontSynthesisZQGJjVo.m8619unboximpl() : FontSynthesis.Companion.m8620getAllGVVA2EU());
        FontFamily fontFamily = spanStyle.getFontFamily();
        if (fontFamily == null) {
            fontFamily = FontFamily.Companion.getDefault();
        }
        FontFamily fontFamily2 = fontFamily;
        String fontFeatureSettings = spanStyle.getFontFeatureSettings();
        if (fontFeatureSettings == null) {
            fontFeatureSettings = "";
        }
        String str = fontFeatureSettings;
        long jM8436getLetterSpacingXSAIIZE = TextUnit.m9234getRawTypeimpl(spanStyle.m8436getLetterSpacingXSAIIZE()) == 0 ? DefaultLetterSpacing : spanStyle.m8436getLetterSpacingXSAIIZE();
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = spanStyle.m8431getBaselineShift5SSeXJ0();
        float fM8788unboximpl = baselineShiftM8431getBaselineShift5SSeXJ0 != null ? baselineShiftM8431getBaselineShift5SSeXJ0.m8788unboximpl() : BaselineShift.Companion.m8793getNoney9eOQZs();
        if (Float.isNaN(fM8788unboximpl)) {
            fM8788unboximpl = BaselineShift.Companion.m8793getNoney9eOQZs();
        }
        BaselineShift baselineShiftM8782boximpl = BaselineShift.m8782boximpl(fM8788unboximpl);
        TextGeometricTransform textGeometricTransform = spanStyle.getTextGeometricTransform();
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.Companion.getNone$ui_text();
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeList = spanStyle.getLocaleList();
        if (localeList == null) {
            localeList = LocaleList.Companion.getCurrent();
        }
        LocaleList localeList2 = localeList;
        long jM8430getBackground0d7_KjU = spanStyle.m8430getBackground0d7_KjU();
        if (jM8430getBackground0d7_KjU == 16) {
            jM8430getBackground0d7_KjU = DefaultBackgroundColor;
        }
        long j = jM8430getBackground0d7_KjU;
        TextDecoration textDecoration = spanStyle.getTextDecoration();
        if (textDecoration == null) {
            textDecoration = TextDecoration.Companion.getNone();
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = spanStyle.getShadow();
        if (shadow == null) {
            shadow = Shadow.Companion.getNone();
        }
        Shadow shadow2 = shadow;
        PlatformSpanStyle platformStyle = spanStyle.getPlatformStyle();
        DrawStyle drawStyle = spanStyle.getDrawStyle();
        if (drawStyle == null) {
            drawStyle = Fill.INSTANCE;
        }
        return new SpanStyle(textForegroundStyleTakeOrElse, jM8433getFontSizeXSAIIZE, fontWeight2, fontStyleM8600boximpl, fontSynthesisM8611boximpl, fontFamily2, str, jM8436getLetterSpacingXSAIIZE, baselineShiftM8782boximpl, textGeometricTransform2, localeList2, j, textDecoration2, shadow2, platformStyle, drawStyle, (jh2) null);
    }
}
