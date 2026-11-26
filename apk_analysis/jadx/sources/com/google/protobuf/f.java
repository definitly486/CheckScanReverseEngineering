package com.google.protobuf;

import androidx.tracing.Trace;
import androidx.work.WorkInfo;
import defpackage.ah;
import defpackage.cg;
import defpackage.fx0;
import defpackage.h79;
import defpackage.kv2;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f {
    public int a;
    public final int b = 100;
    public int c = Integer.MAX_VALUE;
    public g d;

    public static final class a extends f {
        public final byte[] e;
        public int f;
        public int g;
        public int h;
        public final int i;
        public int j;
        public int k = Integer.MAX_VALUE;

        public a(byte[] bArr, int i, int i2, boolean z) {
            this.e = bArr;
            this.f = i2 + i;
            this.h = i;
            this.i = i;
        }

        @Override // com.google.protobuf.f
        public final int A() {
            return G();
        }

        @Override // com.google.protobuf.f
        public final long B() {
            return H();
        }

        @Override // com.google.protobuf.f
        public final boolean C(int i) throws InvalidProtocolBufferException {
            int i2 = i & 7;
            int i3 = 0;
            if (i2 != 0) {
                if (i2 == 1) {
                    K(8);
                    return true;
                }
                if (i2 == 2) {
                    K(G());
                    return true;
                }
                if (i2 == 3) {
                    D();
                    a(((i >>> 3) << 3) | 4);
                    return true;
                }
                if (i2 == 4) {
                    return false;
                }
                if (i2 != 5) {
                    throw InvalidProtocolBufferException.e();
                }
                K(4);
                return true;
            }
            int i4 = this.f - this.h;
            byte[] bArr = this.e;
            if (i4 >= 10) {
                while (i3 < 10) {
                    int i5 = this.h;
                    this.h = i5 + 1;
                    if (bArr[i5] < 0) {
                        i3++;
                    }
                }
                throw InvalidProtocolBufferException.f();
            }
            while (i3 < 10) {
                int i6 = this.h;
                if (i6 == this.f) {
                    throw InvalidProtocolBufferException.j();
                }
                this.h = i6 + 1;
                if (bArr[i6] < 0) {
                    i3++;
                }
            }
            throw InvalidProtocolBufferException.f();
            return true;
        }

        public final int E() throws InvalidProtocolBufferException {
            int i = this.h;
            if (this.f - i < 4) {
                throw InvalidProtocolBufferException.j();
            }
            this.h = i + 4;
            byte[] bArr = this.e;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public final long F() throws InvalidProtocolBufferException {
            int i = this.h;
            if (this.f - i < 8) {
                throw InvalidProtocolBufferException.j();
            }
            this.h = i + 8;
            byte[] bArr = this.e;
            return ((((long) bArr[i + 1]) & 255) << 8) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
        }

        public final int G() {
            int i;
            int i2 = this.h;
            int i3 = this.f;
            if (i3 != i2) {
                int i4 = i2 + 1;
                byte[] bArr = this.e;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.h = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i2 + 2;
                    int i6 = (bArr[i4] << 7) ^ b;
                    if (i6 < 0) {
                        i = i6 ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                    } else {
                        int i7 = i2 + 3;
                        int i8 = (bArr[i5] << 14) ^ i6;
                        if (i8 >= 0) {
                            i = i8 ^ 16256;
                        } else {
                            int i9 = i2 + 4;
                            int i10 = i8 ^ (bArr[i7] << 21);
                            if (i10 < 0) {
                                i = (-2080896) ^ i10;
                            } else {
                                i7 = i2 + 5;
                                byte b2 = bArr[i9];
                                int i11 = (i10 ^ (b2 << 28)) ^ 266354560;
                                if (b2 < 0) {
                                    i9 = i2 + 6;
                                    if (bArr[i7] < 0) {
                                        i7 = i2 + 7;
                                        if (bArr[i9] < 0) {
                                            i9 = i2 + 8;
                                            if (bArr[i7] < 0) {
                                                i7 = i2 + 9;
                                                if (bArr[i9] < 0) {
                                                    int i12 = i2 + 10;
                                                    if (bArr[i7] >= 0) {
                                                        i5 = i12;
                                                        i = i11;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i = i11;
                                }
                                i = i11;
                            }
                            i5 = i9;
                        }
                        i5 = i7;
                    }
                    this.h = i5;
                    return i;
                }
            }
            return (int) I();
        }

        public final long H() {
            long j;
            long j2;
            long j3;
            long j4;
            int i = this.h;
            int i2 = this.f;
            if (i2 != i) {
                int i3 = i + 1;
                byte[] bArr = this.e;
                byte b = bArr[i];
                if (b >= 0) {
                    this.h = i3;
                    return b;
                }
                if (i2 - i3 >= 9) {
                    int i4 = i + 2;
                    int i5 = (bArr[i3] << 7) ^ b;
                    if (i5 < 0) {
                        j = i5 ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                    } else {
                        int i6 = i + 3;
                        int i7 = (bArr[i4] << 14) ^ i5;
                        if (i7 >= 0) {
                            j = i7 ^ 16256;
                            i4 = i6;
                        } else {
                            int i8 = i + 4;
                            int i9 = i7 ^ (bArr[i6] << 21);
                            if (i9 < 0) {
                                j4 = (-2080896) ^ i9;
                            } else {
                                long j5 = i9;
                                i4 = i + 5;
                                long j6 = j5 ^ (((long) bArr[i8]) << 28);
                                if (j6 >= 0) {
                                    j3 = 266354560;
                                } else {
                                    i8 = i + 6;
                                    long j7 = j6 ^ (((long) bArr[i4]) << 35);
                                    if (j7 < 0) {
                                        j2 = -34093383808L;
                                    } else {
                                        i4 = i + 7;
                                        j6 = j7 ^ (((long) bArr[i8]) << 42);
                                        if (j6 >= 0) {
                                            j3 = 4363953127296L;
                                        } else {
                                            i8 = i + 8;
                                            j7 = j6 ^ (((long) bArr[i4]) << 49);
                                            if (j7 < 0) {
                                                j2 = -558586000294016L;
                                            } else {
                                                i4 = i + 9;
                                                long j8 = (j7 ^ (((long) bArr[i8]) << 56)) ^ 71499008037633920L;
                                                if (j8 < 0) {
                                                    int i10 = i + 10;
                                                    if (bArr[i4] >= 0) {
                                                        i4 = i10;
                                                    }
                                                }
                                                j = j8;
                                            }
                                        }
                                    }
                                    j4 = j2 ^ j7;
                                }
                                j = j3 ^ j6;
                            }
                            i4 = i8;
                            j = j4;
                        }
                    }
                    this.h = i4;
                    return j;
                }
            }
            return I();
        }

        public final long I() throws InvalidProtocolBufferException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                int i2 = this.h;
                if (i2 == this.f) {
                    throw InvalidProtocolBufferException.j();
                }
                this.h = i2 + 1;
                byte b = this.e[i2];
                j |= ((long) (b & 127)) << i;
                if ((b & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.f();
        }

        public final void J() {
            int i = this.f + this.g;
            this.f = i;
            int i2 = i - this.i;
            int i3 = this.k;
            if (i2 <= i3) {
                this.g = 0;
                return;
            }
            int i4 = i2 - i3;
            this.g = i4;
            this.f = i - i4;
        }

        public final void K(int i) throws InvalidProtocolBufferException {
            if (i >= 0) {
                int i2 = this.f;
                int i3 = this.h;
                if (i <= i2 - i3) {
                    this.h = i3 + i;
                    return;
                }
            }
            if (i >= 0) {
                throw InvalidProtocolBufferException.j();
            }
            throw InvalidProtocolBufferException.g();
        }

        @Override // com.google.protobuf.f
        public final void a(int i) throws InvalidProtocolBufferException {
            if (this.j != i) {
                throw InvalidProtocolBufferException.a();
            }
        }

        @Override // com.google.protobuf.f
        public final int d() {
            return this.h - this.i;
        }

        @Override // com.google.protobuf.f
        public final boolean e() {
            return this.h == this.f;
        }

        @Override // com.google.protobuf.f
        public final void h(int i) {
            this.k = i;
            J();
        }

        @Override // com.google.protobuf.f
        public final int i(int i) throws InvalidProtocolBufferException {
            if (i < 0) {
                throw InvalidProtocolBufferException.g();
            }
            int iD = d() + i;
            if (iD < 0) {
                throw InvalidProtocolBufferException.i();
            }
            int i2 = this.k;
            if (iD > i2) {
                throw InvalidProtocolBufferException.j();
            }
            this.k = iD;
            J();
            return i2;
        }

        @Override // com.google.protobuf.f
        public final boolean j() {
            return H() != 0;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x002f A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:16:0x0031 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:17:0x0033  */
        /* JADX WARN: Code duplicated, block: B:20:0x003d  */
        /* JADX WARN: Code duplicated, block: B:22:0x0042  */
        @Override // com.google.protobuf.f
        public final fx0.h k() throws InvalidProtocolBufferException {
            byte[] bArrCopyOfRange;
            int iG = G();
            byte[] bArr = this.e;
            if (iG > 0) {
                int i = this.f;
                int i2 = this.h;
                if (iG <= i - i2) {
                    fx0.h hVarD = fx0.d(bArr, i2, iG);
                    this.h += iG;
                    return hVarD;
                }
            }
            if (iG == 0) {
                return fx0.c;
            }
            if (iG > 0) {
                int i3 = this.f;
                int i4 = this.h;
                if (iG <= i3 - i4) {
                    int i5 = iG + i4;
                    this.h = i5;
                    bArrCopyOfRange = Arrays.copyOfRange(bArr, i4, i5);
                } else {
                    if (iG <= 0) {
                        throw InvalidProtocolBufferException.j();
                    }
                    if (iG == 0) {
                        throw InvalidProtocolBufferException.g();
                    }
                    bArrCopyOfRange = q.b;
                }
            } else {
                if (iG <= 0) {
                    throw InvalidProtocolBufferException.j();
                }
                if (iG == 0) {
                    throw InvalidProtocolBufferException.g();
                }
                bArrCopyOfRange = q.b;
            }
            fx0.h hVar = fx0.c;
            return new fx0.h(bArrCopyOfRange);
        }

        @Override // com.google.protobuf.f
        public final double l() {
            return Double.longBitsToDouble(F());
        }

        @Override // com.google.protobuf.f
        public final int m() {
            return G();
        }

        @Override // com.google.protobuf.f
        public final int n() {
            return E();
        }

        @Override // com.google.protobuf.f
        public final long o() {
            return F();
        }

        @Override // com.google.protobuf.f
        public final float p() {
            return Float.intBitsToFloat(E());
        }

        @Override // com.google.protobuf.f
        public final int q() {
            return G();
        }

        @Override // com.google.protobuf.f
        public final long r() {
            return H();
        }

        @Override // com.google.protobuf.f
        public final int t() {
            return E();
        }

        @Override // com.google.protobuf.f
        public final long u() {
            return F();
        }

        @Override // com.google.protobuf.f
        public final int v() {
            return f.b(G());
        }

        @Override // com.google.protobuf.f
        public final long w() {
            return f.c(H());
        }

        @Override // com.google.protobuf.f
        public final String x() throws InvalidProtocolBufferException {
            int iG = G();
            if (iG > 0) {
                int i = this.f;
                int i2 = this.h;
                if (iG <= i - i2) {
                    String str = new String(this.e, i2, iG, q.a);
                    this.h += iG;
                    return str;
                }
            }
            if (iG == 0) {
                return "";
            }
            if (iG < 0) {
                throw InvalidProtocolBufferException.g();
            }
            throw InvalidProtocolBufferException.j();
        }

        @Override // com.google.protobuf.f
        public final String y() throws InvalidProtocolBufferException {
            int iG = G();
            if (iG > 0) {
                int i = this.f;
                int i2 = this.h;
                if (iG <= i - i2) {
                    String strA = m0.a.a(this.e, i2, iG);
                    this.h += iG;
                    return strA;
                }
            }
            if (iG == 0) {
                return "";
            }
            if (iG <= 0) {
                throw InvalidProtocolBufferException.g();
            }
            throw InvalidProtocolBufferException.j();
        }

        @Override // com.google.protobuf.f
        public final int z() throws InvalidProtocolBufferException {
            if (e()) {
                this.j = 0;
                return 0;
            }
            int iG = G();
            this.j = iG;
            if ((iG >>> 3) != 0) {
                return iG;
            }
            throw InvalidProtocolBufferException.b();
        }
    }

    public static final class b extends f {
        public final InputStream e;
        public final byte[] f;
        public int g;
        public int h;
        public int i;
        public int j;
        public int k;
        public int l = Integer.MAX_VALUE;

        public b(InputStream inputStream) {
            q.a(inputStream, "input");
            this.e = inputStream;
            this.f = new byte[4096];
            this.g = 0;
            this.i = 0;
            this.k = 0;
        }

        @Override // com.google.protobuf.f
        public final int A() {
            return J();
        }

        @Override // com.google.protobuf.f
        public final long B() {
            return K();
        }

        @Override // com.google.protobuf.f
        public final boolean C(int i) throws InvalidProtocolBufferException {
            int i2 = i & 7;
            int i3 = 0;
            if (i2 != 0) {
                if (i2 == 1) {
                    O(8);
                    return true;
                }
                if (i2 == 2) {
                    O(J());
                    return true;
                }
                if (i2 == 3) {
                    D();
                    a(((i >>> 3) << 3) | 4);
                    return true;
                }
                if (i2 == 4) {
                    return false;
                }
                if (i2 != 5) {
                    throw InvalidProtocolBufferException.e();
                }
                O(4);
                return true;
            }
            int i4 = this.g - this.i;
            byte[] bArr = this.f;
            if (i4 >= 10) {
                while (i3 < 10) {
                    int i5 = this.i;
                    this.i = i5 + 1;
                    if (bArr[i5] < 0) {
                        i3++;
                    }
                }
                throw InvalidProtocolBufferException.f();
            }
            while (i3 < 10) {
                if (this.i == this.g) {
                    N(1);
                }
                int i6 = this.i;
                this.i = i6 + 1;
                if (bArr[i6] < 0) {
                    i3++;
                }
            }
            throw InvalidProtocolBufferException.f();
            return true;
        }

        public final byte[] E(int i) throws IOException {
            byte[] bArrF = F(i);
            if (bArrF != null) {
                return bArrF;
            }
            int i2 = this.i;
            int i3 = this.g;
            int length = i3 - i2;
            this.k += i3;
            this.i = 0;
            this.g = 0;
            ArrayList<byte[]> arrayListG = G(i - length);
            byte[] bArr = new byte[i];
            System.arraycopy(this.f, i2, bArr, 0, length);
            for (byte[] bArr2 : arrayListG) {
                System.arraycopy(bArr2, 0, bArr, length, bArr2.length);
                length += bArr2.length;
            }
            return bArr;
        }

        public final byte[] F(int i) throws IOException {
            if (i == 0) {
                return q.b;
            }
            if (i < 0) {
                throw InvalidProtocolBufferException.g();
            }
            int i2 = this.k;
            int i3 = this.i;
            int i4 = i2 + i3 + i;
            if (i4 - this.c > 0) {
                throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
            }
            int i5 = this.l;
            if (i4 > i5) {
                O((i5 - i2) - i3);
                throw InvalidProtocolBufferException.j();
            }
            int i6 = this.g - i3;
            int i7 = i - i6;
            InputStream inputStream = this.e;
            if (i7 >= 4096) {
                try {
                    if (i7 > inputStream.available()) {
                        return null;
                    }
                } catch (InvalidProtocolBufferException e) {
                    e.c = true;
                    throw e;
                }
            }
            byte[] bArr = new byte[i];
            System.arraycopy(this.f, this.i, bArr, 0, i6);
            this.k += this.g;
            this.i = 0;
            this.g = 0;
            while (i6 < i) {
                try {
                    int i8 = inputStream.read(bArr, i6, i - i6);
                    if (i8 == -1) {
                        throw InvalidProtocolBufferException.j();
                    }
                    this.k += i8;
                    i6 += i8;
                } catch (InvalidProtocolBufferException e2) {
                    e2.c = true;
                    throw e2;
                }
            }
            return bArr;
        }

        public final ArrayList G(int i) throws IOException {
            ArrayList arrayList = new ArrayList();
            while (i > 0) {
                int iMin = Math.min(i, 4096);
                byte[] bArr = new byte[iMin];
                int i2 = 0;
                while (i2 < iMin) {
                    int i3 = this.e.read(bArr, i2, iMin - i2);
                    if (i3 == -1) {
                        throw InvalidProtocolBufferException.j();
                    }
                    this.k += i3;
                    i2 += i3;
                }
                i -= iMin;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        public final int H() throws InvalidProtocolBufferException {
            int i = this.i;
            if (this.g - i < 4) {
                N(4);
                i = this.i;
            }
            this.i = i + 4;
            byte[] bArr = this.f;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public final long I() throws InvalidProtocolBufferException {
            int i = this.i;
            if (this.g - i < 8) {
                N(8);
                i = this.i;
            }
            this.i = i + 8;
            byte[] bArr = this.f;
            return ((((long) bArr[i + 1]) & 255) << 8) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
        }

        public final int J() {
            int i;
            int i2 = this.i;
            int i3 = this.g;
            if (i3 != i2) {
                int i4 = i2 + 1;
                byte[] bArr = this.f;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.i = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i2 + 2;
                    int i6 = (bArr[i4] << 7) ^ b;
                    if (i6 < 0) {
                        i = i6 ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                    } else {
                        int i7 = i2 + 3;
                        int i8 = (bArr[i5] << 14) ^ i6;
                        if (i8 >= 0) {
                            i = i8 ^ 16256;
                        } else {
                            int i9 = i2 + 4;
                            int i10 = i8 ^ (bArr[i7] << 21);
                            if (i10 < 0) {
                                i = (-2080896) ^ i10;
                            } else {
                                i7 = i2 + 5;
                                byte b2 = bArr[i9];
                                int i11 = (i10 ^ (b2 << 28)) ^ 266354560;
                                if (b2 < 0) {
                                    i9 = i2 + 6;
                                    if (bArr[i7] < 0) {
                                        i7 = i2 + 7;
                                        if (bArr[i9] < 0) {
                                            i9 = i2 + 8;
                                            if (bArr[i7] < 0) {
                                                i7 = i2 + 9;
                                                if (bArr[i9] < 0) {
                                                    int i12 = i2 + 10;
                                                    if (bArr[i7] >= 0) {
                                                        i5 = i12;
                                                        i = i11;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i = i11;
                                }
                                i = i11;
                            }
                            i5 = i9;
                        }
                        i5 = i7;
                    }
                    this.i = i5;
                    return i;
                }
            }
            return (int) L();
        }

        public final long K() {
            long j;
            long j2;
            long j3;
            long j4;
            int i = this.i;
            int i2 = this.g;
            if (i2 != i) {
                int i3 = i + 1;
                byte[] bArr = this.f;
                byte b = bArr[i];
                if (b >= 0) {
                    this.i = i3;
                    return b;
                }
                if (i2 - i3 >= 9) {
                    int i4 = i + 2;
                    int i5 = (bArr[i3] << 7) ^ b;
                    if (i5 < 0) {
                        j = i5 ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                    } else {
                        int i6 = i + 3;
                        int i7 = (bArr[i4] << 14) ^ i5;
                        if (i7 >= 0) {
                            j = i7 ^ 16256;
                            i4 = i6;
                        } else {
                            int i8 = i + 4;
                            int i9 = i7 ^ (bArr[i6] << 21);
                            if (i9 < 0) {
                                j4 = (-2080896) ^ i9;
                            } else {
                                long j5 = i9;
                                i4 = i + 5;
                                long j6 = j5 ^ (((long) bArr[i8]) << 28);
                                if (j6 >= 0) {
                                    j3 = 266354560;
                                } else {
                                    i8 = i + 6;
                                    long j7 = j6 ^ (((long) bArr[i4]) << 35);
                                    if (j7 < 0) {
                                        j2 = -34093383808L;
                                    } else {
                                        i4 = i + 7;
                                        j6 = j7 ^ (((long) bArr[i8]) << 42);
                                        if (j6 >= 0) {
                                            j3 = 4363953127296L;
                                        } else {
                                            i8 = i + 8;
                                            j7 = j6 ^ (((long) bArr[i4]) << 49);
                                            if (j7 < 0) {
                                                j2 = -558586000294016L;
                                            } else {
                                                i4 = i + 9;
                                                long j8 = (j7 ^ (((long) bArr[i8]) << 56)) ^ 71499008037633920L;
                                                if (j8 < 0) {
                                                    int i10 = i + 10;
                                                    if (bArr[i4] >= 0) {
                                                        i4 = i10;
                                                    }
                                                }
                                                j = j8;
                                            }
                                        }
                                    }
                                    j4 = j2 ^ j7;
                                }
                                j = j3 ^ j6;
                            }
                            i4 = i8;
                            j = j4;
                        }
                    }
                    this.i = i4;
                    return j;
                }
            }
            return L();
        }

        public final long L() throws InvalidProtocolBufferException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                if (this.i == this.g) {
                    N(1);
                }
                int i2 = this.i;
                this.i = i2 + 1;
                byte b = this.f[i2];
                j |= ((long) (b & 127)) << i;
                if ((b & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.f();
        }

        public final void M() {
            int i = this.g + this.h;
            this.g = i;
            int i2 = this.k + i;
            int i3 = this.l;
            if (i2 <= i3) {
                this.h = 0;
                return;
            }
            int i4 = i2 - i3;
            this.h = i4;
            this.g = i - i4;
        }

        public final void N(int i) throws InvalidProtocolBufferException {
            if (P(i)) {
                return;
            }
            if (i <= (this.c - this.k) - this.i) {
                throw InvalidProtocolBufferException.j();
            }
            throw new InvalidProtocolBufferException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
        }

        public final void O(int i) throws InvalidProtocolBufferException {
            int i2 = this.g;
            int i3 = this.i;
            if (i <= i2 - i3 && i >= 0) {
                this.i = i3 + i;
                return;
            }
            InputStream inputStream = this.e;
            if (i < 0) {
                throw InvalidProtocolBufferException.g();
            }
            int i4 = this.k;
            int i5 = i4 + i3;
            int i6 = i5 + i;
            int i7 = this.l;
            if (i6 > i7) {
                O((i7 - i4) - i3);
                throw InvalidProtocolBufferException.j();
            }
            this.k = i5;
            int i8 = i2 - i3;
            this.g = 0;
            this.i = 0;
            while (i8 < i) {
                long j = i - i8;
                try {
                    try {
                        long jSkip = inputStream.skip(j);
                        if (jSkip < 0 || jSkip > j) {
                            throw new IllegalStateException(inputStream.getClass() + "#skip returned invalid result: " + jSkip + "\nThe InputStream implementation is buggy.");
                        }
                        if (jSkip == 0) {
                            break;
                        } else {
                            i8 += (int) jSkip;
                        }
                    } catch (InvalidProtocolBufferException e) {
                        e.c = true;
                        throw e;
                    }
                } catch (Throwable th) {
                    this.k += i8;
                    M();
                    throw th;
                }
            }
            this.k += i8;
            M();
            if (i8 >= i) {
                return;
            }
            int i9 = this.g;
            int i10 = i9 - this.i;
            this.i = i9;
            N(1);
            while (true) {
                int i11 = i - i10;
                int i12 = this.g;
                if (i11 <= i12) {
                    this.i = i11;
                    return;
                } else {
                    i10 += i12;
                    this.i = i12;
                    N(1);
                }
            }
        }

        public final boolean P(int i) throws IOException {
            InputStream inputStream = this.e;
            int i2 = this.i;
            int i3 = i2 + i;
            int i4 = this.g;
            if (i3 <= i4) {
                ah.f(kv2.b(i, "refillBuffer() called when ", " bytes were already available in buffer"));
                return false;
            }
            int i5 = this.c;
            int i6 = this.k;
            if (i <= (i5 - i6) - i2 && i6 + i2 + i <= this.l) {
                byte[] bArr = this.f;
                if (i2 > 0) {
                    if (i4 > i2) {
                        System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                    }
                    i6 = this.k + i2;
                    this.k = i6;
                    i4 = this.g - i2;
                    this.g = i4;
                    this.i = 0;
                }
                try {
                    int i7 = inputStream.read(bArr, i4, Math.min(bArr.length - i4, (this.c - i6) - i4));
                    if (i7 == 0 || i7 < -1 || i7 > bArr.length) {
                        throw new IllegalStateException(inputStream.getClass() + "#read(byte[]) returned invalid result: " + i7 + "\nThe InputStream implementation is buggy.");
                    }
                    if (i7 > 0) {
                        this.g += i7;
                        M();
                        if (this.g >= i) {
                            return true;
                        }
                        return P(i);
                    }
                } catch (InvalidProtocolBufferException e) {
                    e.c = true;
                    throw e;
                }
            }
            return false;
        }

        @Override // com.google.protobuf.f
        public final void a(int i) throws InvalidProtocolBufferException {
            if (this.j != i) {
                throw InvalidProtocolBufferException.a();
            }
        }

        @Override // com.google.protobuf.f
        public final int d() {
            return this.k + this.i;
        }

        @Override // com.google.protobuf.f
        public final boolean e() {
            return this.i == this.g && !P(1);
        }

        @Override // com.google.protobuf.f
        public final void h(int i) {
            this.l = i;
            M();
        }

        @Override // com.google.protobuf.f
        public final int i(int i) throws InvalidProtocolBufferException {
            if (i < 0) {
                throw InvalidProtocolBufferException.g();
            }
            int i2 = this.k + this.i + i;
            int i3 = this.l;
            if (i2 > i3) {
                throw InvalidProtocolBufferException.j();
            }
            this.l = i2;
            M();
            return i3;
        }

        @Override // com.google.protobuf.f
        public final boolean j() {
            return K() != 0;
        }

        @Override // com.google.protobuf.f
        public final fx0.h k() throws IOException {
            int iJ = J();
            int i = this.g;
            int i2 = this.i;
            int i3 = i - i2;
            byte[] bArr = this.f;
            if (iJ <= i3 && iJ > 0) {
                fx0.h hVarD = fx0.d(bArr, i2, iJ);
                this.i += iJ;
                return hVarD;
            }
            if (iJ == 0) {
                return fx0.c;
            }
            if (iJ < 0) {
                throw InvalidProtocolBufferException.g();
            }
            byte[] bArrF = F(iJ);
            if (bArrF != null) {
                return fx0.d(bArrF, 0, bArrF.length);
            }
            int i4 = this.i;
            int i5 = this.g;
            int length = i5 - i4;
            this.k += i5;
            this.i = 0;
            this.g = 0;
            ArrayList<byte[]> arrayListG = G(iJ - length);
            byte[] bArr2 = new byte[iJ];
            System.arraycopy(bArr, i4, bArr2, 0, length);
            for (byte[] bArr3 : arrayListG) {
                System.arraycopy(bArr3, 0, bArr2, length, bArr3.length);
                length += bArr3.length;
            }
            fx0.h hVar = fx0.c;
            return new fx0.h(bArr2);
        }

        @Override // com.google.protobuf.f
        public final double l() {
            return Double.longBitsToDouble(I());
        }

        @Override // com.google.protobuf.f
        public final int m() {
            return J();
        }

        @Override // com.google.protobuf.f
        public final int n() {
            return H();
        }

        @Override // com.google.protobuf.f
        public final long o() {
            return I();
        }

        @Override // com.google.protobuf.f
        public final float p() {
            return Float.intBitsToFloat(H());
        }

        @Override // com.google.protobuf.f
        public final int q() {
            return J();
        }

        @Override // com.google.protobuf.f
        public final long r() {
            return K();
        }

        @Override // com.google.protobuf.f
        public final int t() {
            return H();
        }

        @Override // com.google.protobuf.f
        public final long u() {
            return I();
        }

        @Override // com.google.protobuf.f
        public final int v() {
            return f.b(J());
        }

        @Override // com.google.protobuf.f
        public final long w() {
            return f.c(K());
        }

        @Override // com.google.protobuf.f
        public final String x() throws InvalidProtocolBufferException {
            int iJ = J();
            byte[] bArr = this.f;
            if (iJ > 0) {
                int i = this.g;
                int i2 = this.i;
                if (iJ <= i - i2) {
                    String str = new String(bArr, i2, iJ, q.a);
                    this.i += iJ;
                    return str;
                }
            }
            if (iJ == 0) {
                return "";
            }
            if (iJ < 0) {
                throw InvalidProtocolBufferException.g();
            }
            if (iJ > this.g) {
                return new String(E(iJ), q.a);
            }
            N(iJ);
            String str2 = new String(bArr, this.i, iJ, q.a);
            this.i += iJ;
            return str2;
        }

        @Override // com.google.protobuf.f
        public final String y() throws IOException {
            int iJ = J();
            int i = this.i;
            int i2 = this.g;
            int i3 = i2 - i;
            byte[] bArrE = this.f;
            if (iJ <= i3 && iJ > 0) {
                this.i = i + iJ;
            } else {
                if (iJ == 0) {
                    return "";
                }
                if (iJ < 0) {
                    throw InvalidProtocolBufferException.g();
                }
                i = 0;
                if (iJ <= i2) {
                    N(iJ);
                    this.i = iJ;
                } else {
                    bArrE = E(iJ);
                }
            }
            return m0.a.a(bArrE, i, iJ);
        }

        @Override // com.google.protobuf.f
        public final int z() throws InvalidProtocolBufferException {
            if (e()) {
                this.j = 0;
                return 0;
            }
            int iJ = J();
            this.j = iJ;
            if ((iJ >>> 3) != 0) {
                return iJ;
            }
            throw InvalidProtocolBufferException.b();
        }
    }

    public static final class c extends f {
        public final ByteBuffer e;
        public final long f;
        public long g;
        public long h;
        public final long i;
        public int j;
        public int k;
        public int l = Integer.MAX_VALUE;

        public c(ByteBuffer byteBuffer, boolean z) {
            this.e = byteBuffer;
            h79.d dVar = h79.c;
            long j = dVar.a.getLong(byteBuffer, h79.g);
            this.f = j;
            this.g = ((long) byteBuffer.limit()) + j;
            long jPosition = j + ((long) byteBuffer.position());
            this.h = jPosition;
            this.i = jPosition;
        }

        @Override // com.google.protobuf.f
        public final int A() {
            return G();
        }

        @Override // com.google.protobuf.f
        public final long B() {
            return H();
        }

        @Override // com.google.protobuf.f
        public final boolean C(int i) throws InvalidProtocolBufferException {
            int i2 = i & 7;
            int i3 = 0;
            if (i2 != 0) {
                if (i2 == 1) {
                    K(8);
                    return true;
                }
                if (i2 == 2) {
                    K(G());
                    return true;
                }
                if (i2 == 3) {
                    D();
                    a(((i >>> 3) << 3) | 4);
                    return true;
                }
                if (i2 == 4) {
                    return false;
                }
                if (i2 != 5) {
                    throw InvalidProtocolBufferException.e();
                }
                K(4);
                return true;
            }
            if (((int) (this.g - this.h)) >= 10) {
                while (i3 < 10) {
                    long j = this.h;
                    this.h = j + 1;
                    if (h79.c.c(j) < 0) {
                        i3++;
                    }
                }
                throw InvalidProtocolBufferException.f();
            }
            while (i3 < 10) {
                long j2 = this.h;
                if (j2 == this.g) {
                    throw InvalidProtocolBufferException.j();
                }
                this.h = j2 + 1;
                if (h79.c.c(j2) < 0) {
                    i3++;
                }
            }
            throw InvalidProtocolBufferException.f();
            return true;
        }

        public final int E() throws InvalidProtocolBufferException {
            long j = this.h;
            if (this.g - j < 4) {
                throw InvalidProtocolBufferException.j();
            }
            this.h = 4 + j;
            h79.d dVar = h79.c;
            return ((dVar.c(j + 3) & 255) << 24) | (dVar.c(j) & 255) | ((dVar.c(1 + j) & 255) << 8) | ((dVar.c(2 + j) & 255) << 16);
        }

        public final long F() throws InvalidProtocolBufferException {
            long j = this.h;
            if (this.g - j < 8) {
                throw InvalidProtocolBufferException.j();
            }
            this.h = 8 + j;
            h79.d dVar = h79.c;
            return ((((long) dVar.c(j + 7)) & 255) << 56) | (((long) dVar.c(j)) & 255) | ((((long) dVar.c(1 + j)) & 255) << 8) | ((((long) dVar.c(2 + j)) & 255) << 16) | ((((long) dVar.c(3 + j)) & 255) << 24) | ((((long) dVar.c(4 + j)) & 255) << 32) | ((((long) dVar.c(5 + j)) & 255) << 40) | ((((long) dVar.c(6 + j)) & 255) << 48);
        }

        /* JADX WARN: Code duplicated, block: B:36:0x0099 A[PHI: r6
          0x0099: PHI (r6v7 long) = (r6v6 long), (r6v8 long), (r6v10 long) binds: [B:25:0x006d, B:29:0x0080, B:33:0x0091] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code restructure failed: missing block: B:33:0x0091, code lost:
        
            if (r4.c(r8) < 0) goto L34;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int G() {
            /*
                r12 = this;
                long r0 = r12.h
                long r2 = r12.g
                int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                if (r2 != 0) goto La
                goto L93
            La:
                r2 = 1
                long r2 = r2 + r0
                h79$d r4 = defpackage.h79.c
                byte r5 = r4.c(r0)
                if (r5 < 0) goto L18
                r12.h = r2
                return r5
            L18:
                long r6 = r12.g
                long r6 = r6 - r2
                r8 = 9
                int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
                if (r6 >= 0) goto L23
                goto L93
            L23:
                r6 = 2
                long r6 = r6 + r0
                byte r2 = r4.c(r2)
                int r2 = r2 << 7
                r2 = r2 ^ r5
                if (r2 >= 0) goto L33
                r0 = r2 ^ (-128(0xffffffffffffff80, float:NaN))
                goto La0
            L33:
                r10 = 3
                long r10 = r10 + r0
                byte r3 = r4.c(r6)
                int r3 = r3 << 14
                r2 = r2 ^ r3
                if (r2 < 0) goto L43
                r0 = r2 ^ 16256(0x3f80, float:2.278E-41)
            L41:
                r6 = r10
                goto La0
            L43:
                r5 = 4
                long r6 = r0 + r5
                byte r3 = r4.c(r10)
                int r3 = r3 << 21
                r2 = r2 ^ r3
                if (r2 >= 0) goto L55
                r0 = -2080896(0xffffffffffe03f80, float:NaN)
                r0 = r0 ^ r2
                goto La0
            L55:
                r10 = 5
                long r10 = r10 + r0
                byte r3 = r4.c(r6)
                int r5 = r3 << 28
                r2 = r2 ^ r5
                r5 = 266354560(0xfe03f80, float:2.2112565E-29)
                r2 = r2 ^ r5
                if (r3 >= 0) goto L9e
                r5 = 6
                long r6 = r0 + r5
                byte r3 = r4.c(r10)
                if (r3 >= 0) goto L99
                r10 = 7
                long r10 = r10 + r0
                byte r3 = r4.c(r6)
                if (r3 >= 0) goto L9e
                r5 = 8
                long r6 = r0 + r5
                byte r3 = r4.c(r10)
                if (r3 >= 0) goto L99
                long r8 = r8 + r0
                byte r3 = r4.c(r6)
                if (r3 >= 0) goto L9b
                r5 = 10
                long r6 = r0 + r5
                byte r0 = r4.c(r8)
                if (r0 >= 0) goto L99
            L93:
                long r0 = r12.I()
                int r12 = (int) r0
                return r12
            L99:
                r0 = r2
                goto La0
            L9b:
                r0 = r2
                r6 = r8
                goto La0
            L9e:
                r0 = r2
                goto L41
            La0:
                r12.h = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.f.c.G():int");
        }

        public final long H() {
            long j;
            long j2;
            long j3;
            int i;
            long j4 = this.h;
            if (this.g != j4) {
                long j5 = 1 + j4;
                h79.d dVar = h79.c;
                byte bC = dVar.c(j4);
                if (bC >= 0) {
                    this.h = j5;
                    return bC;
                }
                if (this.g - j5 >= 9) {
                    long j6 = 2 + j4;
                    int iC = (dVar.c(j5) << 7) ^ bC;
                    if (iC >= 0) {
                        long j7 = 3 + j4;
                        int iC2 = iC ^ (dVar.c(j6) << 14);
                        if (iC2 < 0) {
                            j6 = j4 + 4;
                            int iC3 = iC2 ^ (dVar.c(j7) << 21);
                            if (iC3 < 0) {
                                i = (-2080896) ^ iC3;
                            } else {
                                j7 = 5 + j4;
                                long jC = ((long) iC3) ^ (((long) dVar.c(j6)) << 28);
                                if (jC >= 0) {
                                    j3 = 266354560;
                                } else {
                                    long j8 = 6 + j4;
                                    long jC2 = jC ^ (((long) dVar.c(j7)) << 35);
                                    if (jC2 < 0) {
                                        j2 = -34093383808L;
                                    } else {
                                        j7 = 7 + j4;
                                        jC = jC2 ^ (((long) dVar.c(j8)) << 42);
                                        if (jC >= 0) {
                                            j3 = 4363953127296L;
                                        } else {
                                            j8 = 8 + j4;
                                            jC2 = jC ^ (((long) dVar.c(j7)) << 49);
                                            if (jC2 < 0) {
                                                j2 = -558586000294016L;
                                            } else {
                                                long j9 = j4 + 9;
                                                long jC3 = (jC2 ^ (((long) dVar.c(j8)) << 56)) ^ 71499008037633920L;
                                                if (jC3 < 0) {
                                                    long j10 = j4 + 10;
                                                    if (dVar.c(j9) >= 0) {
                                                        j6 = j10;
                                                        j = jC3;
                                                    }
                                                } else {
                                                    j = jC3;
                                                    j6 = j9;
                                                }
                                            }
                                        }
                                    }
                                    j = j2 ^ jC2;
                                    j6 = j8;
                                }
                                j = j3 ^ jC;
                            }
                            this.h = j6;
                            return j;
                        }
                        j = iC2 ^ 16256;
                        j6 = j7;
                        this.h = j6;
                        return j;
                    }
                    i = iC ^ WorkInfo.STOP_REASON_FOREGROUND_SERVICE_TIMEOUT;
                    j = i;
                    this.h = j6;
                    return j;
                }
            }
            return I();
        }

        public final long I() throws InvalidProtocolBufferException {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                long j2 = this.h;
                if (j2 == this.g) {
                    throw InvalidProtocolBufferException.j();
                }
                this.h = 1 + j2;
                byte bC = h79.c.c(j2);
                j |= ((long) (bC & 127)) << i;
                if ((bC & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.f();
        }

        public final void J() {
            long j = this.g + ((long) this.j);
            this.g = j;
            int i = (int) (j - this.i);
            int i2 = this.l;
            if (i <= i2) {
                this.j = 0;
                return;
            }
            int i3 = i - i2;
            this.j = i3;
            this.g = j - ((long) i3);
        }

        public final void K(int i) throws InvalidProtocolBufferException {
            if (i >= 0) {
                long j = this.g;
                long j2 = this.h;
                if (i <= ((int) (j - j2))) {
                    this.h = j2 + ((long) i);
                    return;
                }
            }
            if (i >= 0) {
                throw InvalidProtocolBufferException.j();
            }
            throw InvalidProtocolBufferException.g();
        }

        @Override // com.google.protobuf.f
        public final void a(int i) throws InvalidProtocolBufferException {
            if (this.k != i) {
                throw InvalidProtocolBufferException.a();
            }
        }

        @Override // com.google.protobuf.f
        public final int d() {
            return (int) (this.h - this.i);
        }

        @Override // com.google.protobuf.f
        public final boolean e() {
            return this.h == this.g;
        }

        @Override // com.google.protobuf.f
        public final void h(int i) {
            this.l = i;
            J();
        }

        @Override // com.google.protobuf.f
        public final int i(int i) throws InvalidProtocolBufferException {
            if (i < 0) {
                throw InvalidProtocolBufferException.g();
            }
            int iD = d() + i;
            int i2 = this.l;
            if (iD > i2) {
                throw InvalidProtocolBufferException.j();
            }
            this.l = iD;
            J();
            return i2;
        }

        @Override // com.google.protobuf.f
        public final boolean j() {
            return H() != 0;
        }

        @Override // com.google.protobuf.f
        public final fx0.h k() throws InvalidProtocolBufferException {
            int iG = G();
            if (iG > 0) {
                long j = this.g;
                long j2 = this.h;
                if (iG <= ((int) (j - j2))) {
                    byte[] bArr = new byte[iG];
                    long j3 = iG;
                    h79.c.a(j2, bArr, 0L, j3);
                    this.h += j3;
                    fx0.h hVar = fx0.c;
                    return new fx0.h(bArr);
                }
            }
            if (iG == 0) {
                return fx0.c;
            }
            if (iG < 0) {
                throw InvalidProtocolBufferException.g();
            }
            throw InvalidProtocolBufferException.j();
        }

        @Override // com.google.protobuf.f
        public final double l() {
            return Double.longBitsToDouble(F());
        }

        @Override // com.google.protobuf.f
        public final int m() {
            return G();
        }

        @Override // com.google.protobuf.f
        public final int n() {
            return E();
        }

        @Override // com.google.protobuf.f
        public final long o() {
            return F();
        }

        @Override // com.google.protobuf.f
        public final float p() {
            return Float.intBitsToFloat(E());
        }

        @Override // com.google.protobuf.f
        public final int q() {
            return G();
        }

        @Override // com.google.protobuf.f
        public final long r() {
            return H();
        }

        @Override // com.google.protobuf.f
        public final int t() {
            return E();
        }

        @Override // com.google.protobuf.f
        public final long u() {
            return F();
        }

        @Override // com.google.protobuf.f
        public final int v() {
            return f.b(G());
        }

        @Override // com.google.protobuf.f
        public final long w() {
            return f.c(H());
        }

        @Override // com.google.protobuf.f
        public final String x() throws InvalidProtocolBufferException {
            int iG = G();
            if (iG > 0) {
                long j = this.g;
                long j2 = this.h;
                if (iG <= ((int) (j - j2))) {
                    byte[] bArr = new byte[iG];
                    long j3 = iG;
                    h79.c.a(j2, bArr, 0L, j3);
                    String str = new String(bArr, q.a);
                    this.h += j3;
                    return str;
                }
            }
            if (iG == 0) {
                return "";
            }
            if (iG < 0) {
                throw InvalidProtocolBufferException.g();
            }
            throw InvalidProtocolBufferException.j();
        }

        @Override // com.google.protobuf.f
        public final String y() throws InvalidProtocolBufferException {
            int iG = G();
            if (iG > 0) {
                long j = this.g;
                long j2 = this.h;
                if (iG <= ((int) (j - j2))) {
                    String strA = m0.a(this.e, (int) (j2 - this.f), iG);
                    this.h += (long) iG;
                    return strA;
                }
            }
            if (iG == 0) {
                return "";
            }
            if (iG <= 0) {
                throw InvalidProtocolBufferException.g();
            }
            throw InvalidProtocolBufferException.j();
        }

        @Override // com.google.protobuf.f
        public final int z() throws InvalidProtocolBufferException {
            if (e()) {
                this.k = 0;
                return 0;
            }
            int iG = G();
            this.k = iG;
            if ((iG >>> 3) != 0) {
                return iG;
            }
            throw InvalidProtocolBufferException.b();
        }
    }

    public static int b(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long c(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    public static a f(byte[] bArr, int i, int i2, boolean z) {
        a aVar = new a(bArr, i, i2, z);
        try {
            aVar.i(i2);
            return aVar;
        } catch (InvalidProtocolBufferException e) {
            cg.h(e);
            return null;
        }
    }

    public static f g(InputStream inputStream) {
        if (inputStream != null) {
            return new b(inputStream);
        }
        byte[] bArr = q.b;
        return f(bArr, 0, bArr.length, false);
    }

    public static int s(int i, InputStream inputStream) throws IOException {
        if ((i & 128) == 0) {
            return i;
        }
        int i2 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        int i3 = 7;
        while (i3 < 32) {
            int i4 = inputStream.read();
            if (i4 == -1) {
                throw InvalidProtocolBufferException.j();
            }
            i2 |= (i4 & Trace.MAX_TRACE_LABEL_LENGTH) << i3;
            if ((i4 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        while (i3 < 64) {
            int i5 = inputStream.read();
            if (i5 == -1) {
                throw InvalidProtocolBufferException.j();
            }
            if ((i5 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        throw InvalidProtocolBufferException.f();
    }

    public abstract int A();

    public abstract long B();

    public abstract boolean C(int i);

    public final void D() throws InvalidProtocolBufferException {
        boolean zC;
        do {
            int iZ = z();
            if (iZ == 0) {
                return;
            }
            int i = this.a;
            if (i >= this.b) {
                throw new InvalidProtocolBufferException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            }
            this.a = i + 1;
            zC = C(iZ);
            this.a--;
        } while (zC);
    }

    public abstract void a(int i);

    public abstract int d();

    public abstract boolean e();

    public abstract void h(int i);

    public abstract int i(int i);

    public abstract boolean j();

    public abstract fx0.h k();

    public abstract double l();

    public abstract int m();

    public abstract int n();

    public abstract long o();

    public abstract float p();

    public abstract int q();

    public abstract long r();

    public abstract int t();

    public abstract long u();

    public abstract int v();

    public abstract long w();

    public abstract String x();

    public abstract String y();

    public abstract int z();
}
