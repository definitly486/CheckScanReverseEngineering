package com.google.common.io;

import defpackage.ah;
import defpackage.c9;
import defpackage.cg;
import defpackage.e31;
import defpackage.fg;
import defpackage.go2;
import defpackage.kv2;
import defpackage.ma8;
import defpackage.me0;
import defpackage.o8;
import defpackage.v74;
import defpackage.xg;
import defpackage.xp;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseEncoding {
    public static final c a = new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
    public static final c b = new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
    public static final b c;

    public static final class DecodingException extends IOException {
    }

    public static final class b extends d {
        public final char[] i;

        public b(a aVar) {
            super(aVar, (Character) null);
            this.i = new char[512];
            char[] cArr = aVar.b;
            o8.e(cArr.length == 16);
            for (int i = 0; i < 256; i++) {
                char[] cArr2 = this.i;
                cArr2[i] = cArr[i >>> 4];
                cArr2[i | 256] = cArr[i & 15];
            }
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        public final int b(byte[] bArr, CharSequence charSequence) throws DecodingException {
            if (charSequence.length() % 2 == 1) {
                throw new DecodingException("Invalid input length " + charSequence.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                char cCharAt = charSequence.charAt(i);
                a aVar = this.d;
                bArr[i2] = (byte) ((aVar.a(cCharAt) << 4) | aVar.a(charSequence.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        public final void d(StringBuilder sb, byte[] bArr, int i) {
            o8.o(0, i, bArr.length);
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = bArr[i2] & 255;
                char[] cArr = this.i;
                sb.append(cArr[i3]);
                sb.append(cArr[i3 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.d
        public final BaseEncoding g(a aVar, Character ch) {
            return new b(aVar);
        }
    }

    static {
        new d("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new d("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        c = new b(new a("base16()", new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'}));
    }

    public final byte[] a(String str) {
        try {
            CharSequence charSequenceE = e(str);
            int length = (int) (((((long) ((d) this).d.d) * ((long) charSequenceE.length())) + 7) / 8);
            byte[] bArr = new byte[length];
            int iB = b(bArr, charSequenceE);
            if (iB == length) {
                return bArr;
            }
            byte[] bArr2 = new byte[iB];
            System.arraycopy(bArr, 0, bArr2, 0, iB);
            return bArr2;
        } catch (DecodingException e) {
            cg.h(e);
            return null;
        }
    }

    public abstract int b(byte[] bArr, CharSequence charSequence);

    public final String c(byte[] bArr) {
        int length = bArr.length;
        o8.o(0, length, bArr.length);
        a aVar = ((d) this).d;
        int i = aVar.e;
        int i2 = aVar.f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        StringBuilder sb = new StringBuilder(v74.a(length, i2) * i);
        try {
            d(sb, bArr, length);
            return sb.toString();
        } catch (IOException e) {
            xg.d(e);
            return null;
        }
    }

    public abstract void d(StringBuilder sb, byte[] bArr, int i);

    public abstract CharSequence e(CharSequence charSequence);

    public static final class c extends d {
        public c(String str, String str2) {
            this(new a(str, str2.toCharArray()), (Character) '=');
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        public final int b(byte[] bArr, CharSequence charSequence) throws DecodingException {
            CharSequence charSequenceE = e(charSequence);
            int length = charSequenceE.length();
            a aVar = this.d;
            if (!aVar.h[length % aVar.e]) {
                throw new DecodingException("Invalid input length " + charSequenceE.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequenceE.length()) {
                int i3 = i + 2;
                int iA = (aVar.a(charSequenceE.charAt(i + 1)) << 12) | (aVar.a(charSequenceE.charAt(i)) << 18);
                int i4 = i2 + 1;
                bArr[i2] = (byte) (iA >>> 16);
                if (i3 < charSequenceE.length()) {
                    int i5 = i + 3;
                    int iA2 = iA | (aVar.a(charSequenceE.charAt(i3)) << 6);
                    int i6 = i2 + 2;
                    bArr[i4] = (byte) ((iA2 >>> 8) & 255);
                    if (i5 < charSequenceE.length()) {
                        i += 4;
                        i2 += 3;
                        bArr[i6] = (byte) ((iA2 | aVar.a(charSequenceE.charAt(i5))) & 255);
                    } else {
                        i2 = i6;
                        i = i5;
                    }
                } else {
                    i2 = i4;
                    i = i3;
                }
            }
            return i2;
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        public final void d(StringBuilder sb, byte[] bArr, int i) {
            int i2 = 0;
            o8.o(0, i, bArr.length);
            for (int i3 = i; i3 >= 3; i3 -= 3) {
                int i4 = i2 + 2;
                int i5 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16);
                i2 += 3;
                int i6 = i5 | (bArr[i4] & 255);
                a aVar = this.d;
                char[] cArr = aVar.b;
                char[] cArr2 = aVar.b;
                sb.append(cArr[i6 >>> 18]);
                sb.append(cArr2[(i6 >>> 12) & 63]);
                sb.append(cArr2[(i6 >>> 6) & 63]);
                sb.append(cArr2[i6 & 63]);
            }
            if (i2 < i) {
                f(sb, bArr, i2, i - i2);
            }
        }

        @Override // com.google.common.io.BaseEncoding.d
        public final BaseEncoding g(a aVar, Character ch) {
            return new c(aVar, ch);
        }

        public c(a aVar, Character ch) {
            super(aVar, ch);
            o8.e(aVar.b.length == 64);
        }
    }

    public static class d extends BaseEncoding {
        public final a d;
        public final Character e;
        public volatile BaseEncoding f;
        public volatile BaseEncoding g;
        public volatile BaseEncoding h;

        /* JADX WARN: Code duplicated, block: B:9:0x001a  */
        public d(a aVar, Character ch) {
            boolean z;
            aVar.getClass();
            this.d = aVar;
            if (ch != null) {
                char cCharValue = ch.charValue();
                byte[] bArr = aVar.g;
                if (cCharValue >= bArr.length || bArr[cCharValue] == -1) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = true;
            }
            o8.h(z, "Padding character %s was already in alphabet", ch);
            this.e = ch;
        }

        @Override // com.google.common.io.BaseEncoding
        public int b(byte[] bArr, CharSequence charSequence) throws DecodingException {
            CharSequence charSequenceE = e(charSequence);
            int length = charSequenceE.length();
            a aVar = this.d;
            boolean[] zArr = aVar.h;
            int i = aVar.d;
            int i2 = aVar.e;
            if (!zArr[length % i2]) {
                throw new DecodingException("Invalid input length " + charSequenceE.length());
            }
            int i3 = 0;
            for (int i4 = 0; i4 < charSequenceE.length(); i4 += i2) {
                long jA = 0;
                int i5 = 0;
                for (int i6 = 0; i6 < i2; i6++) {
                    jA <<= i;
                    if (i4 + i6 < charSequenceE.length()) {
                        jA |= (long) aVar.a(charSequenceE.charAt(i5 + i4));
                        i5++;
                    }
                }
                int i7 = aVar.f;
                int i8 = (i7 * 8) - (i5 * i);
                int i9 = (i7 - 1) * 8;
                while (i9 >= i8) {
                    bArr[i3] = (byte) ((jA >>> i9) & 255);
                    i9 -= 8;
                    i3++;
                }
            }
            return i3;
        }

        @Override // com.google.common.io.BaseEncoding
        public void d(StringBuilder sb, byte[] bArr, int i) {
            int i2 = 0;
            o8.o(0, i, bArr.length);
            while (i2 < i) {
                a aVar = this.d;
                f(sb, bArr, i2, Math.min(aVar.f, i - i2));
                i2 += aVar.f;
            }
        }

        @Override // com.google.common.io.BaseEncoding
        public final CharSequence e(CharSequence charSequence) {
            charSequence.getClass();
            Character ch = this.e;
            if (ch == null) {
                return charSequence;
            }
            char cCharValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == cCharValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof d) {
                d dVar = (d) obj;
                if (this.d.equals(dVar.d) && Objects.equals(this.e, dVar.e)) {
                    return true;
                }
            }
            return false;
        }

        public final void f(StringBuilder sb, byte[] bArr, int i, int i2) {
            o8.o(i, i + i2, bArr.length);
            a aVar = this.d;
            int i3 = aVar.f;
            int i4 = aVar.d;
            int i5 = 0;
            o8.e(i2 <= i3);
            long j = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                j = (j | ((long) (bArr[i + i6] & 255))) << 8;
            }
            int i7 = ((i2 + 1) * 8) - i4;
            while (i5 < i2 * 8) {
                sb.append(aVar.b[((int) (j >>> (i7 - i5))) & aVar.c]);
                i5 += i4;
            }
            Character ch = this.e;
            if (ch != null) {
                while (i5 < aVar.f * 8) {
                    sb.append(ch.charValue());
                    i5 += i4;
                }
            }
        }

        public BaseEncoding g(a aVar, Character ch) {
            return new d(aVar, ch);
        }

        public final BaseEncoding h() {
            boolean z;
            BaseEncoding baseEncodingG = this.f;
            if (baseEncodingG == null) {
                a aVarB = this.d;
                char[] cArr = aVarB.b;
                for (char c : cArr) {
                    if (go2.d(c)) {
                        char[] cArr2 = aVarB.b;
                        int length = cArr2.length;
                        int i = 0;
                        while (true) {
                            if (i >= length) {
                                z = false;
                                break;
                            }
                            if (go2.e(cArr2[i])) {
                                z = true;
                                break;
                            }
                            i++;
                        }
                        o8.s(!z, "Cannot call upperCase() on a mixed-case alphabet");
                        char[] cArr3 = new char[cArr.length];
                        for (int i2 = 0; i2 < cArr.length; i2++) {
                            char c2 = cArr[i2];
                            if (go2.d(c2)) {
                                c2 = (char) (c2 ^ ' ');
                            }
                            cArr3[i2] = c2;
                        }
                        a aVar = new a(me0.d(new StringBuilder(), aVarB.a, ".upperCase()"), cArr3);
                        if (!aVarB.i) {
                            aVarB = aVar;
                            break;
                        }
                        aVarB = aVar.b();
                        break;
                    }
                }
                baseEncodingG = aVarB == this.d ? this : g(aVarB, this.e);
                this.f = baseEncodingG;
            }
            return baseEncodingG;
        }

        public final int hashCode() {
            return Objects.hashCode(this.e) ^ this.d.hashCode();
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            a aVar = this.d;
            sb.append(aVar);
            if (8 % aVar.d != 0) {
                Character ch = this.e;
                if (ch == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(ch);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        public d(String str, String str2) {
            this(new a(str, str2.toCharArray()), (Character) '=');
        }
    }

    public static final class a {
        public final String a;
        public final char[] b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final byte[] g;
        public final boolean[] h;
        public final boolean i;

        /* JADX WARN: Code duplicated, block: B:25:0x007c A[LOOP:0: B:23:0x0078->B:25:0x007c, LOOP_END] */
        public a(String str, char[] cArr, byte[] bArr, boolean z) {
            int iNumberOfLeadingZeros;
            boolean[] zArr;
            this.a = str;
            cArr.getClass();
            this.b = cArr;
            try {
                int length = cArr.length;
                RoundingMode roundingMode = RoundingMode.UNNECESSARY;
                RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
                if (length > 0) {
                    switch (v74.a.a[roundingMode2.ordinal()]) {
                        case 1:
                            e31.b((length > 0) & (((length + (-1)) & length) == 0));
                        case 2:
                        case 3:
                            iNumberOfLeadingZeros = 31 - Integer.numberOfLeadingZeros(length);
                            break;
                        case 4:
                        case 5:
                            iNumberOfLeadingZeros = 32 - Integer.numberOfLeadingZeros(length - 1);
                            break;
                        case 6:
                        case 7:
                        case 8:
                            int iNumberOfLeadingZeros2 = Integer.numberOfLeadingZeros(length);
                            iNumberOfLeadingZeros = (31 - iNumberOfLeadingZeros2) + ((~(~(((-1257966797) >>> iNumberOfLeadingZeros2) - length))) >>> 31);
                            break;
                        default:
                            xp.g();
                            break;
                    }
                    this.d = iNumberOfLeadingZeros;
                    int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iNumberOfLeadingZeros);
                    int i = 1 << (3 - iNumberOfTrailingZeros);
                    this.e = i;
                    this.f = iNumberOfLeadingZeros >> iNumberOfTrailingZeros;
                    this.c = cArr.length - 1;
                    this.g = bArr;
                    zArr = new boolean[i];
                    for (int i2 = 0; i2 < this.f; i2++) {
                        int i3 = this.d;
                        RoundingMode roundingMode3 = RoundingMode.CEILING;
                        zArr[v74.a(i2 * 8, i3)] = true;
                    }
                    this.h = zArr;
                    this.i = z;
                }
                fg.c(kv2.b(length, "x (", ") must be > 0"));
                iNumberOfLeadingZeros = 0;
                this.d = iNumberOfLeadingZeros;
                int iNumberOfTrailingZeros2 = Integer.numberOfTrailingZeros(iNumberOfLeadingZeros);
                int i4 = 1 << (3 - iNumberOfTrailingZeros2);
                this.e = i4;
                this.f = iNumberOfLeadingZeros >> iNumberOfTrailingZeros2;
                this.c = cArr.length - 1;
                this.g = bArr;
                zArr = new boolean[i4];
                while (i2 < this.f) {
                    int i5 = this.d;
                    RoundingMode roundingMode4 = RoundingMode.CEILING;
                    zArr[v74.a(i2 * 8, i5)] = true;
                }
                this.h = zArr;
                this.i = z;
            } catch (ArithmeticException e) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e);
            }
        }

        public final int a(char c) throws DecodingException {
            if (c > 127) {
                throw new DecodingException(c9.e(c, new StringBuilder("Unrecognized character: 0x")));
            }
            byte b = this.g[c];
            if (b != -1) {
                return b;
            }
            if (c <= ' ' || c == 127) {
                throw new DecodingException(c9.e(c, new StringBuilder("Unrecognized character: 0x")));
            }
            throw new DecodingException("Unrecognized character: " + c);
        }

        public final a b() {
            if (this.i) {
                return this;
            }
            byte[] bArr = this.g;
            byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
            int i = 65;
            while (true) {
                if (i > 90) {
                    return new a(me0.d(new StringBuilder(), this.a, ".ignoreCase()"), this.b, bArrCopyOf, true);
                }
                int i2 = i | 32;
                byte b = bArr[i];
                byte b2 = bArr[i2];
                if (b == -1) {
                    bArrCopyOf[i] = b2;
                } else {
                    boolean z = b2 == -1;
                    char c = (char) i;
                    char c2 = (char) i2;
                    if (!z) {
                        ah.f(ma8.a("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c), Character.valueOf(c2)));
                        return null;
                    }
                    bArrCopyOf[i2] = b;
                }
                i++;
            }
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.i == aVar.i && Arrays.equals(this.b, aVar.b);
        }

        public final int hashCode() {
            return Arrays.hashCode(this.b) + (this.i ? 1231 : 1237);
        }

        public final String toString() {
            return this.a;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public a(String str, char[] cArr) {
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i = 0; i < cArr.length; i++) {
                char c = cArr[i];
                if (c < 128) {
                    if (bArr[c] == -1) {
                        bArr[c] = (byte) i;
                    } else {
                        fg.c(ma8.a("Duplicate character: %s", Character.valueOf(c)));
                        throw null;
                    }
                } else {
                    fg.c(ma8.a("Non-ASCII character: %s", Character.valueOf(c)));
                    throw null;
                }
            }
            this(str, cArr, bArr, false);
        }
    }
}
