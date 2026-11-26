package yads;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class lk6 {
    public static final Pattern c = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    public static final Pattern d = Pattern.compile("^((?:[0-9]*\\.)?[0-9]+)(px|em|%)$");
    public final os4 a = new os4();
    public final StringBuilder b = new StringBuilder();

    public static void a(os4 os4Var) {
        while (true) {
            boolean z = true;
            while (true) {
                int i = os4Var.c;
                int i2 = os4Var.b;
                if (i - i2 <= 0 || !z) {
                    return;
                }
                byte[] bArr = os4Var.a;
                byte b = bArr[i2];
                char c2 = (char) b;
                if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
                    os4Var.e(i2 + 1);
                    break;
                }
                int i3 = i2 + 2;
                if (i3 <= i) {
                    int i4 = i2 + 1;
                    if (b == 47 && bArr[i4] == 42) {
                        while (true) {
                            int i5 = i3 + 1;
                            if (i5 >= i) {
                                break;
                            }
                            if (((char) bArr[i3]) == '*' && ((char) bArr[i5]) == '/') {
                                i3 += 2;
                                i = i3;
                            } else {
                                i3 = i5;
                            }
                        }
                        int i6 = os4Var.b;
                        os4Var.e((i - i6) + i6);
                        break;
                    }
                }
                z = false;
            }
        }
    }

    public static String b(os4 os4Var, StringBuilder sb) {
        a(os4Var);
        if (os4Var.c - os4Var.b == 0) {
            return null;
        }
        String strA = a(os4Var, sb);
        if (!"".equals(strA)) {
            return strA;
        }
        return "" + ((char) os4Var.k());
    }

    public static String a(os4 os4Var, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int i = os4Var.b;
        int i2 = os4Var.c;
        while (i < i2 && !z) {
            char c2 = (char) os4Var.a[i];
            if ((c2 < 'A' || c2 > 'Z') && ((c2 < 'a' || c2 > 'z') && !((c2 >= '0' && c2 <= '9') || c2 == '#' || c2 == '-' || c2 == '.' || c2 == '_'))) {
                z = true;
            } else {
                i++;
                sb.append(c2);
            }
        }
        int i3 = os4Var.b;
        os4Var.e((i - i3) + i3);
        return sb.toString();
    }
}
