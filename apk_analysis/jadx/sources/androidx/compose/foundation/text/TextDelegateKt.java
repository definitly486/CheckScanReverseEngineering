package androidx.compose.foundation.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import defpackage.aa4;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class TextDelegateKt {
    public static final int ceilToIntPx(float f) {
        return Math.round((float) Math.ceil(f));
    }

    /* JADX INFO: renamed from: updateTextDelegate-rm0N8CA, reason: not valid java name */
    public static final TextDelegate m2594updateTextDelegaterm0N8CA(TextDelegate textDelegate, AnnotatedString annotatedString, TextStyle textStyle, Density density, FontFamily.Resolver resolver, boolean z, int i, int i2, int i3, List<AnnotatedString.Range<Placeholder>> list) {
        boolean z2;
        int i4;
        int i5;
        int i6;
        List<AnnotatedString.Range<Placeholder>> list2;
        if (aa4.e(textDelegate.getText(), annotatedString) && aa4.e(textDelegate.getStyle(), textStyle)) {
            z2 = z;
            if (textDelegate.getSoftWrap() == z2) {
                i4 = i;
                if (TextOverflow.m8968equalsimpl0(textDelegate.m2592getOverflowgIe3tQ8(), i4)) {
                    i5 = i2;
                    if (textDelegate.getMaxLines() == i5) {
                        i6 = i3;
                        if (textDelegate.getMinLines() == i6 && aa4.e(textDelegate.getDensity(), density)) {
                            list2 = list;
                            if (aa4.e(textDelegate.getPlaceholders(), list2)) {
                                resolver = resolver;
                                if (textDelegate.getFontFamilyResolver() == resolver) {
                                    return textDelegate;
                                }
                            } else {
                                resolver = resolver;
                            }
                        } else {
                            resolver = resolver;
                            list2 = list;
                        }
                    } else {
                        resolver = resolver;
                        i6 = i3;
                        list2 = list;
                    }
                } else {
                    resolver = resolver;
                    i5 = i2;
                    i6 = i3;
                    list2 = list;
                }
            }
            return new TextDelegate(annotatedString, textStyle, i5, i6, z2, i4, density, resolver, list2, null);
        }
        z2 = z;
        i4 = i;
        i5 = i2;
        i6 = i3;
        list2 = list;
        return new TextDelegate(annotatedString, textStyle, i5, i6, z2, i4, density, resolver, list2, null);
    }

    /* JADX INFO: renamed from: updateTextDelegate-rm0N8CA$default, reason: not valid java name */
    public static /* synthetic */ TextDelegate m2595updateTextDelegaterm0N8CA$default(TextDelegate textDelegate, AnnotatedString annotatedString, TextStyle textStyle, Density density, FontFamily.Resolver resolver, boolean z, int i, int i2, int i3, List list, int i4, Object obj) {
        if ((i4 & 32) != 0) {
            z = true;
        }
        if ((i4 & 64) != 0) {
            i = TextOverflow.Companion.m8977getClipgIe3tQ8();
        }
        if ((i4 & 128) != 0) {
            i2 = Integer.MAX_VALUE;
        }
        if ((i4 & 256) != 0) {
            i3 = 1;
        }
        return m2594updateTextDelegaterm0N8CA(textDelegate, annotatedString, textStyle, density, resolver, z, i, i2, i3, list);
    }
}
