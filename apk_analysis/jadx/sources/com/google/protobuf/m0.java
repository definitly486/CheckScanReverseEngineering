package com.google.protobuf;

import androidx.media3.extractor.ts.PsExtractor;
import androidx.window.core.layout.WindowSizeClass;
import defpackage.e2;
import defpackage.f2;
import defpackage.h79;
import defpackage.h8;
import defpackage.i2;
import defpackage.i8;
import defpackage.rz0;
import defpackage.xf;
import defpackage.xp;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class m0 {
    public static final b a;

    public static class a {
        public static void a(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (!d(b2)) {
                if ((((b2 + 112) + (b << 28)) >> 30) == 0 && !d(b3) && !d(b4)) {
                    int i2 = ((b & 7) << 18) | ((b2 & 63) << 12) | ((b3 & 63) << 6) | (b4 & 63);
                    cArr[i] = (char) ((i2 >>> 10) + 55232);
                    cArr[i + 1] = (char) ((i2 & 1023) + 56320);
                    return;
                }
            }
            throw InvalidProtocolBufferException.d();
        }

        public static void b(byte b, byte b2, byte b3, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (d(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || d(b3)))) {
                throw InvalidProtocolBufferException.d();
            }
            cArr[i] = (char) (((b & 15) << 12) | ((b2 & 63) << 6) | (b3 & 63));
        }

        public static void c(byte b, byte b2, char[] cArr, int i) throws InvalidProtocolBufferException {
            if (b < -62 || d(b2)) {
                throw InvalidProtocolBufferException.d();
            }
            cArr[i] = (char) (((b & 31) << 6) | (b2 & 63));
        }

        public static boolean d(byte b) {
            return b > -65;
        }
    }

    public static abstract class b {
        public static String b(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) < 0) {
                i8.d("buffer limit=%d, index=%d, limit=%d", new Object[]{Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)});
                return null;
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = byteBuffer.get(i);
                if (b < 0) {
                    break;
                }
                i++;
                cArr[i4] = (char) b;
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte b2 = byteBuffer.get(i);
                if (b2 >= 0) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) b2;
                    int i8 = i6;
                    while (i8 < i3) {
                        byte b3 = byteBuffer.get(i8);
                        if (b3 < 0) {
                            break;
                        }
                        i8++;
                        cArr[i7] = (char) b3;
                        i7++;
                    }
                    i5 = i7;
                    i = i8;
                } else if (b2 < -32) {
                    if (i6 >= i3) {
                        throw InvalidProtocolBufferException.d();
                    }
                    i += 2;
                    a.c(b2, byteBuffer.get(i6), cArr, i5);
                    i5++;
                } else if (b2 < -16) {
                    if (i6 >= i3 - 1) {
                        throw InvalidProtocolBufferException.d();
                    }
                    int i9 = i + 2;
                    i += 3;
                    a.b(b2, byteBuffer.get(i6), byteBuffer.get(i9), cArr, i5);
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw InvalidProtocolBufferException.d();
                    }
                    byte b4 = byteBuffer.get(i6);
                    int i10 = i + 3;
                    byte b5 = byteBuffer.get(i + 2);
                    i += 4;
                    a.a(b2, b4, b5, byteBuffer.get(i10), cArr, i5);
                    i5 += 2;
                }
            }
            return new String(cArr, 0, i5);
        }

        public abstract String a(byte[] bArr, int i, int i2);

        public abstract String c(ByteBuffer byteBuffer, int i, int i2);

        public abstract int d(String str, byte[] bArr, int i, int i2);

        public final boolean e(byte[] bArr, int i, int i2) {
            return f(0, bArr, i, i2) == 0;
        }

        public abstract int f(int i, byte[] bArr, int i2, int i3);
    }

    public static final class c extends b {
        @Override // com.google.protobuf.m0.b
        public final String a(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
            if ((i | i2 | ((bArr.length - i) - i2)) < 0) {
                i8.d("buffer length=%d, index=%d, size=%d", new Object[]{Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)});
                return null;
            }
            int i3 = i + i2;
            char[] cArr = new char[i2];
            int i4 = 0;
            while (i < i3) {
                byte b = bArr[i];
                if (b < 0) {
                    break;
                }
                i++;
                cArr[i4] = (char) b;
                i4++;
            }
            int i5 = i4;
            while (i < i3) {
                int i6 = i + 1;
                byte b2 = bArr[i];
                if (b2 >= 0) {
                    int i7 = i5 + 1;
                    cArr[i5] = (char) b2;
                    int i8 = i6;
                    while (i8 < i3) {
                        byte b3 = bArr[i8];
                        if (b3 < 0) {
                            break;
                        }
                        i8++;
                        cArr[i7] = (char) b3;
                        i7++;
                    }
                    i5 = i7;
                    i = i8;
                } else if (b2 < -32) {
                    if (i6 >= i3) {
                        throw InvalidProtocolBufferException.d();
                    }
                    i += 2;
                    a.c(b2, bArr[i6], cArr, i5);
                    i5++;
                } else if (b2 < -16) {
                    if (i6 >= i3 - 1) {
                        throw InvalidProtocolBufferException.d();
                    }
                    int i9 = i + 2;
                    i += 3;
                    a.b(b2, bArr[i6], bArr[i9], cArr, i5);
                    i5++;
                } else {
                    if (i6 >= i3 - 2) {
                        throw InvalidProtocolBufferException.d();
                    }
                    byte b4 = bArr[i6];
                    int i10 = i + 3;
                    byte b5 = bArr[i + 2];
                    i += 4;
                    a.a(b2, b4, b5, bArr[i10], cArr, i5);
                    i5 += 2;
                }
            }
            return new String(cArr, 0, i5);
        }

        @Override // com.google.protobuf.m0.b
        public final String c(ByteBuffer byteBuffer, int i, int i2) {
            return b.b(byteBuffer, i, i2);
        }

        @Override // com.google.protobuf.m0.b
        public final int d(String str, byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            char cCharAt;
            int length = str.length();
            int i5 = i2 + i;
            int i6 = 0;
            while (i6 < length && (i4 = i6 + i) < i5 && (cCharAt = str.charAt(i6)) < 128) {
                bArr[i4] = (byte) cCharAt;
                i6++;
            }
            if (i6 == length) {
                return i + length;
            }
            int i7 = i + i6;
            while (i6 < length) {
                char cCharAt2 = str.charAt(i6);
                if (cCharAt2 < 128 && i7 < i5) {
                    bArr[i7] = (byte) cCharAt2;
                    i7++;
                } else if (cCharAt2 < 2048 && i7 <= i5 - 2) {
                    int i8 = i7 + 1;
                    bArr[i7] = (byte) ((cCharAt2 >>> 6) | 960);
                    i7 += 2;
                    bArr[i8] = (byte) ((cCharAt2 & '?') | 128);
                } else {
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || i7 > i5 - 3) {
                        if (i7 > i5 - 4) {
                            if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i3 = i6 + 1) == str.length() || !Character.isSurrogatePair(cCharAt2, str.charAt(i3)))) {
                                throw new d(i6, length);
                            }
                            e2.e(cCharAt2, i7);
                            return 0;
                        }
                        int i9 = i6 + 1;
                        if (i9 != str.length()) {
                            char cCharAt3 = str.charAt(i9);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                bArr[i7] = (byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK);
                                bArr[i7 + 1] = (byte) (((codePoint >>> 12) & 63) | 128);
                                int i10 = i7 + 3;
                                bArr[i7 + 2] = (byte) (((codePoint >>> 6) & 63) | 128);
                                i7 += 4;
                                bArr[i10] = (byte) ((codePoint & 63) | 128);
                                i6 = i9;
                            } else {
                                i6 = i9;
                            }
                        }
                        throw new d(i6 - 1, length);
                    }
                    bArr[i7] = (byte) ((cCharAt2 >>> '\f') | WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND);
                    int i11 = i7 + 2;
                    bArr[i7 + 1] = (byte) (((cCharAt2 >>> 6) & 63) | 128);
                    i7 += 3;
                    bArr[i11] = (byte) ((cCharAt2 & '?') | 128);
                }
                i6++;
            }
            return i7;
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
        
            if (r12[r13] > (-65)) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x0047, code lost:
        
            if (r12[r13] > (-65)) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0082, code lost:
        
            if (r12[r13] > (-65)) goto L50;
         */
        @Override // com.google.protobuf.m0.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int f(int r11, byte[] r12, int r13, int r14) {
            /*
                Method dump skipped, instruction units count: 239
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.m0.c.f(int, byte[], int, int):int");
        }
    }

    public static class d extends IllegalArgumentException {
        public d(int i, int i2) {
            super(rz0.c(i, i2, "Unpaired surrogate at index ", " of "));
        }
    }

    public static final class e extends b {
        public static int g(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                b bVar = m0.a;
                if (i > -12) {
                    return -1;
                }
                return i;
            }
            if (i2 == 1) {
                return m0.c(i, h79.e(bArr, j));
            }
            if (i2 == 2) {
                return m0.d(i, h79.e(bArr, j), h79.e(bArr, j + 1));
            }
            xp.g();
            return 0;
        }

        @Override // com.google.protobuf.m0.b
        public final String a(byte[] bArr, int i, int i2) throws InvalidProtocolBufferException {
            Charset charset = q.a;
            String str = new String(bArr, i, i2, charset);
            if (str.contains("�") && !Arrays.equals(str.getBytes(charset), Arrays.copyOfRange(bArr, i, i2 + i))) {
                throw InvalidProtocolBufferException.d();
            }
            return str;
        }

        @Override // com.google.protobuf.m0.b
        public final String c(ByteBuffer byteBuffer, int i, int i2) throws InvalidProtocolBufferException {
            long j;
            byte bC;
            byte bC2;
            if ((i | i2 | ((byteBuffer.limit() - i) - i2)) < 0) {
                i8.d("buffer limit=%d, index=%d, limit=%d", new Object[]{Integer.valueOf(byteBuffer.limit()), Integer.valueOf(i), Integer.valueOf(i2)});
                return null;
            }
            long j2 = h79.c.a.getLong(byteBuffer, h79.g) + ((long) i);
            long j3 = ((long) i2) + j2;
            char[] cArr = new char[i2];
            int i3 = 0;
            while (true) {
                j = 1;
                if (j2 >= j3 || (bC2 = h79.c.c(j2)) < 0) {
                    break;
                }
                j2++;
                cArr[i3] = (char) bC2;
                i3++;
            }
            int i4 = i3;
            while (j2 < j3) {
                long j4 = j2 + j;
                h79.d dVar = h79.c;
                byte bC3 = dVar.c(j2);
                if (bC3 >= 0) {
                    int i5 = i4 + 1;
                    cArr[i4] = (char) bC3;
                    while (j4 < j3 && (bC = h79.c.c(j4)) >= 0) {
                        j4 += j;
                        cArr[i5] = (char) bC;
                        i5++;
                    }
                    i4 = i5;
                    j2 = j4;
                } else if (bC3 < -32) {
                    if (j4 >= j3) {
                        throw InvalidProtocolBufferException.d();
                    }
                    j2 += 2;
                    a.c(bC3, dVar.c(j4), cArr, i4);
                    i4++;
                } else if (bC3 < -16) {
                    if (j4 >= j3 - j) {
                        throw InvalidProtocolBufferException.d();
                    }
                    long j5 = 2 + j2;
                    j2 += 3;
                    a.b(bC3, dVar.c(j4), dVar.c(j5), cArr, i4);
                    i4++;
                } else {
                    if (j4 >= j3 - 2) {
                        throw InvalidProtocolBufferException.d();
                    }
                    byte bC4 = dVar.c(j4);
                    long j6 = j2 + 3;
                    byte bC5 = dVar.c(2 + j2);
                    j2 += 4;
                    a.a(bC3, bC4, bC5, dVar.c(j6), cArr, i4);
                    i4 += 2;
                }
                j = 1;
            }
            return new String(cArr, 0, i4);
        }

        @Override // com.google.protobuf.m0.b
        public final int d(String str, byte[] bArr, int i, int i2) {
            long j;
            long j2;
            int i3;
            char cCharAt;
            long j3 = i;
            long j4 = ((long) i2) + j3;
            int length = str.length();
            if (length > i2 || bArr.length - i2 < i) {
                i2.c(str.charAt(length - 1), i + i2);
                return 0;
            }
            int i4 = 0;
            while (true) {
                j = 1;
                if (i4 >= length || (cCharAt = str.charAt(i4)) >= 128) {
                    break;
                }
                h79.l(bArr, j3, (byte) cCharAt);
                i4++;
                j3 = 1 + j3;
            }
            if (i4 == length) {
                return (int) j3;
            }
            while (i4 < length) {
                char cCharAt2 = str.charAt(i4);
                if (cCharAt2 < 128 && j3 < j4) {
                    h79.l(bArr, j3, (byte) cCharAt2);
                    j2 = j;
                    j3 += j;
                } else if (cCharAt2 >= 2048 || j3 > j4 - 2) {
                    j2 = j;
                    if ((cCharAt2 >= 55296 && 57343 >= cCharAt2) || j3 > j4 - 3) {
                        if (j3 > j4 - 4) {
                            if (55296 <= cCharAt2 && cCharAt2 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(cCharAt2, str.charAt(i3)))) {
                                throw new d(i4, length);
                            }
                            f2.e(cCharAt2, j3);
                            return 0;
                        }
                        int i5 = i4 + 1;
                        if (i5 != length) {
                            char cCharAt3 = str.charAt(i5);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                h79.l(bArr, j3, (byte) ((codePoint >>> 18) | PsExtractor.VIDEO_STREAM_MASK));
                                h79.l(bArr, j3 + j2, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j5 = j3 + 3;
                                h79.l(bArr, 2 + j3, (byte) (((codePoint >>> 6) & 63) | 128));
                                j3 += 4;
                                h79.l(bArr, j5, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                            } else {
                                i4 = i5;
                            }
                        }
                        throw new d(i4 - 1, length);
                    }
                    h79.l(bArr, j3, (byte) ((cCharAt2 >>> '\f') | WindowSizeClass.HEIGHT_DP_MEDIUM_LOWER_BOUND));
                    long j6 = 2 + j3;
                    h79.l(bArr, j3 + j2, (byte) (((cCharAt2 >>> 6) & 63) | 128));
                    j3 += 3;
                    h79.l(bArr, j6, (byte) ((cCharAt2 & '?') | 128));
                } else {
                    j2 = j;
                    long j7 = j3 + j2;
                    h79.l(bArr, j3, (byte) ((cCharAt2 >>> 6) | 960));
                    j3 += 2;
                    h79.l(bArr, j7, (byte) ((cCharAt2 & '?') | 128));
                }
                i4++;
                j = j2;
            }
            return (int) j3;
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
        
            if (defpackage.h79.e(r21, r6) > (-65)) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x0069, code lost:
        
            if (defpackage.h79.e(r21, r6) > (-65)) goto L33;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x00b0, code lost:
        
            if (defpackage.h79.e(r21, r6) > (-65)) goto L54;
         */
        @Override // com.google.protobuf.m0.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int f(int r20, byte[] r21, int r22, int r23) {
            /*
                Method dump skipped, instruction units count: 433
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.m0.e.f(int, byte[], int, int):int");
        }
    }

    static {
        a = (h79.e && h79.d && !xf.a()) ? new e() : new c();
    }

    public static String a(ByteBuffer byteBuffer, int i, int i2) {
        b bVar = a;
        bVar.getClass();
        if (byteBuffer.hasArray()) {
            return bVar.a(byteBuffer.array(), byteBuffer.arrayOffset() + i, i2);
        }
        return byteBuffer.isDirect() ? bVar.c(byteBuffer, i, i2) : b.b(byteBuffer, i, i2);
    }

    public static int b(String str) {
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
                            if (Character.codePointAt(str, i) < 65536) {
                                throw new d(i, length2);
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
        if (i2 >= length) {
            return i2;
        }
        h8.e(((long) i2) + 4294967296L);
        return 0;
    }

    public static int c(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    public static int d(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static int e(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            if (b2 > -12) {
                return -1;
            }
            return b2;
        }
        if (i3 == 1) {
            return c(b2, bArr[i]);
        }
        if (i3 == 2) {
            return d(b2, bArr[i], bArr[i + 1]);
        }
        xp.g();
        return 0;
    }
}
