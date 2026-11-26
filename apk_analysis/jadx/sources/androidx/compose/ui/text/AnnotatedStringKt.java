package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.intl.LocaleList;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.fr;
import defpackage.h7;
import defpackage.j59;
import defpackage.kx2;
import defpackage.kx6;
import defpackage.mi2;
import defpackage.nl3;
import defpackage.pp1;
import defpackage.qn1;
import defpackage.u96;
import defpackage.ul2;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AnnotatedStringKt {
    private static final AnnotatedString EmptyAnnotatedString = new AnnotatedString("", null, 2, 0 == true ? 1 : 0);

    public static final AnnotatedString AnnotatedString(String str, SpanStyle spanStyle, ParagraphStyle paragraphStyle) {
        return new AnnotatedString(str, u96.h(new AnnotatedString.Range(spanStyle, 0, str.length())), paragraphStyle == null ? kx2.b : u96.h(new AnnotatedString.Range(paragraphStyle, 0, str.length())));
    }

    public static /* synthetic */ AnnotatedString AnnotatedString$default(String str, SpanStyle spanStyle, ParagraphStyle paragraphStyle, int i, Object obj) {
        if ((i & 4) != 0) {
            paragraphStyle = null;
        }
        return AnnotatedString(str, spanStyle, paragraphStyle);
    }

    public static final AnnotatedString buildAnnotatedString(nl3<? super AnnotatedString.Builder, j59> nl3Var) {
        AnnotatedString.Builder builder = new AnnotatedString.Builder(0, 1, null);
        nl3Var.invoke(builder);
        return builder.toAnnotatedString();
    }

    public static final AnnotatedString capitalize(AnnotatedString annotatedString, final LocaleList localeList) {
        return JvmAnnotatedString_jvmAndAndroidKt.transform(annotatedString, new dm3() { // from class: wm
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj2).intValue();
                int iIntValue2 = ((Integer) obj3).intValue();
                return AnnotatedStringKt.capitalize$lambda$0(localeList, (String) obj, iIntValue, iIntValue2);
            }
        });
    }

    public static /* synthetic */ AnnotatedString capitalize$default(AnnotatedString annotatedString, LocaleList localeList, int i, Object obj) {
        if ((i & 1) != 0) {
            localeList = LocaleList.Companion.getCurrent();
        }
        return capitalize(annotatedString, localeList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String capitalize$lambda$0(LocaleList localeList, String str, int i, int i2) {
        return i == 0 ? StringKt.capitalize(str.substring(i, i2), localeList) : str.substring(i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<AnnotatedString.Range<? extends AnnotatedString.Annotation>> constructAnnotationsFromSpansAndParagraphs(List<AnnotatedString.Range<SpanStyle>> list, List<AnnotatedString.Range<ParagraphStyle>> list2) {
        if (list.isEmpty() && list2.isEmpty()) {
            return null;
        }
        if (list2.isEmpty()) {
            return list;
        }
        if (list.isEmpty()) {
            return list2;
        }
        ArrayList arrayList = new ArrayList(list2.size() + list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(list.get(i));
        }
        int size2 = list2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            arrayList.add(list2.get(i2));
        }
        return arrayList;
    }

    public static final boolean contains(int i, int i2, int i3, int i4) {
        if (i <= i3 && i4 <= i2) {
            if (i2 == i4) {
                if ((i3 == i4) == (i == i2)) {
                }
            }
            return true;
        }
        return false;
    }

    public static final AnnotatedString decapitalize(AnnotatedString annotatedString, final LocaleList localeList) {
        return JvmAnnotatedString_jvmAndAndroidKt.transform(annotatedString, new dm3() { // from class: vm
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj2).intValue();
                int iIntValue2 = ((Integer) obj3).intValue();
                return AnnotatedStringKt.decapitalize$lambda$0(localeList, (String) obj, iIntValue, iIntValue2);
            }
        });
    }

    public static /* synthetic */ AnnotatedString decapitalize$default(AnnotatedString annotatedString, LocaleList localeList, int i, Object obj) {
        if ((i & 1) != 0) {
            localeList = LocaleList.Companion.getCurrent();
        }
        return decapitalize(annotatedString, localeList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String decapitalize$lambda$0(LocaleList localeList, String str, int i, int i2) {
        return i == 0 ? StringKt.decapitalize(str.substring(i, i2), localeList) : str.substring(i, i2);
    }

    public static final AnnotatedString emptyAnnotatedString() {
        return EmptyAnnotatedString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> List<AnnotatedString.Range<T>> filterRanges(List<? extends AnnotatedString.Range<? extends T>> list, int i, int i2) {
        if (!(i <= i2)) {
            InlineClassHelperKt.throwIllegalArgumentException("start (" + i + ") should be less than or equal to end (" + i2 + ')');
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i3 = 0; i3 < size; i3++) {
            AnnotatedString.Range<? extends T> range = list.get(i3);
            if (intersect(i, i2, range.getStart(), range.getEnd())) {
                arrayList.add(new AnnotatedString.Range(range.getItem(), Math.max(i, range.getStart()) - i, Math.min(i2, range.getEnd()) - i, range.getTag()));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return arrayList;
    }

    private static final List<AnnotatedString.Range<? extends AnnotatedString.Annotation>> getLocalAnnotations(AnnotatedString annotatedString, int i, int i2, nl3<? super AnnotatedString.Annotation, Boolean> nl3Var) {
        List<AnnotatedString.Range<? extends AnnotatedString.Annotation>> annotations$ui_text;
        if (i == i2 || (annotations$ui_text = annotatedString.getAnnotations$ui_text()) == null) {
            return null;
        }
        int i3 = 0;
        if (i != 0 || i2 < annotatedString.getText().length()) {
            ArrayList arrayList = new ArrayList(annotations$ui_text.size());
            int size = annotations$ui_text.size();
            while (i3 < size) {
                AnnotatedString.Range<? extends AnnotatedString.Annotation> range = annotations$ui_text.get(i3);
                if ((nl3Var != null ? nl3Var.invoke(range.getItem()).booleanValue() : true) && intersect(i, i2, range.getStart(), range.getEnd())) {
                    arrayList.add(new AnnotatedString.Range(range.getItem(), kx6.f(range.getStart(), i, i2) - i, kx6.f(range.getEnd(), i, i2) - i, range.getTag()));
                }
                i3++;
            }
            return arrayList;
        }
        if (nl3Var == null) {
            return annotations$ui_text;
        }
        ArrayList arrayList2 = new ArrayList(annotations$ui_text.size());
        int size2 = annotations$ui_text.size();
        while (i3 < size2) {
            AnnotatedString.Range<? extends AnnotatedString.Annotation> range2 = annotations$ui_text.get(i3);
            if (nl3Var.invoke(range2.getItem()).booleanValue()) {
                arrayList2.add(range2);
            }
            i3++;
        }
        return arrayList2;
    }

    public static /* synthetic */ List getLocalAnnotations$default(AnnotatedString annotatedString, int i, int i2, nl3 nl3Var, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            nl3Var = null;
        }
        return getLocalAnnotations(annotatedString, i, i2, nl3Var);
    }

    private static final List<AnnotatedString.Range<ParagraphStyle>> getLocalParagraphStyles(AnnotatedString annotatedString, int i, int i2) {
        List<AnnotatedString.Range<ParagraphStyle>> paragraphStylesOrNull$ui_text;
        if (i == i2 || (paragraphStylesOrNull$ui_text = annotatedString.getParagraphStylesOrNull$ui_text()) == null) {
            return null;
        }
        if (i == 0 && i2 >= annotatedString.getText().length()) {
            return paragraphStylesOrNull$ui_text;
        }
        ArrayList arrayList = new ArrayList(paragraphStylesOrNull$ui_text.size());
        int size = paragraphStylesOrNull$ui_text.size();
        for (int i3 = 0; i3 < size; i3++) {
            AnnotatedString.Range<ParagraphStyle> range = paragraphStylesOrNull$ui_text.get(i3);
            if (intersect(i, i2, range.getStart(), range.getEnd())) {
                ParagraphStyle item = range.getItem();
                int start = range.getStart();
                if (start < i) {
                    start = i;
                }
                if (start > i2) {
                    start = i2;
                }
                int i4 = start - i;
                int end = range.getEnd();
                if (end < i) {
                    end = i;
                }
                if (end > i2) {
                    end = i2;
                }
                arrayList.add(new AnnotatedString.Range(item, i4, end - i));
            }
        }
        return arrayList;
    }

    public static final boolean intersect(int i, int i2, int i3, int i4) {
        return ((i < i4) & (i3 < i2)) | (((i == i2) | (i3 == i4)) & (i == i3));
    }

    public static final <T> List<T> mapEachParagraphStyle(AnnotatedString annotatedString, ParagraphStyle paragraphStyle, bm3<? super AnnotatedString, ? super AnnotatedString.Range<ParagraphStyle>, ? extends T> bm3Var) {
        List<AnnotatedString.Range<ParagraphStyle>> listNormalizedParagraphStyles = normalizedParagraphStyles(annotatedString, paragraphStyle);
        ArrayList arrayList = new ArrayList(listNormalizedParagraphStyles.size());
        int size = listNormalizedParagraphStyles.size();
        for (int i = 0; i < size; i++) {
            AnnotatedString.Range<ParagraphStyle> range = listNormalizedParagraphStyles.get(i);
            arrayList.add(bm3Var.invoke(substringWithoutParagraphStyles(annotatedString, range.getStart(), range.getEnd()), range));
        }
        return arrayList;
    }

    public static final List<AnnotatedString.Range<ParagraphStyle>> normalizedParagraphStyles(AnnotatedString annotatedString, ParagraphStyle paragraphStyle) {
        List<AnnotatedString.Range<ParagraphStyle>> paragraphStylesOrNull$ui_text = annotatedString.getParagraphStylesOrNull$ui_text();
        List listN0 = paragraphStylesOrNull$ui_text != null ? qn1.n0(paragraphStylesOrNull$ui_text, new Comparator() { // from class: androidx.compose.ui.text.AnnotatedStringKt$normalizedParagraphStyles$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return pp1.a(Integer.valueOf(((AnnotatedString.Range) t).getStart()), Integer.valueOf(((AnnotatedString.Range) t2).getStart()));
            }
        }) : kx2.b;
        ArrayList arrayList = new ArrayList();
        fr frVar = new fr();
        int size = listN0.size();
        int end = 0;
        for (int i = 0; i < size; i++) {
            AnnotatedString.Range range = (AnnotatedString.Range) listN0.get(i);
            AnnotatedString.Range rangeCopy$default = AnnotatedString.Range.copy$default(range, paragraphStyle.merge((ParagraphStyle) range.getItem()), 0, 0, null, 14, null);
            while (end < rangeCopy$default.getStart() && !frVar.isEmpty()) {
                AnnotatedString.Range range2 = (AnnotatedString.Range) frVar.last();
                if (rangeCopy$default.getStart() < range2.getEnd()) {
                    arrayList.add(new AnnotatedString.Range(range2.getItem(), end, rangeCopy$default.getStart()));
                    end = rangeCopy$default.getStart();
                } else {
                    arrayList.add(new AnnotatedString.Range(range2.getItem(), end, range2.getEnd()));
                    end = range2.getEnd();
                    while (!frVar.isEmpty() && end == ((AnnotatedString.Range) frVar.last()).getEnd()) {
                        frVar.removeLast();
                    }
                }
            }
            if (end < rangeCopy$default.getStart()) {
                arrayList.add(new AnnotatedString.Range(paragraphStyle, end, rangeCopy$default.getStart()));
                end = rangeCopy$default.getStart();
            }
            AnnotatedString.Range range3 = (AnnotatedString.Range) frVar.j();
            if (range3 == null) {
                frVar.addLast(new AnnotatedString.Range(rangeCopy$default.getItem(), rangeCopy$default.getStart(), rangeCopy$default.getEnd()));
            } else if (range3.getStart() == rangeCopy$default.getStart() && range3.getEnd() == rangeCopy$default.getEnd()) {
                frVar.removeLast();
                frVar.addLast(new AnnotatedString.Range(((ParagraphStyle) range3.getItem()).merge((ParagraphStyle) rangeCopy$default.getItem()), rangeCopy$default.getStart(), rangeCopy$default.getEnd()));
            } else if (range3.getStart() == range3.getEnd()) {
                arrayList.add(new AnnotatedString.Range(range3.getItem(), range3.getStart(), range3.getEnd()));
                frVar.removeLast();
                frVar.addLast(new AnnotatedString.Range(rangeCopy$default.getItem(), rangeCopy$default.getStart(), rangeCopy$default.getEnd()));
            } else {
                if (range3.getEnd() < rangeCopy$default.getEnd()) {
                    mi2.b();
                    return null;
                }
                frVar.addLast(new AnnotatedString.Range(((ParagraphStyle) range3.getItem()).merge((ParagraphStyle) rangeCopy$default.getItem()), rangeCopy$default.getStart(), rangeCopy$default.getEnd()));
            }
        }
        while (end <= annotatedString.getText().length() && !frVar.isEmpty()) {
            AnnotatedString.Range range4 = (AnnotatedString.Range) frVar.last();
            arrayList.add(new AnnotatedString.Range(range4.getItem(), end, range4.getEnd()));
            end = range4.getEnd();
            while (!frVar.isEmpty() && end == ((AnnotatedString.Range) frVar.last()).getEnd()) {
                frVar.removeLast();
            }
        }
        if (end < annotatedString.getText().length()) {
            arrayList.add(new AnnotatedString.Range(paragraphStyle, end, annotatedString.getText().length()));
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new AnnotatedString.Range(paragraphStyle, 0, 0));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnnotatedString substringWithoutParagraphStyles(AnnotatedString annotatedString, int i, int i2) {
        String strSubstring = i != i2 ? annotatedString.getText().substring(i, i2) : "";
        List localAnnotations = getLocalAnnotations(annotatedString, i, i2, new h7(1));
        if (localAnnotations == null) {
            localAnnotations = kx2.b;
        }
        return new AnnotatedString(strSubstring, (List<? extends AnnotatedString.Range<? extends AnnotatedString.Annotation>>) localAnnotations);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean substringWithoutParagraphStyles$lambda$0(AnnotatedString.Annotation annotation) {
        return !(annotation instanceof ParagraphStyle);
    }

    public static final AnnotatedString toLowerCase(AnnotatedString annotatedString, final LocaleList localeList) {
        return JvmAnnotatedString_jvmAndAndroidKt.transform(annotatedString, new dm3() { // from class: ym
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj2).intValue();
                int iIntValue2 = ((Integer) obj3).intValue();
                return AnnotatedStringKt.toLowerCase$lambda$0(localeList, (String) obj, iIntValue, iIntValue2);
            }
        });
    }

    public static /* synthetic */ AnnotatedString toLowerCase$default(AnnotatedString annotatedString, LocaleList localeList, int i, Object obj) {
        if ((i & 1) != 0) {
            localeList = LocaleList.Companion.getCurrent();
        }
        return toLowerCase(annotatedString, localeList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String toLowerCase$lambda$0(LocaleList localeList, String str, int i, int i2) {
        return StringKt.toLowerCase(str.substring(i, i2), localeList);
    }

    public static final AnnotatedString toUpperCase(AnnotatedString annotatedString, final LocaleList localeList) {
        return JvmAnnotatedString_jvmAndAndroidKt.transform(annotatedString, new dm3() { // from class: xm
            @Override // defpackage.dm3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                int iIntValue = ((Integer) obj2).intValue();
                int iIntValue2 = ((Integer) obj3).intValue();
                return AnnotatedStringKt.toUpperCase$lambda$0(localeList, (String) obj, iIntValue, iIntValue2);
            }
        });
    }

    public static /* synthetic */ AnnotatedString toUpperCase$default(AnnotatedString annotatedString, LocaleList localeList, int i, Object obj) {
        if ((i & 1) != 0) {
            localeList = LocaleList.Companion.getCurrent();
        }
        return toUpperCase(annotatedString, localeList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String toUpperCase$lambda$0(LocaleList localeList, String str, int i, int i2) {
        return StringKt.toUpperCase(str.substring(i, i2), localeList);
    }

    public static final <R> R withAnnotation(AnnotatedString.Builder builder, String str, String str2, nl3<? super AnnotatedString.Builder, ? extends R> nl3Var) {
        int iPushStringAnnotation = builder.pushStringAnnotation(str, str2);
        try {
            return nl3Var.invoke(builder);
        } finally {
            builder.pop(iPushStringAnnotation);
        }
    }

    public static final <R> R withLink(AnnotatedString.Builder builder, LinkAnnotation linkAnnotation, nl3<? super AnnotatedString.Builder, ? extends R> nl3Var) {
        int iPushLink = builder.pushLink(linkAnnotation);
        try {
            return nl3Var.invoke(builder);
        } finally {
            builder.pop(iPushLink);
        }
    }

    public static final <R> R withStyle(AnnotatedString.Builder builder, SpanStyle spanStyle, nl3<? super AnnotatedString.Builder, ? extends R> nl3Var) {
        int iPushStyle = builder.pushStyle(spanStyle);
        try {
            return nl3Var.invoke(builder);
        } finally {
            builder.pop(iPushStyle);
        }
    }

    public static final <R> R withAnnotation(AnnotatedString.Builder builder, TtsAnnotation ttsAnnotation, nl3<? super AnnotatedString.Builder, ? extends R> nl3Var) {
        int iPushTtsAnnotation = builder.pushTtsAnnotation(ttsAnnotation);
        try {
            return nl3Var.invoke(builder);
        } finally {
            builder.pop(iPushTtsAnnotation);
        }
    }

    public static final <R> R withStyle(AnnotatedString.Builder builder, ParagraphStyle paragraphStyle, nl3<? super AnnotatedString.Builder, ? extends R> nl3Var) {
        int iPushStyle = builder.pushStyle(paragraphStyle);
        try {
            return nl3Var.invoke(builder);
        } finally {
            builder.pop(iPushStyle);
        }
    }

    @ul2
    public static final <R> R withAnnotation(AnnotatedString.Builder builder, UrlAnnotation urlAnnotation, nl3<? super AnnotatedString.Builder, ? extends R> nl3Var) {
        int iPushUrlAnnotation = builder.pushUrlAnnotation(urlAnnotation);
        try {
            return nl3Var.invoke(builder);
        } finally {
            builder.pop(iPushUrlAnnotation);
        }
    }

    public static final AnnotatedString AnnotatedString(String str, ParagraphStyle paragraphStyle) {
        return new AnnotatedString(str, kx2.b, u96.h(new AnnotatedString.Range(paragraphStyle, 0, str.length())));
    }
}
