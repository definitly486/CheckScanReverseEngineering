package com.google.android.gms.common.server.response;

import android.util.Log;
import androidx.media3.common.C;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import defpackage.ag;
import defpackage.xp;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

/* JADX INFO: loaded from: classes4.dex */
public class FastParser<T extends FastJsonResponse> {
    public static final char[] g = {'u', 'l', 'l'};
    public static final char[] h = {'r', 'u', 'e'};
    public static final char[] i = {'r', 'u', 'e', '\"'};
    public static final char[] j = {'a', 'l', 's', 'e'};
    public static final char[] k = {'a', 'l', 's', 'e', '\"'};
    public static final char[] l = {'\n'};
    public static final a m = new a();
    public static final b n = new b();
    public static final c o = new c();
    public static final d p = new d();
    public static final e q = new e();
    public static final f r = new f();
    public static final g s = new g();
    public static final h t = new h();
    public final char[] a = new char[1];
    public final char[] b = new char[32];
    public final char[] c = new char[1024];
    public final StringBuilder d = new StringBuilder(32);
    public final StringBuilder e = new StringBuilder(1024);
    public final Stack f = new Stack();

    public static final String a(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) throws ParseException, IOException {
        sb.setLength(0);
        bufferedReader.mark(cArr.length);
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int i2 = bufferedReader.read(cArr);
            if (i2 == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            int i3 = 0;
            while (i3 < i2) {
                char c = cArr[i3];
                if (Character.isISOControl(c) && (cArr2 == null || cArr2[0] != c)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                int i4 = i3 + 1;
                if (c != '\"') {
                    if (c == '\\') {
                        z = !z;
                        z2 = true;
                    }
                    i3 = i4;
                } else if (!z) {
                    sb.append(cArr, 0, i3);
                    bufferedReader.reset();
                    bufferedReader.skip(i4);
                    return z2 ? JsonUtils.unescapeString(sb.toString()) : sb.toString();
                }
                z = false;
                i3 = i4;
            }
            sb.append(cArr, 0, i2);
            bufferedReader.mark(cArr.length);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean b(BufferedReader bufferedReader, FastJsonResponse fastJsonResponse) throws ParseException, IOException {
        HashMap map;
        boolean z = true;
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        String strC = c(bufferedReader);
        if (strC == null) {
            n(1);
            return false;
        }
        while (strC != null) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(strC);
            if (field == null) {
                strC = d(bufferedReader);
            } else {
                String str = field.g;
                boolean z2 = field.d;
                Stack stack = this.f;
                stack.push(4);
                int i2 = field.c;
                char[] cArr = l;
                StringBuilder sb = this.e;
                char[] cArr2 = this.c;
                StringBuilder sb2 = this.d;
                char[] cArr3 = this.b;
                Map<String, FastJsonResponse.Field<?, ?>> map2 = fieldMappings;
                char[] cArr4 = g;
                switch (i2) {
                    case 0:
                        if (!z2) {
                            fastJsonResponse.zaa(field, g(bufferedReader));
                        } else {
                            fastJsonResponse.zab(field, e(bufferedReader, m));
                        }
                        break;
                    case 1:
                        if (!z2) {
                            int iL = l(bufferedReader, cArr2);
                            fastJsonResponse.zac(field, iL == 0 ? null : new BigInteger(new String(cArr2, 0, iL)));
                        } else {
                            fastJsonResponse.zad(field, e(bufferedReader, s));
                        }
                        break;
                    case 2:
                        if (!z2) {
                            fastJsonResponse.zae(field, h(bufferedReader));
                        } else {
                            fastJsonResponse.zaf(field, e(bufferedReader, n));
                        }
                        break;
                    case 3:
                        if (!z2) {
                            int iL2 = l(bufferedReader, cArr2);
                            fastJsonResponse.zag(field, iL2 == 0 ? 0.0f : Float.parseFloat(new String(cArr2, 0, iL2)));
                        } else {
                            fastJsonResponse.zah(field, e(bufferedReader, o));
                        }
                        break;
                    case 4:
                        if (!z2) {
                            int iL3 = l(bufferedReader, cArr2);
                            fastJsonResponse.zai(field, iL3 == 0 ? 0.0d : Double.parseDouble(new String(cArr2, 0, iL3)));
                        } else {
                            fastJsonResponse.zaj(field, e(bufferedReader, p));
                        }
                        break;
                    case 5:
                        if (!z2) {
                            int iL4 = l(bufferedReader, cArr2);
                            fastJsonResponse.zak(field, iL4 == 0 ? null : new BigDecimal(new String(cArr2, 0, iL4)));
                        } else {
                            fastJsonResponse.zal(field, e(bufferedReader, t));
                        }
                        break;
                    case 6:
                        if (!z2) {
                            fastJsonResponse.zam(field, i(bufferedReader, false));
                        } else {
                            fastJsonResponse.zan(field, e(bufferedReader, q));
                        }
                        break;
                    case 7:
                        if (!z2) {
                            fastJsonResponse.zao(field, f(bufferedReader, cArr3, sb2, null));
                        } else {
                            fastJsonResponse.zap(field, e(bufferedReader, r));
                        }
                        break;
                    case 8:
                        fastJsonResponse.zaq(field, Base64Utils.decode(f(bufferedReader, cArr2, sb, cArr)));
                        break;
                    case 9:
                        fastJsonResponse.zaq(field, Base64Utils.decodeUrlSafe(f(bufferedReader, cArr2, sb, cArr)));
                        break;
                    case 10:
                        char cK = k(bufferedReader);
                        if (cK == 'n') {
                            m(bufferedReader, cArr4);
                            map = null;
                        } else {
                            if (cK != '{') {
                                throw new ParseException("Expected start of a map object");
                            }
                            stack.push(1);
                            map = new HashMap();
                            while (true) {
                                char cK2 = k(bufferedReader);
                                if (cK2 == 0) {
                                    throw new ParseException("Unexpected EOF");
                                }
                                if (cK2 == '\"') {
                                    String strA = a(bufferedReader, cArr3, sb2, null);
                                    if (k(bufferedReader) != ':') {
                                        throw new ParseException("No map value found for key ".concat(String.valueOf(strA)));
                                    }
                                    if (k(bufferedReader) != '\"') {
                                        throw new ParseException("Expected String value for key ".concat(String.valueOf(strA)));
                                    }
                                    map.put(strA, a(bufferedReader, cArr3, sb2, null));
                                    char cK3 = k(bufferedReader);
                                    if (cK3 != ',') {
                                        if (cK3 != '}') {
                                            throw new ParseException(xp.e(new StringBuilder(String.valueOf(cK3).length() + 47), "Unexpected character while parsing string map: ", cK3));
                                        }
                                        n(1);
                                    }
                                } else if (cK2 == '}') {
                                    n(1);
                                }
                            }
                        }
                        fastJsonResponse.zar(field, map);
                        break;
                    case 11:
                        if (z2) {
                            char cK4 = k(bufferedReader);
                            if (cK4 == 'n') {
                                m(bufferedReader, cArr4);
                                fastJsonResponse.addConcreteTypeArrayInternal(field, str, null);
                            } else {
                                stack.push(5);
                                if (cK4 != '[') {
                                    throw new ParseException("Expected array start");
                                }
                                fastJsonResponse.addConcreteTypeArrayInternal(field, str, j(bufferedReader, field));
                            }
                        } else {
                            char cK5 = k(bufferedReader);
                            if (cK5 == 'n') {
                                m(bufferedReader, cArr4);
                                fastJsonResponse.addConcreteTypeInternal(field, str, null);
                            } else {
                                stack.push(1);
                                if (cK5 != '{') {
                                    throw new ParseException("Expected start of object");
                                }
                                try {
                                    FastJsonResponse fastJsonResponseZaf = field.zaf();
                                    b(bufferedReader, fastJsonResponseZaf);
                                    fastJsonResponse.addConcreteTypeInternal(field, str, fastJsonResponseZaf);
                                } catch (IllegalAccessException e) {
                                    throw new ParseException("Error instantiating inner object", e);
                                } catch (InstantiationException e2) {
                                    throw new ParseException("Error instantiating inner object", e2);
                                }
                            }
                        }
                        break;
                    default:
                        throw new ParseException(ag.d(new StringBuilder(String.valueOf(i2).length() + 19), "Invalid field type ", i2));
                }
                n(4);
                n(2);
                char cK6 = k(bufferedReader);
                if (cK6 == ',') {
                    strC = c(bufferedReader);
                } else {
                    if (cK6 != '}') {
                        throw new ParseException(xp.e(new StringBuilder(String.valueOf(cK6).length() + 54), "Expected end of object or field separator, but found: ", cK6));
                    }
                    strC = null;
                }
                fieldMappings = map2;
                z = true;
            }
        }
        n(z ? 1 : 0);
        return z;
    }

    public final String c(BufferedReader bufferedReader) throws ParseException, IOException {
        Stack stack = this.f;
        stack.push(2);
        char cK = k(bufferedReader);
        if (cK == '\"') {
            stack.push(3);
            String strA = a(bufferedReader, this.b, this.d, null);
            n(3);
            if (k(bufferedReader) == ':') {
                return strA;
            }
            throw new ParseException("Expected key/value separator");
        }
        if (cK != ']') {
            if (cK != '}') {
                throw new ParseException(xp.e(new StringBuilder(String.valueOf(cK).length() + 18), "Unexpected token: ", cK));
            }
            n(2);
            return null;
        }
        n(2);
        n(1);
        n(5);
        return null;
    }

    public final String d(BufferedReader bufferedReader) throws ParseException, IOException {
        bufferedReader.mark(1024);
        char cK = k(bufferedReader);
        int i2 = 1;
        if (cK == '\"') {
            char[] cArr = this.a;
            if (bufferedReader.read(cArr) == -1) {
                throw new ParseException("Unexpected EOF while parsing string");
            }
            char c = cArr[0];
            boolean z = false;
            while (true) {
                if (c == '\"') {
                    if (!z) {
                        break;
                    }
                    z = true;
                    c = '\"';
                }
                z = c == '\\' ? !z : false;
                if (bufferedReader.read(cArr) == -1) {
                    throw new ParseException("Unexpected EOF while parsing string");
                }
                c = cArr[0];
                if (Character.isISOControl(c)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
            }
        } else {
            if (cK == ',') {
                throw new ParseException("Missing value");
            }
            Stack stack = this.f;
            if (cK == '[') {
                stack.push(5);
                bufferedReader.mark(32);
                if (k(bufferedReader) == ']') {
                    n(5);
                } else {
                    bufferedReader.reset();
                    boolean z2 = false;
                    boolean z3 = false;
                    while (i2 > 0) {
                        char cK2 = k(bufferedReader);
                        if (cK2 == 0) {
                            throw new ParseException("Unexpected EOF while parsing array");
                        }
                        if (Character.isISOControl(cK2)) {
                            throw new ParseException("Unexpected control character while reading array");
                        }
                        if (cK2 == '\"') {
                            if (!z3) {
                                z2 = !z2;
                            }
                            cK2 = '\"';
                        }
                        if (cK2 == '[') {
                            if (!z2) {
                                i2++;
                            }
                            cK2 = '[';
                        }
                        if (cK2 == ']' && !z2) {
                            i2--;
                        }
                        z3 = (cK2 == '\\' && z2) ? !z3 : false;
                    }
                    n(5);
                }
            } else if (cK != '{') {
                bufferedReader.reset();
                l(bufferedReader, this.c);
            } else {
                stack.push(1);
                bufferedReader.mark(32);
                char cK3 = k(bufferedReader);
                if (cK3 == '}') {
                    n(1);
                } else {
                    if (cK3 != '\"') {
                        StringBuilder sb = new StringBuilder(String.valueOf(cK3).length() + 17);
                        sb.append("Unexpected token ");
                        sb.append(cK3);
                        throw new ParseException(sb.toString());
                    }
                    bufferedReader.reset();
                    c(bufferedReader);
                    while (d(bufferedReader) != null) {
                    }
                    n(1);
                }
            }
        }
        char cK4 = k(bufferedReader);
        if (cK4 == ',') {
            n(2);
            return c(bufferedReader);
        }
        if (cK4 == '}') {
            n(2);
            return null;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(cK4).length() + 17);
        sb2.append("Unexpected token ");
        sb2.append(cK4);
        throw new ParseException(sb2.toString());
    }

    public final ArrayList e(BufferedReader bufferedReader, i iVar) throws ParseException, IOException {
        char cK = k(bufferedReader);
        if (cK == 'n') {
            m(bufferedReader, g);
            return null;
        }
        if (cK != '[') {
            throw new ParseException("Expected start of array");
        }
        this.f.push(5);
        ArrayList arrayList = new ArrayList();
        while (true) {
            bufferedReader.mark(1024);
            char cK2 = k(bufferedReader);
            if (cK2 == 0) {
                throw new ParseException("Unexpected EOF");
            }
            if (cK2 != ',') {
                if (cK2 == ']') {
                    n(5);
                    return arrayList;
                }
                bufferedReader.reset();
                arrayList.add(iVar.a(this, bufferedReader));
            }
        }
    }

    public final String f(BufferedReader bufferedReader, char[] cArr, StringBuilder sb, char[] cArr2) throws ParseException, IOException {
        char cK = k(bufferedReader);
        if (cK == '\"') {
            return a(bufferedReader, cArr, sb, cArr2);
        }
        if (cK != 'n') {
            throw new ParseException("Expected string");
        }
        m(bufferedReader, g);
        return null;
    }

    public final int g(BufferedReader bufferedReader) throws ParseException {
        int i2;
        int i3;
        char[] cArr = this.c;
        int iL = l(bufferedReader, cArr);
        if (iL == 0) {
            return 0;
        }
        if (iL <= 0) {
            throw new ParseException("No number to parse");
        }
        char c = cArr[0];
        int i4 = c == '-' ? Integer.MIN_VALUE : C.RATE_UNSET_INT;
        int i5 = c == '-' ? 1 : 0;
        if (i5 < iL) {
            i3 = i5 + 1;
            int iDigit = Character.digit(cArr[i5], 10);
            if (iDigit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            i2 = -iDigit;
        } else {
            i2 = 0;
            i3 = i5;
        }
        while (i3 < iL) {
            int i6 = i3 + 1;
            int iDigit2 = Character.digit(cArr[i3], 10);
            if (iDigit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (i2 < -214748364) {
                throw new ParseException("Number too large");
            }
            int i7 = i2 * 10;
            if (i7 < i4 + iDigit2) {
                throw new ParseException("Number too large");
            }
            i2 = i7 - iDigit2;
            i3 = i6;
        }
        if (i5 == 0) {
            return -i2;
        }
        if (i3 > 1) {
            return i2;
        }
        throw new ParseException("No digits to parse");
    }

    public final long h(BufferedReader bufferedReader) throws ParseException {
        long j2;
        int i2;
        char[] cArr = this.c;
        int iL = l(bufferedReader, cArr);
        if (iL == 0) {
            return 0L;
        }
        if (iL <= 0) {
            throw new ParseException("No number to parse");
        }
        char c = cArr[0];
        long j3 = c == '-' ? Long.MIN_VALUE : C.TIME_UNSET;
        int i3 = c == '-' ? 1 : 0;
        if (i3 < iL) {
            i2 = i3 + 1;
            int iDigit = Character.digit(cArr[i3], 10);
            if (iDigit < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            j2 = -iDigit;
        } else {
            j2 = 0;
            i2 = i3;
        }
        while (i2 < iL) {
            int i4 = i2 + 1;
            int iDigit2 = Character.digit(cArr[i2], 10);
            if (iDigit2 < 0) {
                throw new ParseException("Unexpected non-digit character");
            }
            if (j2 < -922337203685477580L) {
                throw new ParseException("Number too large");
            }
            long j4 = j2 * 10;
            long j5 = iDigit2;
            if (j4 < j3 + j5) {
                throw new ParseException("Number too large");
            }
            j2 = j4 - j5;
            i2 = i4;
        }
        if (i3 == 0) {
            return -j2;
        }
        if (i2 > 1) {
            return j2;
        }
        throw new ParseException("No digits to parse");
    }

    public final boolean i(BufferedReader bufferedReader, boolean z) throws ParseException, IOException {
        char cK = k(bufferedReader);
        if (cK == '\"') {
            if (z) {
                throw new ParseException("No boolean value found in string");
            }
            return i(bufferedReader, true);
        }
        if (cK == 'f') {
            m(bufferedReader, z ? k : j);
            return false;
        }
        if (cK == 'n') {
            m(bufferedReader, g);
            return false;
        }
        if (cK != 't') {
            throw new ParseException(xp.e(new StringBuilder(String.valueOf(cK).length() + 18), "Unexpected token: ", cK));
        }
        m(bufferedReader, z ? i : h);
        return true;
    }

    public final ArrayList j(BufferedReader bufferedReader, FastJsonResponse.Field field) throws ParseException, IOException {
        ArrayList arrayList = new ArrayList();
        char cK = k(bufferedReader);
        if (cK == ']') {
            n(5);
            return arrayList;
        }
        if (cK == 'n') {
            m(bufferedReader, g);
            n(5);
            return null;
        }
        if (cK != '{') {
            StringBuilder sb = new StringBuilder(String.valueOf(cK).length() + 18);
            sb.append("Unexpected token: ");
            sb.append(cK);
            throw new ParseException(sb.toString());
        }
        Stack stack = this.f;
        stack.push(1);
        while (true) {
            try {
                FastJsonResponse fastJsonResponseZaf = field.zaf();
                if (!b(bufferedReader, fastJsonResponseZaf)) {
                    return arrayList;
                }
                arrayList.add(fastJsonResponseZaf);
                char cK2 = k(bufferedReader);
                if (cK2 != ',') {
                    if (cK2 == ']') {
                        n(5);
                        return arrayList;
                    }
                    StringBuilder sb2 = new StringBuilder(String.valueOf(cK2).length() + 18);
                    sb2.append("Unexpected token: ");
                    sb2.append(cK2);
                    throw new ParseException(sb2.toString());
                }
                if (k(bufferedReader) != '{') {
                    throw new ParseException("Expected start of next object in array");
                }
                stack.push(1);
            } catch (IllegalAccessException e) {
                throw new ParseException("Error instantiating inner object", e);
            } catch (InstantiationException e2) {
                throw new ParseException("Error instantiating inner object", e2);
            }
        }
    }

    public final char k(BufferedReader bufferedReader) {
        char[] cArr = this.a;
        if (bufferedReader.read(cArr) != -1) {
            while (Character.isWhitespace(cArr[0])) {
                if (bufferedReader.read(cArr) == -1) {
                }
            }
            return cArr[0];
        }
        return (char) 0;
    }

    public final int l(BufferedReader bufferedReader, char[] cArr) {
        int i2;
        char cK = k(bufferedReader);
        if (cK == 0) {
            throw new ParseException("Unexpected EOF");
        }
        if (cK == ',') {
            throw new ParseException("Missing value");
        }
        if (cK == 'n') {
            m(bufferedReader, g);
            return 0;
        }
        bufferedReader.mark(1024);
        if (cK == '\"') {
            i2 = 0;
            boolean z = false;
            while (i2 < 1024 && bufferedReader.read(cArr, i2, 1) != -1) {
                char c = cArr[i2];
                if (Character.isISOControl(c)) {
                    throw new ParseException("Unexpected control character while reading string");
                }
                int i3 = i2 + 1;
                if (c != '\"') {
                    if (c == '\\') {
                        z = !z;
                    }
                    i2 = i3;
                } else if (!z) {
                    bufferedReader.reset();
                    bufferedReader.skip(i3);
                    return i2;
                }
                z = false;
                i2 = i3;
            }
        } else {
            cArr[0] = cK;
            i2 = 1;
            while (i2 < 1024 && bufferedReader.read(cArr, i2, 1) != -1) {
                char c2 = cArr[i2];
                if (c2 == '}' || c2 == ',' || Character.isWhitespace(c2) || cArr[i2] == ']') {
                    bufferedReader.reset();
                    bufferedReader.skip(i2 - 1);
                    cArr[i2] = 0;
                    return i2;
                }
                i2++;
            }
        }
        if (i2 == 1024) {
            throw new ParseException("Absurdly long value");
        }
        throw new ParseException("Unexpected EOF");
    }

    public final void m(BufferedReader bufferedReader, char[] cArr) throws ParseException, IOException {
        int i2 = 0;
        while (true) {
            int length = cArr.length;
            if (i2 >= length) {
                return;
            }
            char[] cArr2 = this.b;
            int i3 = bufferedReader.read(cArr2, 0, length - i2);
            if (i3 == -1) {
                throw new ParseException("Unexpected EOF");
            }
            for (int i4 = 0; i4 < i3; i4++) {
                if (cArr[i4 + i2] != cArr2[i4]) {
                    throw new ParseException("Unexpected character");
                }
            }
            i2 += i3;
        }
    }

    public final void n(int i2) throws ParseException {
        Stack stack = this.f;
        if (stack.isEmpty()) {
            StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 35);
            sb.append("Expected state ");
            sb.append(i2);
            sb.append(" but had empty stack");
            throw new ParseException(sb.toString());
        }
        int iIntValue = ((Integer) stack.pop()).intValue();
        if (iIntValue == i2) {
            return;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(i2).length() + 24 + String.valueOf(iIntValue).length());
        sb2.append("Expected state ");
        sb2.append(i2);
        sb2.append(" but had ");
        sb2.append(iIntValue);
        throw new ParseException(sb2.toString());
    }

    public void parse(InputStream inputStream, T t2) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), 1024);
        try {
            try {
                Stack stack = this.f;
                stack.push(0);
                char cK = k(bufferedReader);
                if (cK == 0) {
                    throw new ParseException("No data to parse");
                }
                if (cK == '[') {
                    stack.push(5);
                    Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = t2.getFieldMappings();
                    if (fieldMappings.size() != 1) {
                        throw new ParseException("Object array response class must have a single Field");
                    }
                    FastJsonResponse.Field<?, ?> value = fieldMappings.entrySet().iterator().next().getValue();
                    t2.addConcreteTypeArrayInternal(value, value.g, j(bufferedReader, value));
                } else {
                    if (cK != '{') {
                        StringBuilder sb = new StringBuilder(String.valueOf(cK).length() + 18);
                        sb.append("Unexpected token: ");
                        sb.append(cK);
                        throw new ParseException(sb.toString());
                    }
                    stack.push(1);
                    b(bufferedReader, t2);
                }
                n(0);
                try {
                    bufferedReader.close();
                } catch (IOException unused) {
                    Log.w("FastParser", "Failed to close reader while parsing.");
                }
            } catch (IOException e) {
                throw new ParseException(e);
            }
        } catch (Throwable th) {
            try {
                bufferedReader.close();
            } catch (IOException unused2) {
                Log.w("FastParser", "Failed to close reader while parsing.");
            }
            throw th;
        }
    }

    public static class ParseException extends Exception {
        public ParseException(String str) {
            super(str);
        }

        public ParseException(String str, Throwable th) {
            super(str, th);
        }

        public ParseException(Throwable th) {
            super(th);
        }
    }
}
