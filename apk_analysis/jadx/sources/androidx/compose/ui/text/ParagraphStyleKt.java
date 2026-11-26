package androidx.compose.ui.text;

import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextIndentKt;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ParagraphStyleKt {
    private static final long DefaultLineHeight = TextUnit.Companion.m9247getUnspecifiedXSAIIZE();

    /* JADX INFO: renamed from: fastMerge-j5T8yCg, reason: not valid java name */
    public static final ParagraphStyle m8399fastMergej5T8yCg(ParagraphStyle paragraphStyle, int i, int i2, long j, TextIndent textIndent, PlatformParagraphStyle platformParagraphStyle, LineHeightStyle lineHeightStyle, int i3, int i4, TextMotion textMotion) {
        long j2;
        long j3;
        int iM8396getTextAligne0LSkKk = i;
        TextIndent textIndent2 = textIndent;
        TextAlign.Companion companion = TextAlign.Companion;
        if (TextAlign.m8916equalsimpl0(iM8396getTextAligne0LSkKk, companion.m8926getUnspecifiede0LSkKk()) || TextAlign.m8916equalsimpl0(iM8396getTextAligne0LSkKk, paragraphStyle.m8396getTextAligne0LSkKk())) {
            if (TextUnit.m9234getRawTypeimpl(j) == 0) {
                j2 = 0;
                j3 = j;
            } else {
                j2 = 0;
                j3 = j;
                if (TextUnit.m9233equalsimpl0(j3, paragraphStyle.m8394getLineHeightXSAIIZE())) {
                }
            }
            if ((textIndent2 == null || textIndent2.equals(paragraphStyle.getTextIndent())) && ((TextDirection.m8933equalsimpl0(i2, TextDirection.Companion.m8942getUnspecifieds_7Xco()) || TextDirection.m8933equalsimpl0(i2, paragraphStyle.m8398getTextDirections_7Xco())) && ((platformParagraphStyle == null || platformParagraphStyle.equals(paragraphStyle.getPlatformStyle())) && ((lineHeightStyle == null || lineHeightStyle.equals(paragraphStyle.getLineHeightStyle())) && ((LineBreak.m8824equalsimpl0(i3, LineBreak.Companion.m8838getUnspecifiedrAG3T2k()) || LineBreak.m8824equalsimpl0(i3, paragraphStyle.m8393getLineBreakrAG3T2k())) && ((Hyphens.m8808equalsimpl0(i4, Hyphens.Companion.m8814getUnspecifiedvmbZdU8()) || Hyphens.m8808equalsimpl0(i4, paragraphStyle.m8391getHyphensvmbZdU8())) && (textMotion == null || textMotion.equals(paragraphStyle.getTextMotion())))))))) {
                return paragraphStyle;
            }
        } else {
            j2 = 0;
            j3 = j;
        }
        long jM8394getLineHeightXSAIIZE = TextUnit.m9234getRawTypeimpl(j3) == j2 ? paragraphStyle.m8394getLineHeightXSAIIZE() : j3;
        if (textIndent2 == null) {
            textIndent2 = paragraphStyle.getTextIndent();
        }
        TextIndent textIndent3 = textIndent2;
        if (TextAlign.m8916equalsimpl0(iM8396getTextAligne0LSkKk, companion.m8926getUnspecifiede0LSkKk())) {
            iM8396getTextAligne0LSkKk = paragraphStyle.m8396getTextAligne0LSkKk();
        }
        return new ParagraphStyle(iM8396getTextAligne0LSkKk, !TextDirection.m8933equalsimpl0(i2, TextDirection.Companion.m8942getUnspecifieds_7Xco()) ? i2 : paragraphStyle.m8398getTextDirections_7Xco(), jM8394getLineHeightXSAIIZE, textIndent3, mergePlatformStyle(paragraphStyle, platformParagraphStyle), lineHeightStyle == null ? paragraphStyle.getLineHeightStyle() : lineHeightStyle, !LineBreak.m8824equalsimpl0(i3, LineBreak.Companion.m8838getUnspecifiedrAG3T2k()) ? i3 : paragraphStyle.m8393getLineBreakrAG3T2k(), !Hyphens.m8808equalsimpl0(i4, Hyphens.Companion.m8814getUnspecifiedvmbZdU8()) ? i4 : paragraphStyle.m8391getHyphensvmbZdU8(), textMotion == null ? paragraphStyle.getTextMotion() : textMotion, (jh2) null);
    }

    public static final ParagraphStyle lerp(ParagraphStyle paragraphStyle, ParagraphStyle paragraphStyle2, float f) {
        int iM8919unboximpl = ((TextAlign) SpanStyleKt.lerpDiscrete(TextAlign.m8913boximpl(paragraphStyle.m8396getTextAligne0LSkKk()), TextAlign.m8913boximpl(paragraphStyle2.m8396getTextAligne0LSkKk()), f)).m8919unboximpl();
        int iM8936unboximpl = ((TextDirection) SpanStyleKt.lerpDiscrete(TextDirection.m8930boximpl(paragraphStyle.m8398getTextDirections_7Xco()), TextDirection.m8930boximpl(paragraphStyle2.m8398getTextDirections_7Xco()), f)).m8936unboximpl();
        long jM8438lerpTextUnitInheritableC3pnCVY = SpanStyleKt.m8438lerpTextUnitInheritableC3pnCVY(paragraphStyle.m8394getLineHeightXSAIIZE(), paragraphStyle2.m8394getLineHeightXSAIIZE(), f);
        TextIndent textIndent = paragraphStyle.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.Companion.getNone();
        }
        TextIndent textIndent2 = paragraphStyle2.getTextIndent();
        if (textIndent2 == null) {
            textIndent2 = TextIndent.Companion.getNone();
        }
        return new ParagraphStyle(iM8919unboximpl, iM8936unboximpl, jM8438lerpTextUnitInheritableC3pnCVY, TextIndentKt.lerp(textIndent, textIndent2, f), lerpPlatformStyle(paragraphStyle.getPlatformStyle(), paragraphStyle2.getPlatformStyle(), f), (LineHeightStyle) SpanStyleKt.lerpDiscrete(paragraphStyle.getLineHeightStyle(), paragraphStyle2.getLineHeightStyle(), f), ((LineBreak) SpanStyleKt.lerpDiscrete(LineBreak.m8818boximpl(paragraphStyle.m8393getLineBreakrAG3T2k()), LineBreak.m8818boximpl(paragraphStyle2.m8393getLineBreakrAG3T2k()), f)).m8830unboximpl(), ((Hyphens) SpanStyleKt.lerpDiscrete(Hyphens.m8805boximpl(paragraphStyle.m8391getHyphensvmbZdU8()), Hyphens.m8805boximpl(paragraphStyle2.m8391getHyphensvmbZdU8()), f)).m8811unboximpl(), (TextMotion) SpanStyleKt.lerpDiscrete(paragraphStyle.getTextMotion(), paragraphStyle2.getTextMotion(), f), (jh2) null);
    }

    private static final PlatformParagraphStyle lerpPlatformStyle(PlatformParagraphStyle platformParagraphStyle, PlatformParagraphStyle platformParagraphStyle2, float f) {
        if (platformParagraphStyle == null && platformParagraphStyle2 == null) {
            return null;
        }
        if (platformParagraphStyle == null) {
            platformParagraphStyle = PlatformParagraphStyle.Companion.getDefault();
        }
        if (platformParagraphStyle2 == null) {
            platformParagraphStyle2 = PlatformParagraphStyle.Companion.getDefault();
        }
        return AndroidTextStyle_androidKt.lerp(platformParagraphStyle, platformParagraphStyle2, f);
    }

    private static final PlatformParagraphStyle mergePlatformStyle(ParagraphStyle paragraphStyle, PlatformParagraphStyle platformParagraphStyle) {
        if (paragraphStyle.getPlatformStyle() == null) {
            return platformParagraphStyle;
        }
        return platformParagraphStyle == null ? paragraphStyle.getPlatformStyle() : paragraphStyle.getPlatformStyle().merge(platformParagraphStyle);
    }

    public static final ParagraphStyle resolveParagraphStyleDefaults(ParagraphStyle paragraphStyle, LayoutDirection layoutDirection) {
        int iM8396getTextAligne0LSkKk = paragraphStyle.m8396getTextAligne0LSkKk();
        TextAlign.Companion companion = TextAlign.Companion;
        int iM8925getStarte0LSkKk = TextAlign.m8916equalsimpl0(iM8396getTextAligne0LSkKk, companion.m8926getUnspecifiede0LSkKk()) ? companion.m8925getStarte0LSkKk() : paragraphStyle.m8396getTextAligne0LSkKk();
        int iM8537resolveTextDirectionIhaHGbI = TextStyleKt.m8537resolveTextDirectionIhaHGbI(layoutDirection, paragraphStyle.m8398getTextDirections_7Xco());
        long jM8394getLineHeightXSAIIZE = TextUnit.m9234getRawTypeimpl(paragraphStyle.m8394getLineHeightXSAIIZE()) == 0 ? DefaultLineHeight : paragraphStyle.m8394getLineHeightXSAIIZE();
        TextIndent textIndent = paragraphStyle.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.Companion.getNone();
        }
        TextIndent textIndent2 = textIndent;
        PlatformParagraphStyle platformStyle = paragraphStyle.getPlatformStyle();
        LineHeightStyle lineHeightStyle = paragraphStyle.getLineHeightStyle();
        int iM8393getLineBreakrAG3T2k = paragraphStyle.m8393getLineBreakrAG3T2k();
        LineBreak.Companion companion2 = LineBreak.Companion;
        int iM8837getSimplerAG3T2k = LineBreak.m8824equalsimpl0(iM8393getLineBreakrAG3T2k, companion2.m8838getUnspecifiedrAG3T2k()) ? companion2.m8837getSimplerAG3T2k() : paragraphStyle.m8393getLineBreakrAG3T2k();
        int iM8391getHyphensvmbZdU8 = paragraphStyle.m8391getHyphensvmbZdU8();
        Hyphens.Companion companion3 = Hyphens.Companion;
        int iM8813getNonevmbZdU8 = Hyphens.m8808equalsimpl0(iM8391getHyphensvmbZdU8, companion3.m8814getUnspecifiedvmbZdU8()) ? companion3.m8813getNonevmbZdU8() : paragraphStyle.m8391getHyphensvmbZdU8();
        TextMotion textMotion = paragraphStyle.getTextMotion();
        if (textMotion == null) {
            textMotion = TextMotion.Companion.getStatic();
        }
        return new ParagraphStyle(iM8925getStarte0LSkKk, iM8537resolveTextDirectionIhaHGbI, jM8394getLineHeightXSAIIZE, textIndent2, platformStyle, lineHeightStyle, iM8837getSimplerAG3T2k, iM8813getNonevmbZdU8, textMotion, (jh2) null);
    }
}
