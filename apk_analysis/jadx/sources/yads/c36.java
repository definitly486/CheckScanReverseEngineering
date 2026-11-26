package yads;

import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c36 {
    public static void a(SpannableStringBuilder spannableStringBuilder, int i, int i2, d36 d36Var, a36 a36Var, Map map, int i3) {
        a36 a36Var2;
        int i4 = d36Var.h;
        if (((i4 == -1 && d36Var.i == -1) ? -1 : (i4 == 1 ? (char) 1 : (char) 0) | (d36Var.i == 1 ? (char) 2 : (char) 0)) != -1) {
            int i5 = d36Var.h;
            spannableStringBuilder.setSpan(new StyleSpan((i5 == -1 && d36Var.i == -1) ? -1 : (i5 == 1 ? 1 : 0) | (d36Var.i == 1 ? 2 : 0)), i, i2, 33);
        }
        if (d36Var.f == 1) {
            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, i2, 33);
        }
        if (d36Var.g == 1) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }
        if (d36Var.c) {
            if (!d36Var.c) {
                defpackage.ah.f("Font color has not been defined.");
                return;
            }
            so5.a(spannableStringBuilder, new ForegroundColorSpan(d36Var.b), i, i2);
        }
        if (d36Var.e) {
            if (!d36Var.e) {
                defpackage.ah.f("Background color has not been defined.");
                return;
            }
            so5.a(spannableStringBuilder, new BackgroundColorSpan(d36Var.d), i, i2);
        }
        if (d36Var.a != null) {
            so5.a(spannableStringBuilder, new TypefaceSpan(d36Var.a), i, i2);
        }
        if (d36Var.r != null) {
            so5.a(spannableStringBuilder, new ew5(), i, i2);
        }
        int i6 = d36Var.m;
        if (i6 == 2) {
            a36 a36Var3 = a36Var;
            while (true) {
                if (a36Var3 == null) {
                    a36Var3 = null;
                    break;
                }
                d36 d36VarA = a(a36Var3.f, a36Var3.g, map);
                if (d36VarA != null && d36VarA.m == 1) {
                    break;
                } else {
                    a36Var3 = a36Var3.j;
                }
            }
            if (a36Var3 != null) {
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(a36Var3);
                while (true) {
                    if (arrayDeque.isEmpty()) {
                        a36Var2 = null;
                        break;
                    }
                    a36 a36Var4 = (a36) arrayDeque.pop();
                    d36 d36VarA2 = a(a36Var4.f, a36Var4.g, map);
                    if (d36VarA2 != null && d36VarA2.m == 3) {
                        a36Var2 = a36Var4;
                        break;
                    }
                    ArrayList arrayList = a36Var4.m;
                    for (int size = (arrayList == null ? 0 : arrayList.size()) - 1; size >= 0; size--) {
                        arrayDeque.push(a36Var4.a(size));
                    }
                }
                if (a36Var2 != null) {
                    ArrayList arrayList2 = a36Var2.m;
                    if ((arrayList2 == null ? 0 : arrayList2.size()) != 1 || a36Var2.a(0).b == null) {
                        sv3.c("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                    } else {
                        String str = a36Var2.a(0).b;
                        int i7 = u56.a;
                        d36 d36VarA3 = a(a36Var2.f, a36Var2.g, map);
                        if ((d36VarA3 != null ? d36VarA3.n : -1) == -1) {
                            a(a36Var3.f, a36Var3.g, map);
                        }
                        spannableStringBuilder.setSpan(new qb5(), i, i2, 33);
                    }
                }
            }
        } else if (i6 == 3 || i6 == 4) {
            spannableStringBuilder.setSpan(new jn0(), i, i2, 33);
        }
        if (d36Var.q == 1) {
            so5.a(spannableStringBuilder, new t93(), i, i2);
        }
        int i8 = d36Var.j;
        if (i8 == 1) {
            so5.a(spannableStringBuilder, new AbsoluteSizeSpan((int) d36Var.k, true), i, i2);
        } else if (i8 == 2) {
            so5.a(spannableStringBuilder, new RelativeSizeSpan(d36Var.k), i, i2);
        } else {
            if (i8 != 3) {
                return;
            }
            so5.a(spannableStringBuilder, new RelativeSizeSpan(d36Var.k / 100.0f), i, i2);
        }
    }

    public static d36 a(d36 d36Var, String[] strArr, Map map) {
        int i = 0;
        if (d36Var == null) {
            if (strArr == null) {
                return null;
            }
            if (strArr.length == 1) {
                return (d36) map.get(strArr[0]);
            }
            if (strArr.length > 1) {
                d36 d36Var2 = new d36();
                int length = strArr.length;
                while (i < length) {
                    d36Var2.a((d36) map.get(strArr[i]));
                    i++;
                }
                return d36Var2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                return d36Var.a((d36) map.get(strArr[0]));
            }
            if (strArr != null && strArr.length > 1) {
                int length2 = strArr.length;
                while (i < length2) {
                    d36Var.a((d36) map.get(strArr[i]));
                    i++;
                }
            }
        }
        return d36Var;
    }
}
