package androidx.compose.foundation.style;

import defpackage.ag;
import defpackage.j59;
import defpackage.l68;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class StyleKt {
    public static final Style Style(Style style, Style style2, Style style3) {
        Style.Companion companion = Style.Companion;
        if (style == companion) {
            return Style(style2, style3);
        }
        if (style2 == companion) {
            return Style(style, style3);
        }
        if (style3 == companion) {
            return Style(style, style2);
        }
        boolean z = style instanceof CombinedStyle;
        if (z && (style2 instanceof CombinedStyle) && (style3 instanceof CombinedStyle)) {
            l68 l68Var = new l68(3);
            l68Var.b(((CombinedStyle) style).getStyles());
            l68Var.b(((CombinedStyle) style2).getStyles());
            l68Var.b(((CombinedStyle) style3).getStyles());
            ArrayList<Object> arrayList = l68Var.a;
            return Style((Style[]) arrayList.toArray(new Style[arrayList.size()]));
        }
        if (z && (style2 instanceof CombinedStyle)) {
            l68 l68Var2 = new l68(3);
            l68Var2.b(((CombinedStyle) style).getStyles());
            l68Var2.b(((CombinedStyle) style2).getStyles());
            l68Var2.a(style3);
            ArrayList<Object> arrayList2 = l68Var2.a;
            return Style((Style[]) arrayList2.toArray(new Style[arrayList2.size()]));
        }
        if (z && (style3 instanceof CombinedStyle)) {
            l68 l68Var3 = new l68(3);
            l68Var3.b(((CombinedStyle) style).getStyles());
            l68Var3.a(style2);
            l68Var3.b(((CombinedStyle) style3).getStyles());
            ArrayList<Object> arrayList3 = l68Var3.a;
            return Style((Style[]) arrayList3.toArray(new Style[arrayList3.size()]));
        }
        boolean z2 = style2 instanceof CombinedStyle;
        if (z2 && (style3 instanceof CombinedStyle)) {
            l68 l68Var4 = new l68(3);
            l68Var4.a(style);
            l68Var4.b(((CombinedStyle) style2).getStyles());
            l68Var4.b(((CombinedStyle) style3).getStyles());
            ArrayList<Object> arrayList4 = l68Var4.a;
            return Style((Style[]) arrayList4.toArray(new Style[arrayList4.size()]));
        }
        if (z) {
            l68 l68Var5 = new l68(3);
            l68Var5.b(((CombinedStyle) style).getStyles());
            l68Var5.a(style2);
            l68Var5.a(style3);
            ArrayList<Object> arrayList5 = l68Var5.a;
            return Style((Style[]) arrayList5.toArray(new Style[arrayList5.size()]));
        }
        if (z2) {
            l68 l68Var6 = new l68(3);
            l68Var6.a(style);
            l68Var6.b(((CombinedStyle) style2).getStyles());
            l68Var6.a(style3);
            ArrayList<Object> arrayList6 = l68Var6.a;
            return Style((Style[]) arrayList6.toArray(new Style[arrayList6.size()]));
        }
        if (!(style3 instanceof CombinedStyle)) {
            return Style(style, style2, style3);
        }
        l68 l68Var7 = new l68(3);
        l68Var7.a(style);
        l68Var7.a(style2);
        l68Var7.b(((CombinedStyle) style3).getStyles());
        ArrayList<Object> arrayList7 = l68Var7.a;
        return Style((Style[]) arrayList7.toArray(new Style[arrayList7.size()]));
    }

    private static final <T> boolean fastAny(T[] tArr, nl3<? super T, Boolean> nl3Var) {
        for (T t : tArr) {
            if (nl3Var.invoke(t).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    private static final <T> int fastCount(T[] tArr, nl3<? super T, Boolean> nl3Var) {
        int i = 0;
        for (T t : tArr) {
            if (nl3Var.invoke(t).booleanValue()) {
                i++;
            }
        }
        return i;
    }

    private static final <T> T fastFirst(T[] tArr, nl3<? super T, Boolean> nl3Var) {
        for (T t : tArr) {
            if (nl3Var.invoke(t).booleanValue()) {
                return t;
            }
        }
        ag.g("Array contains no element matching the predicate.");
        return null;
    }

    private static final <T> void fastForEach(T[] tArr, nl3<? super T, j59> nl3Var) {
        for (T t : tArr) {
            nl3Var.invoke(t);
        }
    }

    public static final Style then(Style style, Style style2) {
        return Style(style, style2);
    }

    public static final Style Style(Style style, Style style2) {
        Style.Companion companion = Style.Companion;
        if (style == companion) {
            return style2;
        }
        if (style2 == companion) {
            return style;
        }
        boolean z = style instanceof CombinedStyle;
        if (z && (style2 instanceof CombinedStyle)) {
            l68 l68Var = new l68(2);
            l68Var.b(((CombinedStyle) style).getStyles());
            l68Var.b(((CombinedStyle) style2).getStyles());
            ArrayList<Object> arrayList = l68Var.a;
            return Style((Style[]) arrayList.toArray(new Style[arrayList.size()]));
        }
        if (z) {
            l68 l68Var2 = new l68(2);
            l68Var2.b(((CombinedStyle) style).getStyles());
            l68Var2.a(style2);
            ArrayList<Object> arrayList2 = l68Var2.a;
            return Style((Style[]) arrayList2.toArray(new Style[arrayList2.size()]));
        }
        if (style2 instanceof CombinedStyle) {
            l68 l68Var3 = new l68(2);
            l68Var3.a(style);
            l68Var3.b(((CombinedStyle) style2).getStyles());
            ArrayList<Object> arrayList3 = l68Var3.a;
            return Style((Style[]) arrayList3.toArray(new Style[arrayList3.size()]));
        }
        return new CombinedStyle(style, style2);
    }

    public static final Style Style(Style... styleArr) {
        int i = 0;
        for (Style style : styleArr) {
            if (style == Style.Companion) {
                int i2 = 0;
                for (Style style2 : styleArr) {
                    if (style2 != Style.Companion) {
                        i2++;
                    }
                }
                if (i2 == 0) {
                    return Style.Companion;
                }
                if (i2 != 1) {
                    Style[] styleArr2 = new Style[i2];
                    int length = styleArr.length;
                    int i3 = 0;
                    while (i < length) {
                        Style style3 = styleArr[i];
                        if (style3 != Style.Companion) {
                            styleArr2[i3] = style3;
                            i3++;
                        }
                        i++;
                    }
                    return new CombinedStyle((Style[]) Arrays.copyOf(styleArr2, i2));
                }
                int length2 = styleArr.length;
                while (i < length2) {
                    Style style4 = styleArr[i];
                    if (style4 != Style.Companion) {
                        return style4;
                    }
                    i++;
                }
                ag.g("Array contains no element matching the predicate.");
                return null;
            }
        }
        return new CombinedStyle((Style[]) Arrays.copyOf(styleArr, styleArr.length));
    }
}
