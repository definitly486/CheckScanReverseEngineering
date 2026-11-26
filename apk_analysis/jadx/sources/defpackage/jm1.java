package defpackage;

import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class jm1 extends p54 {
    public static final Pattern e = z05.o;

    /* JADX WARN: Code duplicated, block: B:38:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:56:0x011b  */
    /* JADX WARN: Code duplicated, block: B:57:0x0123  */
    /* JADX WARN: Code duplicated, block: B:59:0x0127  */
    /* JADX WARN: Code duplicated, block: B:60:0x0130  */
    /* JADX WARN: Code duplicated, block: B:62:0x0133  */
    /* JADX WARN: Code duplicated, block: B:64:0x015a  */
    /* JADX WARN: Code duplicated, block: B:65:0x0168  */
    /* JADX WARN: Code duplicated, block: B:67:0x016b  */
    /* JADX WARN: Code duplicated, block: B:68:0x0170  */
    /* JADX WARN: Code duplicated, block: B:70:0x0173 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:71:0x0175  */
    /* JADX WARN: Code duplicated, block: B:72:0x017b  */
    /* JADX WARN: Code duplicated, block: B:75:0x0184 A[LOOP:0: B:74:0x0182->B:75:0x0184, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:79:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:82:0x01b3 A[ADDED_TO_REGION, LOOP:1: B:82:0x01b3->B:86:0x01bb, LOOP_START, PHI: r2
      0x01b3: PHI (r2v13 pt0) = (r2v12 pt0), (r2v14 pt0) binds: [B:81:0x01b1, B:86:0x01bb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:83:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:85:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:88:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:93:0x01bb A[SYNTHETIC] */
    @Override // defpackage.p54
    public final zn5 b() {
        String strA;
        String strA2;
        zn5 hq4Var;
        zn5 zn5Var;
        zn5 zn5Var2;
        zn5 zn5Var3;
        pt0 pt0Var;
        int i;
        z05 z05Var;
        int i2;
        String strSubstring;
        String strReplaceAll;
        z05 z05Var2;
        oq4 oq4Var;
        int iU;
        boolean z = true;
        int i3 = this.d + 1;
        this.d = i3;
        z05 z05Var3 = this.a;
        pt0 pt0Var2 = z05Var3.j;
        if (pt0Var2 == null) {
            return f("]");
        }
        dq8 dq8Var = pt0Var2.a;
        boolean z2 = pt0Var2.c;
        if (!pt0Var2.f) {
            z05Var3.j = pt0Var2.d;
            return f("]");
        }
        boolean z3 = false;
        if (c() == '(') {
            this.d++;
            e();
            z05 z05Var4 = this.a;
            int i4 = this.d;
            z05Var4.h = i4;
            int iT = o8.t(i4, z05Var4.g);
            if (iT == -1) {
                strA = null;
            } else {
                char cD = z05Var4.d();
                String str = z05Var4.g;
                int i5 = z05Var4.h;
                String strSubstring2 = cD == '<' ? str.substring(i5 + 1, iT - 1) : str.substring(i5, iT);
                z05Var4.h = iT;
                strA = w03.a(strSubstring2);
            }
            this.d = this.a.h;
            if (strA != null) {
                e();
                String str2 = this.c;
                int i6 = this.d;
                if (e.matcher(str2.substring(i6 - 1, i6)).matches()) {
                    z05 z05Var5 = this.a;
                    int i7 = this.d;
                    z05Var5.h = i7;
                    int iV = o8.v(i7, z05Var5.g);
                    if (iV == -1) {
                        strA2 = null;
                    } else {
                        String strSubstring3 = z05Var5.g.substring(z05Var5.h + 1, iV - 1);
                        z05Var5.h = iV;
                        strA2 = w03.a(strSubstring3);
                    }
                    this.d = this.a.h;
                    e();
                } else {
                    strA2 = null;
                }
                if (c() == ')') {
                    this.d++;
                    z3 = true;
                } else {
                    this.d = i3;
                    z3 = false;
                }
            }
            if (z3) {
                z = z3;
            } else {
                i = this.d;
                z05Var = this.a;
                z05Var.h = i;
                if (i < z05Var.g.length() && z05Var.g.charAt(z05Var.h) == '[') {
                    int i8 = z05Var.h + 1;
                    iU = o8.u(i8, z05Var.g);
                    int i9 = iU - i8;
                    if (iU != -1 && i9 <= 999 && iU < z05Var.g.length() && z05Var.g.charAt(iU) == ']') {
                        z05Var.h = iU + 1;
                    }
                }
                int i10 = this.a.h;
                this.d = i10;
                i2 = i10 - i;
                if (i2 > 2) {
                    strSubstring = this.c.substring(i, i2 + i);
                } else if (pt0Var2.g) {
                    strSubstring = null;
                } else {
                    strSubstring = this.c.substring(pt0Var2.b, i3);
                }
                if (strSubstring != null) {
                    Pattern pattern = w03.a;
                    strReplaceAll = w03.c.matcher(strSubstring.substring(1, strSubstring.length() - 1).trim().toLowerCase(Locale.ROOT)).replaceAll(" ");
                    z05Var2 = this.a;
                    if (z05Var2.b) {
                        oq4Var = (oq4) ((Map) z05Var2.a.c).get(strReplaceAll);
                    } else {
                        oq4Var = null;
                    }
                    if (oq4Var != null) {
                        strA = oq4Var.g;
                        strA2 = oq4Var.h;
                    } else {
                        z = z3;
                    }
                } else {
                    z = z3;
                }
            }
            if (z) {
                this.d = i3;
                z05 z05Var6 = this.a;
                z05Var6.j = z05Var6.j.d;
                return f("]");
            }
            if (z2) {
                hq4Var = new w04(strA, strA2);
            } else {
                hq4Var = new hq4(strA, strA2);
            }
            zn5Var = dq8Var.e;
            while (zn5Var != null) {
                zn5 zn5Var4 = zn5Var.e;
                hq4Var.b(zn5Var);
                zn5Var = zn5Var4;
            }
            nl2 nl2Var = pt0Var2.e;
            z05 z05Var7 = this.a;
            z05Var7.h = this.d;
            z05Var7.e(nl2Var);
            this.d = this.a.h;
            zn5Var2 = hq4Var.b;
            zn5Var3 = hq4Var.c;
            if (zn5Var2 != zn5Var3) {
                y14.E(zn5Var2, zn5Var3);
            }
            dq8Var.f();
            z05 z05Var8 = this.a;
            pt0Var = z05Var8.j.d;
            z05Var8.j = pt0Var;
            if (!z2) {
                while (pt0Var != null) {
                    if (!pt0Var.c) {
                        pt0Var.f = false;
                    }
                    pt0Var = pt0Var.d;
                }
            }
            return hq4Var;
        }
        strA = null;
        strA2 = null;
        if (z3) {
            i = this.d;
            z05Var = this.a;
            z05Var.h = i;
            if (i < z05Var.g.length()) {
                int i11 = z05Var.h + 1;
                iU = o8.u(i11, z05Var.g);
                int i12 = iU - i11;
                if (iU != -1) {
                    z05Var.h = iU + 1;
                }
            }
            int i13 = this.a.h;
            this.d = i13;
            i2 = i13 - i;
            if (i2 > 2) {
                strSubstring = this.c.substring(i, i2 + i);
            } else if (pt0Var2.g) {
                strSubstring = this.c.substring(pt0Var2.b, i3);
            } else {
                strSubstring = null;
            }
            if (strSubstring != null) {
                Pattern pattern2 = w03.a;
                strReplaceAll = w03.c.matcher(strSubstring.substring(1, strSubstring.length() - 1).trim().toLowerCase(Locale.ROOT)).replaceAll(" ");
                z05Var2 = this.a;
                if (z05Var2.b) {
                    oq4Var = (oq4) ((Map) z05Var2.a.c).get(strReplaceAll);
                } else {
                    oq4Var = null;
                }
                if (oq4Var != null) {
                    strA = oq4Var.g;
                    strA2 = oq4Var.h;
                } else {
                    z = z3;
                }
            } else {
                z = z3;
            }
        } else {
            z = z3;
        }
        if (z) {
            this.d = i3;
            z05 z05Var9 = this.a;
            z05Var9.j = z05Var9.j.d;
            return f("]");
        }
        if (z2) {
            hq4Var = new w04(strA, strA2);
        } else {
            hq4Var = new hq4(strA, strA2);
        }
        zn5Var = dq8Var.e;
        while (zn5Var != null) {
            zn5 zn5Var5 = zn5Var.e;
            hq4Var.b(zn5Var);
            zn5Var = zn5Var5;
        }
        nl2 nl2Var2 = pt0Var2.e;
        z05 z05Var10 = this.a;
        z05Var10.h = this.d;
        z05Var10.e(nl2Var2);
        this.d = this.a.h;
        zn5Var2 = hq4Var.b;
        zn5Var3 = hq4Var.c;
        if (zn5Var2 != zn5Var3) {
            y14.E(zn5Var2, zn5Var3);
        }
        dq8Var.f();
        z05 z05Var11 = this.a;
        pt0Var = z05Var11.j.d;
        z05Var11.j = pt0Var;
        if (!z2) {
            while (pt0Var != null) {
                if (!pt0Var.c) {
                    pt0Var.f = false;
                }
                pt0Var = pt0Var.d;
            }
        }
        return hq4Var;
    }

    @Override // defpackage.p54
    public final char d() {
        return ']';
    }
}
