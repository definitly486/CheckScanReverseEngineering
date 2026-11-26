package defpackage;

import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.widget.ImageView;
import androidx.core.internal.view.SupportMenu;

/* JADX INFO: loaded from: classes.dex */
public final class d57 {
    public static final SpannedString a(wm6 wm6Var) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) wm6Var.d());
        gw3 gw3VarB = wm6Var.b();
        String strA = gw3VarB != null ? gw3VarB.a() : null;
        if (strA != null) {
            ne6 ne6VarB = wm6Var.b().b();
            spannableStringBuilder.append(strA, new ForegroundColorSpan(ne6VarB != null ? aa4.e(ne6VarB.a(), Boolean.TRUE) : false ? -1 : SupportMenu.CATEGORY_MASK), 18);
        }
        SpannedString spannedStringValueOf = SpannedString.valueOf(new SpannedString(spannableStringBuilder));
        spannedStringValueOf.getClass();
        return spannedStringValueOf;
    }

    public static final SpannedString b(wm6 wm6Var) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        dw3 dw3VarA = wm6Var.a();
        String strA = dw3VarA != null ? dw3VarA.a() : null;
        if (strA == null) {
            strA = "";
        }
        spannableStringBuilder.append((CharSequence) strA);
        String strD = wm6Var.d();
        String strConcat = " ".concat(strD != null ? strD : "");
        if (!ta8.M(strConcat)) {
            spannableStringBuilder.append(strConcat, new StrikethroughSpan(), 18);
            spannableStringBuilder.setSpan(new RelativeSizeSpan(0.85f), ta8.K(spannableStringBuilder, strConcat, 0, false, 6), spannableStringBuilder.length(), 18);
        }
        SpannedString spannedStringValueOf = SpannedString.valueOf(new SpannedString(spannableStringBuilder));
        spannedStringValueOf.getClass();
        return spannedStringValueOf;
    }

    public static final sv7 c(xf6 xf6Var, ImageView.ScaleType scaleType) {
        xf6Var.getClass();
        scaleType.getClass();
        if (xf6Var.c().b() != null) {
            ne6 ne6VarB = xf6Var.c().b().b();
            if (ne6VarB != null ? aa4.e(ne6VarB.a(), Boolean.TRUE) : false) {
                int iA = xf6Var.a();
                String strB = xf6Var.b();
                return new sv7.b(iA, a(xf6Var.c()), strB == null ? "" : strB, xf6Var.e(), true, scaleType);
            }
            int iA2 = xf6Var.a();
            String strB2 = xf6Var.b();
            return new sv7.a(iA2, a(xf6Var.c()), strB2 == null ? "" : strB2, xf6Var.e(), scaleType);
        }
        dw3 dw3VarA = xf6Var.c().a();
        if ((dw3VarA != null ? dw3VarA.a() : null) != null) {
            le6 le6VarB = xf6Var.c().a().b();
            if (le6VarB != null ? aa4.e(le6VarB.a(), Boolean.TRUE) : false) {
                int iA3 = xf6Var.a();
                String strB3 = xf6Var.b();
                return new sv7.b(iA3, b(xf6Var.c()), strB3 == null ? "" : strB3, xf6Var.e(), true, scaleType);
            }
            int iA4 = xf6Var.a();
            String strB4 = xf6Var.b();
            return new sv7.a(iA4, b(xf6Var.c()), strB4 == null ? "" : strB4, xf6Var.e(), scaleType);
        }
        int iA5 = xf6Var.a();
        String strD = xf6Var.d();
        if (strD == null) {
            strD = "";
        }
        SpannedString spannedStringValueOf = SpannedString.valueOf(strD);
        spannedStringValueOf.getClass();
        String strB5 = xf6Var.b();
        return new sv7.a(iA5, spannedStringValueOf, strB5 == null ? "" : strB5, xf6Var.e(), scaleType);
    }

    /* JADX WARN: Code duplicated, block: B:76:0x0135  */
    public static final sv7.c d(tx5 tx5Var, boolean z) {
        SpannedString spannedStringValueOf;
        gw3 gw3VarB;
        ne6 ne6VarB;
        dw3 dw3VarA;
        le6 le6VarB;
        tx5Var.getClass();
        int iA = tx5Var.a();
        String strB = tx5Var.b();
        if (strB == null) {
            strB = "";
        }
        boolean zD = tx5Var.d();
        wm6 wm6VarC = tx5Var.c();
        String strC = wm6VarC != null ? wm6VarC.c() : null;
        if (strC == null) {
            strC = "";
        }
        wm6 wm6VarC2 = tx5Var.c();
        if ((wm6VarC2 != null ? wm6VarC2.a() : null) != null) {
            wm6 wm6VarC3 = tx5Var.c();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            dw3 dw3VarA2 = wm6VarC3.a();
            String strA = dw3VarA2 != null ? dw3VarA2.a() : null;
            if (strA == null) {
                strA = "";
            }
            spannableStringBuilder.append((CharSequence) strA);
            String strD = wm6VarC3.d();
            String str = strD != null ? strD : "";
            if (!ta8.M(str)) {
                spannableStringBuilder.append((CharSequence) "\n");
                spannableStringBuilder.append(str, new StrikethroughSpan(), 18);
                spannableStringBuilder.setSpan(new RelativeSizeSpan(0.85f), ta8.K(spannableStringBuilder, str, 0, false, 6), spannableStringBuilder.length(), 18);
            }
            spannableStringBuilder.setSpan(new ForegroundColorSpan(SupportMenu.CATEGORY_MASK), 0, strA.length(), 18);
            spannedStringValueOf = new SpannedString(spannableStringBuilder);
        } else {
            wm6 wm6VarC4 = tx5Var.c();
            if ((wm6VarC4 != null ? wm6VarC4.b() : null) != null) {
                wm6 wm6VarC5 = tx5Var.c();
                SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder();
                String strD2 = wm6VarC5.d();
                spannableStringBuilder2.append((CharSequence) (strD2 != null ? strD2 : ""));
                gw3 gw3VarB2 = wm6VarC5.b();
                if ((gw3VarB2 != null ? gw3VarB2.a() : null) != null) {
                    spannableStringBuilder2.append(wm6VarC5.b().a(), new ForegroundColorSpan(SupportMenu.CATEGORY_MASK), 18);
                }
                spannedStringValueOf = new SpannedString(spannableStringBuilder2);
            } else {
                wm6 wm6VarC6 = tx5Var.c();
                String strD3 = wm6VarC6 != null ? wm6VarC6.d() : null;
                spannedStringValueOf = SpannedString.valueOf(strD3 != null ? strD3 : "");
                spannedStringValueOf.getClass();
            }
        }
        wm6 wm6VarC7 = tx5Var.c();
        boolean z2 = true;
        if (!((wm6VarC7 == null || (dw3VarA = wm6VarC7.a()) == null || (le6VarB = dw3VarA.b()) == null) ? false : aa4.e(le6VarB.a(), Boolean.TRUE))) {
            wm6 wm6VarC8 = tx5Var.c();
            if (!((wm6VarC8 == null || (gw3VarB = wm6VarC8.b()) == null || (ne6VarB = gw3VarB.b()) == null) ? false : aa4.e(ne6VarB.a(), Boolean.TRUE))) {
                z2 = false;
            }
        }
        boolean z3 = !z;
        wm6 wm6VarC9 = tx5Var.c();
        return new sv7.c(iA, strB, strC, spannedStringValueOf, zD, (wm6VarC9 != null ? wm6VarC9.a() : null) != null, z2, z3);
    }
}
