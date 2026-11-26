package defpackage;

import androidx.core.app.FrameMetricsAggregator;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.io.StringReader;
import java.io.UncheckedIOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes5.dex */
public final class ea1 implements AutoCloseable {
    public static final q48<String[]> o = new q48<>(new ca1());
    public static final q48<char[]> p = new q48<>(new da1());
    public String[] b;
    public StringReader c;
    public char[] d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public boolean j;
    public ArrayList<Integer> k;
    public int l;
    public String m;
    public int n;

    @FunctionalInterface
    public interface a {
        boolean a(char c);
    }

    public ea1(StringReader stringReader) {
        this.g = 0;
        this.i = -1;
        this.k = null;
        this.l = 1;
        this.c = stringReader;
        this.d = p.a();
        this.b = o.a();
        n();
    }

    public static String o(char[] cArr, String[] strArr, int i, int i2) {
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        if (i2 < 1) {
            return "";
        }
        int i3 = i2 + i;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 < i3; i6++) {
            i5 = (i5 * 31) + cArr[i6];
        }
        int i7 = i5 & FrameMetricsAggregator.EVERY_DURATION;
        String str = strArr[i7];
        if (str != null && i2 == str.length()) {
            int i8 = i;
            int i9 = i2;
            while (true) {
                int i10 = i9 - 1;
                if (i9 == 0) {
                    return str;
                }
                int i11 = i8 + 1;
                int i12 = i4 + 1;
                if (cArr[i8] == str.charAt(i4)) {
                    i8 = i11;
                    i9 = i10;
                    i4 = i12;
                }
            }
        }
        String str2 = new String(cArr, i, i2);
        strArr[i7] = str2;
        return str2;
    }

    public final String A0() {
        int i;
        int iE0;
        StringBuilder sb = new StringBuilder();
        int iZ0 = z0();
        if (this.k != null) {
            int iE1 = e0(iZ0);
            i = this.l;
            if (iE1 != -1) {
                i = iE1 + i + 1;
            }
        } else {
            i = 1;
        }
        sb.append(i);
        sb.append(StringUtils.PROCESS_POSTFIX_DELIMITER);
        int iZ1 = z0();
        if (this.k != null && (iE0 = e0(iZ1)) != -1) {
            iZ1 -= this.k.get(iE0).intValue();
        }
        sb.append(iZ1 + 1);
        return sb.toString();
    }

    public final void B0() {
        int i = this.i;
        if (i == -1) {
            throw new UncheckedIOException(new IOException("Mark invalid"));
        }
        this.e = i;
        this.i = -1;
    }

    public final void C0() {
        int i = this.e;
        if (i < 1) {
            throw new UncheckedIOException(new IOException("WTF: No buffer left to unconsume."));
        }
        this.e = i - 1;
    }

    public final String E(a aVar) {
        n();
        int i = this.e;
        int i2 = this.f;
        char[] cArr = this.d;
        int i3 = i;
        while (i3 < i2 && aVar.a(cArr[i3])) {
            i3++;
        }
        this.e = i3;
        return i3 > i ? o(this.d, this.b, i, i3 - i) : "";
    }

    public final String P(char c) {
        int i;
        n();
        int i2 = this.e;
        while (true) {
            if (i2 >= this.f) {
                i = -1;
                break;
            }
            if (c == this.d[i2]) {
                i = i2 - this.e;
                break;
            }
            i2++;
        }
        if (i == -1) {
            return V();
        }
        String strO = o(this.d, this.b, this.e, i);
        this.e += i;
        return strO;
    }

    public final String Q(char... cArr) {
        n();
        int i = this.e;
        int i2 = this.f;
        char[] cArr2 = this.d;
        int i3 = i;
        loop0: while (i3 < i2) {
            char c = cArr2[i3];
            for (char c2 : cArr) {
                if (c == c2) {
                    break loop0;
                }
            }
            i3++;
        }
        this.e = i3;
        return i3 > i ? o(this.d, this.b, i, i3 - i) : "";
    }

    public final String U(char... cArr) {
        n();
        int i = this.e;
        int i2 = this.f;
        char[] cArr2 = this.d;
        int i3 = i;
        while (i3 < i2) {
            if (!(Arrays.binarySearch(cArr, cArr2[i3]) < 0)) {
                break;
            }
            i3++;
        }
        this.e = i3;
        return i3 > i ? o(this.d, this.b, i, i3 - i) : "";
    }

    public final String V() {
        n();
        char[] cArr = this.d;
        String[] strArr = this.b;
        int i = this.e;
        String strO = o(cArr, strArr, i, this.f - i);
        this.e = this.f;
        return strO;
    }

    public final char X() {
        n();
        int i = this.e;
        if (i >= this.f) {
            return (char) 65535;
        }
        return this.d[i];
    }

    public final boolean Z() {
        n();
        return this.e >= this.f;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        q48<String[]> q48Var = o;
        q48<char[]> q48Var2 = p;
        StringReader stringReader = this.c;
        if (stringReader == null) {
            return;
        }
        try {
            stringReader.close();
            this.c = null;
            Arrays.fill(this.d, (char) 0);
            q48Var2.b(this.d);
            this.d = null;
            q48Var.b(this.b);
        } catch (IOException unused) {
            this.c = null;
            Arrays.fill(this.d, (char) 0);
            q48Var2.b(this.d);
            this.d = null;
            q48Var.b(this.b);
        } finally {
            this.c = null;
            Arrays.fill(this.d, (char) 0);
            q48Var2.b(this.d);
            this.d = null;
            q48Var.b(this.b);
            this.b = null;
        }
    }

    public final int e0(int i) {
        ArrayList<Integer> arrayList = this.k;
        if (arrayList == null) {
            return 0;
        }
        int iBinarySearch = Collections.binarySearch(arrayList, Integer.valueOf(i));
        return iBinarySearch < -1 ? Math.abs(iBinarySearch) - 2 : iBinarySearch;
    }

    public final boolean k0(String str) {
        n();
        n();
        int length = str.length();
        if (length <= this.f - this.e) {
            for (int i = 0; i < length; i++) {
                if (str.charAt(i) == this.d[this.e + i]) {
                }
            }
            this.e = str.length() + this.e;
            return true;
        }
        return false;
    }

    public final void m() {
        this.e++;
    }

    public final void n() {
        int i;
        if (this.j || (i = this.e) < this.g || this.i != -1) {
            return;
        }
        this.h += i;
        int i2 = this.f - i;
        this.f = i2;
        if (i2 > 0) {
            char[] cArr = this.d;
            System.arraycopy(cArr, i, cArr, 0, i2);
        }
        this.e = 0;
        while (true) {
            int i3 = this.f;
            if (i3 >= 2048) {
                break;
            }
            try {
                StringReader stringReader = this.c;
                char[] cArr2 = this.d;
                int i4 = stringReader.read(cArr2, i3, cArr2.length - i3);
                if (i4 == -1) {
                    this.j = true;
                    break;
                } else if (i4 == 0) {
                    break;
                } else {
                    this.f += i4;
                }
            } catch (IOException e) {
                throw new UncheckedIOException(e);
            }
        }
        this.g = Math.min(this.f, 1024);
        ArrayList<Integer> arrayList = this.k;
        if (arrayList != null) {
            if (arrayList.size() > 0) {
                int iE0 = e0(this.h);
                int i5 = iE0 != -1 ? iE0 : 0;
                Integer num = this.k.get(i5);
                num.getClass();
                this.l += i5;
                this.k.clear();
                this.k.add(num);
            }
            for (int i6 = this.e; i6 < this.f; i6++) {
                if (this.d[i6] == '\n') {
                    this.k.add(Integer.valueOf(this.h + 1 + i6));
                }
            }
        }
        this.m = null;
    }

    public final boolean n0(String str) {
        if (!x0(str)) {
            return false;
        }
        this.e = str.length() + this.e;
        return true;
    }

    public final char p() {
        n();
        int i = this.e;
        char c = i >= this.f ? (char) 65535 : this.d[i];
        this.e = i + 1;
        return c;
    }

    public final boolean q0(char c) {
        return !Z() && this.d[this.e] == c;
    }

    public final boolean r0(char... cArr) {
        if (!Z()) {
            n();
            char c = this.d[this.e];
            for (char c2 : cArr) {
                if (c2 == c) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String toString() {
        int i = this.f;
        int i2 = this.e;
        return i - i2 < 0 ? "" : new String(this.d, i2, i - i2);
    }

    public final boolean u0() {
        if (Z()) {
            return false;
        }
        return ja8.d(this.d[this.e]);
    }

    public final String v() {
        n();
        int i = this.e;
        int i2 = this.f;
        char[] cArr = this.d;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (!((c == '&' || c == '<' || c == 0) ? false : true)) {
                break;
            }
            i3++;
        }
        this.e = i3;
        return i3 > i ? o(this.d, this.b, i, i3 - i) : "";
    }

    public final boolean x0(String str) {
        n();
        int length = str.length();
        if (length > this.f - this.e) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            char c = this.d[this.e + i];
            if (cCharAt != c && Character.toUpperCase(cCharAt) != Character.toUpperCase(c)) {
                return false;
            }
        }
        return true;
    }

    public final String y() {
        n();
        int i = this.e;
        int i2 = this.f;
        char[] cArr = this.d;
        int i3 = i;
        while (i3 < i2 && Character.isLetter(cArr[i3])) {
            i3++;
        }
        this.e = i3;
        return i3 > i ? o(this.d, this.b, i, i3 - i) : "";
    }

    public final int y0(String str) {
        n();
        char cCharAt = str.charAt(0);
        int i = this.e;
        while (i < this.f) {
            if (cCharAt != this.d[i]) {
                do {
                    i++;
                    if (i >= this.f) {
                        break;
                    }
                } while (cCharAt != this.d[i]);
            }
            int i2 = i + 1;
            int length = (str.length() + i2) - 1;
            int i3 = this.f;
            if (i < i3 && length <= i3) {
                int i4 = i2;
                for (int i5 = 1; i4 < length && str.charAt(i5) == this.d[i4]; i5++) {
                    i4++;
                }
                if (i4 == length) {
                    return i - this.e;
                }
            }
            i = i2;
        }
        return -1;
    }

    public final int z0() {
        return this.h + this.e;
    }

    public ea1(String str) {
        this(new StringReader(str));
    }
}
