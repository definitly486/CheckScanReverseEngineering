package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ta8 extends ra8 {
    public static boolean D(CharSequence charSequence, CharSequence charSequence2, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (charSequence2 instanceof String) {
            if (K(charSequence, (String) charSequence2, 0, z, 2) >= 0) {
                return true;
            }
        } else if (I(charSequence, charSequence2, 0, charSequence.length(), z, false) >= 0) {
            return true;
        }
        return false;
    }

    public static boolean E(CharSequence charSequence, char c) {
        charSequence.getClass();
        return J(c, 0, 2, charSequence) >= 0;
    }

    public static boolean F(String str, CharSequence charSequence) {
        return charSequence instanceof String ? ra8.u((String) charSequence, str, false) : S(charSequence, charSequence.length() - str.length(), str, 0, str.length(), false);
    }

    public static int G(CharSequence charSequence) {
        charSequence.getClass();
        return charSequence.length() - 1;
    }

    public static final int H(CharSequence charSequence, String str, int i, boolean z) {
        charSequence.getClass();
        str.getClass();
        return (z || !(charSequence instanceof String)) ? I(charSequence, str, i, charSequence.length(), z, false) : ((String) charSequence).indexOf(str, i);
    }

    public static final int I(CharSequence charSequence, CharSequence charSequence2, int i, int i2, boolean z, boolean z2) {
        w74 w74VarK;
        int i3 = i;
        int i4 = i2;
        if (z2) {
            int iG = G(charSequence);
            if (i3 > iG) {
                i3 = iG;
            }
            if (i4 < 0) {
                i4 = 0;
            }
            w74VarK = kx6.k(i3, i4);
        } else {
            if (i3 < 0) {
                i3 = 0;
            }
            int length = charSequence.length();
            if (i4 > length) {
                i4 = length;
            }
            w74VarK = new y74(i3, i4, 1);
        }
        int i5 = w74VarK.d;
        int i6 = w74VarK.c;
        int i7 = w74VarK.b;
        if (!(charSequence instanceof String) || !(charSequence2 instanceof String)) {
            if ((i5 <= 0 || i7 > i6) && (i5 >= 0 || i6 > i7)) {
                return -1;
            }
            int i8 = i7;
            while (!S(charSequence2, 0, charSequence, i8, charSequence2.length(), z)) {
                if (i8 == i6) {
                    return -1;
                }
                i8 += i5;
            }
            return i8;
        }
        if ((i5 <= 0 || i7 > i6) && (i5 >= 0 || i6 > i7)) {
            return -1;
        }
        int i9 = i7;
        while (true) {
            String str = (String) charSequence2;
            if (ra8.w(str, 0, z, (String) charSequence, i9, str.length())) {
                return i9;
            }
            if (i9 == i6) {
                return -1;
            }
            i9 += i5;
        }
    }

    public static int J(char c, int i, int i2, CharSequence charSequence) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        charSequence.getClass();
        return !(charSequence instanceof String) ? L(charSequence, new char[]{c}, i, false) : ((String) charSequence).indexOf(c, i);
    }

    public static /* synthetic */ int K(CharSequence charSequence, String str, int i, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        if ((i2 & 4) != 0) {
            z = false;
        }
        return H(charSequence, str, i, z);
    }

    public static final int L(CharSequence charSequence, char[] cArr, int i, boolean z) {
        charSequence.getClass();
        if (!z && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(yr.Z(cArr), i);
        }
        if (i < 0) {
            i = 0;
        }
        int length = charSequence.length() - 1;
        if (i > length) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(i);
            for (char c : cArr) {
                if (ga1.d(c, cCharAt, z)) {
                    return i;
                }
            }
            if (i == length) {
                return -1;
            }
            i++;
        }
    }

    public static boolean M(CharSequence charSequence) {
        charSequence.getClass();
        for (int i = 0; i < charSequence.length(); i++) {
            if (!ga1.e(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static int N(int i, String str, String str2) {
        int iG = (i & 2) != 0 ? G(str) : 0;
        str.getClass();
        str2.getClass();
        return str.lastIndexOf(str2, iG);
    }

    public static int O(String str, char c, int i, int i2) {
        if ((i2 & 2) != 0) {
            i = G(str);
        }
        str.getClass();
        return str.lastIndexOf(c, i);
    }

    public static List P(CharSequence charSequence) {
        charSequence.getClass();
        gq4 gq4Var = new gq4(charSequence);
        if (!gq4Var.hasNext()) {
            return kx2.b;
        }
        String next = gq4Var.next();
        if (!gq4Var.hasNext()) {
            return u96.h(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (gq4Var.hasNext()) {
            arrayList.add(gq4Var.next());
        }
        return arrayList;
    }

    public static String Q(int i, String str) {
        CharSequence charSequenceSubSequence;
        str.getClass();
        if (i < 0) {
            fg.c(kv2.b(i, "Desired length ", " is less than zero."));
            return null;
        }
        if (i <= str.length()) {
            charSequenceSubSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            sb.append((CharSequence) str);
            int length = i - str.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append(' ');
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            charSequenceSubSequence = sb;
        }
        return charSequenceSubSequence.toString();
    }

    public static String R(int i, String str) {
        CharSequence charSequenceSubSequence;
        str.getClass();
        if (i < 0) {
            fg.c(kv2.b(i, "Desired length ", " is less than zero."));
            return null;
        }
        if (i <= str.length()) {
            charSequenceSubSequence = str.subSequence(0, str.length());
        } else {
            StringBuilder sb = new StringBuilder(i);
            int length = i - str.length();
            int i2 = 1;
            if (1 <= length) {
                while (true) {
                    sb.append('0');
                    if (i2 == length) {
                        break;
                    }
                    i2++;
                }
            }
            sb.append((CharSequence) str);
            charSequenceSubSequence = sb;
        }
        return charSequenceSubSequence.toString();
    }

    public static final boolean S(CharSequence charSequence, int i, CharSequence charSequence2, int i2, int i3, boolean z) {
        charSequence.getClass();
        charSequence2.getClass();
        if (i2 < 0 || i < 0 || i > charSequence.length() - i3 || i2 > charSequence2.length() - i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!ga1.d(charSequence.charAt(i + i4), charSequence2.charAt(i2 + i4), z)) {
                return false;
            }
        }
        return true;
    }

    public static String T(String str, String str2) {
        str.getClass();
        str2.getClass();
        return ra8.C(str, str2, false) ? str.substring(str2.length()) : str;
    }

    public static String U(String str, String str2) {
        return F(str2, str) ? str.substring(0, str.length() - str2.length()) : str;
    }

    public static StringBuilder V(String str, int i, int i2, CharSequence charSequence) {
        str.getClass();
        charSequence.getClass();
        if (i2 < i) {
            yq.d(ln.c(i2, i, "End index (", ") is less than start index (", ")."));
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) str, 0, i);
        sb.append(charSequence);
        sb.append((CharSequence) str, i2, str.length());
        return sb;
    }

    public static final List W(String str, CharSequence charSequence) {
        int iH = H(charSequence, str, 0, false);
        if (iH == -1) {
            return u96.h(charSequence.toString());
        }
        ArrayList arrayList = new ArrayList(10);
        int length = 0;
        do {
            arrayList.add(charSequence.subSequence(length, iH).toString());
            length = str.length() + iH;
            iH = H(charSequence, str, length, false);
        } while (iH != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static List X(String str, char[] cArr) {
        str.getClass();
        int i = 1;
        if (cArr.length == 1) {
            return W(String.valueOf(cArr[0]), str);
        }
        gp7 gp7Var = new gp7(new ml2(str, new yi7(cArr, i)));
        ArrayList arrayList = new ArrayList(kn1.q(gp7Var, 10));
        Iterator<Object> it = gp7Var.iterator();
        while (true) {
            ml2.a aVar = (ml2.a) it;
            if (!aVar.hasNext()) {
                return arrayList;
            }
            y74 y74Var = (y74) aVar.next();
            y74Var.getClass();
            arrayList.add(str.subSequence(y74Var.b, y74Var.c + 1).toString());
        }
    }

    public static List Y(String str, String[] strArr) {
        str.getClass();
        int i = 1;
        if (strArr.length == 1) {
            String str2 = strArr[0];
            if (str2.length() != 0) {
                return W(str2, str);
            }
        }
        List listAsList = Arrays.asList(strArr);
        listAsList.getClass();
        gp7 gp7Var = new gp7(new ml2(str, new xq2(listAsList, i)));
        ArrayList arrayList = new ArrayList(kn1.q(gp7Var, 10));
        Iterator<Object> it = gp7Var.iterator();
        while (true) {
            ml2.a aVar = (ml2.a) it;
            if (!aVar.hasNext()) {
                return arrayList;
            }
            y74 y74Var = (y74) aVar.next();
            y74Var.getClass();
            arrayList.add(str.subSequence(y74Var.b, y74Var.c + 1).toString());
        }
    }

    public static boolean Z(CharSequence charSequence, char c) {
        return charSequence.length() > 0 && ga1.d(charSequence.charAt(0), c, false);
    }

    public static String a0(String str, String str2, String str3) {
        str.getClass();
        str3.getClass();
        int iK = K(str, str2, 0, false, 6);
        return iK == -1 ? str3 : str.substring(str2.length() + iK, str.length());
    }

    public static String b0(char c, String str, String str2) {
        str.getClass();
        str2.getClass();
        int iO = O(str, c, 0, 6);
        return iO == -1 ? str2 : str.substring(iO + 1, str.length());
    }

    public static String c0(String str, char c) {
        str.getClass();
        str.getClass();
        int iJ = J(c, 0, 6, str);
        return iJ == -1 ? str : str.substring(0, iJ);
    }

    public static String d0(String str, char c) {
        str.getClass();
        str.getClass();
        int iO = O(str, c, 0, 6);
        return iO == -1 ? str : str.substring(0, iO);
    }

    public static Boolean e0(String str) {
        str.getClass();
        if (str.equals(TJAdUnitConstants.String.TRUE)) {
            return Boolean.TRUE;
        }
        if (str.equals(TJAdUnitConstants.String.FALSE)) {
            return Boolean.FALSE;
        }
        return null;
    }

    public static CharSequence f0(CharSequence charSequence) {
        charSequence.getClass();
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean zE = ga1.e(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!zE) {
                    break;
                }
                length--;
            } else if (zE) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static CharSequence g0(CharSequence charSequence) {
        int length = charSequence.length() - 1;
        if (length < 0) {
            return "";
        }
        while (true) {
            int i = length - 1;
            if (!ga1.e(charSequence.charAt(length))) {
                return charSequence.subSequence(0, length + 1);
            }
            if (i < 0) {
                return "";
            }
            length = i;
        }
    }
}
