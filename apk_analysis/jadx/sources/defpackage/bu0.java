package defpackage;

import androidx.collection.SieveCacheKt;
import androidx.media3.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public final class bu0 implements wu0, vu0, Cloneable, ByteChannel {
    public gl7 b;
    public long c;

    public final void A0(int i) {
        gl7 gl7VarY0 = y0(1);
        byte[] bArr = gl7VarY0.a;
        int i2 = gl7VarY0.c;
        gl7VarY0.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.c++;
    }

    public final void B0(long j) {
        boolean z;
        if (j == 0) {
            A0(48);
            return;
        }
        if (j < 0) {
            j = -j;
            if (j < 0) {
                I0("-9223372036854775808");
                return;
            }
            z = true;
        } else {
            z = false;
        }
        byte[] bArr = defpackage.b.a;
        int iNumberOfLeadingZeros = ((64 - Long.numberOfLeadingZeros(j)) * 10) >>> 5;
        int i = iNumberOfLeadingZeros + (j > defpackage.b.b[iNumberOfLeadingZeros] ? 1 : 0);
        if (z) {
            i++;
        }
        gl7 gl7VarY0 = y0(i);
        byte[] bArr2 = gl7VarY0.a;
        int i2 = gl7VarY0.c + i;
        while (j != 0) {
            i2--;
            bArr2[i2] = defpackage.b.a[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr2[i2 - 1] = 45;
        }
        gl7VarY0.c += i;
        this.c += (long) i;
    }

    @Override // defpackage.wu0
    public final byte[] C() {
        return Z(this.c);
    }

    public final void C0(long j) {
        if (j == 0) {
            A0(48);
            return;
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        gl7 gl7VarY0 = y0(i);
        byte[] bArr = gl7VarY0.a;
        int i2 = gl7VarY0.c;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = defpackage.b.a[(int) (15 & j)];
            j >>>= 4;
        }
        gl7VarY0.c += i;
        this.c += (long) i;
    }

    public final void D0(int i) {
        gl7 gl7VarY0 = y0(4);
        byte[] bArr = gl7VarY0.a;
        int i2 = gl7VarY0.c;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        gl7VarY0.c = i2 + 4;
        this.c += 4;
    }

    public final void E(bu0 bu0Var, long j, long j2) {
        bu0Var.getClass();
        long j3 = j;
        h.b(this.c, j3, j2);
        if (j2 == 0) {
            return;
        }
        bu0Var.c += j2;
        gl7 gl7Var = this.b;
        while (true) {
            gl7Var.getClass();
            long j4 = gl7Var.c - gl7Var.b;
            if (j3 < j4) {
                break;
            }
            j3 -= j4;
            gl7Var = gl7Var.f;
        }
        long j5 = j2;
        while (j5 > 0) {
            gl7Var.getClass();
            gl7 gl7VarC = gl7Var.c();
            int i = gl7VarC.b + ((int) j3);
            gl7VarC.b = i;
            gl7VarC.c = Math.min(i + ((int) j5), gl7VarC.c);
            gl7 gl7Var2 = bu0Var.b;
            if (gl7Var2 == null) {
                gl7VarC.g = gl7VarC;
                gl7VarC.f = gl7VarC;
                bu0Var.b = gl7VarC;
            } else {
                gl7 gl7Var3 = gl7Var2.g;
                gl7Var3.getClass();
                gl7Var3.b(gl7VarC);
            }
            j5 -= (long) (gl7VarC.c - gl7VarC.b);
            gl7Var = gl7Var.f;
            j3 = 0;
        }
    }

    public final void E0(int i) {
        gl7 gl7VarY0 = y0(2);
        byte[] bArr = gl7VarY0.a;
        int i2 = gl7VarY0.c;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
        gl7VarY0.c = i2 + 2;
        this.c += 2;
    }

    @Override // defpackage.wu0
    public final String F(Charset charset) {
        return n0(this.c, charset);
    }

    public final void F0(String str, int i, int i2, Charset charset) {
        str.getClass();
        if (i < 0) {
            c9.f(jh.b(i, "beginIndex < 0: "));
            return;
        }
        if (i2 < i) {
            c9.f(rz0.c(i2, i, "endIndex < beginIndex: ", " < "));
            return;
        }
        if (i2 > str.length()) {
            d.d(str.length(), n7.c(i2, "endIndex > string.length: ", " > "));
        } else {
            if (charset.equals(ha1.b)) {
                H0(i, i2, str);
                return;
            }
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            bytes.getClass();
            write(bytes, 0, bytes.length);
        }
    }

    public final void G0(OutputStream outputStream, long j) throws IOException {
        outputStream.getClass();
        h.b(this.c, 0L, j);
        gl7 gl7Var = this.b;
        long j2 = j;
        while (j2 > 0) {
            gl7Var.getClass();
            int iMin = (int) Math.min(j2, gl7Var.c - gl7Var.b);
            outputStream.write(gl7Var.a, gl7Var.b, iMin);
            int i = gl7Var.b + iMin;
            gl7Var.b = i;
            long j3 = iMin;
            this.c -= j3;
            j2 -= j3;
            if (i == gl7Var.c) {
                gl7 gl7VarA = gl7Var.a();
                this.b = gl7VarA;
                il7.a(gl7Var);
                gl7Var = gl7VarA;
            }
        }
    }

    @Override // defpackage.s18
    public final void H(bu0 bu0Var, long j) {
        gl7 gl7VarB;
        bu0Var.getClass();
        if (bu0Var == this) {
            fg.c("source == this");
            return;
        }
        h.b(bu0Var.c, 0L, j);
        while (j > 0) {
            gl7 gl7Var = bu0Var.b;
            gl7Var.getClass();
            int i = gl7Var.c;
            gl7 gl7Var2 = bu0Var.b;
            gl7Var2.getClass();
            long j2 = i - gl7Var2.b;
            int i2 = 0;
            if (j < j2) {
                gl7 gl7Var3 = this.b;
                gl7 gl7Var4 = gl7Var3 != null ? gl7Var3.g : null;
                if (gl7Var4 != null && gl7Var4.e) {
                    if ((((long) gl7Var4.c) + j) - ((long) (gl7Var4.d ? 0 : gl7Var4.b)) <= 8192) {
                        gl7 gl7Var5 = bu0Var.b;
                        gl7Var5.getClass();
                        gl7Var5.d(gl7Var4, (int) j);
                        bu0Var.c -= j;
                        this.c += j;
                        return;
                    }
                }
                gl7 gl7Var6 = bu0Var.b;
                gl7Var6.getClass();
                int i3 = (int) j;
                if (i3 <= 0 || i3 > gl7Var6.c - gl7Var6.b) {
                    fg.c("byteCount out of range");
                    return;
                }
                if (i3 >= 1024) {
                    gl7VarB = gl7Var6.c();
                } else {
                    gl7VarB = il7.b();
                    byte[] bArr = gl7Var6.a;
                    byte[] bArr2 = gl7VarB.a;
                    int i4 = gl7Var6.b;
                    aq5.g(0, i4, i4 + i3, bArr, bArr2);
                }
                gl7VarB.c = gl7VarB.b + i3;
                gl7Var6.b += i3;
                gl7 gl7Var7 = gl7Var6.g;
                gl7Var7.getClass();
                gl7Var7.b(gl7VarB);
                bu0Var.b = gl7VarB;
            }
            gl7 gl7Var8 = bu0Var.b;
            gl7Var8.getClass();
            long j3 = gl7Var8.c - gl7Var8.b;
            bu0Var.b = gl7Var8.a();
            gl7 gl7Var9 = this.b;
            if (gl7Var9 == null) {
                this.b = gl7Var8;
                gl7Var8.g = gl7Var8;
                gl7Var8.f = gl7Var8;
            } else {
                gl7 gl7Var10 = gl7Var9.g;
                gl7Var10.getClass();
                gl7Var10.b(gl7Var8);
                gl7 gl7Var11 = gl7Var8.g;
                if (gl7Var11 == gl7Var8) {
                    ah.f("cannot compact");
                    return;
                }
                gl7Var11.getClass();
                if (gl7Var11.e) {
                    int i5 = gl7Var8.c - gl7Var8.b;
                    gl7 gl7Var12 = gl7Var8.g;
                    gl7Var12.getClass();
                    int i6 = 8192 - gl7Var12.c;
                    gl7 gl7Var13 = gl7Var8.g;
                    gl7Var13.getClass();
                    if (!gl7Var13.d) {
                        gl7 gl7Var14 = gl7Var8.g;
                        gl7Var14.getClass();
                        i2 = gl7Var14.b;
                    }
                    if (i5 <= i6 + i2) {
                        gl7 gl7Var15 = gl7Var8.g;
                        gl7Var15.getClass();
                        gl7Var8.d(gl7Var15, i5);
                        gl7Var8.a();
                        il7.a(gl7Var8);
                    }
                }
            }
            bu0Var.c -= j3;
            this.c += j3;
            j -= j3;
        }
    }

    public final void H0(int i, int i2, String str) {
        char cCharAt;
        str.getClass();
        if (i < 0) {
            c9.f(jh.b(i, "beginIndex < 0: "));
            return;
        }
        if (i2 < i) {
            c9.f(rz0.c(i2, i, "endIndex < beginIndex: ", " < "));
            return;
        }
        if (i2 > str.length()) {
            d.d(str.length(), n7.c(i2, "endIndex > string.length: ", " > "));
            return;
        }
        while (i < i2) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 < 128) {
                gl7 gl7VarY0 = y0(1);
                byte[] bArr = gl7VarY0.a;
                int i3 = gl7VarY0.c - i;
                int iMin = Math.min(i2, 8192 - i3);
                int i4 = i + 1;
                bArr[i + i3] = (byte) cCharAt2;
                while (true) {
                    i = i4;
                    if (i >= iMin || (cCharAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i4 = i + 1;
                    bArr[i + i3] = (byte) cCharAt;
                }
                int i5 = gl7VarY0.c;
                int i6 = (i3 + i) - i5;
                gl7VarY0.c = i5 + i6;
                this.c += (long) i6;
            } else {
                if (cCharAt2 < 2048) {
                    gl7 gl7VarY1 = y0(2);
                    byte[] bArr2 = gl7VarY1.a;
                    int i7 = gl7VarY1.c;
                    bArr2[i7] = (byte) ((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                    bArr2[i7 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    gl7VarY1.c = i7 + 2;
                    this.c += 2;
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    gl7 gl7VarY2 = y0(3);
                    byte[] bArr3 = gl7VarY2.a;
                    int i8 = gl7VarY2.c;
                    bArr3[i8] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i8 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i8 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    gl7VarY2.c = i8 + 3;
                    this.c += 3;
                } else {
                    int i9 = i + 1;
                    char cCharAt3 = i9 < i2 ? str.charAt(i9) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        A0(63);
                        i = i9;
                    } else {
                        int i10 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        gl7 gl7VarY3 = y0(4);
                        byte[] bArr4 = gl7VarY3.a;
                        int i11 = gl7VarY3.c;
                        bArr4[i11] = (byte) ((i10 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                        bArr4[i11 + 1] = (byte) (((i10 >> 12) & 63) | 128);
                        bArr4[i11 + 2] = (byte) (((i10 >> 6) & 63) | 128);
                        bArr4[i11 + 3] = (byte) ((i10 & 63) | 128);
                        gl7VarY3.c = i11 + 4;
                        this.c += 4;
                        i += 2;
                    }
                }
                i++;
            }
        }
    }

    public final void I0(String str) {
        str.getClass();
        H0(0, str.length(), str);
    }

    public final void J0(int i) {
        if (i < 128) {
            A0(i);
            return;
        }
        if (i < 2048) {
            gl7 gl7VarY0 = y0(2);
            byte[] bArr = gl7VarY0.a;
            int i2 = gl7VarY0.c;
            bArr[i2] = (byte) ((i >> 6) | PsExtractor.AUDIO_STREAM);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            gl7VarY0.c = i2 + 2;
            this.c += 2;
            return;
        }
        if (55296 <= i && i < 57344) {
            A0(63);
            return;
        }
        if (i < 65536) {
            gl7 gl7VarY1 = y0(3);
            byte[] bArr2 = gl7VarY1.a;
            int i3 = gl7VarY1.c;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            gl7VarY1.c = i3 + 3;
            this.c += 3;
            return;
        }
        if (i > 1114111) {
            fg.c("Unexpected code point: 0x".concat(h.f(i)));
            return;
        }
        gl7 gl7VarY2 = y0(4);
        byte[] bArr3 = gl7VarY2.a;
        int i4 = gl7VarY2.c;
        bArr3[i4] = (byte) ((i >> 18) | PsExtractor.VIDEO_STREAM_MASK);
        bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
        bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
        bArr3[i4 + 3] = (byte) ((i & 63) | 128);
        gl7VarY2.c = i4 + 4;
        this.c += 4;
    }

    @Override // defpackage.wu0
    public final long M() throws EOFException {
        int i;
        if (this.c == 0) {
            n7.e();
            return 0L;
        }
        int i2 = 0;
        boolean z = false;
        long j = 0;
        do {
            gl7 gl7Var = this.b;
            gl7Var.getClass();
            byte[] bArr = gl7Var.a;
            int i3 = gl7Var.b;
            int i4 = gl7Var.c;
            while (i3 < i4) {
                byte b2 = bArr[i3];
                if (b2 >= 48 && b2 <= 57) {
                    i = b2 - 48;
                } else if (b2 >= 97 && b2 <= 102) {
                    i = b2 - 87;
                } else {
                    if (b2 < 65 || b2 > 70) {
                        if (i2 == 0) {
                            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(h.e(b2)));
                        }
                        z = true;
                        break;
                    }
                    i = b2 - 55;
                }
                if (((-1152921504606846976L) & j) != 0) {
                    bu0 bu0Var = new bu0();
                    bu0Var.C0(j);
                    bu0Var.A0(b2);
                    throw new NumberFormatException("Number too large: ".concat(bu0Var.q0()));
                }
                j = (j << 4) | ((long) i);
                i3++;
                i2++;
            }
            if (i3 == i4) {
                this.b = gl7Var.a();
                il7.a(gl7Var);
            } else {
                gl7Var.b = i3;
            }
            if (z) {
                break;
            }
        } while (this.b != null);
        this.c -= (long) i2;
        return j;
    }

    public final boolean P() {
        return this.c == 0;
    }

    public final byte Q(long j) {
        h.b(this.c, j, 1L);
        gl7 gl7Var = this.b;
        gl7Var.getClass();
        long j2 = this.c;
        if (j2 - j < j) {
            while (j2 > j) {
                gl7Var = gl7Var.g;
                gl7Var.getClass();
                j2 -= (long) (gl7Var.c - gl7Var.b);
            }
            return gl7Var.a[(int) ((((long) gl7Var.b) + j) - j2)];
        }
        long j3 = 0;
        while (true) {
            int i = gl7Var.c;
            int i2 = gl7Var.b;
            long j4 = ((long) (i - i2)) + j3;
            if (j4 > j) {
                return gl7Var.a[(int) ((((long) i2) + j) - j3)];
            }
            gl7Var = gl7Var.f;
            gl7Var.getClass();
            j3 = j4;
        }
    }

    @Override // defpackage.wu0
    public final String S(long j) throws EOFException {
        if (j < 0) {
            c9.f(r01.c(j, "limit < 0: "));
            return null;
        }
        long j2 = j != Long.MAX_VALUE ? j + 1 : Long.MAX_VALUE;
        long jU = U((byte) 10, 0L, j2);
        if (jU != -1) {
            return defpackage.b.c(this, jU);
        }
        if (j2 < this.c && Q(j2 - 1) == 13 && Q(j2) == 10) {
            return defpackage.b.c(this, j2);
        }
        bu0 bu0Var = new bu0();
        E(bu0Var, 0L, Math.min(32L, this.c));
        throw new EOFException("\\n not found: limit=" + Math.min(this.c, j) + " content=" + bu0Var.i(bu0Var.c).g() + (char) 8230);
    }

    public final long U(byte b2, long j, long j2) {
        gl7 gl7Var;
        long j3 = 0;
        if (0 > j || j > j2) {
            StringBuilder sb = new StringBuilder("size=");
            sb.append(this.c);
            dq.d(sb, " fromIndex=", j, " toIndex=");
            sb.append(j2);
            throw new IllegalArgumentException(sb.toString().toString());
        }
        long j4 = this.c;
        if (j2 > j4) {
            j2 = j4;
        }
        if (j == j2 || (gl7Var = this.b) == null) {
            return -1L;
        }
        if (j4 - j < j) {
            while (j4 > j) {
                gl7Var = gl7Var.g;
                gl7Var.getClass();
                j4 -= (long) (gl7Var.c - gl7Var.b);
            }
            while (j4 < j2) {
                byte[] bArr = gl7Var.a;
                int iMin = (int) Math.min(gl7Var.c, (((long) gl7Var.b) + j2) - j4);
                for (int i = (int) ((((long) gl7Var.b) + j) - j4); i < iMin; i++) {
                    if (bArr[i] == b2) {
                        return ((long) (i - gl7Var.b)) + j4;
                    }
                }
                j4 += (long) (gl7Var.c - gl7Var.b);
                gl7Var = gl7Var.f;
                gl7Var.getClass();
                j = j4;
            }
            return -1L;
        }
        while (true) {
            long j5 = ((long) (gl7Var.c - gl7Var.b)) + j3;
            if (j5 > j) {
                break;
            }
            gl7Var = gl7Var.f;
            gl7Var.getClass();
            j3 = j5;
        }
        while (j3 < j2) {
            byte[] bArr2 = gl7Var.a;
            int iMin2 = (int) Math.min(gl7Var.c, (((long) gl7Var.b) + j2) - j3);
            for (int i2 = (int) ((((long) gl7Var.b) + j) - j3); i2 < iMin2; i2++) {
                if (bArr2[i2] == b2) {
                    return ((long) (i2 - gl7Var.b)) + j3;
                }
            }
            j3 += (long) (gl7Var.c - gl7Var.b);
            gl7Var = gl7Var.f;
            gl7Var.getClass();
            j = j3;
        }
        return -1L;
    }

    public final long V(gx0 gx0Var, long j) {
        gx0Var.getClass();
        long j2 = 0;
        if (j < 0) {
            c9.f(r01.c(j, "fromIndex < 0: "));
            return 0L;
        }
        gl7 gl7Var = this.b;
        if (gl7Var == null) {
            return -1L;
        }
        long j3 = this.c;
        if (j3 - j < j) {
            while (j3 > j) {
                gl7Var = gl7Var.g;
                gl7Var.getClass();
                j3 -= (long) (gl7Var.c - gl7Var.b);
            }
            if (gx0Var.f() == 2) {
                byte bN = gx0Var.n(0);
                byte bN2 = gx0Var.n(1);
                while (j3 < this.c) {
                    byte[] bArr = gl7Var.a;
                    int i = gl7Var.c;
                    for (int i2 = (int) ((((long) gl7Var.b) + j) - j3); i2 < i; i2++) {
                        byte b2 = bArr[i2];
                        if (b2 == bN || b2 == bN2) {
                            return ((long) (i2 - gl7Var.b)) + j3;
                        }
                    }
                    j3 += (long) (gl7Var.c - gl7Var.b);
                    gl7Var = gl7Var.f;
                    gl7Var.getClass();
                    j = j3;
                }
            } else {
                byte[] bArrK = gx0Var.k();
                while (j3 < this.c) {
                    byte[] bArr2 = gl7Var.a;
                    int i3 = gl7Var.c;
                    for (int i4 = (int) ((((long) gl7Var.b) + j) - j3); i4 < i3; i4++) {
                        byte b3 = bArr2[i4];
                        for (byte b4 : bArrK) {
                            if (b3 == b4) {
                                return ((long) (i4 - gl7Var.b)) + j3;
                            }
                        }
                    }
                    j3 += (long) (gl7Var.c - gl7Var.b);
                    gl7Var = gl7Var.f;
                    gl7Var.getClass();
                    j = j3;
                }
            }
            return -1L;
        }
        while (true) {
            long j4 = ((long) (gl7Var.c - gl7Var.b)) + j2;
            if (j4 > j) {
                break;
            }
            gl7Var = gl7Var.f;
            gl7Var.getClass();
            j2 = j4;
        }
        if (gx0Var.f() == 2) {
            byte bN3 = gx0Var.n(0);
            byte bN4 = gx0Var.n(1);
            while (j2 < this.c) {
                byte[] bArr3 = gl7Var.a;
                int i5 = gl7Var.c;
                for (int i6 = (int) ((((long) gl7Var.b) + j) - j2); i6 < i5; i6++) {
                    byte b5 = bArr3[i6];
                    if (b5 == bN3 || b5 == bN4) {
                        return ((long) (i6 - gl7Var.b)) + j2;
                    }
                }
                j2 += (long) (gl7Var.c - gl7Var.b);
                gl7Var = gl7Var.f;
                gl7Var.getClass();
                j = j2;
            }
        } else {
            byte[] bArrK2 = gx0Var.k();
            while (j2 < this.c) {
                byte[] bArr4 = gl7Var.a;
                int i7 = gl7Var.c;
                for (int i8 = (int) ((((long) gl7Var.b) + j) - j2); i8 < i7; i8++) {
                    byte b6 = bArr4[i8];
                    for (byte b7 : bArrK2) {
                        if (b6 == b7) {
                            return ((long) (i8 - gl7Var.b)) + j2;
                        }
                    }
                }
                j2 += (long) (gl7Var.c - gl7Var.b);
                gl7Var = gl7Var.f;
                gl7Var.getClass();
                j = j2;
            }
        }
        return -1L;
    }

    @Override // defpackage.wu0
    public final long W(gx0 gx0Var) {
        gx0Var.getClass();
        return V(gx0Var, 0L);
    }

    public final boolean X(long j, gx0 gx0Var, int i) {
        gx0Var.getClass();
        if (i >= 0 && j >= 0 && ((long) i) + j <= this.c && i <= gx0Var.f()) {
            return i == 0 || defpackage.b.a(this, gx0Var, j, j + 1, i) != -1;
        }
        return false;
    }

    @Override // defpackage.wu0
    public final String Y() {
        return S(Long.MAX_VALUE);
    }

    public final byte[] Z(long j) throws EOFException {
        if (j < 0 || j > SieveCacheKt.NodeLinkMask) {
            c9.f(r01.c(j, "byteCount: "));
            return null;
        }
        if (this.c < j) {
            n7.e();
            return null;
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = read(bArr, i2, i - i2);
            if (i3 == -1) {
                n7.e();
                return null;
            }
            i2 += i3;
        }
        return bArr;
    }

    @Override // defpackage.wu0
    public final void c(bu0 bu0Var, long j) throws EOFException {
        long j2 = this.c;
        if (j2 >= j) {
            bu0Var.H(this, j);
        } else {
            bu0Var.H(this, j2);
            n7.e();
        }
    }

    @Override // defpackage.wu0
    public final void c0(long j) throws EOFException {
        if (this.c >= j) {
            return;
        }
        n7.e();
    }

    public final Object clone() {
        return y();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, defpackage.s18
    public final void close() {
    }

    @Override // defpackage.vu0
    public final /* bridge */ /* synthetic */ vu0 d(gx0 gx0Var) {
        z0(gx0Var);
        return this;
    }

    public final long e0() throws EOFException {
        long j;
        byte b2;
        long j2 = 0;
        if (this.c == 0) {
            n7.e();
            return 0L;
        }
        int i = 0;
        boolean z = false;
        long j3 = 0;
        long j4 = -7;
        boolean z2 = false;
        loop0: while (true) {
            gl7 gl7Var = this.b;
            gl7Var.getClass();
            byte[] bArr = gl7Var.a;
            int i2 = gl7Var.b;
            int i3 = gl7Var.c;
            while (true) {
                if (i2 >= i3) {
                    j = j2;
                    break;
                }
                b2 = bArr[i2];
                if (b2 >= 48 && b2 <= 57) {
                    int i4 = 48 - b2;
                    if (j3 < -922337203685477580L) {
                        break loop0;
                    }
                    j = j2;
                    if (j3 == -922337203685477580L && i4 < j4) {
                        break loop0;
                    }
                    j3 = (j3 * 10) + ((long) i4);
                } else {
                    j = j2;
                    if (b2 != 45 || i != 0) {
                        z2 = true;
                        break;
                    }
                    j4--;
                    z = true;
                }
                i2++;
                i++;
                j2 = j;
            }
            if (i2 == i3) {
                this.b = gl7Var.a();
                il7.a(gl7Var);
            } else {
                gl7Var.b = i2;
            }
            if (z2 || this.b == null) {
                long j5 = this.c - ((long) i);
                this.c = j5;
                if (i >= (z ? 2 : 1)) {
                    return z ? j3 : -j3;
                }
                if (j5 != j) {
                    StringBuilder sbD = fh.d(z ? "Expected a digit" : "Expected a digit or '-'", " but was 0x");
                    sbD.append(h.e(Q(j)));
                    throw new NumberFormatException(sbD.toString());
                }
                long j6 = j;
                n7.e();
                return j6;
            }
            j2 = j;
        }
        bu0 bu0Var = new bu0();
        bu0Var.B0(j3);
        bu0Var.A0(b2);
        if (!z) {
            bu0Var.readByte();
        }
        throw new NumberFormatException("Number too large: ".concat(bu0Var.q0()));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bu0)) {
            return false;
        }
        long j = this.c;
        bu0 bu0Var = (bu0) obj;
        if (j != bu0Var.c) {
            return false;
        }
        if (j == 0) {
            return true;
        }
        gl7 gl7Var = this.b;
        gl7Var.getClass();
        gl7 gl7Var2 = bu0Var.b;
        gl7Var2.getClass();
        int i = gl7Var.b;
        int i2 = gl7Var2.b;
        long j2 = 0;
        while (j2 < this.c) {
            long jMin = Math.min(gl7Var.c - i, gl7Var2.c - i2);
            long j3 = 0;
            while (j3 < jMin) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (gl7Var.a[i] != gl7Var2.a[i2]) {
                    return false;
                }
                j3++;
                i = i3;
                i2 = i4;
            }
            if (i == gl7Var.c) {
                gl7Var = gl7Var.f;
                gl7Var.getClass();
                i = gl7Var.b;
            }
            if (i2 == gl7Var2.c) {
                gl7Var2 = gl7Var2.f;
                gl7Var2.getClass();
                i2 = gl7Var2.b;
            }
            j2 += jMin;
        }
        return true;
    }

    @Override // defpackage.wu0
    public final int f0(yz5 yz5Var) throws EOFException {
        yz5Var.getClass();
        int iD = defpackage.b.d(this, yz5Var, false);
        if (iD == -1) {
            return -1;
        }
        skip(yz5Var.c[iD].f());
        return iD;
    }

    @Override // defpackage.vu0, defpackage.s18, java.io.Flushable
    public final void flush() {
    }

    @Override // defpackage.wu0, defpackage.vu0
    public final bu0 getBuffer() {
        return this;
    }

    @Override // defpackage.vu0
    public final /* bridge */ /* synthetic */ vu0 h(long j) {
        B0(j);
        return this;
    }

    public final int hashCode() {
        gl7 gl7Var = this.b;
        if (gl7Var == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = gl7Var.c;
            for (int i3 = gl7Var.b; i3 < i2; i3++) {
                i = (i * 31) + gl7Var.a[i3];
            }
            gl7Var = gl7Var.f;
            gl7Var.getClass();
        } while (gl7Var != this.b);
        return i;
    }

    @Override // defpackage.wu0
    public final gx0 i(long j) throws EOFException {
        if (j < 0 || j > SieveCacheKt.NodeLinkMask) {
            c9.f(r01.c(j, "byteCount: "));
            return null;
        }
        if (this.c < j) {
            n7.e();
            return null;
        }
        if (j < 4096) {
            return new gx0(Z(j));
        }
        gx0 gx0VarX0 = x0((int) j);
        skip(j);
        return gx0VarX0;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // defpackage.vu0
    public final /* bridge */ /* synthetic */ vu0 j(int i, byte[] bArr) {
        write(bArr, 0, i);
        return this;
    }

    @Override // defpackage.vu0
    public final long j0(v48 v48Var) {
        v48Var.getClass();
        long j = 0;
        while (true) {
            long jT0 = v48Var.t0(this, 8192L);
            if (jT0 == -1) {
                return j;
            }
            j += jT0;
        }
    }

    @Override // defpackage.vu0
    public final /* bridge */ /* synthetic */ vu0 k(long j) {
        C0(j);
        return this;
    }

    public final short k0() throws EOFException {
        short s = readShort();
        return (short) (((s & 255) << 8) | ((65280 & s) >>> 8));
    }

    @Override // defpackage.vu0
    public final /* bridge */ /* synthetic */ vu0 l(String str) {
        I0(str);
        return this;
    }

    public final String n0(long j, Charset charset) throws EOFException {
        charset.getClass();
        if (j < 0 || j > SieveCacheKt.NodeLinkMask) {
            c9.f(r01.c(j, "byteCount: "));
            return null;
        }
        if (this.c < j) {
            n7.e();
            return null;
        }
        if (j == 0) {
            return "";
        }
        gl7 gl7Var = this.b;
        gl7Var.getClass();
        int i = gl7Var.b;
        if (((long) i) + j > gl7Var.c) {
            return new String(Z(j), charset);
        }
        int i2 = (int) j;
        String str = new String(gl7Var.a, i, i2, charset);
        int i3 = gl7Var.b + i2;
        gl7Var.b = i3;
        this.c -= j;
        if (i3 == gl7Var.c) {
            this.b = gl7Var.a();
            il7.a(gl7Var);
        }
        return str;
    }

    @Override // defpackage.wu0
    public final long o0(s18 s18Var) {
        long j = this.c;
        if (j > 0) {
            s18Var.H(this, j);
        }
        return j;
    }

    public final void p() throws EOFException {
        skip(this.c);
    }

    public final String q0() {
        return n0(this.c, ha1.b);
    }

    @Override // defpackage.v48
    public final wv8 r() {
        return wv8.d;
    }

    public final int r0() throws EOFException {
        int i;
        int i2;
        int i3;
        if (this.c == 0) {
            n7.e();
            return 0;
        }
        byte bQ = Q(0L);
        if ((bQ & 128) == 0) {
            i = bQ & 127;
            i3 = 0;
            i2 = 1;
        } else if ((bQ & 224) == 192) {
            i = bQ & 31;
            i2 = 2;
            i3 = 128;
        } else if ((bQ & 240) == 224) {
            i = bQ & 15;
            i2 = 3;
            i3 = 2048;
        } else {
            if ((bQ & 248) != 240) {
                skip(1L);
                return 65533;
            }
            i = bQ & 7;
            i2 = 4;
            i3 = 65536;
        }
        long j = i2;
        if (this.c < j) {
            StringBuilder sbC = n7.c(i2, "size < ", ": ");
            sbC.append(this.c);
            sbC.append(" (to read code point prefixed 0x");
            sbC.append(h.e(bQ));
            sbC.append(')');
            throw new EOFException(sbC.toString());
        }
        for (int i4 = 1; i4 < i2; i4++) {
            long j2 = i4;
            byte bQ2 = Q(j2);
            if ((bQ2 & 192) != 128) {
                skip(j2);
                return 65533;
            }
            i = (i << 6) | (bQ2 & 63);
        }
        skip(j);
        if (i > 1114111) {
            return 65533;
        }
        if ((55296 > i || i >= 57344) && i >= i3) {
            return i;
        }
        return 65533;
    }

    public final int read(byte[] bArr, int i, int i2) {
        bArr.getClass();
        h.b(bArr.length, i, i2);
        gl7 gl7Var = this.b;
        if (gl7Var == null) {
            return -1;
        }
        int iMin = Math.min(i2, gl7Var.c - gl7Var.b);
        byte[] bArr2 = gl7Var.a;
        int i3 = gl7Var.b;
        aq5.g(i, i3, i3 + iMin, bArr2, bArr);
        int i4 = gl7Var.b + iMin;
        gl7Var.b = i4;
        this.c -= (long) iMin;
        if (i4 == gl7Var.c) {
            this.b = gl7Var.a();
            il7.a(gl7Var);
        }
        return iMin;
    }

    @Override // defpackage.wu0
    public final byte readByte() throws EOFException {
        if (this.c == 0) {
            n7.e();
            return (byte) 0;
        }
        gl7 gl7Var = this.b;
        gl7Var.getClass();
        int i = gl7Var.b;
        int i2 = gl7Var.c;
        int i3 = i + 1;
        byte b2 = gl7Var.a[i];
        this.c--;
        if (i3 != i2) {
            gl7Var.b = i3;
            return b2;
        }
        this.b = gl7Var.a();
        il7.a(gl7Var);
        return b2;
    }

    @Override // defpackage.wu0
    public final int readInt() throws EOFException {
        if (this.c < 4) {
            n7.e();
            return 0;
        }
        gl7 gl7Var = this.b;
        gl7Var.getClass();
        int i = gl7Var.b;
        int i2 = gl7Var.c;
        if (i2 - i < 4) {
            return (readByte() & 255) | ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8);
        }
        byte[] bArr = gl7Var.a;
        int i3 = i + 3;
        int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
        int i5 = i + 4;
        int i6 = (bArr[i3] & 255) | i4;
        this.c -= 4;
        if (i5 != i2) {
            gl7Var.b = i5;
            return i6;
        }
        this.b = gl7Var.a();
        il7.a(gl7Var);
        return i6;
    }

    @Override // defpackage.wu0
    public final short readShort() throws EOFException {
        if (this.c < 2) {
            n7.e();
            return (short) 0;
        }
        gl7 gl7Var = this.b;
        gl7Var.getClass();
        int i = gl7Var.b;
        int i2 = gl7Var.c;
        if (i2 - i < 2) {
            return (short) ((readByte() & 255) | ((readByte() & 255) << 8));
        }
        byte[] bArr = gl7Var.a;
        int i3 = i + 1;
        int i4 = (bArr[i] & 255) << 8;
        int i5 = i + 2;
        int i6 = (bArr[i3] & 255) | i4;
        this.c -= 2;
        if (i5 == i2) {
            this.b = gl7Var.a();
            il7.a(gl7Var);
        } else {
            gl7Var.b = i5;
        }
        return (short) i6;
    }

    @Override // defpackage.wu0
    public final boolean request(long j) {
        return this.c >= j;
    }

    @Override // defpackage.wu0
    public final void skip(long j) throws EOFException {
        while (j > 0) {
            gl7 gl7Var = this.b;
            if (gl7Var == null) {
                n7.e();
                return;
            }
            int iMin = (int) Math.min(j, gl7Var.c - gl7Var.b);
            long j2 = iMin;
            this.c -= j2;
            j -= j2;
            int i = gl7Var.b + iMin;
            gl7Var.b = i;
            if (i == gl7Var.c) {
                this.b = gl7Var.a();
                il7.a(gl7Var);
            }
        }
    }

    @Override // defpackage.v48
    public final long t0(bu0 bu0Var, long j) {
        bu0Var.getClass();
        if (j < 0) {
            c9.f(r01.c(j, "byteCount < 0: "));
            return 0L;
        }
        long j2 = this.c;
        if (j2 == 0) {
            return -1L;
        }
        if (j > j2) {
            j = j2;
        }
        bu0Var.H(this, j);
        return j;
    }

    public final String toString() {
        return u0().toString();
    }

    public final gx0 u0() {
        long j = this.c;
        if (j <= SieveCacheKt.NodeLinkMask) {
            return x0((int) j);
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.c).toString());
    }

    public final long v() {
        long j = this.c;
        if (j == 0) {
            return 0L;
        }
        gl7 gl7Var = this.b;
        gl7Var.getClass();
        gl7 gl7Var2 = gl7Var.g;
        gl7Var2.getClass();
        int i = gl7Var2.c;
        return (i >= 8192 || !gl7Var2.e) ? j : j - ((long) (i - gl7Var2.b));
    }

    @Override // defpackage.vu0
    public final OutputStream v0() {
        return new b();
    }

    @Override // defpackage.wu0
    public final InputStream w0() {
        return new a();
    }

    public final void write(byte[] bArr, int i, int i2) {
        bArr.getClass();
        long j = i2;
        h.b(bArr.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            gl7 gl7VarY0 = y0(1);
            int iMin = Math.min(i3 - i, 8192 - gl7VarY0.c);
            int i4 = i + iMin;
            aq5.g(gl7VarY0.c, i, i4, bArr, gl7VarY0.a);
            gl7VarY0.c += iMin;
            i = i4;
        }
        this.c += j;
    }

    @Override // defpackage.vu0
    public final /* bridge */ /* synthetic */ vu0 writeByte(int i) {
        A0(i);
        return this;
    }

    @Override // defpackage.vu0
    public final /* bridge */ /* synthetic */ vu0 writeInt(int i) {
        D0(i);
        return this;
    }

    @Override // defpackage.vu0
    public final /* bridge */ /* synthetic */ vu0 writeShort(int i) {
        E0(i);
        return this;
    }

    public final gx0 x0(int i) {
        if (i == 0) {
            return gx0.e;
        }
        h.b(this.c, 0L, i);
        gl7 gl7Var = this.b;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            gl7Var.getClass();
            int i5 = gl7Var.c;
            int i6 = gl7Var.b;
            if (i5 == i6) {
                xg.d("s.limit == s.pos");
                return null;
            }
            i3 += i5 - i6;
            i4++;
            gl7Var = gl7Var.f;
        }
        byte[][] bArr = new byte[i4][];
        int[] iArr = new int[i4 * 2];
        gl7 gl7Var2 = this.b;
        int i7 = 0;
        while (i2 < i) {
            gl7Var2.getClass();
            bArr[i7] = gl7Var2.a;
            i2 += gl7Var2.c - gl7Var2.b;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = gl7Var2.b;
            gl7Var2.d = true;
            i7++;
            gl7Var2 = gl7Var2.f;
        }
        return new ul7(bArr, iArr);
    }

    public final bu0 y() {
        bu0 bu0Var = new bu0();
        if (this.c == 0) {
            return bu0Var;
        }
        gl7 gl7Var = this.b;
        gl7Var.getClass();
        gl7 gl7VarC = gl7Var.c();
        bu0Var.b = gl7VarC;
        gl7VarC.g = gl7VarC;
        gl7VarC.f = gl7VarC;
        for (gl7 gl7Var2 = gl7Var.f; gl7Var2 != gl7Var; gl7Var2 = gl7Var2.f) {
            gl7 gl7Var3 = gl7VarC.g;
            gl7Var3.getClass();
            gl7Var2.getClass();
            gl7Var3.b(gl7Var2.c());
        }
        bu0Var.c = this.c;
        return bu0Var;
    }

    public final gl7 y0(int i) {
        if (i < 1 || i > 8192) {
            fg.c("unexpected capacity");
            return null;
        }
        gl7 gl7Var = this.b;
        if (gl7Var == null) {
            gl7 gl7VarB = il7.b();
            this.b = gl7VarB;
            gl7VarB.g = gl7VarB;
            gl7VarB.f = gl7VarB;
            return gl7VarB;
        }
        gl7 gl7Var2 = gl7Var.g;
        gl7Var2.getClass();
        if (gl7Var2.c + i <= 8192 && gl7Var2.e) {
            return gl7Var2;
        }
        gl7 gl7VarB2 = il7.b();
        gl7Var2.b(gl7VarB2);
        return gl7VarB2;
    }

    public final void z0(gx0 gx0Var) {
        gx0Var.getClass();
        gx0Var.y(this, gx0Var.f());
    }

    public static final class b extends OutputStream {
        public b() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public final void flush() {
        }

        public final String toString() {
            return bu0.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            bArr.getClass();
            bu0.this.write(bArr, i, i2);
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
            bu0.this.A0(i);
        }
    }

    public static final class a extends InputStream {
        public a() {
        }

        @Override // java.io.InputStream
        public final int available() {
            return (int) Math.min(bu0.this.c, SieveCacheKt.NodeLinkMask);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.InputStream
        public final int read() {
            bu0 bu0Var = bu0.this;
            if (bu0Var.c > 0) {
                return bu0Var.readByte() & 255;
            }
            return -1;
        }

        public final String toString() {
            return bu0.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            bArr.getClass();
            return bu0.this.read(bArr, i, i2);
        }
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        int iRemaining = byteBuffer.remaining();
        int i = iRemaining;
        while (i > 0) {
            gl7 gl7VarY0 = y0(1);
            int iMin = Math.min(i, 8192 - gl7VarY0.c);
            byteBuffer.get(gl7VarY0.a, gl7VarY0.c, iMin);
            i -= iMin;
            gl7VarY0.c += iMin;
        }
        this.c += (long) iRemaining;
        return iRemaining;
    }

    @Override // defpackage.vu0
    public final vu0 write(byte[] bArr) {
        bArr.getClass();
        write(bArr, 0, bArr.length);
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        gl7 gl7Var = this.b;
        if (gl7Var == null) {
            return -1;
        }
        int iMin = Math.min(byteBuffer.remaining(), gl7Var.c - gl7Var.b);
        byteBuffer.put(gl7Var.a, gl7Var.b, iMin);
        int i = gl7Var.b + iMin;
        gl7Var.b = i;
        this.c -= (long) iMin;
        if (i == gl7Var.c) {
            this.b = gl7Var.a();
            il7.a(gl7Var);
        }
        return iMin;
    }
}
