package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ScaleXSpan;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.Bullet;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import androidx.compose.ui.text.android.style.FontFeatureSpan;
import androidx.compose.ui.text.android.style.LetterSpacingSpanEm;
import androidx.compose.ui.text.android.style.LetterSpacingSpanPx;
import androidx.compose.ui.text.android.style.LineHeightSpan;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import androidx.compose.ui.text.android.style.ShadowSpan;
import androidx.compose.ui.text.android.style.SkewXSpan;
import androidx.compose.ui.text.android.style.TextDecorationSpan;
import androidx.compose.ui.text.android.style.TypefaceSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.platform.style.CustomBulletSpan;
import androidx.compose.ui.text.platform.style.DrawStyleSpan;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.me0;
import defpackage.ua8;
import defpackage.w65;
import defpackage.yr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SpannableExtensions_androidKt {
    /* JADX INFO: renamed from: createLetterSpacingSpan-eAf_CNQ, reason: not valid java name */
    private static final MetricAffectingSpan m8766createLetterSpacingSpaneAf_CNQ(long j, Density density) {
        long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
            return new LetterSpacingSpanPx(density.mo1433toPxR2X_6o(j));
        }
        if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA())) {
            return new LetterSpacingSpanEm(TextUnit.m9236getValueimpl(j));
        }
        return null;
    }

    public static final void flattenFontStylesAndApply(SpanStyle spanStyle, List<AnnotatedString.Range<SpanStyle>> list, dm3<? super SpanStyle, ? super Integer, ? super Integer, j59> dm3Var) {
        if (list.size() <= 1) {
            if (list.isEmpty()) {
                return;
            }
            dm3Var.invoke(merge(spanStyle, list.get(0).getItem()), Integer.valueOf(list.get(0).getStart()), Integer.valueOf(list.get(0).getEnd()));
            return;
        }
        int size = list.size();
        int i = size * 2;
        int[] iArr = new int[i];
        List<AnnotatedString.Range<SpanStyle>> list2 = list;
        int size2 = list2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            AnnotatedString.Range<SpanStyle> range = list.get(i2);
            iArr[i2] = range.getStart();
            iArr[i2 + size] = range.getEnd();
        }
        if (i > 1) {
            Arrays.sort(iArr);
        }
        int iH = yr.H(iArr);
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = iArr[i3];
            if (i4 != iH) {
                int size3 = list2.size();
                SpanStyle spanStyleMerge = spanStyle;
                for (int i5 = 0; i5 < size3; i5++) {
                    AnnotatedString.Range<SpanStyle> range2 = list.get(i5);
                    if (range2.getStart() != range2.getEnd() && AnnotatedStringKt.intersect(iH, i4, range2.getStart(), range2.getEnd())) {
                        spanStyleMerge = merge(spanStyleMerge, range2.getItem());
                    }
                }
                if (spanStyleMerge != null) {
                    dm3Var.invoke(spanStyleMerge, Integer.valueOf(iH), Integer.valueOf(i4));
                }
                iH = i4;
            }
        }
    }

    private static final boolean getNeedsLetterSpacingSpan(SpanStyle spanStyle) {
        long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(spanStyle.m8436getLetterSpacingXSAIIZE());
        TextUnitType.Companion companion = TextUnitType.Companion;
        return TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA()) || TextUnitType.m9264equalsimpl0(TextUnit.m9235getTypeUIouoOA(spanStyle.m8436getLetterSpacingXSAIIZE()), companion.m9268getEmUIouoOA());
    }

    private static final boolean hasFontAttributes(TextStyle textStyle) {
        return TextPaintExtensions_androidKt.hasFontAttributes(textStyle.toSpanStyle()) || textStyle.m8524getFontSynthesisZQGJjVo() != null;
    }

    private static final boolean isNonLinearFontScalingActive(Density density) {
        return ((double) density.getFontScale()) > 1.05d;
    }

    private static final SpanStyle merge(SpanStyle spanStyle, SpanStyle spanStyle2) {
        return spanStyle == null ? spanStyle2 : spanStyle.merge(spanStyle2);
    }

    /* JADX INFO: renamed from: resolveBulletTextUnitToPx-o2QH7mI, reason: not valid java name */
    private static final float m8767resolveBulletTextUnitToPxo2QH7mI(long j, float f, Density density) {
        if (TextUnit.m9233equalsimpl0(j, TextUnit.Companion.m9247getUnspecifiedXSAIIZE())) {
            return f;
        }
        long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
            return density.mo1433toPxR2X_6o(j);
        }
        if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA())) {
            return TextUnit.m9236getValueimpl(j) * f;
        }
        return Float.NaN;
    }

    /* JADX INFO: renamed from: resolveLineHeightInPx-o2QH7mI, reason: not valid java name */
    private static final float m8768resolveLineHeightInPxo2QH7mI(long j, float f, Density density) {
        float fM9236getValueimpl;
        long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
            if (!isNonLinearFontScalingActive(density)) {
                return density.mo1433toPxR2X_6o(j);
            }
            fM9236getValueimpl = TextUnit.m9236getValueimpl(j) / TextUnit.m9236getValueimpl(density.mo1437toSpkPz2Gy4(f));
        } else {
            if (!TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA())) {
                return Float.NaN;
            }
            fM9236getValueimpl = TextUnit.m9236getValueimpl(j);
        }
        return fM9236getValueimpl * f;
    }

    /* JADX INFO: renamed from: setBackground-RPmYEkk, reason: not valid java name */
    public static final void m8769setBackgroundRPmYEkk(Spannable spannable, long j, int i, int i2) {
        if (j != 16) {
            setSpan(spannable, new BackgroundColorSpan(ColorKt.m6286toArgb8_81llA(j)), i, i2);
        }
    }

    /* JADX INFO: renamed from: setBaselineShift-0ocSgnM, reason: not valid java name */
    private static final void m8770setBaselineShift0ocSgnM(Spannable spannable, BaselineShift baselineShift, int i, int i2) {
        if (baselineShift != null) {
            setSpan(spannable, new BaselineShiftSpan(baselineShift.m8788unboximpl()), i, i2);
        }
    }

    private static final void setBrush(Spannable spannable, Brush brush, float f, int i, int i2) {
        if (brush != null) {
            if (brush instanceof SolidColor) {
                m8771setColorRPmYEkk(spannable, ((SolidColor) brush).m6588getValue0d7_KjU(), i, i2);
            } else if (brush instanceof ShaderBrush) {
                setSpan(spannable, new ShaderBrushSpan((ShaderBrush) brush, f), i, i2);
            } else {
                me0.e();
            }
        }
    }

    public static final void setBulletSpans(Spannable spannable, List<? extends AnnotatedString.Range<? extends AnnotatedString.Annotation>> list, float f, Density density, TextIndent textIndent) {
        Density density2 = density;
        float fM9236getValueimpl = 0.0f;
        if (textIndent != null) {
            long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(textIndent.m8950getFirstLineXSAIIZE());
            TextUnitType.Companion companion = TextUnitType.Companion;
            if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
                fM9236getValueimpl = density2.mo1433toPxR2X_6o(textIndent.m8950getFirstLineXSAIIZE());
            } else if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA())) {
                fM9236getValueimpl = TextUnit.m9236getValueimpl(textIndent.m8950getFirstLineXSAIIZE()) * f;
            }
        }
        float f2 = fM9236getValueimpl;
        int size = list.size();
        int i = 0;
        while (i < size) {
            AnnotatedString.Range<? extends AnnotatedString.Annotation> range = list.get(i);
            AnnotatedString.Annotation item = range.getItem();
            Bullet bullet = item instanceof Bullet ? (Bullet) item : null;
            if (bullet != null) {
                float fM8767resolveBulletTextUnitToPxo2QH7mI = m8767resolveBulletTextUnitToPxo2QH7mI(bullet.m8334getWidthXSAIIZE(), f, density2);
                float fM8767resolveBulletTextUnitToPxo2QH7mI2 = m8767resolveBulletTextUnitToPxo2QH7mI(bullet.m8332getHeightXSAIIZE(), f, density2);
                float fM8767resolveBulletTextUnitToPxo2QH7mI3 = m8767resolveBulletTextUnitToPxo2QH7mI(bullet.m8333getPaddingXSAIIZE(), f, density2);
                if (!Float.isNaN(fM8767resolveBulletTextUnitToPxo2QH7mI) && !Float.isNaN(fM8767resolveBulletTextUnitToPxo2QH7mI2) && !Float.isNaN(fM8767resolveBulletTextUnitToPxo2QH7mI3)) {
                    setSpan(spannable, new CustomBulletSpan(bullet.getShape(), fM8767resolveBulletTextUnitToPxo2QH7mI, fM8767resolveBulletTextUnitToPxo2QH7mI2, fM8767resolveBulletTextUnitToPxo2QH7mI3, bullet.getBrush(), bullet.getAlpha(), bullet.getDrawStyle(), density2, f2), range.getStart(), range.getEnd());
                }
            }
            i++;
            density2 = density;
        }
    }

    /* JADX INFO: renamed from: setColor-RPmYEkk, reason: not valid java name */
    public static final void m8771setColorRPmYEkk(Spannable spannable, long j, int i, int i2) {
        if (j != 16) {
            setSpan(spannable, new ForegroundColorSpan(ColorKt.m6286toArgb8_81llA(j)), i, i2);
        }
    }

    private static final void setDrawStyle(Spannable spannable, DrawStyle drawStyle, int i, int i2) {
        if (drawStyle != null) {
            setSpan(spannable, new DrawStyleSpan(drawStyle), i, i2);
        }
    }

    private static final void setFontAttributes(final Spannable spannable, TextStyle textStyle, List<? extends AnnotatedString.Range<? extends AnnotatedString.Annotation>> list, final fm3<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> fm3Var) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            AnnotatedString.Range<? extends AnnotatedString.Annotation> range = list.get(i);
            if ((range.getItem() instanceof SpanStyle) && (TextPaintExtensions_androidKt.hasFontAttributes((SpanStyle) range.getItem()) || ((SpanStyle) range.getItem()).m8435getFontSynthesisZQGJjVo() != null)) {
                arrayList.add(range);
            }
        }
        flattenFontStylesAndApply(hasFontAttributes(textStyle) ? new SpanStyle(0L, 0L, textStyle.getFontWeight(), textStyle.m8523getFontStyle4Lr2A7w(), textStyle.m8524getFontSynthesisZQGJjVo(), textStyle.getFontFamily(), (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (PlatformSpanStyle) null, (DrawStyle) null, 65475, (jh2) null) : null, arrayList, new dm3() { // from class: h58
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj2).intValue();
                int iIntValue2 = ((Integer) obj3).intValue();
                return SpannableExtensions_androidKt.setFontAttributes$lambda$2(spannable, fm3Var, (SpanStyle) obj, iIntValue, iIntValue2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 setFontAttributes$lambda$2(Spannable spannable, fm3 fm3Var, SpanStyle spanStyle, int i, int i2) {
        FontFamily fontFamily = spanStyle.getFontFamily();
        FontWeight fontWeight = spanStyle.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontStyle fontStyleM8434getFontStyle4Lr2A7w = spanStyle.m8434getFontStyle4Lr2A7w();
        FontStyle fontStyleM8600boximpl = FontStyle.m8600boximpl(fontStyleM8434getFontStyle4Lr2A7w != null ? fontStyleM8434getFontStyle4Lr2A7w.m8606unboximpl() : FontStyle.Companion.m8610getNormal_LCdwA());
        FontSynthesis fontSynthesisM8435getFontSynthesisZQGJjVo = spanStyle.m8435getFontSynthesisZQGJjVo();
        spannable.setSpan(new TypefaceSpan((Typeface) fm3Var.invoke(fontFamily, fontWeight, fontStyleM8600boximpl, FontSynthesis.m8611boximpl(fontSynthesisM8435getFontSynthesisZQGJjVo != null ? fontSynthesisM8435getFontSynthesisZQGJjVo.m8619unboximpl() : FontSynthesis.Companion.m8620getAllGVVA2EU()))), i, i2, 33);
        return j59.a;
    }

    private static final void setFontFeatureSettings(Spannable spannable, String str, int i, int i2) {
        if (str != null) {
            setSpan(spannable, new FontFeatureSpan(str), i, i2);
        }
    }

    /* JADX INFO: renamed from: setFontSize-KmRG4DE, reason: not valid java name */
    public static final void m8772setFontSizeKmRG4DE(Spannable spannable, long j, Density density, int i, int i2) {
        long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
            setSpan(spannable, new AbsoluteSizeSpan(w65.b(density.mo1433toPxR2X_6o(j)), false), i, i2);
        } else if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA())) {
            setSpan(spannable, new RelativeSizeSpan(TextUnit.m9236getValueimpl(j)), i, i2);
        }
    }

    private static final void setGeometricTransform(Spannable spannable, TextGeometricTransform textGeometricTransform, int i, int i2) {
        if (textGeometricTransform != null) {
            setSpan(spannable, new ScaleXSpan(textGeometricTransform.getScaleX()), i, i2);
            setSpan(spannable, new SkewXSpan(textGeometricTransform.getSkewX()), i, i2);
        }
    }

    /* JADX INFO: renamed from: setLineHeight-KmRG4DE, reason: not valid java name */
    public static final void m8773setLineHeightKmRG4DE(Spannable spannable, long j, float f, Density density, LineHeightStyle lineHeightStyle) {
        float fM8768resolveLineHeightInPxo2QH7mI = m8768resolveLineHeightInPxo2QH7mI(j, f, density);
        if (Float.isNaN(fM8768resolveLineHeightInPxo2QH7mI)) {
            return;
        }
        setSpan(spannable, new LineHeightStyleSpan(fM8768resolveLineHeightInPxo2QH7mI, 0, (spannable.length() == 0 || ua8.k0(spannable) == '\n') ? spannable.length() + 1 : spannable.length(), LineHeightStyle.Trim.m8905isTrimFirstLineTopimpl$ui_text(lineHeightStyle.m8878getTrimEVpEnUU()), LineHeightStyle.Trim.m8906isTrimLastLineBottomimpl$ui_text(lineHeightStyle.m8878getTrimEVpEnUU()), lineHeightStyle.m8876getAlignmentPIaL0Z0(), lineHeightStyle.m8877getModelzQqcRY(), null), 0, spannable.length());
    }

    /* JADX INFO: renamed from: setLineHeight-r9BaKPg, reason: not valid java name */
    public static final void m8774setLineHeightr9BaKPg(Spannable spannable, long j, float f, Density density) {
        float fM8768resolveLineHeightInPxo2QH7mI = m8768resolveLineHeightInPxo2QH7mI(j, f, density);
        if (Float.isNaN(fM8768resolveLineHeightInPxo2QH7mI)) {
            return;
        }
        setSpan(spannable, new LineHeightSpan(fM8768resolveLineHeightInPxo2QH7mI), 0, spannable.length());
    }

    public static final void setLocaleList(Spannable spannable, LocaleList localeList, int i, int i2) {
        if (localeList != null) {
            setSpan(spannable, LocaleListHelperMethods.INSTANCE.localeSpan(localeList), i, i2);
        }
    }

    private static final void setShadow(Spannable spannable, Shadow shadow, int i, int i2) {
        if (shadow != null) {
            setSpan(spannable, new ShadowSpan(ColorKt.m6286toArgb8_81llA(shadow.m6576getColor0d7_KjU()), Float.intBitsToFloat((int) (shadow.m6577getOffsetF1C5BW0() >> 32)), Float.intBitsToFloat((int) (shadow.m6577getOffsetF1C5BW0() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)), TextPaintExtensions_androidKt.correctBlurRadius(shadow.getBlurRadius())), i, i2);
        }
    }

    public static final void setSpan(Spannable spannable, Object obj, int i, int i2) {
        spannable.setSpan(obj, i, i2, 33);
    }

    private static final void setSpanStyle(Spannable spannable, SpanStyle spanStyle, int i, int i2, Density density) {
        m8770setBaselineShift0ocSgnM(spannable, spanStyle.m8431getBaselineShift5SSeXJ0(), i, i2);
        m8771setColorRPmYEkk(spannable, spanStyle.m8432getColor0d7_KjU(), i, i2);
        setBrush(spannable, spanStyle.getBrush(), spanStyle.getAlpha(), i, i2);
        setTextDecoration(spannable, spanStyle.getTextDecoration(), i, i2);
        m8772setFontSizeKmRG4DE(spannable, spanStyle.m8433getFontSizeXSAIIZE(), density, i, i2);
        setFontFeatureSettings(spannable, spanStyle.getFontFeatureSettings(), i, i2);
        setGeometricTransform(spannable, spanStyle.getTextGeometricTransform(), i, i2);
        setLocaleList(spannable, spanStyle.getLocaleList(), i, i2);
        m8769setBackgroundRPmYEkk(spannable, spanStyle.m8430getBackground0d7_KjU(), i, i2);
        setShadow(spannable, spanStyle.getShadow(), i, i2);
        setDrawStyle(spannable, spanStyle.getDrawStyle(), i, i2);
    }

    public static final void setSpanStyles(Spannable spannable, TextStyle textStyle, List<? extends AnnotatedString.Range<? extends AnnotatedString.Annotation>> list, Density density, fm3<? super FontFamily, ? super FontWeight, ? super FontStyle, ? super FontSynthesis, ? extends Typeface> fm3Var) {
        MetricAffectingSpan metricAffectingSpanM8766createLetterSpacingSpaneAf_CNQ;
        setFontAttributes(spannable, textStyle, list, fm3Var);
        List<? extends AnnotatedString.Range<? extends AnnotatedString.Annotation>> list2 = list;
        int size = list2.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            AnnotatedString.Range<? extends AnnotatedString.Annotation> range = list.get(i);
            if (range.getItem() instanceof SpanStyle) {
                int start = range.getStart();
                int end = range.getEnd();
                if (start >= 0 && start < spannable.length() && end > start && end <= spannable.length()) {
                    setSpanStyle(spannable, (SpanStyle) range.getItem(), start, end, density);
                    if (getNeedsLetterSpacingSpan((SpanStyle) range.getItem())) {
                        z = true;
                    }
                }
            }
        }
        if (z) {
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                AnnotatedString.Range<? extends AnnotatedString.Annotation> range2 = list.get(i2);
                AnnotatedString.Annotation item = range2.getItem();
                if (item instanceof SpanStyle) {
                    int start2 = range2.getStart();
                    int end2 = range2.getEnd();
                    if (start2 >= 0 && start2 < spannable.length() && end2 > start2 && end2 <= spannable.length() && (metricAffectingSpanM8766createLetterSpacingSpaneAf_CNQ = m8766createLetterSpacingSpaneAf_CNQ(((SpanStyle) item).m8436getLetterSpacingXSAIIZE(), density)) != null) {
                        setSpan(spannable, metricAffectingSpanM8766createLetterSpacingSpaneAf_CNQ, start2, end2);
                    }
                }
            }
        }
    }

    public static final void setTextDecoration(Spannable spannable, TextDecoration textDecoration, int i, int i2) {
        if (textDecoration != null) {
            TextDecoration.Companion companion = TextDecoration.Companion;
            setSpan(spannable, new TextDecorationSpan(textDecoration.contains(companion.getUnderline()), textDecoration.contains(companion.getLineThrough())), i, i2);
        }
    }

    public static final void setTextIndent(Spannable spannable, TextIndent textIndent, float f, Density density) {
        float fM9236getValueimpl;
        if (textIndent != null) {
            if ((TextUnit.m9233equalsimpl0(textIndent.m8950getFirstLineXSAIIZE(), TextUnitKt.getSp(0)) && TextUnit.m9233equalsimpl0(textIndent.m8951getRestLineXSAIIZE(), TextUnitKt.getSp(0))) || TextUnit.m9234getRawTypeimpl(textIndent.m8950getFirstLineXSAIIZE()) == 0 || TextUnit.m9234getRawTypeimpl(textIndent.m8951getRestLineXSAIIZE()) == 0) {
                return;
            }
            long jM9235getTypeUIouoOA = TextUnit.m9235getTypeUIouoOA(textIndent.m8950getFirstLineXSAIIZE());
            TextUnitType.Companion companion = TextUnitType.Companion;
            float fM9236getValueimpl2 = 0.0f;
            if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9269getSpUIouoOA())) {
                fM9236getValueimpl = density.mo1433toPxR2X_6o(textIndent.m8950getFirstLineXSAIIZE());
            } else {
                fM9236getValueimpl = TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA, companion.m9268getEmUIouoOA()) ? TextUnit.m9236getValueimpl(textIndent.m8950getFirstLineXSAIIZE()) * f : 0.0f;
            }
            long jM9235getTypeUIouoOA2 = TextUnit.m9235getTypeUIouoOA(textIndent.m8951getRestLineXSAIIZE());
            if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA2, companion.m9269getSpUIouoOA())) {
                fM9236getValueimpl2 = density.mo1433toPxR2X_6o(textIndent.m8951getRestLineXSAIIZE());
            } else if (TextUnitType.m9264equalsimpl0(jM9235getTypeUIouoOA2, companion.m9268getEmUIouoOA())) {
                fM9236getValueimpl2 = TextUnit.m9236getValueimpl(textIndent.m8951getRestLineXSAIIZE()) * f;
            }
            setSpan(spannable, new LeadingMarginSpan.Standard((int) Math.ceil(fM9236getValueimpl), (int) Math.ceil(fM9236getValueimpl2)), 0, spannable.length());
        }
    }
}
