package defpackage;

import androidx.tracing.Trace;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.b;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeo;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzep;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzgt;

/* JADX INFO: loaded from: classes4.dex */
public final class c2b {
    public static int a(byte[] bArr, int i, a2b a2bVar) {
        int iG = g(bArr, i, a2bVar);
        int i2 = a2bVar.a;
        if (i2 < 0) {
            nz0.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iG) {
            nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        if (i2 == 0) {
            a2bVar.c = zzdf.zzb;
            return iG;
        }
        a2bVar.c = zzdf.zzr(bArr, iG, i2);
        return iG + i2;
    }

    public static int b(int i, byte[] bArr) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int c(jib jibVar, int i, byte[] bArr, int i2, int i3, zzeo zzeoVar, a2b a2bVar) {
        Object objZze = jibVar.zze();
        jib jibVar2 = jibVar;
        byte[] bArr2 = bArr;
        int i4 = i3;
        a2b a2bVar2 = a2bVar;
        int iL = l(objZze, jibVar2, bArr2, i2, i4, a2bVar2);
        jibVar2.b(objZze);
        a2bVar2.c = objZze;
        zzeoVar.add(objZze);
        while (iL < i4) {
            a2b a2bVar3 = a2bVar2;
            int i5 = i4;
            int iG = g(bArr2, iL, a2bVar3);
            if (i != a2bVar3.a) {
                break;
            }
            byte[] bArr3 = bArr2;
            jib jibVar3 = jibVar2;
            Object objZze2 = jibVar3.zze();
            iL = l(objZze2, jibVar3, bArr3, iG, i5, a2bVar3);
            jibVar2 = jibVar3;
            bArr2 = bArr3;
            i4 = i5;
            a2bVar2 = a2bVar3;
            jibVar2.b(objZze2);
            a2bVar2.c = objZze2;
            zzeoVar.add(objZze2);
        }
        return iL;
    }

    public static int d(byte[] bArr, int i, zzeo zzeoVar, a2b a2bVar) {
        hab habVar = (hab) zzeoVar;
        int iG = g(bArr, i, a2bVar);
        int i2 = a2bVar.a + iG;
        while (iG < i2) {
            iG = g(bArr, iG, a2bVar);
            habVar.c(a2bVar.a);
        }
        if (iG == i2) {
            return iG;
        }
        nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return 0;
    }

    public static int e(byte[] bArr, int i, a2b a2bVar) {
        int iG = g(bArr, i, a2bVar);
        int i2 = a2bVar.a;
        if (i2 < 0) {
            nz0.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 == 0) {
            a2bVar.c = "";
            return iG;
        }
        a2bVar.c = new String(bArr, iG, i2, zzep.a);
        return iG + i2;
    }

    public static int f(int i, byte[] bArr, int i2, int i3, zzgt zzgtVar, a2b a2bVar) {
        if ((i >>> 3) == 0) {
            nz0.c("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iJ = j(bArr, i2, a2bVar);
            zzgtVar.b(i, Long.valueOf(a2bVar.b));
            return iJ;
        }
        if (i4 == 1) {
            zzgtVar.b(i, Long.valueOf(n(i2, bArr)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iG = g(bArr, i2, a2bVar);
            int i5 = a2bVar.a;
            if (i5 < 0) {
                nz0.c("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return 0;
            }
            if (i5 > bArr.length - iG) {
                nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0;
            }
            if (i5 == 0) {
                zzgtVar.b(i, zzdf.zzb);
            } else {
                zzgtVar.b(i, zzdf.zzr(bArr, iG, i5));
            }
            return iG + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzgtVar.b(i, Integer.valueOf(b(i2, bArr)));
                return i2 + 4;
            }
            nz0.c("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i6 = (i & (-8)) | 4;
        zzgt zzgtVarA = zzgt.a();
        int i7 = a2bVar.e + 1;
        a2bVar.e = i7;
        if (i7 >= 100) {
            nz0.c("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int i8 = 0;
        while (i2 < i3) {
            int iG2 = g(bArr, i2, a2bVar);
            int i9 = a2bVar.a;
            if (i9 == i6) {
                i8 = i9;
                i2 = iG2;
                break;
            }
            i2 = f(i9, bArr, iG2, i3, zzgtVarA, a2bVar);
            i8 = i9;
        }
        a2bVar.e--;
        if (i2 > i3 || i8 != i6) {
            nz0.c("Failed to parse the message.");
            return 0;
        }
        zzgtVar.b(i, zzgtVarA);
        return i2;
    }

    public static int g(byte[] bArr, int i, a2b a2bVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return h(b, bArr, i2, a2bVar);
        }
        a2bVar.a = b;
        return i2;
    }

    public static int h(int i, byte[] bArr, int i2, a2b a2bVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        if (b >= 0) {
            a2bVar.a = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            a2bVar.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            a2bVar.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            a2bVar.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                a2bVar.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int i(int i, byte[] bArr, int i2, int i3, zzeo zzeoVar, a2b a2bVar) {
        hab habVar = (hab) zzeoVar;
        int iG = g(bArr, i2, a2bVar);
        habVar.c(a2bVar.a);
        while (iG < i3) {
            int iG2 = g(bArr, iG, a2bVar);
            if (i != a2bVar.a) {
                break;
            }
            iG = g(bArr, iG2, a2bVar);
            habVar.c(a2bVar.a);
        }
        return iG;
    }

    public static int j(byte[] bArr, int i, a2b a2bVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            a2bVar.b = j;
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
        a2bVar.b = j2;
        return i3;
    }

    public static int k(Object obj, jib jibVar, byte[] bArr, int i, int i2, int i3, a2b a2bVar) {
        b bVar = (b) jibVar;
        int i4 = a2bVar.e + 1;
        a2bVar.e = i4;
        if (i4 >= 100) {
            nz0.c("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int iQ = bVar.q(obj, bArr, i, i2, i3, a2bVar);
        a2bVar.e--;
        a2bVar.c = obj;
        return iQ;
    }

    public static int l(Object obj, jib jibVar, byte[] bArr, int i, int i2, a2b a2bVar) {
        int iH = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iH = h(i3, bArr, iH, a2bVar);
            i3 = a2bVar.a;
        }
        int i4 = iH;
        if (i3 < 0 || i3 > i2 - i4) {
            nz0.c("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i5 = a2bVar.e + 1;
        a2bVar.e = i5;
        if (i5 >= 100) {
            nz0.c("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return 0;
        }
        int i6 = i4 + i3;
        jibVar.d(obj, bArr, i4, i6, a2bVar);
        a2bVar.e--;
        a2bVar.c = obj;
        return i6;
    }

    public static int m(int i, byte[] bArr, int i2, int i3, a2b a2bVar) {
        if ((i >>> 3) == 0) {
            nz0.c("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return j(bArr, i2, a2bVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return g(bArr, i2, a2bVar) + a2bVar.a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            nz0.c("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = g(bArr, i2, a2bVar);
            i6 = a2bVar.a;
            if (i6 == i5) {
                break;
            }
            i2 = m(i6, bArr, i2, i3, a2bVar);
        }
        if (i2 <= i3 && i6 == i5) {
            return i2;
        }
        nz0.c("Failed to parse the message.");
        return 0;
    }

    public static long n(int i, byte[] bArr) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }
}
