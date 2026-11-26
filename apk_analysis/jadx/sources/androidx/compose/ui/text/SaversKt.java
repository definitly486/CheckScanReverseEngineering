package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.ad7;
import defpackage.ao3;
import defpackage.bm3;
import defpackage.co;
import defpackage.eo1;
import defpackage.gn6;
import defpackage.gt3;
import defpackage.h04;
import defpackage.ht1;
import defpackage.ic7;
import defpackage.ii3;
import defpackage.in6;
import defpackage.it1;
import defpackage.j51;
import defpackage.jc7;
import defpackage.jh2;
import defpackage.jy2;
import defpackage.kc7;
import defpackage.lc7;
import defpackage.lf;
import defpackage.lt1;
import defpackage.ly2;
import defpackage.mc7;
import defpackage.me0;
import defpackage.mf5;
import defpackage.mg6;
import defpackage.mt1;
import defpackage.n62;
import defpackage.nc7;
import defpackage.nl3;
import defpackage.nx0;
import defpackage.oc7;
import defpackage.os;
import defpackage.p12;
import defpackage.p43;
import defpackage.pc7;
import defpackage.pf;
import defpackage.qc7;
import defpackage.qf;
import defpackage.qn4;
import defpackage.qt1;
import defpackage.qy2;
import defpackage.rc7;
import defpackage.sc7;
import defpackage.sy2;
import defpackage.t2;
import defpackage.tc7;
import defpackage.ty2;
import defpackage.u00;
import defpackage.u96;
import defpackage.uc7;
import defpackage.ud;
import defpackage.v71;
import defpackage.vc7;
import defpackage.vu2;
import defpackage.vy2;
import defpackage.wc7;
import defpackage.ws0;
import defpackage.xc7;
import defpackage.xi1;
import defpackage.xl4;
import defpackage.xn3;
import defpackage.xt1;
import defpackage.yc7;
import defpackage.yq2;
import defpackage.yt1;
import defpackage.zc2;
import defpackage.zc7;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SaversKt {
    private static final Saver<FontStyle, Object> FontStyleSaver;
    private static final Saver<FontSynthesis, Object> FontSynthesisSaver;
    private static final NonNullValueClassSaver<Hyphens, Object> HyphensSaver;
    private static final Saver<LocaleList, Object> LocaleListSaver;
    private static final NonNullValueClassSaver<Offset, Object> OffsetSaver;
    private static final Saver<ParagraphStyle, Object> ParagraphStyleSaver;
    private static final Saver<SpanStyle, Object> SpanStyleSaver;
    private static final NonNullValueClassSaver<TextAlign, Object> TextAlignSaver;
    private static final NonNullValueClassSaver<TextDirection, Object> TextDirectionSaver;
    private static final Saver<TextLinkStyles, Object> TextLinkStylesSaver;
    private static final NonNullValueClassSaver<TextUnit, Object> TextUnitSaver;
    private static final Saver<AnnotatedString, Object> AnnotatedStringSaver = SaverKt.Saver(new lf(1), new p12(4));
    private static final Saver<List<AnnotatedString.Range<? extends Object>>, Object> AnnotationRangeListSaver = SaverKt.Saver(new qn4(1), new sc7(0));
    private static final Saver<AnnotatedString.Range<? extends Object>, Object> AnnotationRangeSaver = SaverKt.Saver(new lt1(1), new v71(6));
    private static final Saver<VerbatimTtsAnnotation, Object> VerbatimTtsAnnotationSaver = SaverKt.Saver(new xl4(1), new qy2(5));
    private static final Saver<UrlAnnotation, Object> UrlAnnotationSaver = SaverKt.Saver(new yc7(), new sy2(3));
    private static final Saver<LinkAnnotation.Url, Object> LinkSaver = SaverKt.Saver(new kc7(0), new qc7(0));
    private static final Saver<LinkAnnotation.Clickable, Object> ClickableSaver = SaverKt.Saver(new ht1(4), new xi1(3));
    private static final Saver<TextDecoration, Object> TextDecorationSaver = SaverKt.Saver(new j51(1), new pf(5));
    private static final Saver<TextGeometricTransform, Object> TextGeometricTransformSaver = SaverKt.Saver(new qf(1), new gt3(3));
    private static final Saver<TextIndent, Object> TextIndentSaver = SaverKt.Saver(new ic7(), new co(5));
    private static final Saver<FontWeight, Object> FontWeightSaver = SaverKt.Saver(new jc7(), new h04(3));
    private static final Saver<BaselineShift, Object> BaselineShiftSaver = SaverKt.Saver(new lc7(), new t2(2));
    private static final Saver<TextRange, Object> TextRangeSaver = SaverKt.Saver(new mc7(), new nx0(1));
    private static final Saver<Shadow, Object> ShadowSaver = SaverKt.Saver(new nc7(), new mf5(3));
    private static final NonNullValueClassSaver<Color, Object> ColorSaver = NonNullValueClassSaver(new bm3<SaverScope, Color, Object>() { // from class: androidx.compose.ui.text.SaversKt$ColorSaver$1
        @Override // defpackage.bm3
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, Color color) {
            return m8420invoke4WTKRHQ(saverScope, color.m6242unboximpl());
        }

        /* JADX INFO: renamed from: invoke-4WTKRHQ, reason: not valid java name */
        public final Object m8420invoke4WTKRHQ(SaverScope saverScope, long j) {
            return j == 16 ? Boolean.FALSE : Integer.valueOf(ColorKt.m6286toArgb8_81llA(j));
        }
    }, new nl3<Object, Color>() { // from class: androidx.compose.ui.text.SaversKt$ColorSaver$2
        @Override // defpackage.nl3
        /* JADX INFO: renamed from: invoke-ijrfgN4, reason: not valid java name and merged with bridge method [inline-methods] */
        public final Color invoke(Object obj) {
            if (aa4.e(obj, Boolean.FALSE)) {
                return Color.m6222boximpl(Color.Companion.m6268getUnspecified0d7_KjU());
            }
            obj.getClass();
            return Color.m6222boximpl(ColorKt.Color(((Integer) obj).intValue()));
        }
    });
    private static final NonNullValueClassSaver<TextUnitType, Object> TextUnitTypeSaver = NonNullValueClassSaver(new it1(2), new jy2(2));
    private static final Saver<Locale, Object> LocaleSaver = SaverKt.Saver(new vc7(0), new vu2(4));
    private static final Saver<LineHeightStyle, Object> LineHeightStyleSaver = SaverKt.Saver(new qt1(1), new ws0(5));
    private static final NonNullValueClassSaver<LineHeightStyle.Alignment, Object> LineHeightStyleAlignmentSaver = NonNullValueClassSaver(new p43(1), new zc2(6));
    private static final NonNullValueClassSaver<LineHeightStyle.Trim, Object> LineHeightStyleTrimSaver = NonNullValueClassSaver(new wc7(0), new yq2(2));
    private static final NonNullValueClassSaver<LineHeightStyle.Mode, Object> LineHeightStyleModeSaver = NonNullValueClassSaver(new xt1(1), new yt1(1));

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnnotationType.values().length];
            try {
                iArr[AnnotationType.Paragraph.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AnnotationType.Span.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AnnotationType.Url.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AnnotationType.Link.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AnnotationType.Clickable.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[AnnotationType.String.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        int i = 2;
        ParagraphStyleSaver = SaverKt.Saver(new xc7(), new ty2(i));
        SpanStyleSaver = SaverKt.Saver(new zc7(0), new vy2(i));
        TextLinkStylesSaver = SaverKt.Saver(new ad7(), new os(i));
        int i2 = 1;
        TextAlignSaver = NonNullValueClassSaver(new oc7(0), new n62(i2));
        TextDirectionSaver = NonNullValueClassSaver(new pc7(), new gn6(i2));
        HyphensSaver = NonNullValueClassSaver(new rc7(), new in6(i2));
        FontStyleSaver = SaverKt.Saver(new tc7(), new xn3(i2));
        FontSynthesisSaver = SaverKt.Saver(new uc7(), new mg6(i2));
        TextUnitSaver = NonNullValueClassSaver(new ao3(1), new ii3(i2));
        int i3 = 3;
        OffsetSaver = NonNullValueClassSaver(new eo1(3), new u00(i3));
        LocaleListSaver = SaverKt.Saver(new mt1(1), new ly2(i3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object AnnotatedStringSaver$lambda$0(SaverScope saverScope, AnnotatedString annotatedString) {
        return u96.a(save(annotatedString.getText()), save(annotatedString.getAnnotations$ui_text(), AnnotationRangeListSaver, saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnnotatedString AnnotatedStringSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(1);
        Saver<List<AnnotatedString.Range<? extends Object>>, Object> saver = AnnotationRangeListSaver;
        List<AnnotatedString.Range<? extends Object>> listRestore = ((!aa4.e(obj2, Boolean.FALSE) || (saver instanceof NonNullValueClassSaver)) && obj2 != null) ? saver.restore(obj2) : null;
        Object obj3 = list.get(0);
        String str = obj3 != null ? (String) obj3 : null;
        str.getClass();
        return new AnnotatedString(listRestore, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object AnnotationRangeListSaver$lambda$0(SaverScope saverScope, List list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(save((AnnotatedString.Range) list.get(i), AnnotationRangeSaver, saverScope));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List AnnotationRangeListSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object obj2 = list.get(i);
            Saver<AnnotatedString.Range<? extends Object>, Object> saver = AnnotationRangeSaver;
            AnnotatedString.Range<? extends Object> rangeRestore = null;
            if ((!aa4.e(obj2, Boolean.FALSE) || (saver instanceof NonNullValueClassSaver)) && obj2 != null) {
                rangeRestore = saver.restore(obj2);
            }
            rangeRestore.getClass();
            arrayList.add(rangeRestore);
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object AnnotationRangeSaver$lambda$0(SaverScope saverScope, AnnotatedString.Range range) {
        AnnotationType annotationType;
        Object objSave;
        Object item = range.getItem();
        if (item instanceof ParagraphStyle) {
            annotationType = AnnotationType.Paragraph;
        } else if (item instanceof SpanStyle) {
            annotationType = AnnotationType.Span;
        } else if (item instanceof VerbatimTtsAnnotation) {
            annotationType = AnnotationType.VerbatimTts;
        } else if (item instanceof UrlAnnotation) {
            annotationType = AnnotationType.Url;
        } else if (item instanceof LinkAnnotation.Url) {
            annotationType = AnnotationType.Link;
        } else if (item instanceof LinkAnnotation.Clickable) {
            annotationType = AnnotationType.Clickable;
        } else {
            if (!(item instanceof StringAnnotation)) {
                ud.d();
                return null;
            }
            annotationType = AnnotationType.String;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[annotationType.ordinal()]) {
            case 1:
                Object item2 = range.getItem();
                item2.getClass();
                objSave = save((ParagraphStyle) item2, ParagraphStyleSaver, saverScope);
                break;
            case 2:
                Object item3 = range.getItem();
                item3.getClass();
                objSave = save((SpanStyle) item3, SpanStyleSaver, saverScope);
                break;
            case 3:
                Object item4 = range.getItem();
                item4.getClass();
                objSave = save((VerbatimTtsAnnotation) item4, VerbatimTtsAnnotationSaver, saverScope);
                break;
            case 4:
                Object item5 = range.getItem();
                item5.getClass();
                objSave = save((UrlAnnotation) item5, UrlAnnotationSaver, saverScope);
                break;
            case 5:
                Object item6 = range.getItem();
                item6.getClass();
                objSave = save((LinkAnnotation.Url) item6, LinkSaver, saverScope);
                break;
            case 6:
                Object item7 = range.getItem();
                item7.getClass();
                objSave = save((LinkAnnotation.Clickable) item7, ClickableSaver, saverScope);
                break;
            case 7:
                Object item8 = range.getItem();
                item8.getClass();
                objSave = save(((StringAnnotation) item8).m8445unboximpl());
                break;
            default:
                me0.e();
                return null;
        }
        return u96.a(save(annotationType), objSave, save(Integer.valueOf(range.getStart())), save(Integer.valueOf(range.getEnd())), save(range.getTag()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnnotatedString.Range AnnotationRangeSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        ParagraphStyle paragraphStyleRestore = null;
        clickableRestore = null;
        LinkAnnotation.Clickable clickableRestore = null;
        urlRestore = null;
        LinkAnnotation.Url urlRestore = null;
        urlAnnotationRestore = null;
        UrlAnnotation urlAnnotationRestore = null;
        verbatimTtsAnnotationRestore = null;
        VerbatimTtsAnnotation verbatimTtsAnnotationRestore = null;
        spanStyleRestore = null;
        SpanStyle spanStyleRestore = null;
        paragraphStyleRestore = null;
        AnnotationType annotationType = obj2 != null ? (AnnotationType) obj2 : null;
        annotationType.getClass();
        Object obj3 = list.get(2);
        Integer num = obj3 != null ? (Integer) obj3 : null;
        num.getClass();
        int iIntValue = num.intValue();
        Object obj4 = list.get(3);
        Integer num2 = obj4 != null ? (Integer) obj4 : null;
        num2.getClass();
        int iIntValue2 = num2.intValue();
        Object obj5 = list.get(4);
        String str = obj5 != null ? (String) obj5 : null;
        str.getClass();
        switch (WhenMappings.$EnumSwitchMapping$0[annotationType.ordinal()]) {
            case 1:
                Object obj6 = list.get(1);
                Saver<ParagraphStyle, Object> saver = ParagraphStyleSaver;
                if ((!aa4.e(obj6, Boolean.FALSE) || (saver instanceof NonNullValueClassSaver)) && obj6 != null) {
                    paragraphStyleRestore = saver.restore(obj6);
                }
                paragraphStyleRestore.getClass();
                return new AnnotatedString.Range(paragraphStyleRestore, iIntValue, iIntValue2, str);
            case 2:
                Object obj7 = list.get(1);
                Saver<SpanStyle, Object> saver2 = SpanStyleSaver;
                if ((!aa4.e(obj7, Boolean.FALSE) || (saver2 instanceof NonNullValueClassSaver)) && obj7 != null) {
                    spanStyleRestore = saver2.restore(obj7);
                }
                spanStyleRestore.getClass();
                return new AnnotatedString.Range(spanStyleRestore, iIntValue, iIntValue2, str);
            case 3:
                Object obj8 = list.get(1);
                Saver<VerbatimTtsAnnotation, Object> saver3 = VerbatimTtsAnnotationSaver;
                if ((!aa4.e(obj8, Boolean.FALSE) || (saver3 instanceof NonNullValueClassSaver)) && obj8 != null) {
                    verbatimTtsAnnotationRestore = saver3.restore(obj8);
                }
                verbatimTtsAnnotationRestore.getClass();
                return new AnnotatedString.Range(verbatimTtsAnnotationRestore, iIntValue, iIntValue2, str);
            case 4:
                Object obj9 = list.get(1);
                Saver<UrlAnnotation, Object> saver4 = UrlAnnotationSaver;
                if ((!aa4.e(obj9, Boolean.FALSE) || (saver4 instanceof NonNullValueClassSaver)) && obj9 != null) {
                    urlAnnotationRestore = saver4.restore(obj9);
                }
                urlAnnotationRestore.getClass();
                return new AnnotatedString.Range(urlAnnotationRestore, iIntValue, iIntValue2, str);
            case 5:
                Object obj10 = list.get(1);
                Saver<LinkAnnotation.Url, Object> saver5 = LinkSaver;
                if ((!aa4.e(obj10, Boolean.FALSE) || (saver5 instanceof NonNullValueClassSaver)) && obj10 != null) {
                    urlRestore = saver5.restore(obj10);
                }
                urlRestore.getClass();
                return new AnnotatedString.Range(urlRestore, iIntValue, iIntValue2, str);
            case 6:
                Object obj11 = list.get(1);
                Saver<LinkAnnotation.Clickable, Object> saver6 = ClickableSaver;
                if ((!aa4.e(obj11, Boolean.FALSE) || (saver6 instanceof NonNullValueClassSaver)) && obj11 != null) {
                    clickableRestore = saver6.restore(obj11);
                }
                clickableRestore.getClass();
                return new AnnotatedString.Range(clickableRestore, iIntValue, iIntValue2, str);
            case 7:
                Object obj12 = list.get(1);
                String str2 = obj12 != null ? (String) obj12 : null;
                str2.getClass();
                return new AnnotatedString.Range(StringAnnotation.m8439boximpl(StringAnnotation.m8440constructorimpl(str2)), iIntValue, iIntValue2, str);
            default:
                me0.e();
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object BaselineShiftSaver$lambda$0(SaverScope saverScope, BaselineShift baselineShift) {
        return Float.valueOf(baselineShift.m8788unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final BaselineShift BaselineShiftSaver$lambda$1(Object obj) {
        obj.getClass();
        return BaselineShift.m8782boximpl(BaselineShift.m8783constructorimpl(((Float) obj).floatValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object ClickableSaver$lambda$0(SaverScope saverScope, LinkAnnotation.Clickable clickable) {
        return u96.a(save(clickable.getTag()), save(clickable.getStyles(), TextLinkStylesSaver, saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LinkAnnotation.Clickable ClickableSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        String str = obj2 != null ? (String) obj2 : null;
        str.getClass();
        Object obj3 = list.get(1);
        Saver<TextLinkStyles, Object> saver = TextLinkStylesSaver;
        return new LinkAnnotation.Clickable(str, ((!aa4.e(obj3, Boolean.FALSE) || (saver instanceof NonNullValueClassSaver)) && obj3 != null) ? saver.restore(obj3) : null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object FontStyleSaver$lambda$0(SaverScope saverScope, FontStyle fontStyle) {
        return save(Integer.valueOf(fontStyle.m8606unboximpl()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FontStyle FontStyleSaver$lambda$1(Object obj) {
        obj.getClass();
        return FontStyle.m8600boximpl(FontStyle.m8601constructorimpl(((Integer) obj).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object FontSynthesisSaver$lambda$0(SaverScope saverScope, FontSynthesis fontSynthesis) {
        return Integer.valueOf(fontSynthesis.m8619unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FontSynthesis FontSynthesisSaver$lambda$1(Object obj) {
        obj.getClass();
        return FontSynthesis.m8611boximpl(FontSynthesis.m8612constructorimpl(((Integer) obj).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object FontWeightSaver$lambda$0(SaverScope saverScope, FontWeight fontWeight) {
        return Integer.valueOf(fontWeight.getWeight());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final FontWeight FontWeightSaver$lambda$1(Object obj) {
        obj.getClass();
        return new FontWeight(((Integer) obj).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object HyphensSaver$lambda$0(SaverScope saverScope, Hyphens hyphens) {
        return Integer.valueOf(hyphens.m8811unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Hyphens HyphensSaver$lambda$1(Object obj) {
        obj.getClass();
        return Hyphens.m8805boximpl(Hyphens.m8806constructorimpl(((Integer) obj).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object LineHeightStyleAlignmentSaver$lambda$0(SaverScope saverScope, LineHeightStyle.Alignment alignment) {
        return Float.valueOf(alignment.m8885unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LineHeightStyle.Alignment LineHeightStyleAlignmentSaver$lambda$1(Object obj) {
        obj.getClass();
        return LineHeightStyle.Alignment.m8879boximpl(LineHeightStyle.Alignment.m8880constructorimpl(((Float) obj).floatValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object LineHeightStyleModeSaver$lambda$0(SaverScope saverScope, LineHeightStyle.Mode mode) {
        return Integer.valueOf(mode.m8896unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LineHeightStyle.Mode LineHeightStyleModeSaver$lambda$1(Object obj) {
        obj.getClass();
        return LineHeightStyle.Mode.m8890boximpl(LineHeightStyle.Mode.m8891constructorimpl(((Integer) obj).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object LineHeightStyleSaver$lambda$0(SaverScope saverScope, LineHeightStyle lineHeightStyle) {
        return u96.a(save(LineHeightStyle.Alignment.m8879boximpl(lineHeightStyle.m8876getAlignmentPIaL0Z0()), getSaver(LineHeightStyle.Alignment.Companion), saverScope), save(LineHeightStyle.Trim.m8900boximpl(lineHeightStyle.m8878getTrimEVpEnUU()), getSaver(LineHeightStyle.Trim.Companion), saverScope), save(LineHeightStyle.Mode.m8890boximpl(lineHeightStyle.m8877getModelzQqcRY()), getSaver(LineHeightStyle.Mode.Companion), saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LineHeightStyle LineHeightStyleSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        Saver<LineHeightStyle.Alignment, Object> saver = getSaver(LineHeightStyle.Alignment.Companion);
        Boolean bool = Boolean.FALSE;
        jh2 jh2Var = null;
        LineHeightStyle.Alignment alignmentRestore = ((!aa4.e(obj2, bool) || (saver instanceof NonNullValueClassSaver)) && obj2 != null) ? saver.restore(obj2) : null;
        alignmentRestore.getClass();
        float fM8885unboximpl = alignmentRestore.m8885unboximpl();
        Object obj3 = list.get(1);
        Saver<LineHeightStyle.Trim, Object> saver2 = getSaver(LineHeightStyle.Trim.Companion);
        LineHeightStyle.Trim trimRestore = ((!aa4.e(obj3, bool) || (saver2 instanceof NonNullValueClassSaver)) && obj3 != null) ? saver2.restore(obj3) : null;
        trimRestore.getClass();
        int iM8908unboximpl = trimRestore.m8908unboximpl();
        Object obj4 = list.get(2);
        Saver<LineHeightStyle.Mode, Object> saver3 = getSaver(LineHeightStyle.Mode.Companion);
        LineHeightStyle.Mode modeRestore = ((!aa4.e(obj4, bool) || (saver3 instanceof NonNullValueClassSaver)) && obj4 != null) ? saver3.restore(obj4) : null;
        modeRestore.getClass();
        return new LineHeightStyle(fM8885unboximpl, iM8908unboximpl, modeRestore.m8896unboximpl(), jh2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object LineHeightStyleTrimSaver$lambda$0(SaverScope saverScope, LineHeightStyle.Trim trim) {
        return Integer.valueOf(trim.m8908unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LineHeightStyle.Trim LineHeightStyleTrimSaver$lambda$1(Object obj) {
        obj.getClass();
        return LineHeightStyle.Trim.m8900boximpl(LineHeightStyle.Trim.m8901constructorimpl(((Integer) obj).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object LinkSaver$lambda$0(SaverScope saverScope, LinkAnnotation.Url url) {
        return u96.a(save(url.getUrl()), save(url.getStyles(), TextLinkStylesSaver, saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LinkAnnotation.Url LinkSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        TextLinkStyles textLinkStylesRestore = null;
        String str = obj2 != null ? (String) obj2 : null;
        str.getClass();
        Object obj3 = list.get(1);
        Saver<TextLinkStyles, Object> saver = TextLinkStylesSaver;
        if ((!aa4.e(obj3, Boolean.FALSE) || (saver instanceof NonNullValueClassSaver)) && obj3 != null) {
            textLinkStylesRestore = saver.restore(obj3);
        }
        return new LinkAnnotation.Url(str, textLinkStylesRestore, null, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object LocaleListSaver$lambda$0(SaverScope saverScope, LocaleList localeList) {
        List<Locale> localeList2 = localeList.getLocaleList();
        ArrayList arrayList = new ArrayList(localeList2.size());
        int size = localeList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(save(localeList2.get(i), getSaver(Locale.Companion), saverScope));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final LocaleList LocaleListSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object obj2 = list.get(i);
            Saver<Locale, Object> saver = getSaver(Locale.Companion);
            Locale localeRestore = null;
            if ((!aa4.e(obj2, Boolean.FALSE) || (saver instanceof NonNullValueClassSaver)) && obj2 != null) {
                localeRestore = saver.restore(obj2);
            }
            localeRestore.getClass();
            arrayList.add(localeRestore);
        }
        return new LocaleList(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object LocaleSaver$lambda$0(SaverScope saverScope, Locale locale) {
        return locale.toLanguageTag();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Locale LocaleSaver$lambda$1(Object obj) {
        obj.getClass();
        return new Locale((String) obj);
    }

    private static final <Original, Saveable> NonNullValueClassSaver<Original, Saveable> NonNullValueClassSaver(final bm3<? super SaverScope, ? super Original, ? extends Saveable> bm3Var, final nl3<? super Saveable, ? extends Original> nl3Var) {
        return new NonNullValueClassSaver<Original, Saveable>() { // from class: androidx.compose.ui.text.SaversKt.NonNullValueClassSaver.1
            @Override // androidx.compose.runtime.saveable.Saver
            public Original restore(Saveable saveable) {
                return nl3Var.invoke(saveable);
            }

            @Override // androidx.compose.runtime.saveable.Saver
            public Saveable save(SaverScope saverScope, Original original) {
                return bm3Var.invoke(saverScope, original);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object OffsetSaver$lambda$0(SaverScope saverScope, Offset offset) {
        return offset == null ? false : Offset.m5984equalsimpl0(offset.m5997unboximpl(), Offset.Companion.m6002getUnspecifiedF1C5BW0()) ? Boolean.FALSE : u96.a(save(Float.valueOf(Float.intBitsToFloat((int) (offset.m5997unboximpl() >> 32)))), save(Float.valueOf(Float.intBitsToFloat((int) (offset.m5997unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE)))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset OffsetSaver$lambda$1(Object obj) {
        if (aa4.e(obj, Boolean.FALSE)) {
            return Offset.m5976boximpl(Offset.Companion.m6002getUnspecifiedF1C5BW0());
        }
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        Float f = obj2 != null ? (Float) obj2 : null;
        f.getClass();
        float fFloatValue = f.floatValue();
        Object obj3 = list.get(1);
        Float f2 = obj3 != null ? (Float) obj3 : null;
        f2.getClass();
        return Offset.m5976boximpl(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits(fFloatValue)) << 32) | (((long) Float.floatToRawIntBits(f2.floatValue())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object ParagraphStyleSaver$lambda$0(SaverScope saverScope, ParagraphStyle paragraphStyle) {
        return u96.a(save(TextAlign.m8913boximpl(paragraphStyle.m8396getTextAligne0LSkKk()), getSaver(TextAlign.Companion), saverScope), save(TextDirection.m8930boximpl(paragraphStyle.m8398getTextDirections_7Xco()), getSaver(TextDirection.Companion), saverScope), save(TextUnit.m9226boximpl(paragraphStyle.m8394getLineHeightXSAIIZE()), getSaver(TextUnit.Companion), saverScope), save(paragraphStyle.getTextIndent(), getSaver(TextIndent.Companion), saverScope), save(paragraphStyle.getPlatformStyle(), Savers_androidKt.getSaver(PlatformParagraphStyle.Companion), saverScope), save(paragraphStyle.getLineHeightStyle(), getSaver(LineHeightStyle.Companion), saverScope), save(LineBreak.m8818boximpl(paragraphStyle.m8393getLineBreakrAG3T2k()), Savers_androidKt.getSaver(LineBreak.Companion), saverScope), save(Hyphens.m8805boximpl(paragraphStyle.m8391getHyphensvmbZdU8()), getSaver(Hyphens.Companion), saverScope), save(paragraphStyle.getTextMotion(), Savers_androidKt.getSaver(TextMotion.Companion), saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ParagraphStyle ParagraphStyleSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        Saver<TextAlign, Object> saver = getSaver(TextAlign.Companion);
        Boolean bool = Boolean.FALSE;
        TextMotion textMotionRestore = null;
        TextAlign textAlignRestore = ((!aa4.e(obj2, bool) || (saver instanceof NonNullValueClassSaver)) && obj2 != null) ? saver.restore(obj2) : null;
        textAlignRestore.getClass();
        int iM8919unboximpl = textAlignRestore.m8919unboximpl();
        Object obj3 = list.get(1);
        Saver<TextDirection, Object> saver2 = getSaver(TextDirection.Companion);
        TextDirection textDirectionRestore = ((!aa4.e(obj3, bool) || (saver2 instanceof NonNullValueClassSaver)) && obj3 != null) ? saver2.restore(obj3) : null;
        textDirectionRestore.getClass();
        int iM8936unboximpl = textDirectionRestore.m8936unboximpl();
        Object obj4 = list.get(2);
        Saver<TextUnit, Object> saver3 = getSaver(TextUnit.Companion);
        TextUnit textUnitRestore = ((!aa4.e(obj4, bool) || (saver3 instanceof NonNullValueClassSaver)) && obj4 != null) ? saver3.restore(obj4) : null;
        textUnitRestore.getClass();
        long jM9245unboximpl = textUnitRestore.m9245unboximpl();
        Object obj5 = list.get(3);
        Saver<TextIndent, Object> saver4 = getSaver(TextIndent.Companion);
        TextIndent textIndentRestore = ((!aa4.e(obj5, bool) || (saver4 instanceof NonNullValueClassSaver)) && obj5 != null) ? saver4.restore(obj5) : null;
        Object obj6 = list.get(4);
        Saver<PlatformParagraphStyle, Object> saver5 = Savers_androidKt.getSaver(PlatformParagraphStyle.Companion);
        PlatformParagraphStyle platformParagraphStyleRestore = ((!aa4.e(obj6, bool) || (saver5 instanceof NonNullValueClassSaver)) && obj6 != null) ? saver5.restore(obj6) : null;
        Object obj7 = list.get(5);
        Saver<LineHeightStyle, Object> saver6 = getSaver(LineHeightStyle.Companion);
        LineHeightStyle lineHeightStyleRestore = ((!aa4.e(obj7, bool) || (saver6 instanceof NonNullValueClassSaver)) && obj7 != null) ? saver6.restore(obj7) : null;
        Object obj8 = list.get(6);
        Saver<LineBreak, Object> saver7 = Savers_androidKt.getSaver(LineBreak.Companion);
        LineBreak lineBreakRestore = ((!aa4.e(obj8, bool) || (saver7 instanceof NonNullValueClassSaver)) && obj8 != null) ? saver7.restore(obj8) : null;
        lineBreakRestore.getClass();
        int iM8830unboximpl = lineBreakRestore.m8830unboximpl();
        Object obj9 = list.get(7);
        Saver<Hyphens, Object> saver8 = getSaver(Hyphens.Companion);
        Hyphens hyphensRestore = ((!aa4.e(obj9, bool) || (saver8 instanceof NonNullValueClassSaver)) && obj9 != null) ? saver8.restore(obj9) : null;
        hyphensRestore.getClass();
        int iM8811unboximpl = hyphensRestore.m8811unboximpl();
        Object obj10 = list.get(8);
        Saver<TextMotion, Object> saver9 = Savers_androidKt.getSaver(TextMotion.Companion);
        if ((!aa4.e(obj10, bool) || (saver9 instanceof NonNullValueClassSaver)) && obj10 != null) {
            textMotionRestore = saver9.restore(obj10);
        }
        return new ParagraphStyle(iM8919unboximpl, iM8936unboximpl, jM9245unboximpl, textIndentRestore, platformParagraphStyleRestore, lineHeightStyleRestore, iM8830unboximpl, iM8811unboximpl, textMotionRestore, (jh2) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object ShadowSaver$lambda$0(SaverScope saverScope, Shadow shadow) {
        return u96.a(save(Color.m6222boximpl(shadow.m6576getColor0d7_KjU()), getSaver(Color.Companion), saverScope), save(Offset.m5976boximpl(shadow.m6577getOffsetF1C5BW0()), getSaver(Offset.Companion), saverScope), save(Float.valueOf(shadow.getBlurRadius())));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Shadow ShadowSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        Saver<Color, Object> saver = getSaver(Color.Companion);
        Boolean bool = Boolean.FALSE;
        Color colorRestore = ((!aa4.e(obj2, bool) || (saver instanceof NonNullValueClassSaver)) && obj2 != null) ? saver.restore(obj2) : null;
        colorRestore.getClass();
        long jM6242unboximpl = colorRestore.m6242unboximpl();
        Object obj3 = list.get(1);
        Saver<Offset, Object> saver2 = getSaver(Offset.Companion);
        Offset offsetRestore = ((!aa4.e(obj3, bool) || (saver2 instanceof NonNullValueClassSaver)) && obj3 != null) ? saver2.restore(obj3) : null;
        offsetRestore.getClass();
        long jM5997unboximpl = offsetRestore.m5997unboximpl();
        Object obj4 = list.get(2);
        Float f = obj4 != null ? (Float) obj4 : null;
        f.getClass();
        return new Shadow(jM6242unboximpl, jM5997unboximpl, f.floatValue(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object SpanStyleSaver$lambda$0(SaverScope saverScope, SpanStyle spanStyle) {
        Color colorM6222boximpl = Color.m6222boximpl(spanStyle.m8432getColor0d7_KjU());
        Color.Companion companion = Color.Companion;
        Object objSave = save(colorM6222boximpl, getSaver(companion), saverScope);
        TextUnit textUnitM9226boximpl = TextUnit.m9226boximpl(spanStyle.m8433getFontSizeXSAIIZE());
        TextUnit.Companion companion2 = TextUnit.Companion;
        return u96.a(objSave, save(textUnitM9226boximpl, getSaver(companion2), saverScope), save(spanStyle.getFontWeight(), getSaver(FontWeight.Companion), saverScope), save(spanStyle.m8434getFontStyle4Lr2A7w(), getSaver(FontStyle.Companion), saverScope), save(spanStyle.m8435getFontSynthesisZQGJjVo(), getSaver(FontSynthesis.Companion), saverScope), save(-1), save(spanStyle.getFontFeatureSettings()), save(TextUnit.m9226boximpl(spanStyle.m8436getLetterSpacingXSAIIZE()), getSaver(companion2), saverScope), save(spanStyle.m8431getBaselineShift5SSeXJ0(), getSaver(BaselineShift.Companion), saverScope), save(spanStyle.getTextGeometricTransform(), getSaver(TextGeometricTransform.Companion), saverScope), save(spanStyle.getLocaleList(), getSaver(LocaleList.Companion), saverScope), save(Color.m6222boximpl(spanStyle.m8430getBackground0d7_KjU()), getSaver(companion), saverScope), save(spanStyle.getTextDecoration(), getSaver(TextDecoration.Companion), saverScope), save(spanStyle.getShadow(), getSaver(Shadow.Companion), saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v0 androidx.compose.ui.text.SpanStyle, still in use, count: 2, list:
          (r1v0 androidx.compose.ui.text.SpanStyle) from 0x00fe: MOVE (r16v2 androidx.compose.ui.text.SpanStyle) = (r1v0 androidx.compose.ui.text.SpanStyle)
          (r1v0 androidx.compose.ui.text.SpanStyle) from 0x00f6: MOVE (r16v7 androidx.compose.ui.text.SpanStyle) = (r1v0 androidx.compose.ui.text.SpanStyle)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.utils.InsnRemover.addAndUnbind(InsnRemover.java:59)
        	at jadx.core.dex.visitors.ModVisitor.removeStep(ModVisitor.java:463)
        	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:97)
        */
    public static final androidx.compose.ui.text.SpanStyle SpanStyleSaver$lambda$1(java.lang.Object r28) {
        /*
            Method dump skipped, instruction units count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.SaversKt.SpanStyleSaver$lambda$1(java.lang.Object):androidx.compose.ui.text.SpanStyle");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object TextAlignSaver$lambda$0(SaverScope saverScope, TextAlign textAlign) {
        return Integer.valueOf(textAlign.m8919unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextAlign TextAlignSaver$lambda$1(Object obj) {
        obj.getClass();
        return TextAlign.m8913boximpl(TextAlign.m8914constructorimpl(((Integer) obj).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object TextDecorationSaver$lambda$0(SaverScope saverScope, TextDecoration textDecoration) {
        return Integer.valueOf(textDecoration.getMask());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextDecoration TextDecorationSaver$lambda$1(Object obj) {
        obj.getClass();
        return new TextDecoration(((Integer) obj).intValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object TextDirectionSaver$lambda$0(SaverScope saverScope, TextDirection textDirection) {
        return Integer.valueOf(textDirection.m8936unboximpl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextDirection TextDirectionSaver$lambda$1(Object obj) {
        obj.getClass();
        return TextDirection.m8930boximpl(TextDirection.m8931constructorimpl(((Integer) obj).intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object TextGeometricTransformSaver$lambda$0(SaverScope saverScope, TextGeometricTransform textGeometricTransform) {
        return u96.a(Float.valueOf(textGeometricTransform.getScaleX()), Float.valueOf(textGeometricTransform.getSkewX()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextGeometricTransform TextGeometricTransformSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        return new TextGeometricTransform(((Number) list.get(0)).floatValue(), ((Number) list.get(1)).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object TextIndentSaver$lambda$0(SaverScope saverScope, TextIndent textIndent) {
        TextUnit textUnitM9226boximpl = TextUnit.m9226boximpl(textIndent.m8950getFirstLineXSAIIZE());
        TextUnit.Companion companion = TextUnit.Companion;
        return u96.a(save(textUnitM9226boximpl, getSaver(companion), saverScope), save(TextUnit.m9226boximpl(textIndent.m8951getRestLineXSAIIZE()), getSaver(companion), saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextIndent TextIndentSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        TextUnit.Companion companion = TextUnit.Companion;
        Saver<TextUnit, Object> saver = getSaver(companion);
        Boolean bool = Boolean.FALSE;
        TextUnit textUnitRestore = null;
        TextUnit textUnitRestore2 = ((!aa4.e(obj2, bool) || (saver instanceof NonNullValueClassSaver)) && obj2 != null) ? saver.restore(obj2) : null;
        textUnitRestore2.getClass();
        long jM9245unboximpl = textUnitRestore2.m9245unboximpl();
        Object obj3 = list.get(1);
        Saver<TextUnit, Object> saver2 = getSaver(companion);
        if ((!aa4.e(obj3, bool) || (saver2 instanceof NonNullValueClassSaver)) && obj3 != null) {
            textUnitRestore = saver2.restore(obj3);
        }
        textUnitRestore.getClass();
        return new TextIndent(jM9245unboximpl, textUnitRestore.m9245unboximpl(), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object TextLinkStylesSaver$lambda$0(SaverScope saverScope, TextLinkStyles textLinkStyles) {
        SpanStyle style = textLinkStyles.getStyle();
        Saver<SpanStyle, Object> saver = SpanStyleSaver;
        return u96.a(save(style, saver, saverScope), save(textLinkStyles.getFocusedStyle(), saver, saverScope), save(textLinkStyles.getHoveredStyle(), saver, saverScope), save(textLinkStyles.getPressedStyle(), saver, saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextLinkStyles TextLinkStylesSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        Saver<SpanStyle, Object> saver = SpanStyleSaver;
        Boolean bool = Boolean.FALSE;
        SpanStyle spanStyleRestore = null;
        SpanStyle spanStyleRestore2 = ((!aa4.e(obj2, bool) || (saver instanceof NonNullValueClassSaver)) && obj2 != null) ? saver.restore(obj2) : null;
        Object obj3 = list.get(1);
        SpanStyle spanStyleRestore3 = ((!aa4.e(obj3, bool) || (saver instanceof NonNullValueClassSaver)) && obj3 != null) ? saver.restore(obj3) : null;
        Object obj4 = list.get(2);
        SpanStyle spanStyleRestore4 = ((!aa4.e(obj4, bool) || (saver instanceof NonNullValueClassSaver)) && obj4 != null) ? saver.restore(obj4) : null;
        Object obj5 = list.get(3);
        if ((!aa4.e(obj5, bool) || (saver instanceof NonNullValueClassSaver)) && obj5 != null) {
            spanStyleRestore = saver.restore(obj5);
        }
        return new TextLinkStyles(spanStyleRestore2, spanStyleRestore3, spanStyleRestore4, spanStyleRestore);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final Object TextRangeSaver$lambda$0(SaverScope saverScope, TextRange textRange) {
        return u96.a(save(Integer.valueOf(TextRange.m8491getStartimpl(textRange.m8495unboximpl()))), save(Integer.valueOf(TextRange.m8486getEndimpl(textRange.m8495unboximpl()))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextRange TextRangeSaver$lambda$1(Object obj) {
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        Integer num = obj2 != null ? (Integer) obj2 : null;
        num.getClass();
        int iIntValue = num.intValue();
        Object obj3 = list.get(1);
        Integer num2 = obj3 != null ? (Integer) obj3 : null;
        num2.getClass();
        return TextRange.m8479boximpl(TextRangeKt.TextRange(iIntValue, num2.intValue()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object TextUnitSaver$lambda$0(SaverScope saverScope, TextUnit textUnit) {
        return textUnit == null ? false : TextUnit.m9233equalsimpl0(textUnit.m9245unboximpl(), TextUnit.Companion.m9247getUnspecifiedXSAIIZE()) ? Boolean.FALSE : u96.a(save(Float.valueOf(TextUnit.m9236getValueimpl(textUnit.m9245unboximpl()))), save(TextUnitType.m9261boximpl(TextUnit.m9235getTypeUIouoOA(textUnit.m9245unboximpl())), getSaver(TextUnitType.Companion), saverScope));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextUnit TextUnitSaver$lambda$1(Object obj) {
        Boolean bool = Boolean.FALSE;
        if (aa4.e(obj, bool)) {
            return TextUnit.m9226boximpl(TextUnit.Companion.m9247getUnspecifiedXSAIIZE());
        }
        obj.getClass();
        List list = (List) obj;
        Object obj2 = list.get(0);
        TextUnitType textUnitTypeRestore = null;
        Float f = obj2 != null ? (Float) obj2 : null;
        f.getClass();
        float fFloatValue = f.floatValue();
        Object obj3 = list.get(1);
        Saver<TextUnitType, Object> saver = getSaver(TextUnitType.Companion);
        if ((!aa4.e(obj3, bool) || (saver instanceof NonNullValueClassSaver)) && obj3 != null) {
            textUnitTypeRestore = saver.restore(obj3);
        }
        textUnitTypeRestore.getClass();
        return TextUnit.m9226boximpl(TextUnitKt.m9248TextUnitanM5pPY(fFloatValue, textUnitTypeRestore.m9267unboximpl()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object TextUnitTypeSaver$lambda$0(SaverScope saverScope, TextUnitType textUnitType) {
        long jM9267unboximpl = textUnitType.m9267unboximpl();
        TextUnitType.Companion companion = TextUnitType.Companion;
        if (TextUnitType.m9264equalsimpl0(jM9267unboximpl, companion.m9268getEmUIouoOA())) {
            return 0;
        }
        if (TextUnitType.m9264equalsimpl0(jM9267unboximpl, companion.m9269getSpUIouoOA())) {
            return 1;
        }
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TextUnitType TextUnitTypeSaver$lambda$1(Object obj) {
        if (aa4.e(obj, 0)) {
            return TextUnitType.m9261boximpl(TextUnitType.Companion.m9268getEmUIouoOA());
        }
        return aa4.e(obj, 1) ? TextUnitType.m9261boximpl(TextUnitType.Companion.m9269getSpUIouoOA()) : TextUnitType.m9261boximpl(TextUnitType.Companion.m9270getUnspecifiedUIouoOA());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object UrlAnnotationSaver$lambda$0(SaverScope saverScope, UrlAnnotation urlAnnotation) {
        return save(urlAnnotation.getUrl());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final UrlAnnotation UrlAnnotationSaver$lambda$1(Object obj) {
        String str = obj != null ? (String) obj : null;
        str.getClass();
        return new UrlAnnotation(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object VerbatimTtsAnnotationSaver$lambda$0(SaverScope saverScope, VerbatimTtsAnnotation verbatimTtsAnnotation) {
        return save(verbatimTtsAnnotation.getVerbatim());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final VerbatimTtsAnnotation VerbatimTtsAnnotationSaver$lambda$1(Object obj) {
        String str = obj != null ? (String) obj : null;
        str.getClass();
        return new VerbatimTtsAnnotation(str);
    }

    public static final Saver<AnnotatedString, Object> getAnnotatedStringSaver() {
        return AnnotatedStringSaver;
    }

    private static /* synthetic */ void getAnnotationRangeSaver$annotations() {
    }

    public static final Saver<FontStyle, Object> getFontStyleSaver() {
        return FontStyleSaver;
    }

    public static final Saver<FontSynthesis, Object> getFontSynthesisSaver() {
        return FontSynthesisSaver;
    }

    public static final Saver<ParagraphStyle, Object> getParagraphStyleSaver() {
        return ParagraphStyleSaver;
    }

    public static final Saver<TextDecoration, Object> getSaver(TextDecoration.Companion companion) {
        return TextDecorationSaver;
    }

    public static final Saver<SpanStyle, Object> getSpanStyleSaver() {
        return SpanStyleSaver;
    }

    public static final Saver<TextLinkStyles, Object> getTextLinkStylesSaver() {
        return TextLinkStylesSaver;
    }

    public static final NonNullValueClassSaver<TextUnitType, Object> getTextUnitTypeSaver() {
        return TextUnitTypeSaver;
    }

    private static /* synthetic */ void getUrlAnnotationSaver$annotations() {
    }

    public static final <T extends Saver<Original, Saveable>, Original, Saveable, Result> Result restore(Saveable saveable, T t) {
        if ((aa4.e(saveable, Boolean.FALSE) && !(t instanceof NonNullValueClassSaver)) || saveable == null) {
            return null;
        }
        t.restore(saveable);
        aa4.i();
        throw null;
    }

    public static final <T extends Saver<Original, Saveable>, Original, Saveable> Object save(Original original, T t, SaverScope saverScope) {
        Object objSave;
        return (original == null || (objSave = t.save(saverScope, original)) == null) ? Boolean.FALSE : objSave;
    }

    public static final Saver<TextGeometricTransform, Object> getSaver(TextGeometricTransform.Companion companion) {
        return TextGeometricTransformSaver;
    }

    public static final Saver<TextIndent, Object> getSaver(TextIndent.Companion companion) {
        return TextIndentSaver;
    }

    public static final Saver<FontWeight, Object> getSaver(FontWeight.Companion companion) {
        return FontWeightSaver;
    }

    public static final Saver<BaselineShift, Object> getSaver(BaselineShift.Companion companion) {
        return BaselineShiftSaver;
    }

    public static final Saver<TextRange, Object> getSaver(TextRange.Companion companion) {
        return TextRangeSaver;
    }

    public static final Saver<Shadow, Object> getSaver(Shadow.Companion companion) {
        return ShadowSaver;
    }

    public static final Saver<Color, Object> getSaver(Color.Companion companion) {
        return ColorSaver;
    }

    public static final Saver<TextAlign, Object> getSaver(TextAlign.Companion companion) {
        return TextAlignSaver;
    }

    public static final Saver<TextDirection, Object> getSaver(TextDirection.Companion companion) {
        return TextDirectionSaver;
    }

    public static final Saver<Hyphens, Object> getSaver(Hyphens.Companion companion) {
        return HyphensSaver;
    }

    public static final Saver<FontStyle, Object> getSaver(FontStyle.Companion companion) {
        return FontStyleSaver;
    }

    public static final <T> T save(T t) {
        return t;
    }

    public static final Saver<FontSynthesis, Object> getSaver(FontSynthesis.Companion companion) {
        return FontSynthesisSaver;
    }

    public static final Saver<TextUnit, Object> getSaver(TextUnit.Companion companion) {
        return TextUnitSaver;
    }

    public static final Saver<TextUnitType, Object> getSaver(TextUnitType.Companion companion) {
        return TextUnitTypeSaver;
    }

    public static final Saver<Offset, Object> getSaver(Offset.Companion companion) {
        return OffsetSaver;
    }

    public static final Saver<LocaleList, Object> getSaver(LocaleList.Companion companion) {
        return LocaleListSaver;
    }

    public static final Saver<Locale, Object> getSaver(Locale.Companion companion) {
        return LocaleSaver;
    }

    public static final Saver<LineHeightStyle, Object> getSaver(LineHeightStyle.Companion companion) {
        return LineHeightStyleSaver;
    }

    private static final Saver<LineHeightStyle.Alignment, Object> getSaver(LineHeightStyle.Alignment.Companion companion) {
        return LineHeightStyleAlignmentSaver;
    }

    private static final Saver<LineHeightStyle.Trim, Object> getSaver(LineHeightStyle.Trim.Companion companion) {
        return LineHeightStyleTrimSaver;
    }

    private static final Saver<LineHeightStyle.Mode, Object> getSaver(LineHeightStyle.Mode.Companion companion) {
        return LineHeightStyleModeSaver;
    }

    public static final <Result> Result restore(Object obj) {
        if (obj == null) {
            return null;
        }
        aa4.i();
        throw null;
    }
}
