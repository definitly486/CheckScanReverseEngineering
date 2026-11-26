package io.appmetrica.analytics.impl;

import defpackage.aa4;
import defpackage.g17;
import defpackage.qn1;
import defpackage.ra8;
import defpackage.s15;
import defpackage.ta8;
import defpackage.u96;
import defpackage.ua8;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class G8 implements InterfaceC1421z2 {
    public final int a = 5;
    public final int b = 100;
    public final int c = 255;
    public final int d = 2;
    public final int e = 63;
    public final int f = 1;
    public final int g = 2;
    public final int h = 1;
    public final int i = 64;
    public final g17 j = new g17("^[a-zA-Z0-9'!#$%&*+-/=?^_`{|}~]+$");
    public final g17 k = new g17("(?:^|\\.)(?:(ya\\.ru)|(?:yandex)\\.(\\w+|com?\\.\\w+))$");
    public final List l = u96.i("ru", "by", "kz", "az", "kg", "lv", "md", "tj", "tm", "uz", "ee", "fr", "lt", "com", "co.il", "com.ge", "com.am", "com.tr", "com.ru");
    public final String m = "yandex.ru";
    public final String n = "gmail.com";
    public final String o = "googlemail.com";

    /* JADX WARN: Code duplicated, block: B:100:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:102:0x01b5 A[LOOP:1: B:99:0x01ab->B:102:0x01b5, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:106:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:110:0x01dd A[LOOP:0: B:78:0x0142->B:110:0x01dd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:112:0x0152 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:115:0x01b8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:0x01e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:? A[LOOP:2: B:68:0x0119->B:118:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x01e1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:123:? A[LOOP:3: B:16:0x0068->B:123:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:53:0x00de  */
    /* JADX WARN: Code duplicated, block: B:59:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:62:0x0106  */
    /* JADX WARN: Code duplicated, block: B:67:0x0115  */
    /* JADX WARN: Code duplicated, block: B:70:0x011f  */
    /* JADX WARN: Code duplicated, block: B:75:0x013b  */
    /* JADX WARN: Code duplicated, block: B:80:0x0148  */
    /* JADX WARN: Code duplicated, block: B:84:0x0162  */
    /* JADX WARN: Code duplicated, block: B:86:0x017a  */
    /* JADX WARN: Code duplicated, block: B:89:0x0183  */
    /* JADX WARN: Code duplicated, block: B:94:0x0193  */
    /* JADX WARN: Code duplicated, block: B:95:0x019a  */
    /* JADX WARN: Code duplicated, block: B:97:0x01a2  */
    @Override // io.appmetrica.analytics.impl.InterfaceC1421z2
    public final String a(String str) {
        List listY;
        List listP;
        Iterator it;
        String str2;
        int i;
        String strY;
        s15 s15VarA;
        int length;
        int i2;
        String str3;
        String str4;
        String string = ta8.f0(str).toString();
        Pattern patternCompile = Pattern.compile("^\\++");
        patternCompile.getClass();
        string.getClass();
        String strReplaceAll = patternCompile.matcher(string).replaceAll("");
        strReplaceAll.getClass();
        String lowerCase = strReplaceAll.toLowerCase(Locale.ROOT);
        int iO = ta8.O(lowerCase, '@', 0, 6);
        if (iO != -1) {
            String strSubstring = lowerCase.substring(0, iO);
            String strSubstring2 = lowerCase.substring(iO + 1);
            int length2 = strSubstring.length();
            if (length2 >= this.h && length2 <= this.i) {
                List<String> listX = ta8.X(strSubstring, new char[]{'.'});
                if (!(listX instanceof Collection) || !listX.isEmpty()) {
                    for (String str5 : listX) {
                        int length3 = str5.length();
                        if (length3 >= this.h) {
                            Character chJ0 = ua8.j0(str5);
                            if (chJ0 != null && chJ0.charValue() == '\"') {
                                Character chValueOf = str5.length() == 0 ? null : Character.valueOf(str5.charAt(str5.length() - 1));
                                if (chValueOf != null && chValueOf.charValue() == '\"' && length3 > 2) {
                                    int i3 = 1;
                                    while (true) {
                                        int i4 = i3 + 2;
                                        if (i4 >= str5.length()) {
                                            break;
                                        }
                                        char cCharAt = str5.charAt(i3);
                                        if (cCharAt >= ' ' && cCharAt != '\"' && cCharAt <= '~') {
                                            if (cCharAt == '\\') {
                                                if (i4 != str5.length()) {
                                                    i3++;
                                                    if (str5.charAt(i3) < ' ') {
                                                    }
                                                }
                                            }
                                            i3++;
                                        }
                                    }
                                } else if (!this.j.e(str5)) {
                                }
                            } else if (!this.j.e(str5)) {
                            }
                        }
                    }
                    if (strSubstring2.length() <= this.c) {
                        listY = ta8.Y(strSubstring2, new String[]{"."});
                        if (listY.size() >= this.d) {
                            listP = qn1.P(listY);
                            if ((listP instanceof Collection) || !listP.isEmpty()) {
                                it = listP.iterator();
                                while (it.hasNext()) {
                                    if (!b((String) it.next())) {
                                    }
                                }
                                str2 = (String) qn1.b0(listY);
                                if (str2.length() >= this.g && b(str2)) {
                                    for (i = 0; i < str2.length(); i++) {
                                        if (!Character.isDigit(str2.charAt(i))) {
                                            strY = ra8.y(strSubstring2, this.o, this.n);
                                            s15VarA = g17.a(this.k, strY);
                                            if (s15VarA != null) {
                                                s15.a aVar = (s15.a) s15VarA.a();
                                                String str6 = (String) aVar.get(1);
                                                str4 = (String) aVar.get(2);
                                                if (str4.length() > 0 ? str6.length() > 0 : this.l.contains(str4)) {
                                                }
                                            }
                                            if (aa4.e(strY, this.m)) {
                                                strSubstring = ra8.y(strSubstring, ".", "-");
                                            } else if (aa4.e(strY, this.n)) {
                                                strSubstring = ra8.y(strSubstring, ".", "");
                                            }
                                            length = strSubstring.length();
                                            for (i2 = 0; i2 < length; i2++) {
                                                if (strSubstring.charAt(i2) != '+') {
                                                    strSubstring = strSubstring.substring(0, i2);
                                                    break;
                                                }
                                            }
                                            str3 = strSubstring + '@' + strY;
                                            if (str3.length() < this.a || str3.length() > this.b) {
                                                break;
                                            }
                                            return str3;
                                        }
                                    }
                                }
                            } else {
                                str2 = (String) qn1.b0(listY);
                                if (str2.length() >= this.g) {
                                    while (i < str2.length()) {
                                        if (!Character.isDigit(str2.charAt(i))) {
                                            strY = ra8.y(strSubstring2, this.o, this.n);
                                            s15VarA = g17.a(this.k, strY);
                                            if (s15VarA != null) {
                                                s15.a aVar2 = (s15.a) s15VarA.a();
                                                String str7 = (String) aVar2.get(1);
                                                str4 = (String) aVar2.get(2);
                                                strY = str4.length() > 0 ? this.m : this.m;
                                            }
                                            if (aa4.e(strY, this.m)) {
                                                strSubstring = ra8.y(strSubstring, ".", "-");
                                            } else if (aa4.e(strY, this.n)) {
                                                strSubstring = ra8.y(strSubstring, ".", "");
                                            }
                                            length = strSubstring.length();
                                            while (i2 < length) {
                                                if (strSubstring.charAt(i2) != '+') {
                                                    strSubstring = strSubstring.substring(0, i2);
                                                    break;
                                                }
                                            }
                                            str3 = strSubstring + '@' + strY;
                                            if (str3.length() < this.a) {
                                                break;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else if (strSubstring2.length() <= this.c) {
                    listY = ta8.Y(strSubstring2, new String[]{"."});
                    if (listY.size() >= this.d) {
                        listP = qn1.P(listY);
                        if (listP instanceof Collection) {
                            it = listP.iterator();
                            while (it.hasNext()) {
                                if (!b((String) it.next())) {
                                }
                            }
                            str2 = (String) qn1.b0(listY);
                            if (str2.length() >= this.g) {
                                while (i < str2.length()) {
                                    if (!Character.isDigit(str2.charAt(i))) {
                                        strY = ra8.y(strSubstring2, this.o, this.n);
                                        s15VarA = g17.a(this.k, strY);
                                        if (s15VarA != null) {
                                            s15.a aVar3 = (s15.a) s15VarA.a();
                                            String str8 = (String) aVar3.get(1);
                                            str4 = (String) aVar3.get(2);
                                            if (str4.length() > 0) {
                                            }
                                        }
                                        if (aa4.e(strY, this.m)) {
                                            strSubstring = ra8.y(strSubstring, ".", "-");
                                        } else if (aa4.e(strY, this.n)) {
                                            strSubstring = ra8.y(strSubstring, ".", "");
                                        }
                                        length = strSubstring.length();
                                        while (i2 < length) {
                                            if (strSubstring.charAt(i2) != '+') {
                                                strSubstring = strSubstring.substring(0, i2);
                                                break;
                                            }
                                        }
                                        str3 = strSubstring + '@' + strY;
                                        if (str3.length() < this.a) {
                                            break;
                                        }
                                    }
                                }
                            }
                        } else {
                            it = listP.iterator();
                            while (it.hasNext()) {
                                if (!b((String) it.next())) {
                                }
                            }
                            str2 = (String) qn1.b0(listY);
                            if (str2.length() >= this.g) {
                                while (i < str2.length()) {
                                    if (!Character.isDigit(str2.charAt(i))) {
                                        strY = ra8.y(strSubstring2, this.o, this.n);
                                        s15VarA = g17.a(this.k, strY);
                                        if (s15VarA != null) {
                                            s15.a aVar4 = (s15.a) s15VarA.a();
                                            String str9 = (String) aVar4.get(1);
                                            str4 = (String) aVar4.get(2);
                                            if (str4.length() > 0) {
                                            }
                                        }
                                        if (aa4.e(strY, this.m)) {
                                            strSubstring = ra8.y(strSubstring, ".", "-");
                                        } else if (aa4.e(strY, this.n)) {
                                            strSubstring = ra8.y(strSubstring, ".", "");
                                        }
                                        length = strSubstring.length();
                                        while (i2 < length) {
                                            if (strSubstring.charAt(i2) != '+') {
                                                strSubstring = strSubstring.substring(0, i2);
                                                break;
                                            }
                                        }
                                        str3 = strSubstring + '@' + strY;
                                        if (str3.length() < this.a) {
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public final boolean b(String str) {
        if (str.length() > this.e || str.length() < this.f || !Character.isLetterOrDigit(ua8.i0(str)) || !Character.isLetterOrDigit(ua8.k0(str))) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!Character.isLetterOrDigit(cCharAt) && cCharAt != '-') {
                return false;
            }
        }
        return true;
    }
}
