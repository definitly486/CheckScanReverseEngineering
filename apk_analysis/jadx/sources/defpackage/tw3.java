package defpackage;

import java.io.Serializable;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class tw3 implements Serializable {
    public final String b;
    public final int c;

    public tw3(String str, int i) {
        this.b = str;
        this.c = i;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0094  */
    public static tw3 a(String str) {
        String strSubstring;
        String strSubstring2;
        Integer num;
        String[] strArr;
        str.getClass();
        if (str.startsWith("[")) {
            o8.h(str.charAt(0) == '[', "Bracketed host-port string must start with a bracket: %s", str);
            int iIndexOf = str.indexOf(58);
            int iLastIndexOf = str.lastIndexOf(93);
            o8.h(iIndexOf > -1 && iLastIndexOf > iIndexOf, "Invalid bracketed host/port: %s", str);
            String strSubstring3 = str.substring(1, iLastIndexOf);
            int i = iLastIndexOf + 1;
            if (i == str.length()) {
                strArr = new String[]{strSubstring3, ""};
            } else {
                o8.h(str.charAt(i) == ':', "Only a colon may follow a close bracket: %s", str);
                int i2 = iLastIndexOf + 2;
                for (int i3 = i2; i3 < str.length(); i3++) {
                    o8.h(Character.isDigit(str.charAt(i3)), "Port must be numeric: %s", str);
                }
                strArr = new String[]{strSubstring3, str.substring(i2)};
            }
            strSubstring2 = strArr[0];
            strSubstring = strArr[1];
        } else {
            int iIndexOf2 = str.indexOf(58);
            if (iIndexOf2 >= 0) {
                int i4 = iIndexOf2 + 1;
                if (str.indexOf(58, i4) == -1) {
                    strSubstring2 = str.substring(0, iIndexOf2);
                    strSubstring = str.substring(i4);
                } else {
                    strSubstring = null;
                    strSubstring2 = str;
                }
            } else {
                strSubstring = null;
                strSubstring2 = str;
            }
        }
        if (i13.b(strSubstring)) {
            num = -1;
        } else {
            Integer numA0 = fa4.a0(strSubstring);
            o8.h(numA0 != null, "Unparseable port number: %s", str);
            int iIntValue = numA0.intValue();
            o8.h(iIntValue >= 0 && iIntValue <= 65535, "Port number out of range: %s", str);
            num = numA0;
        }
        return new tw3(strSubstring2, num.intValue());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof tw3) {
            tw3 tw3Var = (tw3) obj;
            if (Objects.equals(this.b, tw3Var.b) && this.c == tw3Var.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.b, Integer.valueOf(this.c));
    }

    public final String toString() {
        String str = this.b;
        StringBuilder sb = new StringBuilder(str.length() + 8);
        if (str.indexOf(58) >= 0) {
            sb.append('[');
            sb.append(str);
            sb.append(']');
        } else {
            sb.append(str);
        }
        int i = this.c;
        if (i >= 0) {
            sb.append(':');
            sb.append(i);
        }
        return sb.toString();
    }
}
