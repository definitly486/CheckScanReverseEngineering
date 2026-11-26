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
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.ln;
import defpackage.r01;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class SpanStyle implements AnnotatedString.Annotation {
    public static final int $stable = 0;
    private final long background;
    private final BaselineShift baselineShift;
    private final DrawStyle drawStyle;
    private final FontFamily fontFamily;
    private final String fontFeatureSettings;
    private final long fontSize;
    private final FontStyle fontStyle;
    private final FontSynthesis fontSynthesis;
    private final FontWeight fontWeight;
    private final long letterSpacing;
    private final LocaleList localeList;
    private final PlatformSpanStyle platformStyle;
    private final Shadow shadow;
    private final TextDecoration textDecoration;
    private final TextForegroundStyle textForegroundStyle;
    private final TextGeometricTransform textGeometricTransform;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle, int i, jh2 jh2Var) {
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
        long j5 = jM6268getUnspecified0d7_KjU;
        Shadow shadow2 = (i & 8192) != 0 ? null : shadow;
        PlatformSpanStyle platformSpanStyle2 = (i & 16384) != 0 ? null : platformSpanStyle;
        long j6 = jM9247getUnspecifiedXSAIIZE;
        FontWeight fontWeight3 = fontWeight2;
        TextDecoration textDecoration3 = textDecoration2;
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j7 = jM9247getUnspecifiedXSAIIZE2;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j8 = jM6268getUnspecified0d7_KjU2;
        this(j5, j6, fontWeight3, fontStyle3, fontSynthesis3, fontFamily3, str3, j7, baselineShift3, textGeometricTransform3, localeList3, j8, textDecoration3, shadow2, platformSpanStyle2, (i & 32768) != 0 ? null : drawStyle, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-GSF8kmg$default, reason: not valid java name */
    public static /* synthetic */ SpanStyle m8423copyGSF8kmg$default(SpanStyle spanStyle, long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle, int i, Object obj) {
        long jM8432getColor0d7_KjU = (i & 1) != 0 ? spanStyle.m8432getColor0d7_KjU() : j;
        return spanStyle.m8427copyGSF8kmg(jM8432getColor0d7_KjU, (i & 2) != 0 ? spanStyle.fontSize : j2, (i & 4) != 0 ? spanStyle.fontWeight : fontWeight, (i & 8) != 0 ? spanStyle.fontStyle : fontStyle, (i & 16) != 0 ? spanStyle.fontSynthesis : fontSynthesis, (i & 32) != 0 ? spanStyle.fontFamily : fontFamily, (i & 64) != 0 ? spanStyle.fontFeatureSettings : str, (i & 128) != 0 ? spanStyle.letterSpacing : j3, (i & 256) != 0 ? spanStyle.baselineShift : baselineShift, (i & 512) != 0 ? spanStyle.textGeometricTransform : textGeometricTransform, (i & 1024) != 0 ? spanStyle.localeList : localeList, (i & 2048) != 0 ? spanStyle.background : j4, (i & 4096) != 0 ? spanStyle.textDecoration : textDecoration, (i & 8192) != 0 ? spanStyle.shadow : shadow, (i & 16384) != 0 ? spanStyle.platformStyle : platformSpanStyle, (i & 32768) != 0 ? spanStyle.drawStyle : drawStyle);
    }

    /* JADX INFO: renamed from: copy-NcG25M8$default, reason: not valid java name */
    public static /* synthetic */ SpanStyle m8425copyNcG25M8$default(SpanStyle spanStyle, Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle, int i, Object obj) {
        DrawStyle drawStyle2;
        PlatformSpanStyle platformSpanStyle2;
        float alpha = (i & 2) != 0 ? spanStyle.getAlpha() : f;
        long j4 = (i & 4) != 0 ? spanStyle.fontSize : j;
        FontWeight fontWeight2 = (i & 8) != 0 ? spanStyle.fontWeight : fontWeight;
        FontStyle fontStyle2 = (i & 16) != 0 ? spanStyle.fontStyle : fontStyle;
        FontSynthesis fontSynthesis2 = (i & 32) != 0 ? spanStyle.fontSynthesis : fontSynthesis;
        FontFamily fontFamily2 = (i & 64) != 0 ? spanStyle.fontFamily : fontFamily;
        String str2 = (i & 128) != 0 ? spanStyle.fontFeatureSettings : str;
        long j5 = (i & 256) != 0 ? spanStyle.letterSpacing : j2;
        BaselineShift baselineShift2 = (i & 512) != 0 ? spanStyle.baselineShift : baselineShift;
        TextGeometricTransform textGeometricTransform2 = (i & 1024) != 0 ? spanStyle.textGeometricTransform : textGeometricTransform;
        LocaleList localeList2 = (i & 2048) != 0 ? spanStyle.localeList : localeList;
        float f2 = alpha;
        long j6 = j4;
        long j7 = (i & 4096) != 0 ? spanStyle.background : j3;
        TextDecoration textDecoration2 = (i & 8192) != 0 ? spanStyle.textDecoration : textDecoration;
        Shadow shadow2 = (i & 16384) != 0 ? spanStyle.shadow : shadow;
        PlatformSpanStyle platformSpanStyle3 = (i & 32768) != 0 ? spanStyle.platformStyle : platformSpanStyle;
        if ((i & 65536) != 0) {
            platformSpanStyle2 = platformSpanStyle3;
            drawStyle2 = spanStyle.drawStyle;
        } else {
            drawStyle2 = drawStyle;
            platformSpanStyle2 = platformSpanStyle3;
        }
        return spanStyle.m8429copyNcG25M8(brush, f2, j6, fontWeight2, fontStyle2, fontSynthesis2, fontFamily2, str2, j5, baselineShift2, textGeometricTransform2, localeList2, j7, textDecoration2, shadow2, platformSpanStyle2, drawStyle2);
    }

    public static /* synthetic */ SpanStyle merge$default(SpanStyle spanStyle, SpanStyle spanStyle2, int i, Object obj) {
        if ((i & 1) != 0) {
            spanStyle2 = null;
        }
        return spanStyle.merge(spanStyle2);
    }

    @ul2
    /* JADX INFO: renamed from: copy-2BkPm_w, reason: not valid java name */
    public final /* synthetic */ SpanStyle m8426copy2BkPm_w(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle) {
        return new SpanStyle(Color.m6233equalsimpl0(j, m8432getColor0d7_KjU()) ? this.textForegroundStyle : TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformSpanStyle, (DrawStyle) null, 32768, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-GSF8kmg, reason: not valid java name */
    public final SpanStyle m8427copyGSF8kmg(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle) {
        return new SpanStyle(Color.m6233equalsimpl0(j, m8432getColor0d7_KjU()) ? this.textForegroundStyle : TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformSpanStyle, drawStyle, (jh2) null);
    }

    @ul2
    /* JADX INFO: renamed from: copy-IuqyXdg, reason: not valid java name */
    public final /* synthetic */ SpanStyle m8428copyIuqyXdg(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow) {
        return new SpanStyle(Color.m6233equalsimpl0(j, m8432getColor0d7_KjU()) ? this.textForegroundStyle : TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, this.platformStyle, this.drawStyle, (jh2) null);
    }

    /* JADX INFO: renamed from: copy-NcG25M8, reason: not valid java name */
    public final SpanStyle m8429copyNcG25M8(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle) {
        return new SpanStyle(TextForegroundStyle.Companion.from(brush, f), j, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, platformSpanStyle, drawStyle, (jh2) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpanStyle)) {
            return false;
        }
        SpanStyle spanStyle = (SpanStyle) obj;
        return hasSameLayoutAffectingAttributes$ui_text(spanStyle) && hasSameNonLayoutAttributes$ui_text(spanStyle);
    }

    public final float getAlpha() {
        return this.textForegroundStyle.getAlpha();
    }

    /* JADX INFO: renamed from: getBackground-0d7_KjU, reason: not valid java name */
    public final long m8430getBackground0d7_KjU() {
        return this.background;
    }

    /* JADX INFO: renamed from: getBaselineShift-5SSeXJ0, reason: not valid java name */
    public final BaselineShift m8431getBaselineShift5SSeXJ0() {
        return this.baselineShift;
    }

    public final Brush getBrush() {
        return this.textForegroundStyle.getBrush();
    }

    /* JADX INFO: renamed from: getColor-0d7_KjU, reason: not valid java name */
    public final long m8432getColor0d7_KjU() {
        return this.textForegroundStyle.mo8800getColor0d7_KjU();
    }

    public final DrawStyle getDrawStyle() {
        return this.drawStyle;
    }

    public final FontFamily getFontFamily() {
        return this.fontFamily;
    }

    public final String getFontFeatureSettings() {
        return this.fontFeatureSettings;
    }

    /* JADX INFO: renamed from: getFontSize-XSAIIZE, reason: not valid java name */
    public final long m8433getFontSizeXSAIIZE() {
        return this.fontSize;
    }

    /* JADX INFO: renamed from: getFontStyle-4Lr2A7w, reason: not valid java name */
    public final FontStyle m8434getFontStyle4Lr2A7w() {
        return this.fontStyle;
    }

    /* JADX INFO: renamed from: getFontSynthesis-ZQGJjVo, reason: not valid java name */
    public final FontSynthesis m8435getFontSynthesisZQGJjVo() {
        return this.fontSynthesis;
    }

    public final FontWeight getFontWeight() {
        return this.fontWeight;
    }

    /* JADX INFO: renamed from: getLetterSpacing-XSAIIZE, reason: not valid java name */
    public final long m8436getLetterSpacingXSAIIZE() {
        return this.letterSpacing;
    }

    public final LocaleList getLocaleList() {
        return this.localeList;
    }

    public final PlatformSpanStyle getPlatformStyle() {
        return this.platformStyle;
    }

    public final Shadow getShadow() {
        return this.shadow;
    }

    public final TextDecoration getTextDecoration() {
        return this.textDecoration;
    }

    public final TextForegroundStyle getTextForegroundStyle$ui_text() {
        return this.textForegroundStyle;
    }

    public final TextGeometricTransform getTextGeometricTransform() {
        return this.textGeometricTransform;
    }

    public final boolean hasSameLayoutAffectingAttributes$ui_text(SpanStyle spanStyle) {
        if (this == spanStyle) {
            return true;
        }
        return TextUnit.m9233equalsimpl0(this.fontSize, spanStyle.fontSize) && aa4.e(this.fontWeight, spanStyle.fontWeight) && aa4.e(this.fontStyle, spanStyle.fontStyle) && aa4.e(this.fontSynthesis, spanStyle.fontSynthesis) && aa4.e(this.fontFamily, spanStyle.fontFamily) && aa4.e(this.fontFeatureSettings, spanStyle.fontFeatureSettings) && TextUnit.m9233equalsimpl0(this.letterSpacing, spanStyle.letterSpacing) && aa4.e(this.baselineShift, spanStyle.baselineShift) && aa4.e(this.textGeometricTransform, spanStyle.textGeometricTransform) && aa4.e(this.localeList, spanStyle.localeList) && Color.m6233equalsimpl0(this.background, spanStyle.background) && aa4.e(this.platformStyle, spanStyle.platformStyle);
    }

    public final boolean hasSameNonLayoutAttributes$ui_text(SpanStyle spanStyle) {
        return aa4.e(this.textForegroundStyle, spanStyle.textForegroundStyle) && aa4.e(this.textDecoration, spanStyle.textDecoration) && aa4.e(this.shadow, spanStyle.shadow) && aa4.e(this.drawStyle, spanStyle.drawStyle);
    }

    public int hashCode() {
        int iM6239hashCodeimpl = Color.m6239hashCodeimpl(m8432getColor0d7_KjU()) * 31;
        Brush brush = getBrush();
        int iM9237hashCodeimpl = (TextUnit.m9237hashCodeimpl(this.fontSize) + ((Float.hashCode(getAlpha()) + ((iM6239hashCodeimpl + (brush != null ? brush.hashCode() : 0)) * 31)) * 31)) * 31;
        FontWeight fontWeight = this.fontWeight;
        int iHashCode = (iM9237hashCodeimpl + (fontWeight != null ? fontWeight.hashCode() : 0)) * 31;
        FontStyle fontStyle = this.fontStyle;
        int iM8604hashCodeimpl = (iHashCode + (fontStyle != null ? FontStyle.m8604hashCodeimpl(fontStyle.m8606unboximpl()) : 0)) * 31;
        FontSynthesis fontSynthesis = this.fontSynthesis;
        int iM8615hashCodeimpl = (iM8604hashCodeimpl + (fontSynthesis != null ? FontSynthesis.m8615hashCodeimpl(fontSynthesis.m8619unboximpl()) : 0)) * 31;
        FontFamily fontFamily = this.fontFamily;
        int iHashCode2 = (iM8615hashCodeimpl + (fontFamily != null ? fontFamily.hashCode() : 0)) * 31;
        String str = this.fontFeatureSettings;
        int iM9237hashCodeimpl2 = (TextUnit.m9237hashCodeimpl(this.letterSpacing) + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31)) * 31;
        BaselineShift baselineShift = this.baselineShift;
        int iM8786hashCodeimpl = (iM9237hashCodeimpl2 + (baselineShift != null ? BaselineShift.m8786hashCodeimpl(baselineShift.m8788unboximpl()) : 0)) * 31;
        TextGeometricTransform textGeometricTransform = this.textGeometricTransform;
        int iHashCode3 = (iM8786hashCodeimpl + (textGeometricTransform != null ? textGeometricTransform.hashCode() : 0)) * 31;
        LocaleList localeList = this.localeList;
        int iB = r01.b((iHashCode3 + (localeList != null ? localeList.hashCode() : 0)) * 31, 31, this.background);
        TextDecoration textDecoration = this.textDecoration;
        int iHashCode4 = (iB + (textDecoration != null ? textDecoration.hashCode() : 0)) * 31;
        Shadow shadow = this.shadow;
        int iHashCode5 = (iHashCode4 + (shadow != null ? shadow.hashCode() : 0)) * 31;
        PlatformSpanStyle platformSpanStyle = this.platformStyle;
        int iHashCode6 = (iHashCode5 + (platformSpanStyle != null ? platformSpanStyle.hashCode() : 0)) * 31;
        DrawStyle drawStyle = this.drawStyle;
        return iHashCode6 + (drawStyle != null ? drawStyle.hashCode() : 0);
    }

    public final int hashCodeLayoutAffectingAttributes$ui_text() {
        int iM9237hashCodeimpl = TextUnit.m9237hashCodeimpl(this.fontSize) * 31;
        FontWeight fontWeight = this.fontWeight;
        int iHashCode = (iM9237hashCodeimpl + (fontWeight != null ? fontWeight.hashCode() : 0)) * 31;
        FontStyle fontStyle = this.fontStyle;
        int iM8604hashCodeimpl = (iHashCode + (fontStyle != null ? FontStyle.m8604hashCodeimpl(fontStyle.m8606unboximpl()) : 0)) * 31;
        FontSynthesis fontSynthesis = this.fontSynthesis;
        int iM8615hashCodeimpl = (iM8604hashCodeimpl + (fontSynthesis != null ? FontSynthesis.m8615hashCodeimpl(fontSynthesis.m8619unboximpl()) : 0)) * 31;
        FontFamily fontFamily = this.fontFamily;
        int iHashCode2 = (iM8615hashCodeimpl + (fontFamily != null ? fontFamily.hashCode() : 0)) * 31;
        String str = this.fontFeatureSettings;
        int iM9237hashCodeimpl2 = (TextUnit.m9237hashCodeimpl(this.letterSpacing) + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31)) * 31;
        BaselineShift baselineShift = this.baselineShift;
        int iM8786hashCodeimpl = (iM9237hashCodeimpl2 + (baselineShift != null ? BaselineShift.m8786hashCodeimpl(baselineShift.m8788unboximpl()) : 0)) * 31;
        TextGeometricTransform textGeometricTransform = this.textGeometricTransform;
        int iHashCode3 = (iM8786hashCodeimpl + (textGeometricTransform != null ? textGeometricTransform.hashCode() : 0)) * 31;
        LocaleList localeList = this.localeList;
        int iB = r01.b((iHashCode3 + (localeList != null ? localeList.hashCode() : 0)) * 31, 31, this.background);
        PlatformSpanStyle platformSpanStyle = this.platformStyle;
        return iB + (platformSpanStyle != null ? platformSpanStyle.hashCode() : 0);
    }

    public final SpanStyle merge(SpanStyle spanStyle) {
        return spanStyle == null ? this : SpanStyleKt.m8437fastMergedSHsh3o(this, spanStyle.textForegroundStyle.mo8800getColor0d7_KjU(), spanStyle.textForegroundStyle.getBrush(), spanStyle.textForegroundStyle.getAlpha(), spanStyle.fontSize, spanStyle.fontWeight, spanStyle.fontStyle, spanStyle.fontSynthesis, spanStyle.fontFamily, spanStyle.fontFeatureSettings, spanStyle.letterSpacing, spanStyle.baselineShift, spanStyle.textGeometricTransform, spanStyle.localeList, spanStyle.background, spanStyle.textDecoration, spanStyle.shadow, spanStyle.platformStyle, spanStyle.drawStyle);
    }

    public final SpanStyle plus(SpanStyle spanStyle) {
        return merge(spanStyle);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SpanStyle(color=");
        sb.append((Object) Color.m6240toStringimpl(m8432getColor0d7_KjU()));
        sb.append(", brush=");
        sb.append(getBrush());
        sb.append(", alpha=");
        sb.append(getAlpha());
        sb.append(", fontSize=");
        sb.append((Object) TextUnit.m9243toStringimpl(this.fontSize));
        sb.append(", fontWeight=");
        sb.append(this.fontWeight);
        sb.append(", fontStyle=");
        sb.append(this.fontStyle);
        sb.append(", fontSynthesis=");
        sb.append(this.fontSynthesis);
        sb.append(", fontFamily=");
        sb.append(this.fontFamily);
        sb.append(", fontFeatureSettings=");
        sb.append(this.fontFeatureSettings);
        sb.append(", letterSpacing=");
        sb.append((Object) TextUnit.m9243toStringimpl(this.letterSpacing));
        sb.append(", baselineShift=");
        sb.append(this.baselineShift);
        sb.append(", textGeometricTransform=");
        sb.append(this.textGeometricTransform);
        sb.append(", localeList=");
        sb.append(this.localeList);
        sb.append(", background=");
        ln.g(this.background, ", textDecoration=", sb);
        sb.append(this.textDecoration);
        sb.append(", shadow=");
        sb.append(this.shadow);
        sb.append(", platformStyle=");
        sb.append(this.platformStyle);
        sb.append(", drawStyle=");
        sb.append(this.drawStyle);
        sb.append(')');
        return sb.toString();
    }

    @ul2
    public /* synthetic */ SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, jh2 jh2Var) {
        this(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformSpanStyle);
    }

    public /* synthetic */ SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle, jh2 jh2Var) {
        this(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformSpanStyle, drawStyle);
    }

    public /* synthetic */ SpanStyle(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle, jh2 jh2Var) {
        this(brush, f, j, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, platformSpanStyle, drawStyle);
    }

    public /* synthetic */ SpanStyle(TextForegroundStyle textForegroundStyle, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle, jh2 jh2Var) {
        this(textForegroundStyle, j, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, platformSpanStyle, drawStyle);
    }

    private SpanStyle(TextForegroundStyle textForegroundStyle, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle) {
        this.textForegroundStyle = textForegroundStyle;
        this.fontSize = j;
        this.fontWeight = fontWeight;
        this.fontStyle = fontStyle;
        this.fontSynthesis = fontSynthesis;
        this.fontFamily = fontFamily;
        this.fontFeatureSettings = str;
        this.letterSpacing = j2;
        this.baselineShift = baselineShift;
        this.textGeometricTransform = textGeometricTransform;
        this.localeList = localeList;
        this.background = j3;
        this.textDecoration = textDecoration;
        this.shadow = shadow;
        this.platformStyle = platformSpanStyle;
        this.drawStyle = drawStyle;
    }

    public /* synthetic */ SpanStyle(TextForegroundStyle textForegroundStyle, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle, int i, jh2 jh2Var) {
        this(textForegroundStyle, (i & 2) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j, (i & 4) != 0 ? null : fontWeight, (i & 8) != 0 ? null : fontStyle, (i & 16) != 0 ? null : fontSynthesis, (i & 32) != 0 ? null : fontFamily, (i & 64) != 0 ? null : str, (i & 128) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j2, (i & 256) != 0 ? null : baselineShift, (i & 512) != 0 ? null : textGeometricTransform, (i & 1024) != 0 ? null : localeList, (i & 2048) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3, (i & 4096) != 0 ? null : textDecoration, (i & 8192) != 0 ? null : shadow, (i & 16384) != 0 ? null : platformSpanStyle, (i & 32768) != 0 ? null : drawStyle, (jh2) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, int i, jh2 jh2Var) {
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
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j5 = jM9247getUnspecifiedXSAIIZE2;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j6 = jM6268getUnspecified0d7_KjU2;
        this(jM6268getUnspecified0d7_KjU, jM9247getUnspecifiedXSAIIZE, fontWeight2, fontStyle3, fontSynthesis3, fontFamily3, str3, j5, baselineShift3, textGeometricTransform3, localeList3, j6, (i & 4096) != 0 ? null : textDecoration, (i & 8192) != 0 ? null : shadow, (jh2) null);
    }

    private SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow) {
        this(TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, (PlatformSpanStyle) null, (DrawStyle) null, 32768, (jh2) null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, int i, jh2 jh2Var) {
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
        long j5 = jM6268getUnspecified0d7_KjU;
        long j6 = jM9247getUnspecifiedXSAIIZE;
        FontWeight fontWeight3 = fontWeight2;
        TextDecoration textDecoration3 = textDecoration2;
        FontStyle fontStyle3 = fontStyle2;
        FontSynthesis fontSynthesis3 = fontSynthesis2;
        FontFamily fontFamily3 = fontFamily2;
        String str3 = str2;
        long j7 = jM9247getUnspecifiedXSAIIZE2;
        BaselineShift baselineShift3 = baselineShift2;
        TextGeometricTransform textGeometricTransform3 = textGeometricTransform2;
        LocaleList localeList3 = localeList2;
        long j8 = jM6268getUnspecified0d7_KjU2;
        this(j5, j6, fontWeight3, fontStyle3, fontSynthesis3, fontFamily3, str3, j7, baselineShift3, textGeometricTransform3, localeList3, j8, textDecoration3, (i & 8192) != 0 ? null : shadow, (i & 16384) != 0 ? null : platformSpanStyle, (jh2) null);
    }

    private SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle) {
        this(TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformSpanStyle, (DrawStyle) null, 32768, (jh2) null);
    }

    @ul2
    public /* synthetic */ SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, jh2 jh2Var) {
        this(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow);
    }

    private SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle) {
        this(TextForegroundStyle.Companion.m8947from8_81llA(j), j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, platformSpanStyle, drawStyle, (jh2) null);
    }

    public /* synthetic */ SpanStyle(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle, int i, jh2 jh2Var) {
        this(brush, (i & 2) != 0 ? Float.NaN : f, (i & 4) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j, (i & 8) != 0 ? null : fontWeight, (i & 16) != 0 ? null : fontStyle, (i & 32) != 0 ? null : fontSynthesis, (i & 64) != 0 ? null : fontFamily, (i & 128) != 0 ? null : str, (i & 256) != 0 ? TextUnit.Companion.m9247getUnspecifiedXSAIIZE() : j2, (i & 512) != 0 ? null : baselineShift, (i & 1024) != 0 ? null : textGeometricTransform, (i & 2048) != 0 ? null : localeList, (i & 4096) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j3, (i & 8192) != 0 ? null : textDecoration, (i & 16384) != 0 ? null : shadow, (32768 & i) != 0 ? null : platformSpanStyle, (i & 65536) != 0 ? null : drawStyle, (jh2) null);
    }

    private SpanStyle(Brush brush, float f, long j, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j2, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j3, TextDecoration textDecoration, Shadow shadow, PlatformSpanStyle platformSpanStyle, DrawStyle drawStyle) {
        this(TextForegroundStyle.Companion.from(brush, f), j, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j2, baselineShift, textGeometricTransform, localeList, j3, textDecoration, shadow, platformSpanStyle, drawStyle, (jh2) null);
    }
}
