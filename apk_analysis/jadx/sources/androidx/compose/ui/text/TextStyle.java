package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import androidx.core.view.ViewCompat;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class TextStyle {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final TextStyle Default = new TextStyle(0, 0, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, ViewCompat.MEASURED_SIZE_MASK, (jh2) null);
    private final ParagraphStyle paragraphStyle;
    private final PlatformTextStyle platformStyle;
    private final SpanStyle spanStyle;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion, int i5, jh2 jh2Var) {
        long jM6268getUnspecified0d7_KjU = (i5 & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM9247getUnspecifiedXSAIIZE = (i5 & 2) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j2;
        FontWeight fontWeight2 = (i5 & 4) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i5 & 8) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i5 & 16) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i5 & 32) != 0 ? null : fontFamily;
        String str2 = (i5 & 64) != 0 ? null : str;
        long jM9247getUnspecifiedXSAIIZE2 = (i5 & 128) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j3;
        BaselineShift baselineShift2 = (i5 & 256) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i5 & 512) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i5 & 1024) != 0 ? null : localeList;
        long jM6268getUnspecified0d7_KjU2 = (i5 & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        TextDecoration textDecoration2 = (i5 & 4096) != 0 ? null : textDecoration;
        long j6 = jM6268getUnspecified0d7_KjU;
        Shadow shadow2 = (i5 & 8192) != 0 ? null : shadow;
        DrawStyle drawStyle2 = (i5 & 16384) != 0 ? null : drawStyle;
        int iM8926getUnspecifiede0LSkKk = (i5 & 32768) != 0 ? TextAlign.Companion.m8926getUnspecifiede0LSkKk() : i;
        int iM8942getUnspecifieds_7Xco = (i5 & 65536) != 0 ? TextDirection.Companion.m8942getUnspecifieds_7Xco() : i2;
        long jM9247getUnspecifiedXSAIIZE3 = (i5 & 131072) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j5;
        TextIndent textIndent2 = (i5 & 262144) != 0 ? null : textIndent;
        PlatformTextStyle platformTextStyle2 = (i5 & 524288) != 0 ? null : platformTextStyle;
        LineHeightStyle lineHeightStyle2 = (i5 & 1048576) != 0 ? null : lineHeightStyle;
        int iM8838getUnspecifiedrAG3T2k = (i5 & 2097152) != 0 ? LineBreak.Companion.m8838getUnspecifiedrAG3T2k() : i3;
        int iM8814getUnspecifiedvmbZdU8 = (i5 & 4194304) != 0 ? Hyphens.Companion.m8814getUnspecifiedvmbZdU8() : i4;
        long j7 = jM9247getUnspecifiedXSAIIZE;
        FontWeight fontWeight3 = fontWeight2;
        TextDecoration textDecoration3 = textDecoration2;
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j8 = jM9247getUnspecifiedXSAIIZE2;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j9 = jM6268getUnspecified0d7_KjU2;
        this(j6, j7, fontWeight3, fontStyle3, fontSynthesis3, fontFamily3, str3, j8, baselineShift3, textGeometricTransform3, localeList3, j9, textDecoration3, shadow2, drawStyle2, iM8926getUnspecifiede0LSkKk, iM8942getUnspecifieds_7Xco, jM9247getUnspecifiedXSAIIZE3, textIndent2, platformTextStyle2, lineHeightStyle2, iM8838getUnspecifiedrAG3T2k, iM8814getUnspecifiedvmbZdU8, (i5 & 8388608) != 0 ? null : textMotion, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-CXVQc50$default, reason: not valid java name */
    public static /* synthetic */ TextStyle m8499copyCXVQc50$default(TextStyle textStyle, long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, int i, Object obj) {
        Hyphens hyphensM8805boximpl;
        LineBreak lineBreak2;
        long jM8432getColor0d7_KjU = (i & 1) != 0 ? textStyle.spanStyle.m8432getColor0d7_KjU() : j;
        long jM8433getFontSizeXSAIIZE = (i & 2) != 0 ? textStyle.spanStyle.m8433getFontSizeXSAIIZE() : j2;
        FontWeight fontWeight2 = (i & 4) != 0 ? textStyle.spanStyle.getFontWeight() : fontWeight;
        FontStyle fontStyleM8434getFontStyle4Lr2A7w = (i & 8) != 0 ? textStyle.spanStyle.m8434getFontStyle4Lr2A7w() : fontStyle;
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = (i & 16) != 0 ? textStyle.spanStyle.m8435getFontSynthesisZQGJjVo() : fontSynthesis;
        FontFamily fontFamily2 = (i & 32) != 0 ? textStyle.spanStyle.getFontFamily() : fontFamily;
        String fontFeatureSettings = (i & 64) != 0 ? textStyle.spanStyle.getFontFeatureSettings() : str;
        long jM8436getLetterSpacingXSAIIZE = (i & 128) != 0 ? textStyle.spanStyle.m8436getLetterSpacingXSAIIZE() : j3;
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = (i & 256) != 0 ? textStyle.spanStyle.m8431getBaselineShift5SSeXJ0() : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i & 512) != 0 ? textStyle.spanStyle.getTextGeometricTransform() : textGeometricTransform;
        LocaleList localeList2 = (i & 1024) != 0 ? textStyle.spanStyle.getLocaleList() : localeList;
        long j6 = jM8432getColor0d7_KjU;
        long jM8430getBackground0d7_KjU = (i & 2048) != 0 ? textStyle.spanStyle.m8430getBackground0d7_KjU() : j4;
        TextDecoration textDecoration2 = (i & 4096) != 0 ? textStyle.spanStyle.getTextDecoration() : textDecoration;
        Shadow shadow2 = (i & 8192) != 0 ? textStyle.spanStyle.getShadow() : shadow;
        TextDecoration textDecoration3 = textDecoration2;
        TextAlign textAlignM8913boximpl = (i & 16384) != 0 ? TextAlign.m8913boximpl(textStyle.paragraphStyle.m8396getTextAligne0LSkKk()) : textAlign;
        TextDirection textDirectionM8930boximpl = (i & 32768) != 0 ? TextDirection.m8930boximpl(textStyle.paragraphStyle.m8398getTextDirections_7Xco()) : textDirection;
        long jM8394getLineHeightXSAIIZE = (i & 65536) != 0 ? textStyle.paragraphStyle.m8394getLineHeightXSAIIZE() : j5;
        TextIndent textIndent2 = (i & 131072) != 0 ? textStyle.paragraphStyle.getTextIndent() : textIndent;
        PlatformTextStyle platformTextStyle2 = (i & 262144) != 0 ? textStyle.platformStyle : platformTextStyle;
        LineHeightStyle lineHeightStyle2 = (i & 524288) != 0 ? textStyle.paragraphStyle.getLineHeightStyle() : lineHeightStyle;
        LineBreak lineBreakM8818boximpl = (i & 1048576) != 0 ? LineBreak.m8818boximpl(textStyle.paragraphStyle.m8393getLineBreakrAG3T2k()) : lineBreak;
        if ((i & 2097152) != 0) {
            lineBreak2 = lineBreakM8818boximpl;
            hyphensM8805boximpl = Hyphens.m8805boximpl(textStyle.paragraphStyle.m8391getHyphensvmbZdU8());
        } else {
            hyphensM8805boximpl = hyphens;
            lineBreak2 = lineBreakM8818boximpl;
        }
        return textStyle.m8512copyCXVQc50(j6, jM8433getFontSizeXSAIIZE, fontWeight2, fontStyleM8434getFontStyle4Lr2A7w, fontSynthesisM8435getFontSynthesisZQGJjVo, fontFamily2, fontFeatureSettings, jM8436getLetterSpacingXSAIIZE, baselineShiftM8431getBaselineShift5SSeXJ0, textGeometricTransform2, localeList2, jM8430getBackground0d7_KjU, textDecoration3, shadow2, textAlignM8913boximpl, textDirectionM8930boximpl, jM8394getLineHeightXSAIIZE, textIndent2, platformTextStyle2, lineHeightStyle2, lineBreak2, hyphensM8805boximpl);
    }

    /* JADX INFO: renamed from: copy-HL5avdY$default, reason: not valid java name */
    public static /* synthetic */ TextStyle m8500copyHL5avdY$default(TextStyle textStyle, long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, int i, Object obj) {
        long jM8432getColor0d7_KjU = (i & 1) != 0 ? textStyle.spanStyle.m8432getColor0d7_KjU() : j;
        return textStyle.m8513copyHL5avdY(jM8432getColor0d7_KjU, (i & 2) != 0 ? textStyle.spanStyle.m8433getFontSizeXSAIIZE() : j2, (i & 4) != 0 ? textStyle.spanStyle.getFontWeight() : fontWeight, (i & 8) != 0 ? textStyle.spanStyle.m8434getFontStyle4Lr2A7w() : fontStyle, (i & 16) != 0 ? textStyle.spanStyle.m8435getFontSynthesisZQGJjVo() : fontSynthesis, (i & 32) != 0 ? textStyle.spanStyle.getFontFamily() : fontFamily, (i & 64) != 0 ? textStyle.spanStyle.getFontFeatureSettings() : str, (i & 128) != 0 ? textStyle.spanStyle.m8436getLetterSpacingXSAIIZE() : j3, (i & 256) != 0 ? textStyle.spanStyle.m8431getBaselineShift5SSeXJ0() : baselineShift, (i & 512) != 0 ? textStyle.spanStyle.getTextGeometricTransform() : textGeometricTransform, (i & 1024) != 0 ? textStyle.spanStyle.getLocaleList() : localeList, (i & 2048) != 0 ? textStyle.spanStyle.m8430getBackground0d7_KjU() : j4, (i & 4096) != 0 ? textStyle.spanStyle.getTextDecoration() : textDecoration, (i & 8192) != 0 ? textStyle.spanStyle.getShadow() : shadow, (i & 16384) != 0 ? TextAlign.m8913boximpl(textStyle.paragraphStyle.m8396getTextAligne0LSkKk()) : textAlign, (i & 32768) != 0 ? TextDirection.m8930boximpl(textStyle.paragraphStyle.m8398getTextDirections_7Xco()) : textDirection, (i & 65536) != 0 ? textStyle.paragraphStyle.m8394getLineHeightXSAIIZE() : j5, (i & 131072) != 0 ? textStyle.paragraphStyle.getTextIndent() : textIndent);
    }

    /* JADX INFO: renamed from: copy-NOaFTUo$default, reason: not valid java name */
    public static /* synthetic */ TextStyle m8501copyNOaFTUo$default(TextStyle textStyle, long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i, Object obj) {
        LineHeightStyle lineHeightStyle2;
        PlatformTextStyle platformTextStyle2;
        long jM8432getColor0d7_KjU = (i & 1) != 0 ? textStyle.spanStyle.m8432getColor0d7_KjU() : j;
        long jM8433getFontSizeXSAIIZE = (i & 2) != 0 ? textStyle.spanStyle.m8433getFontSizeXSAIIZE() : j2;
        FontWeight fontWeight2 = (i & 4) != 0 ? textStyle.spanStyle.getFontWeight() : fontWeight;
        FontStyle fontStyleM8434getFontStyle4Lr2A7w = (i & 8) != 0 ? textStyle.spanStyle.m8434getFontStyle4Lr2A7w() : fontStyle;
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = (i & 16) != 0 ? textStyle.spanStyle.m8435getFontSynthesisZQGJjVo() : fontSynthesis;
        FontFamily fontFamily2 = (i & 32) != 0 ? textStyle.spanStyle.getFontFamily() : fontFamily;
        String fontFeatureSettings = (i & 64) != 0 ? textStyle.spanStyle.getFontFeatureSettings() : str;
        long jM8436getLetterSpacingXSAIIZE = (i & 128) != 0 ? textStyle.spanStyle.m8436getLetterSpacingXSAIIZE() : j3;
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = (i & 256) != 0 ? textStyle.spanStyle.m8431getBaselineShift5SSeXJ0() : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i & 512) != 0 ? textStyle.spanStyle.getTextGeometricTransform() : textGeometricTransform;
        LocaleList localeList2 = (i & 1024) != 0 ? textStyle.spanStyle.getLocaleList() : localeList;
        long j6 = jM8432getColor0d7_KjU;
        long jM8430getBackground0d7_KjU = (i & 2048) != 0 ? textStyle.spanStyle.m8430getBackground0d7_KjU() : j4;
        TextDecoration textDecoration2 = (i & 4096) != 0 ? textStyle.spanStyle.getTextDecoration() : textDecoration;
        Shadow shadow2 = (i & 8192) != 0 ? textStyle.spanStyle.getShadow() : shadow;
        TextDecoration textDecoration3 = textDecoration2;
        TextAlign textAlignM8913boximpl = (i & 16384) != 0 ? TextAlign.m8913boximpl(textStyle.paragraphStyle.m8396getTextAligne0LSkKk()) : textAlign;
        TextDirection textDirectionM8930boximpl = (i & 32768) != 0 ? TextDirection.m8930boximpl(textStyle.paragraphStyle.m8398getTextDirections_7Xco()) : textDirection;
        long jM8394getLineHeightXSAIIZE = (i & 65536) != 0 ? textStyle.paragraphStyle.m8394getLineHeightXSAIIZE() : j5;
        TextIndent textIndent2 = (i & 131072) != 0 ? textStyle.paragraphStyle.getTextIndent() : textIndent;
        PlatformTextStyle platformTextStyle3 = (i & 262144) != 0 ? textStyle.platformStyle : platformTextStyle;
        if ((i & 524288) != 0) {
            platformTextStyle2 = platformTextStyle3;
            lineHeightStyle2 = textStyle.paragraphStyle.getLineHeightStyle();
        } else {
            lineHeightStyle2 = lineHeightStyle;
            platformTextStyle2 = platformTextStyle3;
        }
        return textStyle.m8514copyNOaFTUo(j6, jM8433getFontSizeXSAIIZE, fontWeight2, fontStyleM8434getFontStyle4Lr2A7w, fontSynthesisM8435getFontSynthesisZQGJjVo, fontFamily2, fontFeatureSettings, jM8436getLetterSpacingXSAIIZE, baselineShiftM8431getBaselineShift5SSeXJ0, textGeometricTransform2, localeList2, jM8430getBackground0d7_KjU, textDecoration3, shadow2, textAlignM8913boximpl, textDirectionM8930boximpl, jM8394getLineHeightXSAIIZE, textIndent2, platformTextStyle2, lineHeightStyle2);
    }

    /* JADX INFO: renamed from: copy-Ns73l9s$default, reason: not valid java name */
    public static /* synthetic */ TextStyle m8502copyNs73l9s$default(TextStyle textStyle, Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j4, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion, int i5, Object obj) {
        TextMotion textMotion2;
        int i6;
        float alpha = (i5 & 2) != 0 ? textStyle.spanStyle.getAlpha() : f;
        long jM8433getFontSizeXSAIIZE = (i5 & 4) != 0 ? textStyle.spanStyle.m8433getFontSizeXSAIIZE() : j;
        FontWeight fontWeight2 = (i5 & 8) != 0 ? textStyle.spanStyle.getFontWeight() : fontWeight;
        FontStyle fontStyleM8434getFontStyle4Lr2A7w = (i5 & 16) != 0 ? textStyle.spanStyle.m8434getFontStyle4Lr2A7w() : fontStyle;
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = (i5 & 32) != 0 ? textStyle.spanStyle.m8435getFontSynthesisZQGJjVo() : fontSynthesis;
        FontFamily fontFamily2 = (i5 & 64) != 0 ? textStyle.spanStyle.getFontFamily() : fontFamily;
        String fontFeatureSettings = (i5 & 128) != 0 ? textStyle.spanStyle.getFontFeatureSettings() : str;
        long jM8436getLetterSpacingXSAIIZE = (i5 & 256) != 0 ? textStyle.spanStyle.m8436getLetterSpacingXSAIIZE() : j2;
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = (i5 & 512) != 0 ? textStyle.spanStyle.m8431getBaselineShift5SSeXJ0() : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i5 & 1024) != 0 ? textStyle.spanStyle.getTextGeometricTransform() : textGeometricTransform;
        LocaleList localeList2 = (i5 & 2048) != 0 ? textStyle.spanStyle.getLocaleList() : localeList;
        long jM8430getBackground0d7_KjU = (i5 & 4096) != 0 ? textStyle.spanStyle.m8430getBackground0d7_KjU() : j3;
        float f2 = alpha;
        TextDecoration textDecoration2 = (i5 & 8192) != 0 ? textStyle.spanStyle.getTextDecoration() : textDecoration;
        Shadow shadow2 = (i5 & 16384) != 0 ? textStyle.spanStyle.getShadow() : shadow;
        DrawStyle drawStyle2 = (i5 & 32768) != 0 ? textStyle.spanStyle.getDrawStyle() : drawStyle;
        int iM8396getTextAligne0LSkKk = (i5 & 65536) != 0 ? textStyle.paragraphStyle.m8396getTextAligne0LSkKk() : i;
        int iM8398getTextDirections_7Xco = (i5 & 131072) != 0 ? textStyle.paragraphStyle.m8398getTextDirections_7Xco() : i2;
        long jM8394getLineHeightXSAIIZE = (i5 & 262144) != 0 ? textStyle.paragraphStyle.m8394getLineHeightXSAIIZE() : j4;
        TextIndent textIndent2 = (i5 & 524288) != 0 ? textStyle.paragraphStyle.getTextIndent() : textIndent;
        PlatformTextStyle platformTextStyle2 = (i5 & 1048576) != 0 ? textStyle.platformStyle : platformTextStyle;
        LineHeightStyle lineHeightStyle2 = (i5 & 2097152) != 0 ? textStyle.paragraphStyle.getLineHeightStyle() : lineHeightStyle;
        int iM8393getLineBreakrAG3T2k = (i5 & 4194304) != 0 ? textStyle.paragraphStyle.m8393getLineBreakrAG3T2k() : i3;
        int iM8391getHyphensvmbZdU8 = (i5 & 8388608) != 0 ? textStyle.paragraphStyle.m8391getHyphensvmbZdU8() : i4;
        if ((i5 & 16777216) != 0) {
            i6 = iM8391getHyphensvmbZdU8;
            textMotion2 = textStyle.paragraphStyle.getTextMotion();
        } else {
            textMotion2 = textMotion;
            i6 = iM8391getHyphensvmbZdU8;
        }
        return textStyle.m8515copyNs73l9s(brush, f2, jM8433getFontSizeXSAIIZE, fontWeight2, fontStyleM8434getFontStyle4Lr2A7w, fontSynthesisM8435getFontSynthesisZQGJjVo, fontFamily2, fontFeatureSettings, jM8436getLetterSpacingXSAIIZE, baselineShiftM8431getBaselineShift5SSeXJ0, textGeometricTransform2, localeList2, jM8430getBackground0d7_KjU, textDecoration2, shadow2, drawStyle2, iM8396getTextAligne0LSkKk, iM8398getTextDirections_7Xco, jM8394getLineHeightXSAIIZE, textIndent2, platformTextStyle2, lineHeightStyle2, iM8393getLineBreakrAG3T2k, i6, textMotion2);
    }

    /* JADX INFO: renamed from: copy-aIRg9q4$default, reason: not valid java name */
    public static /* synthetic */ TextStyle m8503copyaIRg9q4$default(TextStyle textStyle, Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j4, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, int i, Object obj) {
        TextMotion textMotion2;
        Hyphens hyphens2;
        float alpha = (i & 2) != 0 ? textStyle.spanStyle.getAlpha() : f;
        long jM8433getFontSizeXSAIIZE = (i & 4) != 0 ? textStyle.spanStyle.m8433getFontSizeXSAIIZE() : j;
        FontWeight fontWeight2 = (i & 8) != 0 ? textStyle.spanStyle.getFontWeight() : fontWeight;
        FontStyle fontStyleM8434getFontStyle4Lr2A7w = (i & 16) != 0 ? textStyle.spanStyle.m8434getFontStyle4Lr2A7w() : fontStyle;
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = (i & 32) != 0 ? textStyle.spanStyle.m8435getFontSynthesisZQGJjVo() : fontSynthesis;
        FontFamily fontFamily2 = (i & 64) != 0 ? textStyle.spanStyle.getFontFamily() : fontFamily;
        String fontFeatureSettings = (i & 128) != 0 ? textStyle.spanStyle.getFontFeatureSettings() : str;
        long jM8436getLetterSpacingXSAIIZE = (i & 256) != 0 ? textStyle.spanStyle.m8436getLetterSpacingXSAIIZE() : j2;
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = (i & 512) != 0 ? textStyle.spanStyle.m8431getBaselineShift5SSeXJ0() : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i & 1024) != 0 ? textStyle.spanStyle.getTextGeometricTransform() : textGeometricTransform;
        LocaleList localeList2 = (i & 2048) != 0 ? textStyle.spanStyle.getLocaleList() : localeList;
        long jM8430getBackground0d7_KjU = (i & 4096) != 0 ? textStyle.spanStyle.m8430getBackground0d7_KjU() : j3;
        float f2 = alpha;
        TextDecoration textDecoration2 = (i & 8192) != 0 ? textStyle.spanStyle.getTextDecoration() : textDecoration;
        Shadow shadow2 = (i & 16384) != 0 ? textStyle.spanStyle.getShadow() : shadow;
        DrawStyle drawStyle2 = (i & 32768) != 0 ? textStyle.spanStyle.getDrawStyle() : drawStyle;
        TextAlign textAlignM8913boximpl = (i & 65536) != 0 ? TextAlign.m8913boximpl(textStyle.paragraphStyle.m8396getTextAligne0LSkKk()) : textAlign;
        TextDirection textDirectionM8930boximpl = (i & 131072) != 0 ? TextDirection.m8930boximpl(textStyle.paragraphStyle.m8398getTextDirections_7Xco()) : textDirection;
        long jM8394getLineHeightXSAIIZE = (i & 262144) != 0 ? textStyle.paragraphStyle.m8394getLineHeightXSAIIZE() : j4;
        TextIndent textIndent2 = (i & 524288) != 0 ? textStyle.paragraphStyle.getTextIndent() : textIndent;
        PlatformTextStyle platformTextStyle2 = (i & 1048576) != 0 ? textStyle.platformStyle : platformTextStyle;
        LineHeightStyle lineHeightStyle2 = (i & 2097152) != 0 ? textStyle.paragraphStyle.getLineHeightStyle() : lineHeightStyle;
        LineBreak lineBreakM8818boximpl = (i & 4194304) != 0 ? LineBreak.m8818boximpl(textStyle.paragraphStyle.m8393getLineBreakrAG3T2k()) : lineBreak;
        Hyphens hyphensM8805boximpl = (i & 8388608) != 0 ? Hyphens.m8805boximpl(textStyle.paragraphStyle.m8391getHyphensvmbZdU8()) : hyphens;
        if ((i & 16777216) != 0) {
            hyphens2 = hyphensM8805boximpl;
            textMotion2 = textStyle.paragraphStyle.getTextMotion();
        } else {
            textMotion2 = textMotion;
            hyphens2 = hyphensM8805boximpl;
        }
        return textStyle.m8516copyaIRg9q4(brush, f2, jM8433getFontSizeXSAIIZE, fontWeight2, fontStyleM8434getFontStyle4Lr2A7w, fontSynthesisM8435getFontSynthesisZQGJjVo, fontFamily2, fontFeatureSettings, jM8436getLetterSpacingXSAIIZE, baselineShiftM8431getBaselineShift5SSeXJ0, textGeometricTransform2, localeList2, jM8430getBackground0d7_KjU, textDecoration2, shadow2, drawStyle2, textAlignM8913boximpl, textDirectionM8930boximpl, jM8394getLineHeightXSAIIZE, textIndent2, platformTextStyle2, lineHeightStyle2, lineBreakM8818boximpl, hyphens2, textMotion2);
    }

    /* JADX INFO: renamed from: copy-p1EtxEg$default, reason: not valid java name */
    public static /* synthetic */ TextStyle m8504copyp1EtxEg$default(TextStyle textStyle, long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion, int i5, Object obj) {
        TextMotion textMotion2;
        int i6;
        long jM8432getColor0d7_KjU = (i5 & 1) != 0 ? textStyle.spanStyle.m8432getColor0d7_KjU() : j;
        long jM8433getFontSizeXSAIIZE = (i5 & 2) != 0 ? textStyle.spanStyle.m8433getFontSizeXSAIIZE() : j2;
        FontWeight fontWeight2 = (i5 & 4) != 0 ? textStyle.spanStyle.getFontWeight() : fontWeight;
        FontStyle fontStyleM8434getFontStyle4Lr2A7w = (i5 & 8) != 0 ? textStyle.spanStyle.m8434getFontStyle4Lr2A7w() : fontStyle;
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = (i5 & 16) != 0 ? textStyle.spanStyle.m8435getFontSynthesisZQGJjVo() : fontSynthesis;
        FontFamily fontFamily2 = (i5 & 32) != 0 ? textStyle.spanStyle.getFontFamily() : fontFamily;
        String fontFeatureSettings = (i5 & 64) != 0 ? textStyle.spanStyle.getFontFeatureSettings() : str;
        long jM8436getLetterSpacingXSAIIZE = (i5 & 128) != 0 ? textStyle.spanStyle.m8436getLetterSpacingXSAIIZE() : j3;
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = (i5 & 256) != 0 ? textStyle.spanStyle.m8431getBaselineShift5SSeXJ0() : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i5 & 512) != 0 ? textStyle.spanStyle.getTextGeometricTransform() : textGeometricTransform;
        LocaleList localeList2 = (i5 & 1024) != 0 ? textStyle.spanStyle.getLocaleList() : localeList;
        long j6 = jM8432getColor0d7_KjU;
        long jM8430getBackground0d7_KjU = (i5 & 2048) != 0 ? textStyle.spanStyle.m8430getBackground0d7_KjU() : j4;
        TextDecoration textDecoration2 = (i5 & 4096) != 0 ? textStyle.spanStyle.getTextDecoration() : textDecoration;
        Shadow shadow2 = (i5 & 8192) != 0 ? textStyle.spanStyle.getShadow() : shadow;
        TextDecoration textDecoration3 = textDecoration2;
        DrawStyle drawStyle2 = (i5 & 16384) != 0 ? textStyle.spanStyle.getDrawStyle() : drawStyle;
        int iM8396getTextAligne0LSkKk = (i5 & 32768) != 0 ? textStyle.paragraphStyle.m8396getTextAligne0LSkKk() : i;
        int iM8398getTextDirections_7Xco = (i5 & 65536) != 0 ? textStyle.paragraphStyle.m8398getTextDirections_7Xco() : i2;
        long jM8394getLineHeightXSAIIZE = (i5 & 131072) != 0 ? textStyle.paragraphStyle.m8394getLineHeightXSAIIZE() : j5;
        TextIndent textIndent2 = (i5 & 262144) != 0 ? textStyle.paragraphStyle.getTextIndent() : textIndent;
        PlatformTextStyle platformTextStyle2 = (i5 & 524288) != 0 ? textStyle.platformStyle : platformTextStyle;
        LineHeightStyle lineHeightStyle2 = (i5 & 1048576) != 0 ? textStyle.paragraphStyle.getLineHeightStyle() : lineHeightStyle;
        int iM8393getLineBreakrAG3T2k = (i5 & 2097152) != 0 ? textStyle.paragraphStyle.m8393getLineBreakrAG3T2k() : i3;
        int iM8391getHyphensvmbZdU8 = (i5 & 4194304) != 0 ? textStyle.paragraphStyle.m8391getHyphensvmbZdU8() : i4;
        if ((i5 & 8388608) != 0) {
            i6 = iM8391getHyphensvmbZdU8;
            textMotion2 = textStyle.paragraphStyle.getTextMotion();
        } else {
            textMotion2 = textMotion;
            i6 = iM8391getHyphensvmbZdU8;
        }
        return textStyle.m8517copyp1EtxEg(j6, jM8433getFontSizeXSAIIZE, fontWeight2, fontStyleM8434getFontStyle4Lr2A7w, fontSynthesisM8435getFontSynthesisZQGJjVo, fontFamily2, fontFeatureSettings, jM8436getLetterSpacingXSAIIZE, baselineShiftM8431getBaselineShift5SSeXJ0, textGeometricTransform2, localeList2, jM8430getBackground0d7_KjU, textDecoration3, shadow2, drawStyle2, iM8396getTextAligne0LSkKk, iM8398getTextDirections_7Xco, jM8394getLineHeightXSAIIZE, textIndent2, platformTextStyle2, lineHeightStyle2, iM8393getLineBreakrAG3T2k, i6, textMotion2);
    }

    /* JADX INFO: renamed from: copy-v2rsoow$default, reason: not valid java name */
    public static /* synthetic */ TextStyle m8505copyv2rsoow$default(TextStyle textStyle, long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, int i, Object obj) {
        TextMotion textMotion2;
        Hyphens hyphens2;
        long jM8432getColor0d7_KjU = (i & 1) != 0 ? textStyle.spanStyle.m8432getColor0d7_KjU() : j;
        long jM8433getFontSizeXSAIIZE = (i & 2) != 0 ? textStyle.spanStyle.m8433getFontSizeXSAIIZE() : j2;
        FontWeight fontWeight2 = (i & 4) != 0 ? textStyle.spanStyle.getFontWeight() : fontWeight;
        FontStyle fontStyleM8434getFontStyle4Lr2A7w = (i & 8) != 0 ? textStyle.spanStyle.m8434getFontStyle4Lr2A7w() : fontStyle;
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = (i & 16) != 0 ? textStyle.spanStyle.m8435getFontSynthesisZQGJjVo() : fontSynthesis;
        FontFamily fontFamily2 = (i & 32) != 0 ? textStyle.spanStyle.getFontFamily() : fontFamily;
        String fontFeatureSettings = (i & 64) != 0 ? textStyle.spanStyle.getFontFeatureSettings() : str;
        long jM8436getLetterSpacingXSAIIZE = (i & 128) != 0 ? textStyle.spanStyle.m8436getLetterSpacingXSAIIZE() : j3;
        BaselineShift baselineShiftM8431getBaselineShift5SSeXJ0 = (i & 256) != 0 ? textStyle.spanStyle.m8431getBaselineShift5SSeXJ0() : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i & 512) != 0 ? textStyle.spanStyle.getTextGeometricTransform() : textGeometricTransform;
        LocaleList localeList2 = (i & 1024) != 0 ? textStyle.spanStyle.getLocaleList() : localeList;
        long j6 = jM8432getColor0d7_KjU;
        long jM8430getBackground0d7_KjU = (i & 2048) != 0 ? textStyle.spanStyle.m8430getBackground0d7_KjU() : j4;
        TextDecoration textDecoration2 = (i & 4096) != 0 ? textStyle.spanStyle.getTextDecoration() : textDecoration;
        Shadow shadow2 = (i & 8192) != 0 ? textStyle.spanStyle.getShadow() : shadow;
        TextDecoration textDecoration3 = textDecoration2;
        DrawStyle drawStyle2 = (i & 16384) != 0 ? textStyle.spanStyle.getDrawStyle() : drawStyle;
        TextAlign textAlignM8913boximpl = (i & 32768) != 0 ? TextAlign.m8913boximpl(textStyle.paragraphStyle.m8396getTextAligne0LSkKk()) : textAlign;
        TextDirection textDirectionM8930boximpl = (i & 65536) != 0 ? TextDirection.m8930boximpl(textStyle.paragraphStyle.m8398getTextDirections_7Xco()) : textDirection;
        long jM8394getLineHeightXSAIIZE = (i & 131072) != 0 ? textStyle.paragraphStyle.m8394getLineHeightXSAIIZE() : j5;
        TextIndent textIndent2 = (i & 262144) != 0 ? textStyle.paragraphStyle.getTextIndent() : textIndent;
        PlatformTextStyle platformTextStyle2 = (i & 524288) != 0 ? textStyle.platformStyle : platformTextStyle;
        LineHeightStyle lineHeightStyle2 = (i & 1048576) != 0 ? textStyle.paragraphStyle.getLineHeightStyle() : lineHeightStyle;
        LineBreak lineBreakM8818boximpl = (i & 2097152) != 0 ? LineBreak.m8818boximpl(textStyle.paragraphStyle.m8393getLineBreakrAG3T2k()) : lineBreak;
        Hyphens hyphensM8805boximpl = (i & 4194304) != 0 ? Hyphens.m8805boximpl(textStyle.paragraphStyle.m8391getHyphensvmbZdU8()) : hyphens;
        if ((i & 8388608) != 0) {
            hyphens2 = hyphensM8805boximpl;
            textMotion2 = textStyle.paragraphStyle.getTextMotion();
        } else {
            textMotion2 = textMotion;
            hyphens2 = hyphensM8805boximpl;
        }
        return textStyle.m8518copyv2rsoow(j6, jM8433getFontSizeXSAIIZE, fontWeight2, fontStyleM8434getFontStyle4Lr2A7w, fontSynthesisM8435getFontSynthesisZQGJjVo, fontFamily2, fontFeatureSettings, jM8436getLetterSpacingXSAIIZE, baselineShiftM8431getBaselineShift5SSeXJ0, textGeometricTransform2, localeList2, jM8430getBackground0d7_KjU, textDecoration3, shadow2, drawStyle2, textAlignM8913boximpl, textDirectionM8930boximpl, jM8394getLineHeightXSAIIZE, textIndent2, platformTextStyle2, lineHeightStyle2, lineBreakM8818boximpl, hyphens2, textMotion2);
    }

    @ul2
    /* JADX INFO: renamed from: getHyphens-EaSxIns$annotations, reason: not valid java name */
    public static /* synthetic */ void m8506getHyphensEaSxIns$annotations() {
    }

    @ul2
    /* JADX INFO: renamed from: getLineBreak-LgCVezo$annotations, reason: not valid java name */
    public static /* synthetic */ void m8507getLineBreakLgCVezo$annotations() {
    }

    @ul2
    /* JADX INFO: renamed from: getTextAlign-buA522U$annotations, reason: not valid java name */
    public static /* synthetic */ void m8508getTextAlignbuA522U$annotations() {
    }

    @ul2
    /* JADX INFO: renamed from: getTextDirection-mmuk1to$annotations, reason: not valid java name */
    public static /* synthetic */ void m8509getTextDirectionmmuk1to$annotations() {
    }

    public static /* synthetic */ TextStyle merge$default(TextStyle textStyle, TextStyle textStyle2, int i, Object obj) {
        if ((i & 1) != 0) {
            textStyle2 = null;
        }
        return textStyle.merge(textStyle2);
    }

    @ul2
    /* JADX INFO: renamed from: copy-CXVQc50, reason: not valid java name */
    public final /* synthetic */ TextStyle m8512copyCXVQc50(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens) {
        return new TextStyle(new SpanStyle(Color.m6233equalsimpl0(j, this.spanStyle.m8432getColor0d7_KjU()) ? this.spanStyle.getTextForegroundStyle$ui_text() : TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, getDrawStyle(), (jh2) null), new ParagraphStyle(textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk(), textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco(), j5, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, lineBreak != null ? lineBreak.m8830unboximpl() : LineBreak.Companion.m8838getUnspecifiedrAG3T2k(), hyphens != null ? hyphens.m8811unboximpl() : Hyphens.Companion.m8814getUnspecifiedvmbZdU8(), getTextMotion(), (jh2) null), platformTextStyle);
    }

    @ul2
    /* JADX INFO: renamed from: copy-HL5avdY, reason: not valid java name */
    public final /* synthetic */ TextStyle m8513copyHL5avdY(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent) {
        return new TextStyle(new SpanStyle(Color.m6233equalsimpl0(j, this.spanStyle.m8432getColor0d7_KjU()) ? this.spanStyle.getTextForegroundStyle$ui_text() : TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, this.spanStyle.getPlatformStyle(), this.spanStyle.getDrawStyle(), (jh2) null), new ParagraphStyle(textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk(), textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco(), j5, textIndent, this.paragraphStyle.getPlatformStyle(), getLineHeightStyle(), m8529getLineBreakrAG3T2k(), m8526getHyphensvmbZdU8(), getTextMotion(), (jh2) null), this.platformStyle);
    }

    @ul2
    /* JADX INFO: renamed from: copy-NOaFTUo, reason: not valid java name */
    public final /* synthetic */ TextStyle m8514copyNOaFTUo(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle) {
        return new TextStyle(new SpanStyle(Color.m6233equalsimpl0(j, this.spanStyle.m8432getColor0d7_KjU()) ? this.spanStyle.getTextForegroundStyle$ui_text() : TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, this.spanStyle.getDrawStyle(), (jh2) null), new ParagraphStyle(textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk(), textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco(), j5, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, m8529getLineBreakrAG3T2k(), m8526getHyphensvmbZdU8(), getTextMotion(), (jh2) null), platformTextStyle);
    }

    /* JADX INFO: renamed from: copy-Ns73l9s, reason: not valid java name */
    public final TextStyle m8515copyNs73l9s(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j4, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        return new TextStyle(new SpanStyle(brush, f, j, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, drawStyle, (jh2) null), new ParagraphStyle(i, i2, j4, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, i3, i4, textMotion, (jh2) null), platformTextStyle);
    }

    @ul2
    /* JADX INFO: renamed from: copy-aIRg9q4, reason: not valid java name */
    public final /* synthetic */ TextStyle m8516copyaIRg9q4(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j4, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion) {
        return new TextStyle(new SpanStyle(brush, f, j, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, drawStyle, (jh2) null), new ParagraphStyle(textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk(), textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco(), j4, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, lineBreak != null ? lineBreak.m8830unboximpl() : LineBreak.Companion.m8838getUnspecifiedrAG3T2k(), hyphens != null ? hyphens.m8811unboximpl() : Hyphens.Companion.m8814getUnspecifiedvmbZdU8(), textMotion, (jh2) null), platformTextStyle);
    }

    /* JADX INFO: renamed from: copy-p1EtxEg, reason: not valid java name */
    public final TextStyle m8517copyp1EtxEg(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        return new TextStyle(new SpanStyle(Color.m6233equalsimpl0(j, this.spanStyle.m8432getColor0d7_KjU()) ? this.spanStyle.getTextForegroundStyle$ui_text() : TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, drawStyle, (jh2) null), new ParagraphStyle(i, i2, j5, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, i3, i4, textMotion, (jh2) null), platformTextStyle);
    }

    @ul2
    /* JADX INFO: renamed from: copy-v2rsoow, reason: not valid java name */
    public final /* synthetic */ TextStyle m8518copyv2rsoow(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion) {
        return new TextStyle(new SpanStyle(Color.m6233equalsimpl0(j, this.spanStyle.m8432getColor0d7_KjU()) ? this.spanStyle.getTextForegroundStyle$ui_text() : TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, drawStyle, (jh2) null), new ParagraphStyle(textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk(), textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco(), j5, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, lineBreak != null ? lineBreak.m8830unboximpl() : LineBreak.Companion.m8838getUnspecifiedrAG3T2k(), hyphens != null ? hyphens.m8811unboximpl() : Hyphens.Companion.m8814getUnspecifiedvmbZdU8(), textMotion, (jh2) null), platformTextStyle);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextStyle)) {
            return false;
        }
        TextStyle textStyle = (TextStyle) obj;
        return aa4.e(this.spanStyle, textStyle.spanStyle) && aa4.e(this.paragraphStyle, textStyle.paragraphStyle) && aa4.e(this.platformStyle, textStyle.platformStyle);
    }

    public final float getAlpha() {
        return this.spanStyle.getAlpha();
    }

    /* JADX INFO: renamed from: getBackground-0d7_KjU, reason: not valid java name */
    public final long m8519getBackground0d7_KjU() {
        return this.spanStyle.m8430getBackground0d7_KjU();
    }

    /* JADX INFO: renamed from: getBaselineShift-5SSeXJ0, reason: not valid java name */
    public final BaselineShift m8520getBaselineShift5SSeXJ0() {
        return this.spanStyle.m8431getBaselineShift5SSeXJ0();
    }

    public final Brush getBrush() {
        return this.spanStyle.getBrush();
    }

    /* JADX INFO: renamed from: getColor-0d7_KjU, reason: not valid java name */
    public final long m8521getColor0d7_KjU() {
        return this.spanStyle.m8432getColor0d7_KjU();
    }

    public final DrawStyle getDrawStyle() {
        return this.spanStyle.getDrawStyle();
    }

    public final FontFamily getFontFamily() {
        return this.spanStyle.getFontFamily();
    }

    public final String getFontFeatureSettings() {
        return this.spanStyle.getFontFeatureSettings();
    }

    /* JADX INFO: renamed from: getFontSize-XSAIIZE, reason: not valid java name */
    public final long m8522getFontSizeXSAIIZE() {
        return this.spanStyle.m8433getFontSizeXSAIIZE();
    }

    /* JADX INFO: renamed from: getFontStyle-4Lr2A7w, reason: not valid java name */
    public final FontStyle m8523getFontStyle4Lr2A7w() {
        return this.spanStyle.m8434getFontStyle4Lr2A7w();
    }

    /* JADX INFO: renamed from: getFontSynthesis-ZQGJjVo, reason: not valid java name */
    public final FontSynthesis m8524getFontSynthesisZQGJjVo() {
        return this.spanStyle.m8435getFontSynthesisZQGJjVo();
    }

    public final FontWeight getFontWeight() {
        return this.spanStyle.getFontWeight();
    }

    /* JADX INFO: renamed from: getHyphens-EaSxIns, reason: not valid java name */
    public final Hyphens m8525getHyphensEaSxIns() {
        return Hyphens.m8805boximpl(m8526getHyphensvmbZdU8());
    }

    /* JADX INFO: renamed from: getHyphens-vmbZdU8, reason: not valid java name */
    public final int m8526getHyphensvmbZdU8() {
        return this.paragraphStyle.m8391getHyphensvmbZdU8();
    }

    /* JADX INFO: renamed from: getLetterSpacing-XSAIIZE, reason: not valid java name */
    public final long m8527getLetterSpacingXSAIIZE() {
        return this.spanStyle.m8436getLetterSpacingXSAIIZE();
    }

    /* JADX INFO: renamed from: getLineBreak-LgCVezo, reason: not valid java name */
    public final LineBreak m8528getLineBreakLgCVezo() {
        return LineBreak.m8818boximpl(m8529getLineBreakrAG3T2k());
    }

    /* JADX INFO: renamed from: getLineBreak-rAG3T2k, reason: not valid java name */
    public final int m8529getLineBreakrAG3T2k() {
        return this.paragraphStyle.m8393getLineBreakrAG3T2k();
    }

    /* JADX INFO: renamed from: getLineHeight-XSAIIZE, reason: not valid java name */
    public final long m8530getLineHeightXSAIIZE() {
        return this.paragraphStyle.m8394getLineHeightXSAIIZE();
    }

    public final LineHeightStyle getLineHeightStyle() {
        return this.paragraphStyle.getLineHeightStyle();
    }

    public final LocaleList getLocaleList() {
        return this.spanStyle.getLocaleList();
    }

    public final ParagraphStyle getParagraphStyle$ui_text() {
        return this.paragraphStyle;
    }

    public final PlatformTextStyle getPlatformStyle() {
        return this.platformStyle;
    }

    public final Shadow getShadow() {
        return this.spanStyle.getShadow();
    }

    public final SpanStyle getSpanStyle$ui_text() {
        return this.spanStyle;
    }

    /* JADX INFO: renamed from: getTextAlign-buA522U, reason: not valid java name */
    public final TextAlign m8531getTextAlignbuA522U() {
        return TextAlign.m8913boximpl(m8532getTextAligne0LSkKk());
    }

    /* JADX INFO: renamed from: getTextAlign-e0LSkKk, reason: not valid java name */
    public final int m8532getTextAligne0LSkKk() {
        return this.paragraphStyle.m8396getTextAligne0LSkKk();
    }

    public final TextDecoration getTextDecoration() {
        return this.spanStyle.getTextDecoration();
    }

    /* JADX INFO: renamed from: getTextDirection-mmuk1to, reason: not valid java name */
    public final TextDirection m8533getTextDirectionmmuk1to() {
        return TextDirection.m8930boximpl(m8534getTextDirections_7Xco());
    }

    /* JADX INFO: renamed from: getTextDirection-s_7X-co, reason: not valid java name */
    public final int m8534getTextDirections_7Xco() {
        return this.paragraphStyle.m8398getTextDirections_7Xco();
    }

    public final TextGeometricTransform getTextGeometricTransform() {
        return this.spanStyle.getTextGeometricTransform();
    }

    public final TextIndent getTextIndent() {
        return this.paragraphStyle.getTextIndent();
    }

    public final TextMotion getTextMotion() {
        return this.paragraphStyle.getTextMotion();
    }

    public final boolean hasSameDrawAffectingAttributes(TextStyle textStyle) {
        return this == textStyle || this.spanStyle.hasSameNonLayoutAttributes$ui_text(textStyle.spanStyle);
    }

    public final boolean hasSameLayoutAffectingAttributes(TextStyle textStyle) {
        if (this != textStyle) {
            return aa4.e(this.paragraphStyle, textStyle.paragraphStyle) && this.spanStyle.hasSameLayoutAffectingAttributes$ui_text(textStyle.spanStyle);
        }
        return true;
    }

    public int hashCode() {
        int iHashCode = (this.paragraphStyle.hashCode() + (this.spanStyle.hashCode() * 31)) * 31;
        PlatformTextStyle platformTextStyle = this.platformStyle;
        return iHashCode + (platformTextStyle != null ? platformTextStyle.hashCode() : 0);
    }

    public final int hashCodeLayoutAffectingAttributes$ui_text() {
        int iHashCode = (this.paragraphStyle.hashCode() + (this.spanStyle.hashCodeLayoutAffectingAttributes$ui_text() * 31)) * 31;
        PlatformTextStyle platformTextStyle = this.platformStyle;
        return iHashCode + (platformTextStyle != null ? platformTextStyle.hashCode() : 0);
    }

    public final TextStyle merge(TextStyle textStyle) {
        return (textStyle == null || textStyle.equals(Default)) ? this : new TextStyle(toSpanStyle().merge(textStyle.toSpanStyle()), toParagraphStyle().merge(textStyle.toParagraphStyle()));
    }

    @ul2
    /* JADX INFO: renamed from: merge-Z1GrekI, reason: not valid java name */
    public final /* synthetic */ TextStyle m8535mergeZ1GrekI(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, PlatformTextStyle platformTextStyle, TextMotion textMotion) {
        SpanStyle spanStyleM8437fastMergedSHsh3o = SpanStyleKt.m8437fastMergedSHsh3o(this.spanStyle, j, null, Float.NaN, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, drawStyle);
        ParagraphStyle paragraphStyleM8399fastMergej5T8yCg = ParagraphStyleKt.m8399fastMergej5T8yCg(this.paragraphStyle, textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk(), textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco(), j5, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, lineBreak != null ? lineBreak.m8830unboximpl() : LineBreak.Companion.m8838getUnspecifiedrAG3T2k(), hyphens != null ? hyphens.m8811unboximpl() : Hyphens.Companion.m8814getUnspecifiedvmbZdU8(), textMotion);
        return (this.spanStyle == spanStyleM8437fastMergedSHsh3o && this.paragraphStyle == paragraphStyleM8399fastMergej5T8yCg) ? this : new TextStyle(spanStyleM8437fastMergedSHsh3o, paragraphStyleM8399fastMergej5T8yCg);
    }

    /* JADX INFO: renamed from: merge-dA7vx0o, reason: not valid java name */
    public final TextStyle m8536mergedA7vx0o(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j5, TextIndent textIndent, LineHeightStyle lineHeightStyle, int i3, int i4, PlatformTextStyle platformTextStyle, TextMotion textMotion) {
        SpanStyle spanStyleM8437fastMergedSHsh3o = SpanStyleKt.m8437fastMergedSHsh3o(this.spanStyle, j, null, Float.NaN, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, drawStyle);
        ParagraphStyle paragraphStyleM8399fastMergej5T8yCg = ParagraphStyleKt.m8399fastMergej5T8yCg(this.paragraphStyle, i, i2, j5, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, i3, i4, textMotion);
        return (this.spanStyle == spanStyleM8437fastMergedSHsh3o && this.paragraphStyle == paragraphStyleM8399fastMergej5T8yCg) ? this : new TextStyle(spanStyleM8437fastMergedSHsh3o, paragraphStyleM8399fastMergej5T8yCg);
    }

    public final TextStyle plus(TextStyle textStyle) {
        return merge(textStyle);
    }

    public final ParagraphStyle toParagraphStyle() {
        return this.paragraphStyle;
    }

    public final SpanStyle toSpanStyle() {
        return this.spanStyle;
    }

    public String toString() {
        return "TextStyle(color=" + ((Object) Color.m6240toStringimpl(m8521getColor0d7_KjU())) + ", brush=" + getBrush() + ", alpha=" + getAlpha() + ", fontSize=" + ((Object) TextUnit.m9243toStringimpl(m8522getFontSizeXSAIIZE())) + ", fontWeight=" + getFontWeight() + ", fontStyle=" + m8523getFontStyle4Lr2A7w() + ", fontSynthesis=" + m8524getFontSynthesisZQGJjVo() + ", fontFamily=" + getFontFamily() + ", fontFeatureSettings=" + getFontFeatureSettings() + ", letterSpacing=" + ((Object) TextUnit.m9243toStringimpl(m8527getLetterSpacingXSAIIZE())) + ", baselineShift=" + m8520getBaselineShift5SSeXJ0() + ", textGeometricTransform=" + getTextGeometricTransform() + ", localeList=" + getLocaleList() + ", background=" + ((Object) Color.m6240toStringimpl(m8519getBackground0d7_KjU())) + ", textDecoration=" + getTextDecoration() + ", shadow=" + getShadow() + ", drawStyle=" + getDrawStyle() + ", textAlign=" + ((Object) TextAlign.m8918toStringimpl(m8532getTextAligne0LSkKk())) + ", textDirection=" + ((Object) TextDirection.m8935toStringimpl(m8534getTextDirections_7Xco())) + ", lineHeight=" + ((Object) TextUnit.m9243toStringimpl(m8530getLineHeightXSAIIZE())) + ", textIndent=" + getTextIndent() + ", platformStyle=" + this.platformStyle + ", lineHeightStyle=" + getLineHeightStyle() + ", lineBreak=" + ((Object) LineBreak.m8829toStringimpl(m8529getLineBreakrAG3T2k())) + ", hyphens=" + ((Object) Hyphens.m8810toStringimpl(m8526getHyphensvmbZdU8())) + ", textMotion=" + getTextMotion() + ')';
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public static /* synthetic */ void getDefault$annotations() {
        }

        public final TextStyle getDefault() {
            return TextStyle.Default;
        }

        private Companion() {
        }
    }

    public final TextStyle plus(ParagraphStyle paragraphStyle) {
        return merge(paragraphStyle);
    }

    public final TextStyle plus(SpanStyle spanStyle) {
        return merge(spanStyle);
    }

    public final TextStyle merge(SpanStyle spanStyle) {
        return new TextStyle(toSpanStyle().merge(spanStyle), toParagraphStyle());
    }

    public final TextStyle merge(ParagraphStyle paragraphStyle) {
        return new TextStyle(toSpanStyle(), toParagraphStyle().merge(paragraphStyle));
    }

    @ul2
    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, jh2 jh2Var) {
        this(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, drawStyle, textAlign, textDirection, j5, textIndent, platformTextStyle, lineHeightStyle, lineBreak, hyphens, textMotion);
    }

    @ul2
    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, jh2 jh2Var) {
        this(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, textAlign, textDirection, j5, textIndent);
    }

    @ul2
    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, jh2 jh2Var) {
        this(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, textAlign, textDirection, j5, textIndent, platformTextStyle, lineHeightStyle);
    }

    @ul2
    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, jh2 jh2Var) {
        this(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, textAlign, textDirection, j5, textIndent, platformTextStyle, lineHeightStyle, lineBreak, hyphens);
    }

    public /* synthetic */ TextStyle(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j4, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion, jh2 jh2Var) {
        this(brush, f, j, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, drawStyle, i, i2, j4, textIndent, platformTextStyle, lineHeightStyle, i3, i4, textMotion);
    }

    @ul2
    public /* synthetic */ TextStyle(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j4, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, jh2 jh2Var) {
        this(brush, f, j, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, drawStyle, textAlign, textDirection, j4, textIndent, platformTextStyle, lineHeightStyle, lineBreak, hyphens, textMotion);
    }

    public TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle, PlatformTextStyle platformTextStyle) {
        this.spanStyle = spanStyle;
        this.paragraphStyle = paragraphStyle;
        this.platformStyle = platformTextStyle;
    }

    public /* synthetic */ TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle, PlatformTextStyle platformTextStyle, int i, jh2 jh2Var) {
        this(spanStyle, paragraphStyle, (i & 4) != 0 ? null : platformTextStyle);
    }

    public TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle) {
        this(spanStyle, paragraphStyle, TextStyleKt.createPlatformTextStyleInternal(spanStyle.getPlatformStyle(), paragraphStyle.getPlatformStyle()));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, int i, jh2 jh2Var) {
        long jM6268getUnspecified0d7_KjU = (i & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM9247getUnspecifiedXSAIIZE = (i & 2) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j2;
        FontWeight fontWeight2 = (i & 4) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i & 8) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i & 16) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i & 32) != 0 ? null : fontFamily;
        String str2 = (i & 64) != 0 ? null : str;
        long jM9247getUnspecifiedXSAIIZE2 = (i & 128) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j3;
        BaselineShift baselineShift2 = (i & 256) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i & 512) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i & 1024) != 0 ? null : localeList;
        long jM6268getUnspecified0d7_KjU2 = (i & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        TextDecoration textDecoration2 = (i & 4096) != 0 ? null : textDecoration;
        long j6 = jM6268getUnspecified0d7_KjU;
        Shadow shadow2 = (i & 8192) != 0 ? null : shadow;
        TextAlign textAlign2 = (i & 16384) != 0 ? null : textAlign;
        TextDirection textDirection2 = (i & 32768) != 0 ? null : textDirection;
        long jM9247getUnspecifiedXSAIIZE3 = (i & 65536) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j5;
        long j7 = jM9247getUnspecifiedXSAIIZE;
        FontWeight fontWeight3 = fontWeight2;
        TextDecoration textDecoration3 = textDecoration2;
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j8 = jM9247getUnspecifiedXSAIIZE2;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j9 = jM6268getUnspecified0d7_KjU2;
        this(j6, j7, fontWeight3, fontStyle3, fontSynthesis3, fontFamily3, str3, j8, baselineShift3, textGeometricTransform3, localeList3, j9, textDecoration3, shadow2, textAlign2, textDirection2, jM9247getUnspecifiedXSAIIZE3, (i & 131072) != 0 ? null : textIndent, null);
    }

    private TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent) {
        SpanStyle spanStyle = new SpanStyle(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, (PlatformSpanStyle) null, (DrawStyle) null, (jh2) null);
        this(spanStyle, new ParagraphStyle(textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk(), textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco(), j5, textIndent, (PlatformParagraphStyle) null, (LineHeightStyle) null, LineBreak.Companion.m8838getUnspecifiedrAG3T2k(), Hyphens.Companion.m8814getUnspecifiedvmbZdU8(), (TextMotion) null, (jh2) null), null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i, jh2 jh2Var) {
        long jM6268getUnspecified0d7_KjU = (i & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM9247getUnspecifiedXSAIIZE = (i & 2) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j2;
        FontWeight fontWeight2 = (i & 4) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i & 8) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i & 16) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i & 32) != 0 ? null : fontFamily;
        String str2 = (i & 64) != 0 ? null : str;
        long jM9247getUnspecifiedXSAIIZE2 = (i & 128) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j3;
        BaselineShift baselineShift2 = (i & 256) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i & 512) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i & 1024) != 0 ? null : localeList;
        long jM6268getUnspecified0d7_KjU2 = (i & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        TextDecoration textDecoration2 = (i & 4096) != 0 ? null : textDecoration;
        long j6 = jM6268getUnspecified0d7_KjU;
        Shadow shadow2 = (i & 8192) != 0 ? null : shadow;
        TextAlign textAlign2 = (i & 16384) != 0 ? null : textAlign;
        TextDirection textDirection2 = (i & 32768) != 0 ? null : textDirection;
        long jM9247getUnspecifiedXSAIIZE3 = (i & 65536) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j5;
        TextIndent textIndent2 = (i & 131072) != 0 ? null : textIndent;
        PlatformTextStyle platformTextStyle2 = (i & 262144) != 0 ? null : platformTextStyle;
        long j7 = jM9247getUnspecifiedXSAIIZE;
        FontWeight fontWeight3 = fontWeight2;
        TextDecoration textDecoration3 = textDecoration2;
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j8 = jM9247getUnspecifiedXSAIIZE2;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j9 = jM6268getUnspecified0d7_KjU2;
        this(j6, j7, fontWeight3, fontStyle3, fontSynthesis3, fontFamily3, str3, j8, baselineShift3, textGeometricTransform3, localeList3, j9, textDecoration3, shadow2, textAlign2, textDirection2, jM9247getUnspecifiedXSAIIZE3, textIndent2, platformTextStyle2, (i & 524288) != 0 ? null : lineHeightStyle, null);
    }

    private TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle) {
        this(new SpanStyle(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, (DrawStyle) null, (jh2) null), new ParagraphStyle(textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk(), textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco(), j5, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, LineBreak.Companion.m8838getUnspecifiedrAG3T2k(), Hyphens.Companion.m8814getUnspecifiedvmbZdU8(), (TextMotion) null, (jh2) null), platformTextStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, int i, jh2 jh2Var) {
        long jM6268getUnspecified0d7_KjU = (i & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM9247getUnspecifiedXSAIIZE = (i & 2) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j2;
        FontWeight fontWeight2 = (i & 4) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i & 8) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i & 16) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i & 32) != 0 ? null : fontFamily;
        String str2 = (i & 64) != 0 ? null : str;
        long jM9247getUnspecifiedXSAIIZE2 = (i & 128) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j3;
        BaselineShift baselineShift2 = (i & 256) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i & 512) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i & 1024) != 0 ? null : localeList;
        long jM6268getUnspecified0d7_KjU2 = (i & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        TextDecoration textDecoration2 = (i & 4096) != 0 ? null : textDecoration;
        long j6 = jM6268getUnspecified0d7_KjU;
        Shadow shadow2 = (i & 8192) != 0 ? null : shadow;
        TextAlign textAlign2 = (i & 16384) != 0 ? null : textAlign;
        TextDirection textDirection2 = (i & 32768) != 0 ? null : textDirection;
        long jM9247getUnspecifiedXSAIIZE3 = (i & 65536) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j5;
        TextIndent textIndent2 = (i & 131072) != 0 ? null : textIndent;
        PlatformTextStyle platformTextStyle2 = (i & 262144) != 0 ? null : platformTextStyle;
        LineHeightStyle lineHeightStyle2 = (i & 524288) != 0 ? null : lineHeightStyle;
        LineBreak lineBreak2 = (i & 1048576) != 0 ? null : lineBreak;
        long j7 = jM9247getUnspecifiedXSAIIZE;
        FontWeight fontWeight3 = fontWeight2;
        TextDecoration textDecoration3 = textDecoration2;
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j8 = jM9247getUnspecifiedXSAIIZE2;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j9 = jM6268getUnspecified0d7_KjU2;
        this(j6, j7, fontWeight3, fontStyle3, fontSynthesis3, fontFamily3, str3, j8, baselineShift3, textGeometricTransform3, localeList3, j9, textDecoration3, shadow2, textAlign2, textDirection2, jM9247getUnspecifiedXSAIIZE3, textIndent2, platformTextStyle2, lineHeightStyle2, lineBreak2, (i & 2097152) != 0 ? null : hyphens, null);
    }

    private TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens) {
        SpanStyle spanStyle = new SpanStyle(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, (DrawStyle) null, 32768, (jh2) null);
        int iM8919unboximpl = textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk();
        int iM8936unboximpl = textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco();
        PlatformParagraphStyle paragraphStyle = platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null;
        this(spanStyle, new ParagraphStyle(iM8919unboximpl, iM8936unboximpl, j5, textIndent, paragraphStyle, lineHeightStyle, lineBreak != null ? lineBreak.m8830unboximpl() : LineBreak.Companion.m8838getUnspecifiedrAG3T2k(), hyphens != null ? hyphens.m8811unboximpl() : Hyphens.Companion.m8814getUnspecifiedvmbZdU8(), (TextMotion) null, 256, (jh2) null), platformTextStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, int i, jh2 jh2Var) {
        long jM6268getUnspecified0d7_KjU = (i & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j;
        long jM9247getUnspecifiedXSAIIZE = (i & 2) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j2;
        FontWeight fontWeight2 = (i & 4) != 0 ? null : fontWeight;
        FontStyle fontStyle2 = (i & 8) != 0 ? null : fontStyle;
        FontSynthesis fontSynthesis2 = (i & 16) != 0 ? null : fontSynthesis;
        FontFamily fontFamily2 = (i & 32) != 0 ? null : fontFamily;
        String str2 = (i & 64) != 0 ? null : str;
        long jM9247getUnspecifiedXSAIIZE2 = (i & 128) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j3;
        BaselineShift baselineShift2 = (i & 256) != 0 ? null : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i & 512) != 0 ? null : textGeometricTransform;
        LocaleList localeList2 = (i & 1024) != 0 ? null : localeList;
        long jM6268getUnspecified0d7_KjU2 = (i & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j4;
        TextDecoration textDecoration2 = (i & 4096) != 0 ? null : textDecoration;
        long j6 = jM6268getUnspecified0d7_KjU;
        Shadow shadow2 = (i & 8192) != 0 ? null : shadow;
        DrawStyle drawStyle2 = (i & 16384) != 0 ? null : drawStyle;
        TextAlign textAlign2 = (i & 32768) != 0 ? null : textAlign;
        TextDirection textDirection2 = (i & 65536) != 0 ? null : textDirection;
        long jM9247getUnspecifiedXSAIIZE3 = (i & 131072) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j5;
        TextIndent textIndent2 = (i & 262144) != 0 ? null : textIndent;
        PlatformTextStyle platformTextStyle2 = (i & 524288) != 0 ? null : platformTextStyle;
        LineHeightStyle lineHeightStyle2 = (i & 1048576) != 0 ? null : lineHeightStyle;
        LineBreak lineBreak2 = (i & 2097152) != 0 ? null : lineBreak;
        Hyphens hyphens2 = (i & 4194304) != 0 ? null : hyphens;
        long j7 = jM9247getUnspecifiedXSAIIZE;
        FontWeight fontWeight3 = fontWeight2;
        TextDecoration textDecoration3 = textDecoration2;
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j8 = jM9247getUnspecifiedXSAIIZE2;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j9 = jM6268getUnspecified0d7_KjU2;
        this(j6, j7, fontWeight3, fontStyle3, fontSynthesis3, fontFamily3, str3, j8, baselineShift3, textGeometricTransform3, localeList3, j9, textDecoration3, shadow2, drawStyle2, textAlign2, textDirection2, jM9247getUnspecifiedXSAIIZE3, textIndent2, platformTextStyle2, lineHeightStyle2, lineBreak2, hyphens2, (i & 8388608) != 0 ? null : textMotion, (jh2) null);
    }

    private TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion) {
        this(new SpanStyle(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, drawStyle, (jh2) null), new ParagraphStyle(textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk(), textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco(), j5, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, lineBreak != null ? lineBreak.m8830unboximpl() : LineBreak.Companion.m8838getUnspecifiedrAG3T2k(), hyphens != null ? hyphens.m8811unboximpl() : Hyphens.Companion.m8814getUnspecifiedvmbZdU8(), textMotion, (jh2) null), platformTextStyle);
    }

    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion, jh2 jh2Var) {
        this(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, drawStyle, i, i2, j5, textIndent, platformTextStyle, lineHeightStyle, i3, i4, textMotion);
    }

    private TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j5, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        this(new SpanStyle(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, drawStyle, (jh2) null), new ParagraphStyle(i, i2, j5, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, i3, i4, textMotion, (jh2) null), platformTextStyle);
    }

    public /* synthetic */ TextStyle(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j4, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion, int i5, jh2 jh2Var) {
        this(brush, (i5 & 2) != 0 ? Float.NaN : f, (i5 & 4) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j, (i5 & 8) != 0 ? null : fontWeight, (i5 & 16) != 0 ? null : fontStyle, (i5 & 32) != 0 ? null : fontSynthesis, (i5 & 64) != 0 ? null : fontFamily, (i5 & 128) != 0 ? null : str, (i5 & 256) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j2, (i5 & 512) != 0 ? null : baselineShift, (i5 & 1024) != 0 ? null : textGeometricTransform, (i5 & 2048) != 0 ? null : localeList, (i5 & 4096) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3, (i5 & 8192) != 0 ? null : textDecoration, (i5 & 16384) != 0 ? null : shadow, (32768 & i5) != 0 ? null : drawStyle, (65536 & i5) != 0 ? TextAlign.Companion.m8926getUnspecifiede0LSkKk() : i, (131072 & i5) != 0 ? TextDirection.Companion.m8942getUnspecifieds_7Xco() : i2, (262144 & i5) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j4, (524288 & i5) != 0 ? null : textIndent, (1048576 & i5) != 0 ? null : platformTextStyle, (2097152 & i5) != 0 ? null : lineHeightStyle, (4194304 & i5) != 0 ? LineBreak.Companion.m8838getUnspecifiedrAG3T2k() : i3, (8388608 & i5) != 0 ? Hyphens.Companion.m8814getUnspecifiedvmbZdU8() : i4, (i5 & 16777216) != 0 ? null : textMotion, (jh2) null);
    }

    private TextStyle(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, int i, int i2, long j4, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        this(new SpanStyle(brush, f, j, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, drawStyle, (jh2) null), new ParagraphStyle(i, i2, j4, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, i3, i4, textMotion, (jh2) null), platformTextStyle);
    }

    public /* synthetic */ TextStyle(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j4, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion, int i, jh2 jh2Var) {
        this(brush, (i & 2) != 0 ? Float.NaN : f, (i & 4) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j, (i & 8) != 0 ? null : fontWeight, (i & 16) != 0 ? null : fontStyle, (i & 32) != 0 ? null : fontSynthesis, (i & 64) != 0 ? null : fontFamily, (i & 128) != 0 ? null : str, (i & 256) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j2, (i & 512) != 0 ? null : baselineShift, (i & 1024) != 0 ? null : textGeometricTransform, (i & 2048) != 0 ? null : localeList, (i & 4096) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3, (i & 8192) != 0 ? null : textDecoration, (i & 16384) != 0 ? null : shadow, (32768 & i) != 0 ? null : drawStyle, (65536 & i) != 0 ? null : textAlign, (131072 & i) != 0 ? null : textDirection, (262144 & i) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j4, (524288 & i) != 0 ? null : textIndent, (1048576 & i) != 0 ? null : platformTextStyle, (2097152 & i) != 0 ? null : lineHeightStyle, (4194304 & i) != 0 ? null : lineBreak, (8388608 & i) != 0 ? null : hyphens, (i & 16777216) != 0 ? null : textMotion, (jh2) null);
    }

    private TextStyle(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, DrawStyle drawStyle, TextAlign textAlign, TextDirection textDirection, long j4, TextIndent textIndent, PlatformTextStyle platformTextStyle, LineHeightStyle lineHeightStyle, LineBreak lineBreak, Hyphens hyphens, TextMotion textMotion) {
        this(new SpanStyle(brush, f, j, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, platformTextStyle != null ? platformTextStyle.getSpanStyle() : null, drawStyle, (jh2) null), new ParagraphStyle(textAlign != null ? textAlign.m8919unboximpl() : TextAlign.Companion.m8926getUnspecifiede0LSkKk(), textDirection != null ? textDirection.m8936unboximpl() : TextDirection.Companion.m8942getUnspecifieds_7Xco(), j4, textIndent, platformTextStyle != null ? platformTextStyle.getParagraphStyle() : null, lineHeightStyle, lineBreak != null ? lineBreak.m8830unboximpl() : LineBreak.Companion.m8838getUnspecifiedrAG3T2k(), hyphens != null ? hyphens.m8811unboximpl() : Hyphens.Companion.m8814getUnspecifiedvmbZdU8(), textMotion, (jh2) null), platformTextStyle);
    }
}
