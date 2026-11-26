package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public class ra8 extends qa8 {
    public static String A(String str, String str2, String str3) {
        str.getClass();
        int iK = ta8.K(str, str2, 0, false, 2);
        return iK < 0 ? str : ta8.V(str, iK, str2.length() + iK, str3).toString();
    }

    public static boolean B(int i, String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        return !z ? str.startsWith(str2, i) : w(str, i, z, str2, 0, str2.length());
    }

    public static boolean C(String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        return !z ? str.startsWith(str2) : w(str, 0, z, str2, 0, str2.length());
    }

    public static String r(char[] cArr, int i, int i2) {
        cArr.getClass();
        u0.a aVar = u0.Companion;
        int length = cArr.length;
        aVar.getClass();
        u0.a.a(i, i2, length);
        return new String(cArr, i, i2 - i);
    }

    public static boolean s(CharSequence charSequence, CharSequence charSequence2) {
        boolean z = charSequence instanceof String;
        if (z && charSequence2 != null) {
            return ((String) charSequence).contentEquals(charSequence2);
        }
        if (z && (charSequence2 instanceof String)) {
            return charSequence.equals(charSequence2);
        }
        if (charSequence == charSequence2) {
            return true;
        }
        if (charSequence != null && charSequence2 != null && charSequence.length() == charSequence2.length()) {
            int length = charSequence.length();
            for (int i = 0; i < length; i++) {
                if (charSequence.charAt(i) == charSequence2.charAt(i)) {
                }
            }
            return true;
        }
        return false;
    }

    public static String t(byte[] bArr) {
        bArr.getClass();
        return new String(bArr, ha1.b);
    }

    public static boolean u(String str, String str2, boolean z) {
        str.getClass();
        str2.getClass();
        return !z ? str.endsWith(str2) : str.regionMatches(true, str.length() - str2.length(), str2, 0, str2.length());
    }

    public static boolean v(String str, String str2, boolean z) {
        if (str == null) {
            return str2 == null;
        }
        return !z ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    public static boolean w(String str, int i, boolean z, String str2, int i2, int i3) {
        str.getClass();
        str2.getClass();
        return !z ? str.regionMatches(i, str2, i2, i3) : str.regionMatches(z, i, str2, i2, i3);
    }

    public static String x(int i, String str) {
        str.getClass();
        if (i < 0) {
            c9.f(qz0.d("Count 'n' must be non-negative, but was ", i, '.'));
            return null;
        }
        if (i == 0) {
            return "";
        }
        int i2 = 1;
        if (i == 1) {
            return str.toString();
        }
        int length = str.length();
        if (length == 0) {
            return "";
        }
        if (length != 1) {
            StringBuilder sb = new StringBuilder(str.length() * i);
            if (1 <= i) {
                while (true) {
                    sb.append((CharSequence) str);
                    if (i2 == i) {
                        break;
                    }
                    i2++;
                }
            }
            return sb.toString();
        }
        char cCharAt = str.charAt(0);
        char[] cArr = new char[i];
        for (int i3 = 0; i3 < i; i3++) {
            cArr[i3] = cCharAt;
        }
        return new String(cArr);
    }

    public static String y(String str, String str2, String str3) {
        x7.b(str, str2, str3);
        int iH = ta8.H(str, str2, 0, false);
        if (iH < 0) {
            return str;
        }
        int length = str2.length();
        int i = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            vh.c();
            return null;
        }
        StringBuilder sb = new StringBuilder(length2);
        int i2 = 0;
        do {
            sb.append((CharSequence) str, i2, iH);
            sb.append(str3);
            i2 = iH + length;
            if (iH >= str.length()) {
                break;
            }
            iH = ta8.H(str, str2, iH + i, false);
        } while (iH > 0);
        sb.append((CharSequence) str, i2, str.length());
        return sb.toString();
    }

    public static String z(char c, String str, char c2) {
        str.getClass();
        String strReplace = str.replace(c, c2);
        strReplace.getClass();
        return strReplace;
    }
}
