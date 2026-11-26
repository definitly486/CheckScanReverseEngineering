package yads;

import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class tk6 extends xk5 {
    public final os4 m = new os4();
    public final lk6 n = new lk6();

    /* JADX WARN: Code duplicated, block: B:117:0x0233  */
    /* JADX WARN: Code duplicated, block: B:127:0x0255  */
    /* JADX WARN: Code duplicated, block: B:128:0x025f  */
    /* JADX WARN: Code duplicated, block: B:130:0x0268  */
    /* JADX WARN: Code duplicated, block: B:131:0x0272  */
    /* JADX WARN: Code duplicated, block: B:133:0x027a  */
    /* JADX WARN: Code duplicated, block: B:135:0x0282  */
    /* JADX WARN: Code duplicated, block: B:136:0x0286  */
    /* JADX WARN: Code duplicated, block: B:138:0x028e  */
    /* JADX WARN: Code duplicated, block: B:139:0x0293  */
    /* JADX WARN: Code duplicated, block: B:141:0x029b  */
    /* JADX WARN: Code duplicated, block: B:147:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:149:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:151:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:153:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:154:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:156:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:157:0x02d7  */
    /* JADX WARN: Code duplicated, block: B:159:0x02df  */
    /* JADX WARN: Code duplicated, block: B:161:0x02e7  */
    /* JADX WARN: Code duplicated, block: B:162:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:164:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:166:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:167:0x0301  */
    /* JADX WARN: Code duplicated, block: B:169:0x0309  */
    /* JADX WARN: Code duplicated, block: B:171:0x0319  */
    /* JADX WARN: Code duplicated, block: B:172:0x0333  */
    /* JADX WARN: Code duplicated, block: B:175:0x0344  */
    /* JADX WARN: Code duplicated, block: B:178:0x034d  */
    /* JADX WARN: Code duplicated, block: B:179:0x034f  */
    /* JADX WARN: Code duplicated, block: B:182:0x0358  */
    /* JADX WARN: Code duplicated, block: B:183:0x035a  */
    /* JADX WARN: Code duplicated, block: B:186:0x0363  */
    /* JADX WARN: Code duplicated, block: B:190:0x036b  */
    /* JADX WARN: Code duplicated, block: B:191:0x0370  */
    /* JADX WARN: Code duplicated, block: B:192:0x0375  */
    /* JADX WARN: Code duplicated, block: B:219:0x03f9  */
    /* JADX WARN: Code duplicated, block: B:233:0x0367 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:61:0x011b  */
    /* JADX WARN: Code duplicated, block: B:95:0x01cd  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Instruction removed from duplicated block: B:171:0x0319, please report this as an issue */
    @Override // yads.xk5
    public final mt5 a(byte[] bArr, int i, boolean z) throws ot5 {
        nk6 nk6Var;
        nk6 nk6VarA;
        String strSubstring;
        char c;
        int i2;
        String string;
        Matcher matcher;
        String strGroup;
        byte b;
        boolean z2;
        os4 os4Var = this.m;
        os4Var.a = bArr;
        os4Var.c = i;
        int i3 = 0;
        os4Var.b = 0;
        ArrayList arrayList = new ArrayList();
        try {
            uk6.a(this.m);
            while (!TextUtils.isEmpty(this.m.b())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                os4 os4Var2 = this.m;
                int i4 = -1;
                int i5 = i3;
                int i6 = -1;
                while (true) {
                    char c2 = 2;
                    int i7 = 1;
                    if (i6 == -1) {
                        i5 = os4Var2.b;
                        String strB = os4Var2.b();
                        if (strB == null) {
                            i6 = i3;
                        } else if ("STYLE".equals(strB)) {
                            i6 = 2;
                        } else {
                            i6 = strB.startsWith("NOTE") ? 1 : 3;
                        }
                    } else {
                        os4Var2.e(i5);
                        if (i6 == 0) {
                            return new vk6(arrayList2);
                        }
                        if (i6 == 1) {
                            while (!TextUtils.isEmpty(this.m.b())) {
                            }
                        } else {
                            if (i6 == 2) {
                                if (!arrayList2.isEmpty()) {
                                    throw new ot5("A style block was found after the first cue.");
                                }
                                this.m.b();
                                lk6 lk6Var = this.n;
                                os4 os4Var3 = this.m;
                                lk6Var.b.setLength(i3);
                                int i8 = os4Var3.b;
                                while (!TextUtils.isEmpty(os4Var3.b())) {
                                }
                                os4 os4Var4 = lk6Var.a;
                                byte[] bArr2 = os4Var3.a;
                                int i9 = os4Var3.b;
                                os4Var4.a = bArr2;
                                os4Var4.c = i9;
                                os4Var4.b = i3;
                                os4Var4.e(i8);
                                ArrayList arrayList3 = new ArrayList();
                                while (true) {
                                    os4 os4Var5 = lk6Var.a;
                                    StringBuilder sb = lk6Var.b;
                                    lk6.a(os4Var5);
                                    if (os4Var5.c - os4Var5.b >= 5 && "::cue".equals(os4Var5.a(5, az.c))) {
                                        int i10 = os4Var5.b;
                                        String strB2 = lk6.b(os4Var5, sb);
                                        if (strB2 == null) {
                                            strSubstring = null;
                                        } else if ("{".equals(strB2)) {
                                            os4Var5.e(i10);
                                            strSubstring = "";
                                        } else {
                                            if ("(".equals(strB2)) {
                                                int i11 = os4Var5.b;
                                                int i12 = os4Var5.c;
                                                while (true) {
                                                    int i13 = i3;
                                                    while (true) {
                                                        if (i11 < i12 && i13 == 0) {
                                                            int i14 = i11 + 1;
                                                            if (((char) os4Var5.a[i11]) == ')') {
                                                                i11 = i14;
                                                                i13 = i7;
                                                            } else {
                                                                i11 = i14;
                                                            }
                                                        }
                                                    }
                                                }
                                                strSubstring = os4Var5.a((i11 - 1) - os4Var5.b, az.c).trim();
                                            } else {
                                                strSubstring = null;
                                            }
                                            if (!")".equals(lk6.b(os4Var5, sb))) {
                                                strSubstring = null;
                                            }
                                        }
                                    } else {
                                        strSubstring = null;
                                    }
                                    if (strSubstring != null && "{".equals(lk6.b(lk6Var.a, lk6Var.b))) {
                                        mk6 mk6Var = new mk6();
                                        if (!"".equals(strSubstring)) {
                                            int iIndexOf = strSubstring.indexOf(91);
                                            if (iIndexOf != i4) {
                                                Matcher matcher2 = lk6.c.matcher(strSubstring.substring(iIndexOf));
                                                if (matcher2.matches()) {
                                                    String strGroup2 = matcher2.group(i7);
                                                    strGroup2.getClass();
                                                    mk6Var.d = strGroup2;
                                                }
                                                strSubstring = strSubstring.substring(i3, iIndexOf);
                                            }
                                            int i15 = u56.a;
                                            String[] strArrSplit = strSubstring.split("\\.", i4);
                                            String str = strArrSplit[i3];
                                            int iIndexOf2 = str.indexOf(35);
                                            if (iIndexOf2 != i4) {
                                                mk6Var.b = str.substring(i3, iIndexOf2);
                                                mk6Var.a = str.substring(iIndexOf2 + 1);
                                            } else {
                                                mk6Var.b = str;
                                            }
                                            if (strArrSplit.length > i7) {
                                                mk6Var.c = new HashSet(Arrays.asList((String[]) u56.b(strArrSplit.length, strArrSplit)));
                                            }
                                        }
                                        String str2 = null;
                                        int i16 = i3;
                                        while (i16 == 0) {
                                            os4 os4Var6 = lk6Var.a;
                                            int i17 = os4Var6.b;
                                            String strB3 = lk6.b(os4Var6, lk6Var.b);
                                            int i18 = (strB3 == null || "}".equals(strB3)) ? i7 : i3;
                                            if (i18 == 0) {
                                                lk6Var.a.e(i17);
                                                os4 os4Var7 = lk6Var.a;
                                                StringBuilder sb2 = lk6Var.b;
                                                lk6.a(os4Var7);
                                                String strA = lk6.a(os4Var7, sb2);
                                                if ("".equals(strA)) {
                                                    lk6Var = lk6Var;
                                                    strB3 = strB3;
                                                    c = c2;
                                                    i2 = i7;
                                                } else {
                                                    if (StringUtils.PROCESS_POSTFIX_DELIMITER.equals(lk6.b(os4Var7, sb2))) {
                                                        lk6.a(os4Var7);
                                                        StringBuilder sb3 = new StringBuilder();
                                                        boolean z3 = false;
                                                        while (true) {
                                                            if (z3) {
                                                                lk6Var = lk6Var;
                                                                strB3 = strB3;
                                                                string = sb3.toString();
                                                            } else {
                                                                lk6Var = lk6Var;
                                                                int i19 = os4Var7.b;
                                                                strB3 = strB3;
                                                                String strB4 = lk6.b(os4Var7, sb2);
                                                                if (strB4 == null) {
                                                                    string = null;
                                                                } else if ("}".equals(strB4) || ";".equals(strB4)) {
                                                                    os4Var7.e(i19);
                                                                    z3 = true;
                                                                } else {
                                                                    sb3.append(strB4);
                                                                }
                                                            }
                                                        }
                                                        if (string == null || "".equals(string)) {
                                                            c = 2;
                                                            i2 = 1;
                                                        } else {
                                                            int i20 = os4Var7.b;
                                                            String strB5 = lk6.b(os4Var7, sb2);
                                                            if (!";".equals(strB5)) {
                                                                if ("}".equals(strB5)) {
                                                                    os4Var7.e(i20);
                                                                    if ("color".equals(strA)) {
                                                                        i2 = 1;
                                                                        mk6Var.f = z20.a(string, true);
                                                                        mk6Var.g = true;
                                                                    } else {
                                                                        i2 = 1;
                                                                        if ("background-color".equals(strA)) {
                                                                            mk6Var.h = z20.a(string, true);
                                                                            mk6Var.i = true;
                                                                        } else if ("ruby-position".equals(strA)) {
                                                                            if ("text-combine-upright".equals(strA)) {
                                                                                if (!TtmlNode.COMBINE_ALL.equals(string) || string.startsWith("digits")) {
                                                                                    z2 = true;
                                                                                } else {
                                                                                    z2 = false;
                                                                                }
                                                                                mk6Var.q = z2;
                                                                            } else if ("text-decoration".equals(strA)) {
                                                                                if (TtmlNode.UNDERLINE.equals(string)) {
                                                                                    i2 = 1;
                                                                                    mk6Var.k = 1;
                                                                                }
                                                                            } else if ("font-family".equals(strA)) {
                                                                                mk6Var.e = oj.a(string);
                                                                            } else if ("font-weight".equals(strA)) {
                                                                                i2 = 1;
                                                                                if ("font-style".equals(strA)) {
                                                                                    if (TtmlNode.ITALIC.equals(string)) {
                                                                                        mk6Var.m = 1;
                                                                                    }
                                                                                } else if ("font-size".equals(strA)) {
                                                                                    matcher = lk6.d.matcher(oj.a(string));
                                                                                    if (matcher.matches()) {
                                                                                        strGroup = matcher.group(2);
                                                                                        strGroup.getClass();
                                                                                        switch (strGroup.hashCode()) {
                                                                                            case 37:
                                                                                                if (!strGroup.equals("%")) {
                                                                                                    b = 0;
                                                                                                }
                                                                                                switch (b) {
                                                                                                    case 0:
                                                                                                        c = 2;
                                                                                                        i2 = 1;
                                                                                                        mk6Var.n = 3;
                                                                                                        break;
                                                                                                    case 1:
                                                                                                        c = 2;
                                                                                                        i2 = 1;
                                                                                                        mk6Var.n = 2;
                                                                                                        break;
                                                                                                    case 2:
                                                                                                        i2 = 1;
                                                                                                        mk6Var.n = 1;
                                                                                                        c = 2;
                                                                                                        break;
                                                                                                    default:
                                                                                                        defpackage.ud.g();
                                                                                                        return null;
                                                                                                }
                                                                                                String strGroup3 = matcher.group(i2);
                                                                                                strGroup3.getClass();
                                                                                                mk6Var.o = Float.parseFloat(strGroup3);
                                                                                                break;
                                                                                            case 3240:
                                                                                                if (!strGroup.equals("em")) {
                                                                                                    b = 1;
                                                                                                }
                                                                                                switch (b) {
                                                                                                    case 0:
                                                                                                        c = 2;
                                                                                                        i2 = 1;
                                                                                                        mk6Var.n = 3;
                                                                                                        break;
                                                                                                    case 1:
                                                                                                        c = 2;
                                                                                                        i2 = 1;
                                                                                                        mk6Var.n = 2;
                                                                                                        break;
                                                                                                    case 2:
                                                                                                        i2 = 1;
                                                                                                        mk6Var.n = 1;
                                                                                                        c = 2;
                                                                                                        break;
                                                                                                    default:
                                                                                                        defpackage.ud.g();
                                                                                                        return null;
                                                                                                }
                                                                                                String strGroup4 = matcher.group(i2);
                                                                                                strGroup4.getClass();
                                                                                                mk6Var.o = Float.parseFloat(strGroup4);
                                                                                                break;
                                                                                            case 3592:
                                                                                                if (!strGroup.equals("px")) {
                                                                                                    b = 2;
                                                                                                }
                                                                                                switch (b) {
                                                                                                    case 0:
                                                                                                        c = 2;
                                                                                                        i2 = 1;
                                                                                                        mk6Var.n = 3;
                                                                                                        break;
                                                                                                    case 1:
                                                                                                        c = 2;
                                                                                                        i2 = 1;
                                                                                                        mk6Var.n = 2;
                                                                                                        break;
                                                                                                    case 2:
                                                                                                        i2 = 1;
                                                                                                        mk6Var.n = 1;
                                                                                                        c = 2;
                                                                                                        break;
                                                                                                    default:
                                                                                                        defpackage.ud.g();
                                                                                                        return null;
                                                                                                }
                                                                                                String strGroup5 = matcher.group(i2);
                                                                                                strGroup5.getClass();
                                                                                                mk6Var.o = Float.parseFloat(strGroup5);
                                                                                                break;
                                                                                        }
                                                                                        b = -1;
                                                                                        switch (b) {
                                                                                            case 0:
                                                                                                c = 2;
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 3;
                                                                                                break;
                                                                                            case 1:
                                                                                                c = 2;
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 2;
                                                                                                break;
                                                                                            case 2:
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 1;
                                                                                                c = 2;
                                                                                                break;
                                                                                            default:
                                                                                                defpackage.ud.g();
                                                                                                return null;
                                                                                        }
                                                                                        String strGroup6 = matcher.group(i2);
                                                                                        strGroup6.getClass();
                                                                                        mk6Var.o = Float.parseFloat(strGroup6);
                                                                                    } else {
                                                                                        sv3.d("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                                                                    }
                                                                                }
                                                                            } else if (TtmlNode.BOLD.equals(string)) {
                                                                                i2 = 1;
                                                                                mk6Var.l = 1;
                                                                            }
                                                                            c = 2;
                                                                        } else if ("over".equals(string)) {
                                                                            mk6Var.p = 1;
                                                                        } else if ("under".equals(string)) {
                                                                            mk6Var.p = 2;
                                                                            c = 2;
                                                                        } else {
                                                                            c = 2;
                                                                        }
                                                                    }
                                                                } else {
                                                                    c = 2;
                                                                }
                                                                i2 = 1;
                                                            } else if ("color".equals(strA)) {
                                                                i2 = 1;
                                                                mk6Var.f = z20.a(string, true);
                                                                mk6Var.g = true;
                                                            } else {
                                                                i2 = 1;
                                                                if ("background-color".equals(strA)) {
                                                                    mk6Var.h = z20.a(string, true);
                                                                    mk6Var.i = true;
                                                                } else if ("ruby-position".equals(strA)) {
                                                                    if ("text-combine-upright".equals(strA)) {
                                                                        if (TtmlNode.COMBINE_ALL.equals(string)) {
                                                                            z2 = true;
                                                                        } else {
                                                                            z2 = true;
                                                                        }
                                                                        mk6Var.q = z2;
                                                                    } else if ("text-decoration".equals(strA)) {
                                                                        if (TtmlNode.UNDERLINE.equals(string)) {
                                                                            i2 = 1;
                                                                            mk6Var.k = 1;
                                                                        }
                                                                    } else if ("font-family".equals(strA)) {
                                                                        mk6Var.e = oj.a(string);
                                                                    } else if ("font-weight".equals(strA)) {
                                                                        i2 = 1;
                                                                        if ("font-style".equals(strA)) {
                                                                            if (TtmlNode.ITALIC.equals(string)) {
                                                                                mk6Var.m = 1;
                                                                            }
                                                                        } else if ("font-size".equals(strA)) {
                                                                            matcher = lk6.d.matcher(oj.a(string));
                                                                            if (matcher.matches()) {
                                                                                sv3.d("WebvttCssParser", "Invalid font-size: '" + string + "'.");
                                                                            } else {
                                                                                strGroup = matcher.group(2);
                                                                                strGroup.getClass();
                                                                                switch (strGroup.hashCode()) {
                                                                                    case 37:
                                                                                        if (!strGroup.equals("%")) {
                                                                                            b = 0;
                                                                                        }
                                                                                        switch (b) {
                                                                                            case 0:
                                                                                                c = 2;
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 3;
                                                                                                break;
                                                                                            case 1:
                                                                                                c = 2;
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 2;
                                                                                                break;
                                                                                            case 2:
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 1;
                                                                                                c = 2;
                                                                                                break;
                                                                                            default:
                                                                                                defpackage.ud.g();
                                                                                                return null;
                                                                                        }
                                                                                        String strGroup7 = matcher.group(i2);
                                                                                        strGroup7.getClass();
                                                                                        mk6Var.o = Float.parseFloat(strGroup7);
                                                                                        break;
                                                                                    case 3240:
                                                                                        if (!strGroup.equals("em")) {
                                                                                            b = 1;
                                                                                        }
                                                                                        switch (b) {
                                                                                            case 0:
                                                                                                c = 2;
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 3;
                                                                                                break;
                                                                                            case 1:
                                                                                                c = 2;
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 2;
                                                                                                break;
                                                                                            case 2:
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 1;
                                                                                                c = 2;
                                                                                                break;
                                                                                            default:
                                                                                                defpackage.ud.g();
                                                                                                return null;
                                                                                        }
                                                                                        String strGroup8 = matcher.group(i2);
                                                                                        strGroup8.getClass();
                                                                                        mk6Var.o = Float.parseFloat(strGroup8);
                                                                                        break;
                                                                                    case 3592:
                                                                                        if (!strGroup.equals("px")) {
                                                                                            b = 2;
                                                                                        }
                                                                                        switch (b) {
                                                                                            case 0:
                                                                                                c = 2;
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 3;
                                                                                                break;
                                                                                            case 1:
                                                                                                c = 2;
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 2;
                                                                                                break;
                                                                                            case 2:
                                                                                                i2 = 1;
                                                                                                mk6Var.n = 1;
                                                                                                c = 2;
                                                                                                break;
                                                                                            default:
                                                                                                defpackage.ud.g();
                                                                                                return null;
                                                                                        }
                                                                                        String strGroup9 = matcher.group(i2);
                                                                                        strGroup9.getClass();
                                                                                        mk6Var.o = Float.parseFloat(strGroup9);
                                                                                        break;
                                                                                }
                                                                                b = -1;
                                                                                switch (b) {
                                                                                    case 0:
                                                                                        c = 2;
                                                                                        i2 = 1;
                                                                                        mk6Var.n = 3;
                                                                                        break;
                                                                                    case 1:
                                                                                        c = 2;
                                                                                        i2 = 1;
                                                                                        mk6Var.n = 2;
                                                                                        break;
                                                                                    case 2:
                                                                                        i2 = 1;
                                                                                        mk6Var.n = 1;
                                                                                        c = 2;
                                                                                        break;
                                                                                    default:
                                                                                        defpackage.ud.g();
                                                                                        return null;
                                                                                }
                                                                                String strGroup10 = matcher.group(i2);
                                                                                strGroup10.getClass();
                                                                                mk6Var.o = Float.parseFloat(strGroup10);
                                                                            }
                                                                        }
                                                                    } else if (TtmlNode.BOLD.equals(string)) {
                                                                        i2 = 1;
                                                                        mk6Var.l = 1;
                                                                    }
                                                                    c = 2;
                                                                    i2 = 1;
                                                                } else if ("over".equals(string)) {
                                                                    mk6Var.p = 1;
                                                                } else {
                                                                    if ("under".equals(string)) {
                                                                        mk6Var.p = 2;
                                                                        c = 2;
                                                                    } else {
                                                                        c = 2;
                                                                    }
                                                                    i2 = 1;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        lk6Var = lk6Var;
                                                        strB3 = strB3;
                                                        i2 = i7;
                                                    }
                                                    c = 2;
                                                }
                                            } else {
                                                lk6Var = lk6Var;
                                                strB3 = strB3;
                                                c = c2;
                                                i2 = i7;
                                            }
                                            c2 = c;
                                            i7 = i2;
                                            i16 = i18;
                                            lk6Var = lk6Var;
                                            str2 = strB3;
                                            i3 = 0;
                                        }
                                        lk6 lk6Var2 = lk6Var;
                                        char c3 = c2;
                                        int i21 = i7;
                                        if ("}".equals(str2)) {
                                            arrayList3.add(mk6Var);
                                        }
                                        c2 = c3;
                                        i7 = i21;
                                        lk6Var = lk6Var2;
                                        i3 = 0;
                                        i4 = -1;
                                    }
                                }
                                arrayList.addAll(arrayList3);
                            } else if (i6 == 3) {
                                os4 os4Var8 = this.m;
                                Pattern pattern = sk6.a;
                                String strB6 = os4Var8.b();
                                if (strB6 == null) {
                                    nk6Var = null;
                                } else {
                                    Pattern pattern2 = sk6.a;
                                    Matcher matcher3 = pattern2.matcher(strB6);
                                    if (matcher3.matches()) {
                                        nk6VarA = sk6.a(null, matcher3, os4Var8, arrayList);
                                    } else {
                                        nk6Var = null;
                                        String strB7 = os4Var8.b();
                                        if (strB7 != null) {
                                            Matcher matcher4 = pattern2.matcher(strB7);
                                            if (matcher4.matches()) {
                                                nk6VarA = sk6.a(strB6.trim(), matcher4, os4Var8, arrayList);
                                            }
                                        }
                                    }
                                    if (nk6VarA != null) {
                                        arrayList2.add(nk6VarA);
                                    }
                                }
                                nk6VarA = nk6Var;
                                if (nk6VarA != null) {
                                    arrayList2.add(nk6VarA);
                                }
                            }
                            i3 = 0;
                        }
                    }
                }
            }
        } catch (xs4 e) {
            throw new ot5(e);
        }
    }
}
