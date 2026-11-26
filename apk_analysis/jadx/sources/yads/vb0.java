package yads;

import defpackage.nl3;
import defpackage.ra8;
import defpackage.ta8;
import defpackage.u96;
import defpackage.ua8;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes6.dex */
public final class vb0 extends ur {
    public final nl3 e;
    public final char f;
    public final List g;
    public NumberFormat h;

    public vb0(Locale locale, nl3 nl3Var) {
        super(new sr("", defpackage.kx2.b, false));
        this.e = nl3Var;
        this.f = (char) 164;
        this.g = u96.i('.', ',');
        this.h = a(NumberFormat.getCurrencyInstance(locale));
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0095  */
    @Override // yads.ur
    public final void a(Integer num, String str) throws ParseException {
        int i;
        boolean z;
        int i2;
        int i3;
        int i4;
        String str2 = str;
        aw5 aw5VarA = zv5.a(d(), ra8.z(' ', str2, (char) 160));
        char decimalSeparator = e().getDecimalSeparator();
        String strD = d();
        int i5 = -1;
        int length = strD.length() - 1;
        if (length < 0) {
            length = -1;
            break;
        }
        while (true) {
            int i6 = length - 1;
            if (strD.charAt(length) == decimalSeparator) {
                break;
            }
            if (i6 < 0) {
                length = -1;
                break;
            }
            length = i6;
        }
        int length2 = str2.length() - 1;
        if (length2 < 0) {
            length2 = -1;
            break;
        }
        while (true) {
            int i7 = length2 - 1;
            if (str2.charAt(length2) == decimalSeparator) {
                break;
            }
            if (i7 < 0) {
                length2 = -1;
                break;
            }
            length2 = i7;
        }
        boolean z2 = length != length2 || (length == -1 && length2 == -1);
        char decimalSeparator2 = e().getDecimalSeparator();
        int i8 = 0;
        while (true) {
            if (i8 >= str2.length()) {
                i8 = -1;
                break;
            } else if (str2.charAt(i8) == decimalSeparator2 && !a(aw5VarA, i8)) {
                break;
            } else {
                i8++;
            }
        }
        if (aw5VarA.b != 1 || aw5VarA.c != 0) {
            i = -1;
        } else if (this.g.contains(Character.valueOf(str2.charAt(aw5VarA.a)))) {
            i = aw5VarA.a;
        } else {
            i = -1;
        }
        int maximumFractionDigits = this.h.getMaximumFractionDigits();
        if (i8 != -1) {
            i2 = maximumFractionDigits;
            for (int i9 = i8; i9 < str2.length(); i9++) {
                if (Character.isDigit(str2.charAt(i9)) && !a(aw5VarA, i9)) {
                    i2--;
                }
            }
            z = true;
        } else {
            z = true;
            i2 = maximumFractionDigits;
            int i10 = 0;
            int i11 = 0;
            boolean z3 = false;
            while (i10 < str2.length()) {
                char cCharAt = str2.charAt(i10);
                int i12 = i11 + 1;
                boolean zA = a(aw5VarA, i11);
                if (cCharAt == decimalSeparator2) {
                    z3 = true;
                } else if (!zA && z3 && Character.isDigit(cCharAt)) {
                    i2--;
                }
                i10++;
                i11 = i12;
            }
        }
        boolean z4 = (ta8.E(str2, decimalSeparator2) || i != -1) ? z : false;
        StringBuilder sb = new StringBuilder();
        int length3 = str2.length() - 1;
        boolean z5 = false;
        while (length3 >= 0) {
            char cCharAt2 = str2.charAt(length3);
            boolean z6 = sb.length() <= maximumFractionDigits ? z : false;
            if (Character.isDigit(cCharAt2)) {
                if (!a(aw5VarA, length3) || z5 || !z4) {
                    sb.append(cCharAt2);
                } else if (i2 > 0) {
                    sb.append(cCharAt2);
                    i2--;
                }
                i4 = -1;
            } else {
                i4 = -1;
                if (z6 && i8 == -1 && length3 == i) {
                    sb.append(decimalSeparator2);
                } else if (z6 && cCharAt2 == decimalSeparator2 && (i8 == length3 || i8 == -1)) {
                    sb.append(decimalSeparator2);
                    i8 = length3;
                }
                z5 = z;
            }
            length3--;
            i5 = i4;
            str2 = str;
        }
        int i13 = i5;
        String string = new StringBuilder((CharSequence) sb.toString()).reverse().toString();
        int length4 = string.length();
        int i14 = 0;
        while (true) {
            if (i14 >= length4) {
                i3 = i13;
                break;
            } else {
                if (string.charAt(i14) != e().getZeroDigit()) {
                    i3 = i14;
                    break;
                }
                i14++;
            }
        }
        if (i3 > 0) {
            string = string.charAt(i3) == e().getDecimalSeparator() ? ua8.h0(i3 - 1, string) : ua8.h0(i3, string);
        }
        Number number = this.h.parse(ta8.Z(string, decimalSeparator) ? e().getZeroDigit() + string : ta8.M(string) ? String.valueOf(e().getZeroDigit()) : string);
        if (number == null) {
            number = 0;
        }
        a(aw5VarA);
        if (z2) {
            a(number);
        }
        a(string, 0, null);
        int iAbs = (d().length() <= aw5VarA.a || d().charAt(aw5VarA.a) != e().getGroupingSeparator()) ? Math.abs(d().length() - (str.length() - (num != null ? num.intValue() : this.d))) : num != null ? num.intValue() : this.d;
        int length5 = d().length();
        if (iAbs > length5) {
            iAbs = length5;
        }
        this.d = iAbs;
    }

    public final DecimalFormatSymbols e() {
        NumberFormat numberFormat = this.h;
        numberFormat.getClass();
        return ((DecimalFormat) numberFormat).getDecimalFormatSymbols();
    }

    public final void a(Locale locale) throws ParseException {
        Character ch;
        int size = ((ArrayList) a()).size() - 1;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i <= size; i++) {
            rr rrVar = (rr) ((ArrayList) a()).get(i);
            if ((rrVar instanceof pr) && (ch = ((pr) rrVar).a) != null) {
                sb.append(ch);
            }
        }
        String strReplace = sb.toString().replace(e().getDecimalSeparator(), '.');
        strReplace.getClass();
        this.h = a(NumberFormat.getCurrencyInstance(locale));
        String strReplace2 = strReplace.replace('.', e().getDecimalSeparator());
        strReplace2.getClass();
        a((Integer) null, strReplace2);
    }

    public final void a(Number number) {
        String str = this.h.format(number);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (Character.isDigit(cCharAt)) {
                sb.append('#');
            } else {
                sb.append(cCharAt);
            }
        }
        a(new sr(sb.toString(), u96.i(new tr('#', "\\d", '0'), new tr(e().getDecimalSeparator(), "[" + e().getDecimalSeparator() + "]", e().getDecimalSeparator())), c().a()), false);
    }

    @Override // yads.ur
    public final void a(String str) throws ParseException {
        Number number = this.h.parse(str);
        if (number == null) {
            number = 0;
        }
        a(number);
        super.a(str);
    }

    public static boolean a(aw5 aw5Var, int i) {
        int i2 = aw5Var.a;
        return i2 <= i && i < i2 + aw5Var.b;
    }

    public final NumberFormat a(NumberFormat numberFormat) {
        DecimalFormat decimalFormat = numberFormat instanceof DecimalFormat ? (DecimalFormat) numberFormat : null;
        if (decimalFormat != null) {
            String pattern = decimalFormat.toPattern();
            StringBuilder sb = new StringBuilder();
            int length = pattern.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = pattern.charAt(i);
                if (cCharAt != this.f) {
                    sb.append(cCharAt);
                }
            }
            decimalFormat.applyPattern(ta8.f0(sb.toString()).toString());
        }
        return numberFormat;
    }

    @Override // yads.ur
    public final void a(PatternSyntaxException patternSyntaxException) {
        this.e.invoke(patternSyntaxException);
    }
}
