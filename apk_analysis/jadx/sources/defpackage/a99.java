package defpackage;

import com.google.android.gms.actions.SearchIntents;
import com.google.common.base.VerifyException;
import com.google.common.collect.j;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.MalformedInputException;
import java.nio.charset.StandardCharsets;
import java.util.BitSet;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class a99 {
    public static final BitSet h = BitSet.valueOf(new long[]{287948901175001088L});
    public static final BitSet i = BitSet.valueOf(new long[]{0, 576460743847706622L});
    public static final BitSet j = BitSet.valueOf(new long[]{288063250384289792L, 576460743847706622L});
    public static final BitSet k = BitSet.valueOf(new long[]{288054454291267584L, 5188146764422578174L});
    public static final BitSet l;
    public static final BitSet m;
    public static final BitSet n;
    public static final BitSet o;
    public static final BitSet p;
    public static final BitSet q;
    public static final char[] r;
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;

    public static final class a {
        public String a;
        public String b = "";
        public String c;
        public String d;
        public String e;
        public String f;
        public String g;

        public final a99 a() {
            o8.s(this.a != null, "Missing required scheme.");
            if (this.f == null) {
                o8.s(this.g == null, "Cannot set port without host.");
                o8.s(this.e == null, "Cannot set userInfo without host.");
            }
            return new a99(this);
        }

        public final void b(String str) {
            int i;
            String strF;
            int iIndexOf;
            if (str.startsWith("[") && str.endsWith("]") && (iIndexOf = str.indexOf(37)) > 0) {
                a99.d(rg.f(1, iIndexOf, str), "scope", a99.k, null);
            }
            y91.f fVar = p44.a;
            if (str.startsWith("[") && str.endsWith("]")) {
                strF = rg.f(1, 1, str);
                i = 16;
            } else {
                i = 4;
                strF = str;
            }
            byte[] bArrB = p44.b(strF, null);
            if (((bArrB == null || bArrB.length != i) ? null : p44.a(null, bArrB)) == null) {
                a99.d(str, "host", a99.l, null);
            }
            this.f = str;
        }

        public final void c(String str) {
            if (!str.isEmpty()) {
                if (a99.i.get(str.charAt(0))) {
                    for (int i = 0; i < str.length(); i++) {
                        if (!a99.j.get(str.charAt(i))) {
                            fg.c(jh.b(i, "Invalid character in scheme at index "));
                            return;
                        }
                    }
                    this.a = str;
                    return;
                }
            }
            fg.c("Scheme must start with an alphabetic char");
        }
    }

    static {
        BitSet.valueOf(new long[]{-8935000888854970368L, 671088641});
        BitSet.valueOf(new long[]{2882338748320710656L});
        BitSet.valueOf(new long[]{-6052662140534259712L, 671088641});
        l = BitSet.valueOf(new long[]{3170393202611978240L, 5188146764422578174L});
        m = BitSet.valueOf(new long[]{3458623578763689984L, 5188146764422578174L});
        n = BitSet.valueOf(new long[]{3458623578763689984L, 5188146764422578175L});
        o = BitSet.valueOf(new long[]{3458764316252045312L, 5188146764422578175L});
        BitSet bitSetValueOf = BitSet.valueOf(new long[]{-5764607720602730496L, 5188146764422578175L});
        p = bitSetValueOf;
        q = bitSetValueOf;
        r = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public a99(a aVar) {
        String str = aVar.a;
        o8.l(str, "scheme");
        this.a = str;
        this.b = aVar.e;
        String str2 = aVar.f;
        this.c = str2;
        this.d = aVar.g;
        String str3 = aVar.b;
        this.e = str3;
        this.f = aVar.c;
        this.g = aVar.d;
        if (str2 == null) {
            if (str3.startsWith("//")) {
                fg.c("No authority -- Path cannot start with '//'");
                throw null;
            }
        } else {
            if (str3.isEmpty() || str3.startsWith("/")) {
                return;
            }
            fg.c("Has authority -- Non-empty path must start with '/'");
            throw null;
        }
    }

    public static a99 b(String str) {
        int i2;
        a aVar = new a();
        int length = str.length();
        int i3 = 0;
        while (true) {
            i2 = -1;
            if (i3 < length) {
                char cCharAt = str.charAt(i3);
                if (cCharAt == ':') {
                    break;
                }
                if (cCharAt != '/' && cCharAt != '?' && cCharAt != '#') {
                    i3++;
                }
            }
            i3 = -1;
            break;
        }
        if (i3 < 0) {
            fg.c("Missing required scheme.");
            return null;
        }
        aVar.c(str.substring(0, i3));
        int i4 = i3 + 1;
        int i5 = i3 + 2;
        if (i5 < length && str.charAt(i4) == '/' && str.charAt(i5) == '/') {
            int i6 = i3 + 3;
            i4 = i6;
            while (i4 < length) {
                char cCharAt2 = str.charAt(i4);
                if (cCharAt2 == '/' || cCharAt2 == '?' || cCharAt2 == '#') {
                    break;
                }
                i4++;
            }
            String strSubstring = str.substring(i6, i4);
            int iIndexOf = strSubstring.indexOf(64);
            if (iIndexOf >= 0) {
                String strSubstring2 = strSubstring.substring(0, iIndexOf);
                d(strSubstring2, "userInfo", m, null);
                aVar.e = strSubstring2;
            } else {
                aVar.e = null;
            }
            int i7 = iIndexOf >= 0 ? iIndexOf + 1 : 0;
            for (int length2 = strSubstring.length() - 1; length2 >= i7; length2--) {
                char cCharAt3 = strSubstring.charAt(length2);
                if (cCharAt3 == ':') {
                    i2 = length2;
                    break;
                }
                if (cCharAt3 == ']' || !h.get(cCharAt3)) {
                    break;
                }
            }
            if (i2 < 0) {
                aVar.b(strSubstring.substring(i7));
                aVar.g = null;
            } else {
                aVar.b(strSubstring.substring(i7, i2));
                String strSubstring3 = strSubstring.substring(i2 + 1);
                if (!strSubstring3.isEmpty()) {
                    try {
                        Integer.parseInt(strSubstring3);
                    } catch (NumberFormatException e) {
                        cc.e("Invalid port", e);
                        return null;
                    }
                }
                aVar.g = strSubstring3;
            }
        }
        int i8 = i4;
        while (i8 < length) {
            char cCharAt4 = str.charAt(i8);
            if (cCharAt4 == '?' || cCharAt4 == '#') {
                break;
            }
            i8++;
        }
        String strSubstring4 = str.substring(i4, i8);
        c(strSubstring4, null);
        aVar.b = strSubstring4;
        if (i8 < length && str.charAt(i8) == '?') {
            int i9 = i8 + 1;
            int i10 = i9;
            while (i10 < length && str.charAt(i10) != '#') {
                i10++;
            }
            String strSubstring5 = str.substring(i9, i10);
            d(strSubstring5, SearchIntents.EXTRA_QUERY, p, null);
            aVar.c = strSubstring5;
            i8 = i10;
        }
        if (i8 < length && str.charAt(i8) == '#') {
            String strSubstring6 = str.substring(i8 + 1);
            d(strSubstring6, "fragment", q, null);
            aVar.d = strSubstring6;
        }
        return aVar.a();
    }

    public static void c(String str, j.a<String> aVar) {
        String strSubstring;
        int length;
        int iStartsWith = str.startsWith("/");
        while (iStartsWith < str.length()) {
            int iIndexOf = str.indexOf(47, iStartsWith);
            if (iIndexOf >= 0) {
                strSubstring = str.substring(iStartsWith, iIndexOf);
                length = iIndexOf + 1;
            } else {
                strSubstring = str.substring(iStartsWith);
                length = str.length();
            }
            if (aVar != null) {
                aVar.c(e(strSubstring));
            } else {
                d(strSubstring, "path segment", n, null);
            }
            iStartsWith = length;
        }
        if (!str.endsWith("/") || aVar == null) {
            return;
        }
        aVar.c("");
    }

    public static void d(CharSequence charSequence, String str, BitSet bitSet, ByteBuffer byteBuffer) {
        int i2 = 0;
        while (i2 < charSequence.length()) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt == '%') {
                int i3 = i2 + 2;
                if (i3 >= charSequence.length()) {
                    hm.f(charSequence, ng.e(i2, "Invalid percent-encoding at index ", " of ", str, ": "));
                    return;
                }
                int iDigit = Character.digit(charSequence.charAt(i2 + 1), 16);
                int iDigit2 = Character.digit(charSequence.charAt(i3), 16);
                if (iDigit == -1 || iDigit2 == -1) {
                    hm.f(charSequence, mz0.a(i2, "Invalid hex digit in ", str, " at index ", " of: "));
                    return;
                } else {
                    if (byteBuffer != null) {
                        byteBuffer.put((byte) ((iDigit << 4) | iDigit2));
                    }
                    i2 = i3;
                }
            } else {
                if (bitSet != null && !bitSet.get(cCharAt)) {
                    throw new IllegalArgumentException("Invalid character in " + str + " at index " + i2);
                }
                if (byteBuffer != null) {
                    byteBuffer.put((byte) cCharAt);
                }
            }
            i2++;
        }
    }

    public static String e(String str) {
        if (str == null || str.indexOf(37) == -1) {
            return str;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(str.length());
        d(str, "input", null, byteBufferAllocate);
        byteBufferAllocate.flip();
        try {
            CharsetDecoder charsetDecoderNewDecoder = StandardCharsets.UTF_8.newDecoder();
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            return charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(byteBufferAllocate).toString();
        } catch (CharacterCodingException e) {
            throw new VerifyException(e);
        }
    }

    public static String f(String str, BitSet bitSet) {
        if (str == null) {
            return null;
        }
        CharsetEncoder charsetEncoderNewEncoder = StandardCharsets.UTF_8.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        try {
            ByteBuffer byteBufferEncode = charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).encode(CharBuffer.wrap(str));
            StringBuilder sb = new StringBuilder();
            while (byteBufferEncode.hasRemaining()) {
                byte b = byteBufferEncode.get();
                int i2 = b & 255;
                if (bitSet.get(i2)) {
                    sb.append((char) i2);
                } else {
                    sb.append('%');
                    char[] cArr = r;
                    sb.append(cArr[(b & 240) >> 4]);
                    sb.append(cArr[b & 15]);
                }
            }
            return sb.toString();
        } catch (MalformedInputException e) {
            cc.e("Malformed input", e);
            return null;
        } catch (CharacterCodingException e2) {
            throw new VerifyException(e2);
        }
    }

    public final void a(StringBuilder sb) {
        String str = this.b;
        if (str != null) {
            sb.append(str);
            sb.append('@');
        }
        String str2 = this.c;
        if (str2 != null) {
            sb.append(str2);
        }
        String str3 = this.d;
        if (str3 != null) {
            sb.append(':');
            sb.append(str3);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a99)) {
            return false;
        }
        a99 a99Var = (a99) obj;
        return Objects.equals(this.a, a99Var.a) && Objects.equals(this.b, a99Var.b) && Objects.equals(this.c, a99Var.c) && Objects.equals(this.d, a99Var.d) && Objects.equals(this.e, a99Var.e) && Objects.equals(this.f, a99Var.f) && Objects.equals(this.g, a99Var.g);
    }

    public final int hashCode() {
        return Objects.hash(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append(':');
        if (this.c != null) {
            sb.append("//");
            a(sb);
        }
        sb.append(this.e);
        String str = this.f;
        if (str != null) {
            sb.append('?');
            sb.append(str);
        }
        String str2 = this.g;
        if (str2 != null) {
            sb.append('#');
            sb.append(str2);
        }
        return sb.toString();
    }
}
