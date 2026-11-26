package defpackage;

import androidx.tracing.Trace;
import com.google.android.gms.internal.measurement.d;
import com.google.android.gms.internal.measurement.zzacr;
import com.google.android.gms.internal.measurement.zzaef;
import com.google.android.gms.internal.measurement.zzaeh;
import com.google.android.gms.internal.measurement.zzaga;

/* JADX INFO: loaded from: classes4.dex */
public final class hqa {
    public static int a(byte[] bArr, int i, gqa gqaVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return b(b, bArr, i2, gqaVar);
        }
        gqaVar.a = b;
        return i2;
    }

    public static int b(int i, byte[] bArr, int i2, gqa gqaVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        if (b >= 0) {
            gqaVar.a = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            gqaVar.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            gqaVar.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            gqaVar.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                gqaVar.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int c(byte[] bArr, int i, gqa gqaVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            gqaVar.b = j;
            return i2;
        }
        int i3 = i + 2;
        byte b = bArr[i2];
        long j2 = (j & 127) | (((long) (b & 127)) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= ((long) (b2 & 127)) << i4;
            b = b2;
            i3 = i5;
        }
        gqaVar.b = j2;
        return i3;
    }

    public static int d(int i, byte[] bArr) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static long e(int i, byte[] bArr) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public static int f(byte[] bArr, int i, gqa gqaVar) throws zzaeh {
        int iA = a(bArr, i, gqaVar);
        int i2 = gqaVar.a;
        if (i2 < 0) {
            xg.e("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 == 0) {
            gqaVar.c = "";
            return iA;
        }
        gqaVar.c = gta.d(bArr, iA, i2);
        return iA + i2;
    }

    public static int g(byte[] bArr, int i, gqa gqaVar) throws zzaeh {
        int iA = a(bArr, i, gqaVar);
        int i2 = gqaVar.a;
        if (i2 < 0) {
            xg.e("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iA) {
            xg.e("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        if (i2 == 0) {
            gqaVar.c = zzacr.zza;
            return iA;
        }
        gqaVar.c = zzacr.zzj(bArr, iA, i2);
        return iA + i2;
    }

    public static int h(nsa nsaVar, byte[] bArr, int i, int i2, gqa gqaVar) throws zzaeh {
        Object objZza = nsaVar.zza();
        int i3 = i(objZza, nsaVar, bArr, i, i2, gqaVar);
        nsaVar.a(objZza);
        gqaVar.c = objZza;
        return i3;
    }

    public static int i(Object obj, nsa nsaVar, byte[] bArr, int i, int i2, gqa gqaVar) throws zzaeh {
        int iB = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iB = b(i3, bArr, iB, gqaVar);
            i3 = gqaVar.a;
        }
        int i4 = iB;
        if (i3 < 0 || i3 > i2 - i4) {
            xg.e("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i5 = gqaVar.e + 1;
        gqaVar.e = i5;
        if (i5 >= 100) {
            xg.e("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int i6 = i4 + i3;
        nsaVar.c(obj, bArr, i4, i6, gqaVar);
        gqaVar.e--;
        gqaVar.c = obj;
        return i6;
    }

    public static int j(Object obj, nsa nsaVar, byte[] bArr, int i, int i2, int i3, gqa gqaVar) throws zzaeh {
        d dVar = (d) nsaVar;
        int i4 = gqaVar.e + 1;
        gqaVar.e = i4;
        if (i4 >= 100) {
            xg.e("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int iY = dVar.y(obj, bArr, i, i2, i3, gqaVar);
        gqaVar.e--;
        gqaVar.c = obj;
        return iY;
    }

    public static int k(int i, byte[] bArr, int i2, int i3, zzaef zzaefVar, gqa gqaVar) {
        kra kraVar = (kra) zzaefVar;
        int iA = a(bArr, i2, gqaVar);
        kraVar.zzh(gqaVar.a);
        while (iA < i3) {
            int iA2 = a(bArr, iA, gqaVar);
            if (i != gqaVar.a) {
                break;
            }
            iA = a(bArr, iA2, gqaVar);
            kraVar.zzh(gqaVar.a);
        }
        return iA;
    }

    public static int l(byte[] bArr, int i, zzaef zzaefVar, gqa gqaVar) throws zzaeh {
        kra kraVar = (kra) zzaefVar;
        int iA = a(bArr, i, gqaVar);
        int i2 = gqaVar.a + iA;
        while (iA < i2) {
            iA = a(bArr, iA, gqaVar);
            kraVar.zzh(gqaVar.a);
        }
        if (iA == i2) {
            return iA;
        }
        xg.e("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return 0;
    }

    public static int m(nsa nsaVar, int i, byte[] bArr, int i2, int i3, zzaef zzaefVar, gqa gqaVar) throws zzaeh {
        int iH = h(nsaVar, bArr, i2, i3, gqaVar);
        zzaefVar.add(gqaVar.c);
        while (iH < i3) {
            int iA = a(bArr, iH, gqaVar);
            if (i != gqaVar.a) {
                break;
            }
            iH = h(nsaVar, bArr, iA, i3, gqaVar);
            zzaefVar.add(gqaVar.c);
        }
        return iH;
    }

    public static int n(int i, byte[] bArr, int i2, int i3, zzaga zzagaVar, gqa gqaVar) throws zzaeh {
        if ((i >>> 3) == 0) {
            xg.e("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iC = c(bArr, i2, gqaVar);
            zzagaVar.b(i, Long.valueOf(gqaVar.b));
            return iC;
        }
        if (i4 == 1) {
            zzagaVar.b(i, Long.valueOf(e(i2, bArr)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iA = a(bArr, i2, gqaVar);
            int i5 = gqaVar.a;
            if (i5 < 0) {
                xg.e("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return 0;
            }
            if (i5 > bArr.length - iA) {
                xg.e("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0;
            }
            if (i5 == 0) {
                zzagaVar.b(i, zzacr.zza);
            } else {
                zzagaVar.b(i, zzacr.zzj(bArr, iA, i5));
            }
            return iA + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzagaVar.b(i, Integer.valueOf(d(i2, bArr)));
                return i2 + 4;
            }
            xg.e("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i6 = (i & (-8)) | 4;
        zzaga zzagaVarA = zzaga.a();
        int i7 = gqaVar.e + 1;
        gqaVar.e = i7;
        if (i7 >= 100) {
            xg.e("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int i8 = 0;
        while (i2 < i3) {
            int iA2 = a(bArr, i2, gqaVar);
            int i9 = gqaVar.a;
            if (i9 == i6) {
                i8 = i9;
                i2 = iA2;
                break;
            }
            i2 = n(i9, bArr, iA2, i3, zzagaVarA, gqaVar);
            i8 = i9;
        }
        gqaVar.e--;
        if (i2 > i3 || i8 != i6) {
            xg.e("Failed to parse the message.");
            return 0;
        }
        zzagaVar.b(i, zzagaVarA);
        return i2;
    }

    public static int o(int i, byte[] bArr, int i2, int i3, gqa gqaVar) throws zzaeh {
        if ((i >>> 3) == 0) {
            xg.e("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return c(bArr, i2, gqaVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return a(bArr, i2, gqaVar) + gqaVar.a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            xg.e("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = a(bArr, i2, gqaVar);
            i6 = gqaVar.a;
            if (i6 == i5) {
                break;
            }
            i2 = o(i6, bArr, i2, i3, gqaVar);
        }
        if (i2 <= i3 && i6 == i5) {
            return i2;
        }
        xg.e("Failed to parse the message.");
        return 0;
    }
}
