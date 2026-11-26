package defpackage;

import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.muxer.WebmConstants;
import androidx.webkit.ProxyConfig;
import java.io.EOFException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class fz3 {
    public static final char[] k = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final ArrayList f;
    public final List<String> g;
    public final String h;
    public final String i;
    public final boolean j;

    public static final class a {
        public String a;
        public String d;
        public final ArrayList f;
        public ArrayList g;
        public String h;
        public String b = "";
        public String c = "";
        public int e = -1;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f = arrayList;
            arrayList.add("");
        }

        public final fz3 a() {
            ArrayList arrayList;
            String str = this.a;
            if (str == null) {
                ah.f("scheme == null");
                return null;
            }
            String strC = b.c(0, 0, 7, this.b);
            String strC2 = b.c(0, 0, 7, this.c);
            String str2 = this.d;
            if (str2 == null) {
                ah.f("host == null");
                return null;
            }
            int iB = b();
            ArrayList arrayList2 = this.f;
            ArrayList arrayList3 = new ArrayList(kn1.q(arrayList2, 10));
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                arrayList3.add(b.c(0, 0, 7, (String) it.next()));
            }
            ArrayList<String> arrayList4 = this.g;
            if (arrayList4 != null) {
                arrayList = new ArrayList(kn1.q(arrayList4, 10));
                for (String str3 : arrayList4) {
                    arrayList.add(str3 != null ? b.c(0, 0, 3, str3) : null);
                }
            } else {
                arrayList = null;
            }
            String str4 = this.h;
            return new fz3(str, strC, strC2, str2, iB, arrayList3, arrayList, str4 != null ? b.c(0, 0, 7, str4) : null, toString());
        }

        public final int b() {
            int i = this.e;
            if (i != -1) {
                return i;
            }
            String str = this.a;
            str.getClass();
            if (str.equals(ProxyConfig.MATCH_HTTP)) {
                return 80;
            }
            return str.equals(ProxyConfig.MATCH_HTTPS) ? 443 : -1;
        }

        /* JADX WARN: Code duplicated, block: B:4:0x0026  */
        public final void c(fz3 fz3Var, String str) {
            int i;
            int i2;
            int iF;
            int i3;
            int i4;
            char cCharAt;
            str.getClass();
            byte[] bArr = gb9.a;
            int iM = gb9.m(0, str.length(), str);
            int iN = gb9.n(iM, str.length(), str);
            byte b = -1;
            if (iN - iM >= 2) {
                char cCharAt2 = str.charAt(iM);
                if ((aa4.f(cCharAt2, 97) >= 0 && aa4.f(cCharAt2, 122) <= 0) || (aa4.f(cCharAt2, 65) >= 0 && aa4.f(cCharAt2, 90) <= 0)) {
                    i = iM + 1;
                    while (true) {
                        if (i < iN) {
                            char cCharAt3 = str.charAt(i);
                            if (('a' > cCharAt3 || cCharAt3 >= '{') && (('A' > cCharAt3 || cCharAt3 >= '[') && !(('0' <= cCharAt3 && cCharAt3 < ':') || cCharAt3 == '+' || cCharAt3 == '-' || cCharAt3 == '.'))) {
                                if (cCharAt3 == ':') {
                                    break;
                                } else {
                                    break;
                                }
                            }
                            i++;
                        }
                        i = -1;
                        break;
                    }
                } else {
                    i = -1;
                    break;
                }
            } else {
                i = -1;
                break;
            }
            int i5 = 1;
            if (i != -1) {
                if (ra8.B(iM, str, "https:", true)) {
                    this.a = ProxyConfig.MATCH_HTTPS;
                    iM += 6;
                } else {
                    if (!ra8.B(iM, str, "http:", true)) {
                        throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, i) + '\'');
                    }
                    this.a = ProxyConfig.MATCH_HTTP;
                    iM += 5;
                }
            } else {
                if (fz3Var == null) {
                    fg.c("Expected URL scheme 'http' or 'https' but no scheme was found for ".concat(str.length() > 6 ? ua8.l0(6, str).concat("...") : str));
                    return;
                }
                this.a = fz3Var.a;
            }
            int i6 = iM;
            int i7 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= iN || !((cCharAt = str.charAt(i6)) == '\\' || cCharAt == '/')) {
                    break;
                }
                i7++;
                i6++;
                i5 = i2;
            }
            ArrayList arrayList = this.f;
            byte b2 = 35;
            if (i7 >= 2 || fz3Var == null || !aa4.e(fz3Var.a, this.a)) {
                int i8 = iM + i7;
                int i9 = 0;
                int i10 = 0;
                while (true) {
                    iF = gb9.f(i8, iN, str, "@/\\?#");
                    byte bCharAt = iF != iN ? str.charAt(iF) : b;
                    if (bCharAt == b || bCharAt == b2 || bCharAt == 47 || bCharAt == 92 || bCharAt == 63) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (i9 == 0) {
                            int iG = gb9.g(str, ':', i8, iF);
                            String strA = b.a(str, i8, iG, PsExtractor.VIDEO_STREAM_MASK, " \"':;<=>@[]^`{}|/\\?#");
                            if (i10 != 0) {
                                strA = me0.d(new StringBuilder(this.b), "%40", strA);
                            }
                            this.b = strA;
                            if (iG != iF) {
                                this.c = b.a(str, iG + 1, iF, PsExtractor.VIDEO_STREAM_MASK, " \"':;<=>@[]^`{}|/\\?#");
                                i9 = i2;
                            }
                            i10 = i2;
                        } else {
                            this.c += "%40" + b.a(str, i8, iF, PsExtractor.VIDEO_STREAM_MASK, " \"':;<=>@[]^`{}|/\\?#");
                        }
                        i8 = iF + 1;
                        b = -1;
                        b2 = 35;
                    }
                }
                int i11 = i8;
                while (true) {
                    if (i11 >= iF) {
                        i11 = iF;
                        break;
                    }
                    char cCharAt4 = str.charAt(i11);
                    if (cCharAt4 == '[') {
                        do {
                            i11++;
                            if (i11 >= iF) {
                                break;
                            }
                        } while (str.charAt(i11) != ']');
                    } else if (cCharAt4 == ':') {
                        break;
                    }
                    i11++;
                }
                int i12 = i11 + 1;
                if (i12 < iF) {
                    this.d = xz2.f(b.c(i8, i11, 4, str));
                    try {
                        i4 = Integer.parseInt(b.a(str, i12, iF, 248, ""));
                        if (i2 > i4 || i4 >= 65536) {
                            i4 = -1;
                        }
                    } catch (NumberFormatException unused) {
                    }
                    this.e = i4;
                    if (i4 == -1) {
                        w7.g(str.substring(i12, iF), "Invalid URL port: \"", 34);
                        return;
                    }
                } else {
                    this.d = xz2.f(b.c(i8, i11, 4, str));
                    String str2 = this.a;
                    str2.getClass();
                    if (str2.equals(ProxyConfig.MATCH_HTTP)) {
                        i3 = 80;
                    } else {
                        i3 = str2.equals(ProxyConfig.MATCH_HTTPS) ? 443 : -1;
                    }
                    this.e = i3;
                }
                if (this.d == null) {
                    w7.g(str.substring(i8, i11), "Invalid URL host: \"", 34);
                    return;
                }
                iM = iF;
            } else {
                this.b = fz3Var.e();
                this.c = fz3Var.a();
                this.d = fz3Var.d;
                this.e = fz3Var.e;
                arrayList.clear();
                arrayList.addAll(fz3Var.c());
                if (iM == iN || str.charAt(iM) == '#') {
                    String strD = fz3Var.d();
                    this.g = strD != null ? b.d(b.a(strD, 0, 0, 211, " \"'<>#")) : null;
                }
            }
            int iF2 = gb9.f(iM, iN, str, "?#");
            if (iM != iF2) {
                char cCharAt5 = str.charAt(iM);
                if (cCharAt5 == '/' || cCharAt5 == '\\') {
                    arrayList.clear();
                    arrayList.add("");
                    iM++;
                } else {
                    arrayList.set(arrayList.size() - 1, "");
                }
                while (iM < iF2) {
                    int iF3 = gb9.f(iM, iF2, str, "/\\");
                    boolean z = iF3 < iF2;
                    String strA2 = b.a(str, iM, iF3, PsExtractor.VIDEO_STREAM_MASK, " \"<>^`{}|/\\?#");
                    if (!strA2.equals(".") && !strA2.equalsIgnoreCase("%2e")) {
                        if (!strA2.equals("..") && !strA2.equalsIgnoreCase("%2e.") && !strA2.equalsIgnoreCase(".%2e") && !strA2.equalsIgnoreCase("%2e%2e")) {
                            if (((CharSequence) dd2.b(1, arrayList)).length() == 0) {
                                arrayList.set(arrayList.size() - 1, strA2);
                            } else {
                                arrayList.add(strA2);
                            }
                            if (z) {
                                arrayList.add("");
                            }
                        } else if (((String) arrayList.remove(arrayList.size() - 1)).length() != 0 || arrayList.isEmpty()) {
                            arrayList.add("");
                        } else {
                            arrayList.set(arrayList.size() - 1, "");
                        }
                    }
                    iM = z ? iF3 + 1 : iF3;
                }
            }
            if (iF2 < iN && str.charAt(iF2) == '?') {
                int iG2 = gb9.g(str, '#', iF2, iN);
                this.g = b.d(b.a(str, iF2 + 1, iG2, 208, " \"'<>#"));
                iF2 = iG2;
            }
            if (iF2 >= iN || str.charAt(iF2) != '#') {
                return;
            }
            this.h = b.a(str, iF2 + 1, iN, WebmConstants.MkvEbmlElement.PIXEL_WIDTH, "");
        }

        /* JADX WARN: Code duplicated, block: B:34:0x008b  */
        public final String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (this.b.length() > 0 || this.c.length() > 0) {
                sb.append(this.b);
                if (this.c.length() > 0) {
                    sb.append(':');
                    sb.append(this.c);
                }
                sb.append('@');
            }
            String str2 = this.d;
            if (str2 != null) {
                if (ta8.E(str2, ':')) {
                    sb.append('[');
                    sb.append(this.d);
                    sb.append(']');
                } else {
                    sb.append(this.d);
                }
            }
            int i = -1;
            if (this.e != -1 || this.a != null) {
                int iB = b();
                String str3 = this.a;
                if (str3 == null) {
                    sb.append(':');
                    sb.append(iB);
                } else {
                    if (str3.equals(ProxyConfig.MATCH_HTTP)) {
                        i = 80;
                    } else if (str3.equals(ProxyConfig.MATCH_HTTPS)) {
                        i = 443;
                    }
                    if (iB != i) {
                        sb.append(':');
                        sb.append(iB);
                    }
                }
            }
            ArrayList arrayList = this.f;
            arrayList.getClass();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append('/');
                sb.append((String) arrayList.get(i2));
            }
            if (this.g != null) {
                sb.append('?');
                ArrayList arrayList2 = this.g;
                arrayList2.getClass();
                b.e(arrayList2, sb);
            }
            if (this.h != null) {
                sb.append('#');
                sb.append(this.h);
            }
            return sb.toString();
        }
    }

    public static final class b {
        public static String a(String str, int i, int i2, int i3, String str2) throws EOFException {
            int i4 = (i3 & 1) != 0 ? 0 : i;
            int length = (i3 & 2) != 0 ? str.length() : i2;
            boolean z = (i3 & 8) == 0;
            boolean z2 = (i3 & 16) == 0;
            boolean z3 = (i3 & 32) == 0;
            boolean z4 = (i3 & 64) == 0;
            str.getClass();
            int iCharCount = i4;
            while (iCharCount < length) {
                int iCodePointAt = str.codePointAt(iCharCount);
                int i5 = 128;
                int i6 = 32;
                if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && !z4) || ta8.E(str2, (char) iCodePointAt) || ((iCodePointAt == 37 && (!z || (z2 && !b(iCharCount, length, str)))) || (iCodePointAt == 43 && z3)))) {
                    bu0 bu0Var = new bu0();
                    bu0Var.H0(i4, iCharCount, str);
                    bu0 bu0Var2 = null;
                    while (iCharCount < length) {
                        int iCodePointAt2 = str.codePointAt(iCharCount);
                        if (!z || (iCodePointAt2 != 9 && iCodePointAt2 != 10 && iCodePointAt2 != 12 && iCodePointAt2 != 13)) {
                            if (iCodePointAt2 == 43 && z3) {
                                bu0Var.I0(z ? "+" : "%2B");
                            } else if (iCodePointAt2 < i6 || iCodePointAt2 == 127 || ((iCodePointAt2 >= i5 && !z4) || ta8.E(str2, (char) iCodePointAt2) || (iCodePointAt2 == 37 && (!z || (z2 && !b(iCharCount, length, str)))))) {
                                if (bu0Var2 == null) {
                                    bu0Var2 = new bu0();
                                }
                                bu0Var2.J0(iCodePointAt2);
                                while (!bu0Var2.P()) {
                                    byte b = bu0Var2.readByte();
                                    bu0Var.A0(37);
                                    char[] cArr = fz3.k;
                                    bu0Var.A0(cArr[((b & 255) >> 4) & 15]);
                                    bu0Var.A0(cArr[b & 15]);
                                }
                            } else {
                                bu0Var.J0(iCodePointAt2);
                            }
                        }
                        iCharCount += Character.charCount(iCodePointAt2);
                        i5 = 128;
                        i6 = 32;
                    }
                    return bu0Var.q0();
                }
                iCharCount += Character.charCount(iCodePointAt);
            }
            return str.substring(i4, length);
        }

        public static boolean b(int i, int i2, String str) {
            int i3 = i + 2;
            return i3 < i2 && str.charAt(i) == '%' && gb9.q(str.charAt(i + 1)) != -1 && gb9.q(str.charAt(i3)) != -1;
        }

        public static String c(int i, int i2, int i3, String str) {
            int i4;
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            boolean z = (i3 & 4) == 0;
            str.getClass();
            int iCharCount = i;
            while (iCharCount < i2) {
                char cCharAt = str.charAt(iCharCount);
                if (cCharAt == '%' || (cCharAt == '+' && z)) {
                    bu0 bu0Var = new bu0();
                    bu0Var.H0(i, iCharCount, str);
                    while (iCharCount < i2) {
                        int iCodePointAt = str.codePointAt(iCharCount);
                        if (iCodePointAt == 37 && (i4 = iCharCount + 2) < i2) {
                            int iQ = gb9.q(str.charAt(iCharCount + 1));
                            int iQ2 = gb9.q(str.charAt(i4));
                            if (iQ == -1 || iQ2 == -1) {
                                bu0Var.J0(iCodePointAt);
                                iCharCount += Character.charCount(iCodePointAt);
                            } else {
                                bu0Var.A0((iQ << 4) + iQ2);
                                iCharCount = Character.charCount(iCodePointAt) + i4;
                            }
                        } else if (iCodePointAt == 43 && z) {
                            bu0Var.A0(32);
                            iCharCount++;
                        } else {
                            bu0Var.J0(iCodePointAt);
                            iCharCount += Character.charCount(iCodePointAt);
                        }
                    }
                    return bu0Var.q0();
                }
                iCharCount++;
            }
            return str.substring(i, i2);
        }

        public static ArrayList d(String str) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                int iJ = ta8.J('&', i, 4, str);
                if (iJ == -1) {
                    iJ = str.length();
                }
                int iJ2 = ta8.J('=', i, 4, str);
                if (iJ2 == -1 || iJ2 > iJ) {
                    arrayList.add(str.substring(i, iJ));
                    arrayList.add(null);
                } else {
                    arrayList.add(str.substring(i, iJ2));
                    arrayList.add(str.substring(iJ2 + 1, iJ));
                }
                i = iJ + 1;
            }
            return arrayList;
        }

        public static void e(List list, StringBuilder sb) {
            list.getClass();
            w74 w74VarM = kx6.m(2, kx6.n(0, list.size()));
            int i = w74VarM.b;
            int i2 = w74VarM.c;
            int i3 = w74VarM.d;
            if ((i3 <= 0 || i > i2) && (i3 >= 0 || i2 > i)) {
                return;
            }
            while (true) {
                String str = (String) list.get(i);
                String str2 = (String) list.get(i + 1);
                if (i > 0) {
                    sb.append('&');
                }
                sb.append(str);
                if (str2 != null) {
                    sb.append('=');
                    sb.append(str2);
                }
                if (i == i2) {
                    return;
                } else {
                    i += i3;
                }
            }
        }
    }

    public fz3(String str, String str2, String str3, String str4, int i, ArrayList arrayList, ArrayList arrayList2, String str5, String str6) {
        str.getClass();
        str4.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = i;
        this.f = arrayList;
        this.g = arrayList2;
        this.h = str5;
        this.i = str6;
        this.j = str.equals(ProxyConfig.MATCH_HTTPS);
    }

    public final String a() {
        if (this.c.length() == 0) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.i;
        return str.substring(ta8.J(':', length, 4, str) + 1, ta8.J('@', 0, 6, str));
    }

    public final String b() {
        int length = this.a.length() + 3;
        String str = this.i;
        int iJ = ta8.J('/', length, 4, str);
        return str.substring(iJ, gb9.f(iJ, str.length(), str, "?#"));
    }

    public final ArrayList c() {
        int length = this.a.length() + 3;
        String str = this.i;
        int iJ = ta8.J('/', length, 4, str);
        int iF = gb9.f(iJ, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (iJ < iF) {
            int i = iJ + 1;
            int iG = gb9.g(str, '/', i, iF);
            arrayList.add(str.substring(i, iG));
            iJ = iG;
        }
        return arrayList;
    }

    public final String d() {
        if (this.g == null) {
            return null;
        }
        String str = this.i;
        int iJ = ta8.J('?', 0, 6, str) + 1;
        return str.substring(iJ, gb9.g(str, '#', iJ, str.length()));
    }

    public final String e() {
        if (this.b.length() == 0) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.i;
        return str.substring(length, gb9.f(length, str.length(), str, ":@"));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof fz3) && ((fz3) obj).i.equals(this.i);
    }

    public final a f() {
        int i;
        a aVar = new a();
        String str = this.a;
        aVar.a = str;
        aVar.b = e();
        aVar.c = a();
        aVar.d = this.d;
        str.getClass();
        if (str.equals(ProxyConfig.MATCH_HTTP)) {
            i = 80;
        } else {
            i = str.equals(ProxyConfig.MATCH_HTTPS) ? 443 : -1;
        }
        int i2 = this.e;
        aVar.e = i2 != i ? i2 : -1;
        ArrayList arrayList = aVar.f;
        arrayList.clear();
        arrayList.addAll(c());
        String strD = d();
        String strSubstring = null;
        aVar.g = strD != null ? b.d(b.a(strD, 0, 0, 211, " \"'<>#")) : null;
        if (this.h != null) {
            String str2 = this.i;
            strSubstring = str2.substring(ta8.J('#', 0, 6, str2) + 1);
        }
        aVar.h = strSubstring;
        return aVar;
    }

    public final URI g() {
        String strReplaceAll;
        a aVarF = f();
        ArrayList arrayList = aVarF.f;
        String str = aVarF.d;
        if (str != null) {
            Pattern patternCompile = Pattern.compile("[\"<>^`{|}]");
            patternCompile.getClass();
            strReplaceAll = patternCompile.matcher(str).replaceAll("");
            strReplaceAll.getClass();
        } else {
            strReplaceAll = null;
        }
        aVarF.d = strReplaceAll;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.set(i, b.a((String) arrayList.get(i), 0, 0, 227, "[]"));
        }
        ArrayList arrayList2 = aVarF.g;
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                String str2 = (String) arrayList2.get(i2);
                arrayList2.set(i2, str2 != null ? b.a(str2, 0, 0, 195, "\\^`{|}") : null);
            }
        }
        String str3 = aVarF.h;
        aVarF.h = str3 != null ? b.a(str3, 0, 0, WebmConstants.MkvEbmlElement.SIMPLE_BLOCK, " \"#<>\\^`{|}") : null;
        String string = aVarF.toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                Pattern patternCompile2 = Pattern.compile("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]");
                patternCompile2.getClass();
                String strReplaceAll2 = patternCompile2.matcher(string).replaceAll("");
                strReplaceAll2.getClass();
                URI uriCreate = URI.create(strReplaceAll2);
                uriCreate.getClass();
                return uriCreate;
            } catch (Exception unused) {
                ti0.f(e);
                return null;
            }
        }
    }

    public final URL h() {
        try {
            return new URL(this.i);
        } catch (MalformedURLException e) {
            ti0.f(e);
            return null;
        }
    }

    public final int hashCode() {
        return this.i.hashCode();
    }

    public final String toString() {
        return this.i;
    }
}
