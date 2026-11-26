package defpackage;

import androidx.webkit.ProxyConfig;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* JADX INFO: loaded from: classes5.dex */
public final class fv5 implements HostnameVerifier {
    public static final fv5 a = new fv5();
    public static final Pattern b = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public static List<String> a(X509Certificate x509Certificate, int i) {
        Integer num;
        String str;
        ArrayList arrayList = new ArrayList();
        try {
            Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.EMPTY_LIST;
            }
            for (List<?> list : subjectAlternativeNames) {
                if (list != null && list.size() >= 2 && (num = (Integer) list.get(0)) != null && num.intValue() == i && (str = (String) list.get(1)) != null) {
                    arrayList.add(str);
                }
            }
            return arrayList;
        } catch (CertificateParsingException unused) {
            return Collections.EMPTY_LIST;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [int] */
    /* JADX WARN: Type inference failed for: r12v8 */
    public static boolean b(String str, X509Certificate x509Certificate) {
        boolean z;
        boolean z2;
        String str2;
        char[] cArr;
        char c;
        int i;
        char c2;
        boolean z3 = false;
        boolean z4 = true;
        if (b.matcher(str).matches()) {
            List<String> listA = a(x509Certificate, 7);
            int size = listA.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (str.equalsIgnoreCase(listA.get(i2))) {
                    return true;
                }
            }
            return false;
        }
        String strI = go2.i(str);
        char c3 = 2;
        List<String> listA2 = a(x509Certificate, 2);
        int size2 = listA2.size();
        int i3 = 0;
        boolean z5 = false;
        while (i3 < size2) {
            if (c(strI, listA2.get(i3))) {
                return true;
            }
            i3++;
            z5 = true;
        }
        if (!z5) {
            op2 op2Var = new op2(x509Certificate.getSubjectX500Principal());
            op2Var.c = 0;
            op2Var.d = 0;
            op2Var.e = 0;
            op2Var.f = 0;
            String str3 = op2Var.a;
            op2Var.g = str3.toCharArray();
            String strC = op2Var.c();
            String str4 = null;
            if (strC == null) {
                z = z3;
            } else {
                while (true) {
                    int i4 = op2Var.c;
                    int i5 = op2Var.b;
                    if (i4 == i5) {
                        break;
                    }
                    char c4 = op2Var.g[i4];
                    char c5 = c3;
                    z = z3;
                    if (c4 == '\"') {
                        z2 = z4;
                        int i6 = i4 + 1;
                        op2Var.c = i6;
                        op2Var.d = i6;
                        op2Var.e = i6;
                        while (true) {
                            int i7 = op2Var.c;
                            if (i7 == i5) {
                                ah.f("Unexpected end of DN: ".concat(str3));
                                return z;
                            }
                            char[] cArr2 = op2Var.g;
                            char c6 = cArr2[i7];
                            if (c6 == '\"') {
                                op2Var.c = i7 + 1;
                                while (true) {
                                    int i8 = op2Var.c;
                                    if (i8 >= i5 || op2Var.g[i8] != ' ') {
                                        break;
                                    }
                                    op2Var.c = i8 + 1;
                                }
                                char[] cArr3 = op2Var.g;
                                int i9 = op2Var.d;
                                str2 = new String(cArr3, i9, op2Var.e - i9);
                                break;
                            }
                            int i10 = op2Var.e;
                            if (c6 == '\\') {
                                cArr2[i10] = op2Var.b();
                            } else {
                                cArr2[i10] = c6;
                            }
                            op2Var.c++;
                            op2Var.e++;
                        }
                    } else if (c4 == '#') {
                        z2 = z4;
                        if (i4 + 4 >= i5) {
                            ah.f("Unexpected end of DN: ".concat(str3));
                            return z;
                        }
                        op2Var.d = i4;
                        op2Var.c = i4 + 1;
                        while (true) {
                            int i11 = op2Var.c;
                            if (i11 == i5 || (c = (cArr = op2Var.g)[i11]) == '+' || c == ',' || c == ';') {
                                op2Var.e = i11;
                                break;
                            }
                            if (c == ' ') {
                                op2Var.e = i11;
                                op2Var.c = i11 + 1;
                                while (true) {
                                    int i12 = op2Var.c;
                                    if (i12 >= i5 || op2Var.g[i12] != ' ') {
                                        break;
                                    }
                                    op2Var.c = i12 + 1;
                                }
                            } else {
                                if (c >= 'A' && c <= 'F') {
                                    cArr[i11] = (char) (c + ' ');
                                }
                                op2Var.c = i11 + 1;
                            }
                        }
                        int i13 = op2Var.e;
                        int i14 = op2Var.d;
                        int i15 = i13 - i14;
                        if (i15 < 5 || (i15 & 1) == 0) {
                            ah.f("Unexpected end of DN: ".concat(str3));
                            return z;
                        }
                        int i16 = i15 / 2;
                        byte[] bArr = new byte[i16];
                        int i17 = i14 + 1;
                        for (?? r12 = z; r12 < i16; r12++) {
                            bArr[r12] = (byte) op2Var.a(i17);
                            i17 += 2;
                        }
                        str2 = new String(op2Var.g, op2Var.d, i15);
                    } else if (c4 == '+' || c4 == ',' || c4 == ';') {
                        z2 = z4;
                        str2 = "";
                    } else {
                        op2Var.d = i4;
                        op2Var.e = i4;
                        while (true) {
                            int i18 = op2Var.c;
                            char[] cArr4 = op2Var.g;
                            if (i18 >= i5) {
                                int i19 = op2Var.d;
                                str2 = new String(cArr4, i19, op2Var.e - i19);
                                z2 = z4;
                            } else {
                                char c7 = cArr4[i18];
                                if (c7 != ' ') {
                                    if (c7 != ';') {
                                        if (c7 == '\\') {
                                            z2 = z4;
                                            int i20 = op2Var.e;
                                            op2Var.e = i20 + 1;
                                            cArr4[i20] = op2Var.b();
                                            op2Var.c++;
                                        } else if (c7 != '+' && c7 != ',') {
                                            int i21 = op2Var.e;
                                            z2 = z4;
                                            op2Var.e = i21 + 1;
                                            cArr4[i21] = c7;
                                            op2Var.c = i18 + 1;
                                        }
                                        z4 = z2;
                                    }
                                    z2 = z4;
                                    int i22 = op2Var.d;
                                    str2 = new String(cArr4, i22, op2Var.e - i22);
                                } else {
                                    z2 = z4;
                                    int i23 = op2Var.e;
                                    op2Var.f = i23;
                                    op2Var.c = i18 + 1;
                                    op2Var.e = i23 + 1;
                                    cArr4[i23] = ' ';
                                    while (true) {
                                        i = op2Var.c;
                                        if (i >= i5) {
                                            break;
                                        }
                                        char[] cArr5 = op2Var.g;
                                        if (cArr5[i] != ' ') {
                                            break;
                                        }
                                        int i24 = op2Var.e;
                                        op2Var.e = i24 + 1;
                                        cArr5[i24] = ' ';
                                        op2Var.c = i + 1;
                                    }
                                    if (i == i5 || (c2 = op2Var.g[i]) == ',' || c2 == '+' || c2 == ';') {
                                        char[] cArr6 = op2Var.g;
                                        int i25 = op2Var.d;
                                        str2 = new String(cArr6, i25, op2Var.f - i25);
                                    } else {
                                        z4 = z2;
                                    }
                                }
                            }
                        }
                    }
                    if ("cn".equalsIgnoreCase(strC)) {
                        str4 = str2;
                    } else {
                        int i26 = op2Var.c;
                        if (i26 < i5) {
                            char c8 = op2Var.g[i26];
                            if (c8 != ',' && c8 != ';' && c8 != '+') {
                                ah.f("Malformed DN: ".concat(str3));
                                return z;
                            }
                            op2Var.c = i26 + 1;
                            strC = op2Var.c();
                            if (strC == null) {
                                ah.f("Malformed DN: ".concat(str3));
                                return z;
                            }
                            c3 = c5;
                            z3 = z;
                            z4 = z2;
                        }
                    }
                }
                z = z3;
            }
            return str4 != null ? c(strI, str4) : z;
        }
        return false;
    }

    public static boolean c(String str, String str2) {
        if (str == null || str.length() == 0 || str.startsWith(".") || str.endsWith("..") || str2 == null || str2.length() == 0 || str2.startsWith(".") || str2.endsWith("..")) {
            return false;
        }
        if (!str.endsWith(".")) {
            str = str.concat(".");
        }
        if (!str2.endsWith(".")) {
            str2 = str2.concat(".");
        }
        String strI = go2.i(str2);
        if (!strI.contains(ProxyConfig.MATCH_ALL_SCHEMES)) {
            return str.equals(strI);
        }
        if (!strI.startsWith("*.") || strI.indexOf(42, 1) != -1 || str.length() < strI.length() || "*.".equals(strI)) {
            return false;
        }
        String strSubstring = strI.substring(1);
        if (!str.endsWith(strSubstring)) {
            return false;
        }
        int length = str.length() - strSubstring.length();
        return length <= 0 || str.lastIndexOf(46, length - 1) == -1;
    }

    @Override // javax.net.ssl.HostnameVerifier
    public final boolean verify(String str, SSLSession sSLSession) {
        int length = str.length();
        int i = 0;
        while (i < length && str.charAt(i) < 128) {
            i++;
        }
        int i2 = length;
        while (i < length) {
            char cCharAt = str.charAt(i);
            if (cCharAt >= 2048) {
                int length2 = str.length();
                int i3 = 0;
                while (i < length2) {
                    char cCharAt2 = str.charAt(i);
                    if (cCharAt2 < 2048) {
                        i3 += (127 - cCharAt2) >>> 31;
                    } else {
                        i3 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(str, i) == cCharAt2) {
                                fg.c(jh.b(i, "Unpaired surrogate at index "));
                                return false;
                            }
                            i++;
                        }
                    }
                    i++;
                }
                i2 += i3;
                break;
            }
            i2 += (127 - cCharAt) >>> 31;
            i++;
        }
        if (i2 < length) {
            h8.e(((long) i2) + 4294967296L);
            return false;
        }
        if (i2 == str.length()) {
            try {
                return b(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
            } catch (SSLException unused) {
            }
        }
        return false;
    }
}
