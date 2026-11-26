package defpackage;

import androidx.tracing.Trace;
import com.google.android.gms.internal.auth.c;
import com.google.android.gms.internal.auth.zzef;
import com.google.android.gms.internal.auth.zzez;
import com.google.android.gms.internal.auth.zzfb;
import com.google.android.gms.internal.auth.zzha;

/* JADX INFO: loaded from: classes4.dex */
public final class n7b {
    public static int a(byte[] bArr, int i, h7b h7bVar) throws zzfb {
        int iF = f(bArr, i, h7bVar);
        int i2 = h7bVar.a;
        if (i2 < 0) {
            throw zzfb.b();
        }
        if (i2 > bArr.length - iF) {
            throw zzfb.d();
        }
        if (i2 == 0) {
            h7bVar.c = zzef.zzb;
            return iF;
        }
        h7bVar.c = zzef.zzk(bArr, iF, i2);
        return iF + i2;
    }

    public static int b(int i, byte[] bArr) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int c(cjb cjbVar, byte[] bArr, int i, int i2, int i3, h7b h7bVar) {
        Object objZzd = cjbVar.zzd();
        int iJ = j(objZzd, cjbVar, bArr, i, i2, i3, h7bVar);
        cjbVar.zze(objZzd);
        h7bVar.c = objZzd;
        return iJ;
    }

    public static int d(cjb cjbVar, int i, byte[] bArr, int i2, int i3, zzez zzezVar, h7b h7bVar) throws zzfb {
        Object objZzd = cjbVar.zzd();
        cjb cjbVar2 = cjbVar;
        byte[] bArr2 = bArr;
        int i4 = i3;
        h7b h7bVar2 = h7bVar;
        int iK = k(objZzd, cjbVar2, bArr2, i2, i4, h7bVar2);
        cjbVar2.zze(objZzd);
        h7bVar2.c = objZzd;
        zzezVar.add(objZzd);
        while (iK < i4) {
            h7b h7bVar3 = h7bVar2;
            int i5 = i4;
            int iF = f(bArr2, iK, h7bVar3);
            if (i != h7bVar3.a) {
                break;
            }
            byte[] bArr3 = bArr2;
            cjb cjbVar3 = cjbVar2;
            Object objZzd2 = cjbVar3.zzd();
            iK = k(objZzd2, cjbVar3, bArr3, iF, i5, h7bVar3);
            cjbVar2 = cjbVar3;
            bArr2 = bArr3;
            i4 = i5;
            h7bVar2 = h7bVar3;
            cjbVar2.zze(objZzd2);
            h7bVar2.c = objZzd2;
            zzezVar.add(objZzd2);
        }
        return iK;
    }

    public static int e(int i, byte[] bArr, int i2, int i3, zzha zzhaVar, h7b h7bVar) throws zzfb {
        if ((i >>> 3) == 0) {
            throw new zzfb("Protocol message contained an invalid tag (zero).");
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int i5 = i(bArr, i2, h7bVar);
            zzhaVar.b(i, Long.valueOf(h7bVar.b));
            return i5;
        }
        if (i4 == 1) {
            zzhaVar.b(i, Long.valueOf(l(i2, bArr)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iF = f(bArr, i2, h7bVar);
            int i6 = h7bVar.a;
            if (i6 < 0) {
                throw zzfb.b();
            }
            if (i6 > bArr.length - iF) {
                throw zzfb.d();
            }
            if (i6 == 0) {
                zzhaVar.b(i, zzef.zzb);
            } else {
                zzhaVar.b(i, zzef.zzk(bArr, iF, i6));
            }
            return iF + i6;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw new zzfb("Protocol message contained an invalid tag (zero).");
            }
            zzhaVar.b(i, Integer.valueOf(b(i2, bArr)));
            return i2 + 4;
        }
        int i7 = (i & (-8)) | 4;
        zzha zzhaVarA = zzha.a();
        int i8 = 0;
        while (i2 < i3) {
            int iF2 = f(bArr, i2, h7bVar);
            i8 = h7bVar.a;
            if (i8 == i7) {
                i2 = iF2;
                break;
            }
            i2 = e(i8, bArr, iF2, i3, zzhaVarA, h7bVar);
        }
        if (i2 > i3 || i8 != i7) {
            throw new zzfb("Failed to parse the message.");
        }
        zzhaVar.b(i, zzhaVarA);
        return i2;
    }

    public static int f(byte[] bArr, int i, h7b h7bVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return g(b, bArr, i2, h7bVar);
        }
        h7bVar.a = b;
        return i2;
    }

    public static int g(int i, byte[] bArr, int i2, h7b h7bVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        if (b >= 0) {
            h7bVar.a = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            h7bVar.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            h7bVar.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            h7bVar.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                h7bVar.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int h(int i, byte[] bArr, int i2, int i3, zzez zzezVar, h7b h7bVar) {
        qcb qcbVar = (qcb) zzezVar;
        int iF = f(bArr, i2, h7bVar);
        qcbVar.b(h7bVar.a);
        while (iF < i3) {
            int iF2 = f(bArr, iF, h7bVar);
            if (i != h7bVar.a) {
                break;
            }
            iF = f(bArr, iF2, h7bVar);
            qcbVar.b(h7bVar.a);
        }
        return iF;
    }

    public static int i(byte[] bArr, int i, h7b h7bVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            h7bVar.b = j;
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
        h7bVar.b = j2;
        return i3;
    }

    public static int j(Object obj, cjb cjbVar, byte[] bArr, int i, int i2, int i3, h7b h7bVar) {
        int iJ = ((c) cjbVar).j(obj, bArr, i, i2, i3, h7bVar);
        h7bVar.c = obj;
        return iJ;
    }

    public static int k(Object obj, cjb cjbVar, byte[] bArr, int i, int i2, h7b h7bVar) throws zzfb {
        int iG = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iG = g(i3, bArr, iG, h7bVar);
            i3 = h7bVar.a;
        }
        int i4 = iG;
        if (i3 < 0 || i3 > i2 - i4) {
            throw zzfb.d();
        }
        int i5 = i4 + i3;
        cjbVar.e(obj, bArr, i4, i5, h7bVar);
        h7bVar.c = obj;
        return i5;
    }

    public static long l(int i, byte[] bArr) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }
}
