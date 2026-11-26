package yads;

import androidx.compose.ui.spatial.RectListKt;
import com.tapjoy.TJAdUnitConstants;
import defpackage.ra8;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public abstract class uz5 {
    public static void a(tz5 tz5Var, ArrayList arrayList) {
        cy5 cy5Var;
        Object obj;
        Object obj2;
        if (b(tz5Var.a(), tz5Var)) {
            tz5Var.b();
            while (tz5Var.a() != 0 && tz5Var.a() != '}') {
                char cA = tz5Var.a();
                if (cA != '!') {
                    if (cA == '/') {
                        arrayList.add(ry5.a);
                        tz5.a(tz5Var);
                    } else if (cA == ':') {
                        arrayList.add(ez5.a);
                        tz5.a(tz5Var);
                    } else if (cA != '|') {
                        switch (cA) {
                            case '%':
                                arrayList.add(sy5.a);
                                tz5.a(tz5Var);
                                break;
                            case '&':
                                if (tz5.b(tz5Var) != '&') {
                                    throw a(tz5Var);
                                }
                                arrayList.add(vy5.a);
                                tz5Var.b();
                                break;
                                break;
                            case '\'':
                                a(tz5Var, arrayList, true);
                                break;
                            case '(':
                                arrayList.add(zx5.a);
                                tz5.a(tz5Var);
                                break;
                            case ')':
                                arrayList.add(ay5.a);
                                tz5.a(tz5Var);
                                break;
                            case '*':
                                arrayList.add(ty5.a);
                                tz5.a(tz5Var);
                                break;
                            case '+':
                                if (a(arrayList) || (defpackage.qn1.c0(arrayList) instanceof lz5)) {
                                    if (!a(arrayList)) {
                                        throw a(tz5Var);
                                    }
                                    obj = az5.a;
                                } else {
                                    obj = kz5.a;
                                }
                                arrayList.add(obj);
                                tz5.a(tz5Var);
                                break;
                            case ',':
                                arrayList.add(by5.a);
                                tz5.a(tz5Var);
                                break;
                            case '-':
                                if (a(arrayList) || (defpackage.qn1.c0(arrayList) instanceof lz5)) {
                                    if (!a(arrayList)) {
                                        throw a(tz5Var);
                                    }
                                    obj2 = zy5.a;
                                } else {
                                    obj2 = iz5.a;
                                }
                                arrayList.add(obj2);
                                tz5.a(tz5Var);
                                break;
                            default:
                                switch (cA) {
                                    case '<':
                                        if (tz5.b(tz5Var) != '=') {
                                            arrayList.add(ly5.a);
                                            tz5.a(tz5Var);
                                        } else {
                                            arrayList.add(my5.a);
                                            tz5Var.b();
                                        }
                                        break;
                                    case RectListKt.BitOffsetForFocusable /* 61 */:
                                        if (tz5.b(tz5Var) != '=') {
                                            throw a(tz5Var);
                                        }
                                        arrayList.add(oy5.a);
                                        tz5Var.b();
                                        break;
                                        break;
                                    case RectListKt.BitOffsetForGesturable /* 62 */:
                                        if (tz5.b(tz5Var) != '=') {
                                            arrayList.add(jy5.a);
                                            tz5.a(tz5Var);
                                        } else {
                                            arrayList.add(ky5.a);
                                            tz5Var.b();
                                        }
                                        break;
                                    case '?':
                                        arrayList.add(fz5.a);
                                        tz5.a(tz5Var);
                                        break;
                                    default:
                                        char cA2 = tz5Var.a();
                                        if (cA2 != ' ' && cA2 != '\t' && cA2 != '\r' && cA2 != '\n') {
                                            if (!a(tz5Var.a(), tz5.c(tz5Var), tz5.b(tz5Var))) {
                                                char cA3 = tz5Var.a();
                                                if (('a' > cA3 || cA3 >= '{') && (('A' > cA3 || cA3 >= '[') && cA3 != '_')) {
                                                    if (tz5Var.a() != '.') {
                                                        throw a(tz5Var);
                                                    }
                                                    tz5.a(tz5Var);
                                                    arrayList.add(dz5.a);
                                                    break;
                                                } else {
                                                    int i = tz5Var.b;
                                                    Integer numValueOf = null;
                                                    while (true) {
                                                        int i2 = tz5Var.b;
                                                        while (true) {
                                                            char cA4 = tz5Var.a();
                                                            if (('a' <= cA4 && cA4 < '{') || (('A' <= cA4 && cA4 < '[') || cA4 == '_' || ('0' <= cA4 && cA4 < ':'))) {
                                                                tz5.a(tz5Var);
                                                            }
                                                        }
                                                        if (tz5Var.a() == '.') {
                                                            int i3 = tz5Var.b + 1;
                                                            numValueOf = Integer.valueOf(i3);
                                                            tz5.a(tz5Var);
                                                            if (i3 - i2 <= 1) {
                                                                defpackage.qg.h("Unexpected token: .");
                                                                return;
                                                            }
                                                        }
                                                        char cA5 = tz5Var.a();
                                                        if (('a' > cA5 || cA5 >= '{') && (('A' > cA5 || cA5 >= '[') && cA5 != '_' && (('0' > cA5 || cA5 >= ':') && tz5Var.a() != '.'))) {
                                                            int iIntValue = tz5Var.b;
                                                            while (true) {
                                                                char cA6 = tz5Var.a();
                                                                if (cA6 != ' ' && cA6 != '\t') {
                                                                    if (cA6 != '\r' && cA6 != '\n') {
                                                                        if (tz5Var.a() == '(') {
                                                                            cy5Var = new cy5(ra8.r(tz5Var.a, numValueOf != null ? numValueOf.intValue() : i, iIntValue));
                                                                            if (numValueOf == null) {
                                                                                arrayList.add(cy5Var);
                                                                            }
                                                                            iIntValue = numValueOf.intValue() - 1;
                                                                        } else {
                                                                            cy5Var = null;
                                                                        }
                                                                        String strR = ra8.r(tz5Var.a, i, iIntValue);
                                                                        dy5 dy5Var = strR.equals(TJAdUnitConstants.String.TRUE) ? new dy5(true) : strR.equals(TJAdUnitConstants.String.FALSE) ? new dy5(false) : null;
                                                                        if (dy5Var != null) {
                                                                            arrayList.add(dy5Var);
                                                                        } else {
                                                                            if (tz5Var.a(iIntValue - 1) == '.') {
                                                                                defpackage.qg.h("Unexpected token: .");
                                                                                return;
                                                                            }
                                                                            arrayList.add(new hy5(strR));
                                                                        }
                                                                        if (cy5Var == null) {
                                                                        }
                                                                        arrayList.add(dz5.a);
                                                                        arrayList.add(cy5Var);
                                                                    }
                                                                    break;
                                                                }
                                                                tz5.a(tz5Var);
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                b(tz5Var, arrayList);
                                                break;
                                            }
                                        } else {
                                            tz5.a(tz5Var);
                                            break;
                                        }
                                        break;
                                }
                                break;
                        }
                    } else {
                        if (tz5.b(tz5Var) != '|') {
                            throw a(tz5Var);
                        }
                        arrayList.add(wy5.a);
                        tz5Var.b();
                    }
                } else if (tz5.b(tz5Var) == '=') {
                    arrayList.add(py5.a);
                    tz5Var.b();
                } else if (tz5.b(tz5Var) == ':') {
                    arrayList.add(hz5.a);
                    tz5Var.b();
                } else {
                    if (a(arrayList) || (defpackage.qn1.c0(arrayList) instanceof lz5)) {
                        throw a(tz5Var);
                    }
                    arrayList.add(jz5.a);
                    tz5.a(tz5Var);
                }
            }
            if (tz5Var.a() != '}') {
                throw new vz5(defpackage.jh.b(tz5Var.c(), "'}' expected at end of expression at "));
            }
            tz5.a(tz5Var);
        }
    }

    public static void b(tz5 tz5Var, ArrayList arrayList) {
        int iC = tz5Var.c();
        boolean z = defpackage.qn1.c0(arrayList) instanceof iz5;
        if (z) {
            defpackage.nn1.F(arrayList);
        }
        do {
            tz5.a(tz5Var);
        } while (Character.isDigit(tz5Var.a()));
        if (tz5Var.a(iC) != '.' && !a(tz5Var.a(), tz5.c(tz5Var), tz5.b(tz5Var))) {
            String strC = z ? defpackage.bj.c("-", tz5Var.a(iC, tz5Var.c())) : tz5Var.a(iC, tz5Var.c());
            try {
                arrayList.add(ey5.a(ey5.b(Long.valueOf(Long.parseLong(strC)))));
                return;
            } catch (Exception unused) {
                defpackage.qg.h(defpackage.me0.c("Value ", strC, " can't be converted to Integer type."));
                return;
            }
        }
        while (a(tz5Var.a(), tz5.c(tz5Var), tz5.b(tz5Var))) {
            tz5.a(tz5Var);
        }
        String strC2 = z ? defpackage.bj.c("-", tz5Var.a(iC, tz5Var.c())) : tz5Var.a(iC, tz5Var.c());
        try {
            arrayList.add(ey5.a(ey5.b(Double.valueOf(Double.parseDouble(strC2)))));
        } catch (Exception unused2) {
            defpackage.qg.h(defpackage.me0.c("Value ", strC2, " can't be converted to Number type."));
        }
    }

    public static boolean b(char c, tz5 tz5Var) {
        return c == '@' && tz5.c(tz5Var) != '\\' && tz5.b(tz5Var) == '{';
    }

    public static void a(tz5 tz5Var, ArrayList arrayList, boolean z) {
        if (z) {
            tz5.a(tz5Var);
        }
        ArrayList arrayList2 = new ArrayList();
        String strA = a(tz5Var, z);
        if (tz5Var.a() == 0) {
            if (z) {
                throw new vz5(defpackage.jh.b(tz5Var.c(), "''' expected at end of string literal at "));
            }
            if (strA != null) {
                arrayList.add(fy5.a(strA));
                return;
            }
            return;
        }
        if (a(tz5Var.a(), tz5Var)) {
            if (strA == null) {
                strA = "";
            }
            arrayList.add(fy5.a(strA));
            tz5.a(tz5Var);
            return;
        }
        if (strA != null && b(tz5Var.a(), tz5Var)) {
            arrayList2.add(pz5.a);
            arrayList2.add(fy5.a(strA));
        }
        while (b(tz5Var.a(), tz5Var)) {
            ArrayList arrayList3 = new ArrayList();
            a(tz5Var, arrayList3);
            String strA2 = a(tz5Var, z);
            if (!z && arrayList2.isEmpty() && strA2 == null && !b(tz5Var.a(), tz5Var)) {
                arrayList.addAll(arrayList3);
                return;
            }
            if (arrayList2.isEmpty()) {
                arrayList2.add(pz5.a);
            }
            arrayList2.add(qz5.a);
            arrayList2.addAll(arrayList3);
            arrayList2.add(oz5.a);
            if (strA2 != null) {
                arrayList2.add(fy5.a(strA2));
            }
        }
        if (z && !a(tz5Var.a(), tz5Var)) {
            throw new vz5(defpackage.jh.b(tz5Var.c(), "''' expected at end of string literal at "));
        }
        if (!arrayList2.isEmpty()) {
            arrayList.addAll(arrayList2);
            arrayList.add(nz5.a);
        }
        if (z) {
            tz5.a(tz5Var);
        }
    }

    public static ArrayList a(char[] cArr) {
        tz5 tz5Var = new tz5(cArr);
        try {
            a(tz5Var, tz5Var.d(), false);
            return tz5Var.d();
        } catch (vo2 e) {
            if (e instanceof vz5) {
                cArr.getClass();
                throw new vo2(e, defpackage.me0.c("Error tokenizing '", new String(cArr), "'."));
            }
            throw e;
        }
    }

    public static vo2 a(tz5 tz5Var) {
        return new vo2("Invalid token '" + tz5Var.a() + "' at position " + tz5Var.c());
    }

    public static boolean a(ArrayList arrayList) {
        if (arrayList.isEmpty() || (defpackage.qn1.b0(arrayList) instanceof lz5)) {
            return false;
        }
        return (defpackage.qn1.b0(arrayList) instanceof iy5) || (defpackage.qn1.b0(arrayList) instanceof ay5);
    }

    public static String a(tz5 tz5Var, boolean z) {
        int i = tz5Var.b;
        while (tz5Var.a() != 0 && !b(tz5Var.a(), tz5Var) && (!z || !a(tz5Var.a(), tz5Var))) {
            tz5Var.b++;
        }
        String strA = yt3.a(ra8.r(tz5Var.a, i, tz5Var.b));
        if (strA.length() > 0) {
            return strA;
        }
        return null;
    }

    public static boolean a(char c, tz5 tz5Var) {
        if (c == '\'') {
            int i = tz5Var.b;
            if (i < tz5Var.a.length) {
                int i2 = 0;
                for (int i3 = i - 1; i3 > 0 && tz5Var.a[i3] == '\\'; i3--) {
                    i2++;
                }
                if (i2 % 2 == 1) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0033  */
    /* JADX WARN: Code duplicated, block: B:25:0x003d  */
    public static boolean a(char c, char c2, char c3) {
        boolean zIsDigit;
        if (!Character.isDigit(c)) {
            if (c != '+') {
                if (c == 'E' || c == 'e') {
                    if (Character.isDigit(c2) && (Character.isDigit(c3) || c3 == '+' || c3 == '-')) {
                        zIsDigit = true;
                    }
                } else if (c != '-') {
                    if (c == '.') {
                        zIsDigit = Character.isDigit(c3);
                    }
                } else if (c2 != 'e') {
                    zIsDigit = true;
                } else {
                    zIsDigit = true;
                }
                zIsDigit = false;
            } else if ((c2 != 'e' || c2 == 'E') && Character.isDigit(c3)) {
                zIsDigit = true;
            } else {
                zIsDigit = false;
            }
            if (!zIsDigit) {
                return false;
            }
        }
        return true;
    }
}
