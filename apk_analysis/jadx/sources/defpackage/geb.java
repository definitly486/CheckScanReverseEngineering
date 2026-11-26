package defpackage;

import androidx.tracing.Trace;
import com.google.android.gms.internal.play_billing.p;
import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzgu;
import com.google.android.gms.internal.play_billing.zzhb;
import com.google.android.gms.internal.play_billing.zzir;

/* JADX INFO: loaded from: classes4.dex */
public final class geb {
    public static int a(byte[] bArr, int i, ceb cebVar) throws zzhb {
        int iG = g(bArr, i, cebVar);
        int i2 = cebVar.a;
        if (i2 < 0) {
            ah.g("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iG) {
            ah.g("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        if (i2 == 0) {
            cebVar.c = zzfp.zza;
            return iG;
        }
        cebVar.c = zzfp.zzk(bArr, iG, i2);
        return iG + i2;
    }

    public static int b(int i, byte[] bArr) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int c(kqb kqbVar, int i, byte[] bArr, int i2, int i3, zzgu zzguVar, ceb cebVar) throws zzhb {
        Object objZze = kqbVar.zze();
        kqb kqbVar2 = kqbVar;
        byte[] bArr2 = bArr;
        int i4 = i3;
        ceb cebVar2 = cebVar;
        int iL = l(objZze, kqbVar2, bArr2, i2, i4, cebVar2);
        kqbVar2.b(objZze);
        cebVar2.c = objZze;
        zzguVar.add(objZze);
        while (iL < i4) {
            ceb cebVar3 = cebVar2;
            int i5 = i4;
            int iG = g(bArr2, iL, cebVar3);
            if (i != cebVar3.a) {
                break;
            }
            byte[] bArr3 = bArr2;
            kqb kqbVar3 = kqbVar2;
            Object objZze2 = kqbVar3.zze();
            iL = l(objZze2, kqbVar3, bArr3, iG, i5, cebVar3);
            kqbVar2 = kqbVar3;
            bArr2 = bArr3;
            i4 = i5;
            cebVar2 = cebVar3;
            kqbVar2.b(objZze2);
            cebVar2.c = objZze2;
            zzguVar.add(objZze2);
        }
        return iL;
    }

    public static int d(byte[] bArr, int i, zzgu zzguVar, ceb cebVar) throws zzhb {
        gkb gkbVar = (gkb) zzguVar;
        int iG = g(bArr, i, cebVar);
        int i2 = cebVar.a;
        if (i2 < 0) {
            ah.g("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 > bArr.length - iG) {
            ah.g("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i3 = i2 + iG;
        while (iG < i3) {
            iG = g(bArr, iG, cebVar);
            gkbVar.zzh(cebVar.a);
        }
        if (iG == i3) {
            return iG;
        }
        ah.g("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x009c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:47:0x009e  */
    /* JADX WARN: Code duplicated, block: B:48:0x009f A[PHI: r5
      0x009f: PHI (r5v6 byte) = (r5v5 byte), (r5v9 byte) binds: [B:45:0x009a, B:47:0x009e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:50:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:89:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x00b7 A[SYNTHETIC] */
    public static int e(byte[] bArr, int i, ceb cebVar) throws zzhb {
        int iG = g(bArr, i, cebVar);
        int i2 = cebVar.a;
        if (i2 < 0) {
            ah.g("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
            return 0;
        }
        if (i2 == 0) {
            cebVar.c = "";
            return iG;
        }
        int i3 = dvb.a;
        int length = bArr.length;
        if ((((length - iG) - i2) | iG | i2) < 0) {
            i8.d("buffer length=%d, index=%d, size=%d", new Object[]{Integer.valueOf(length), Integer.valueOf(iG), Integer.valueOf(i2)});
            return 0;
        }
        int i4 = iG + i2;
        char[] cArr = new char[i2];
        int i5 = 0;
        while (iG < i4) {
            byte b = bArr[iG];
            if (b < 0) {
                break;
            }
            iG++;
            cArr[i5] = (char) b;
            i5++;
        }
        while (iG < i4) {
            int i6 = iG + 1;
            byte b2 = bArr[iG];
            if (b2 >= 0) {
                cArr[i5] = (char) b2;
                i5++;
                iG = i6;
                while (iG < i4) {
                    byte b3 = bArr[iG];
                    if (b3 < 0) {
                        break;
                    }
                    iG++;
                    cArr[i5] = (char) b3;
                    i5++;
                }
            } else {
                if (b2 >= -32) {
                    if (b2 >= -16) {
                        if (i6 >= i4 - 2) {
                            ah.g("Protocol message had invalid UTF-8.");
                            return 0;
                        }
                        byte b4 = bArr[i6];
                        int i7 = iG + 3;
                        byte b5 = bArr[iG + 2];
                        iG += 4;
                        byte b6 = bArr[i7];
                        if (!px.k(b4)) {
                            if ((((b4 + 112) + (b2 << 28)) >> 30) == 0 && !px.k(b5) && !px.k(b6)) {
                                int i8 = ((b4 & 63) << 12) | ((b2 & 7) << 18) | ((b5 & 63) << 6) | (b6 & 63);
                                cArr[i5] = (char) ((i8 >>> 10) + 55232);
                                cArr[i5 + 1] = (char) ((i8 & 1023) + 56320);
                                i5 += 2;
                            }
                        }
                        ah.g("Protocol message had invalid UTF-8.");
                        return 0;
                    }
                    if (i6 >= i4 - 1) {
                        ah.g("Protocol message had invalid UTF-8.");
                        return 0;
                    }
                    int i9 = i5 + 1;
                    int i10 = iG + 2;
                    byte b7 = bArr[i6];
                    iG += 3;
                    byte b8 = bArr[i10];
                    if (!px.k(b7)) {
                        if (b2 != -32) {
                            if (b2 != -19) {
                                if (!px.k(b8)) {
                                    cArr[i5] = (char) (((b7 & 63) << 6) | ((b2 & 15) << 12) | (b8 & 63));
                                    i5 = i9;
                                }
                            } else if (b7 < -96) {
                                b2 = -19;
                                if (!px.k(b8)) {
                                    cArr[i5] = (char) (((b7 & 63) << 6) | ((b2 & 15) << 12) | (b8 & 63));
                                    i5 = i9;
                                }
                            }
                        } else if (b7 >= -96) {
                            b2 = -32;
                            if (b2 != -19) {
                                if (!px.k(b8)) {
                                    cArr[i5] = (char) (((b7 & 63) << 6) | ((b2 & 15) << 12) | (b8 & 63));
                                    i5 = i9;
                                }
                            } else if (b7 < -96) {
                                b2 = -19;
                                if (!px.k(b8)) {
                                    cArr[i5] = (char) (((b7 & 63) << 6) | ((b2 & 15) << 12) | (b8 & 63));
                                    i5 = i9;
                                }
                            }
                        }
                    }
                    ah.g("Protocol message had invalid UTF-8.");
                    return 0;
                }
                if (i6 >= i4) {
                    ah.g("Protocol message had invalid UTF-8.");
                    return 0;
                }
                int i11 = i5 + 1;
                iG += 2;
                byte b9 = bArr[i6];
                if (b2 < -62 || px.k(b9)) {
                    ah.g("Protocol message had invalid UTF-8.");
                    return 0;
                }
                cArr[i5] = (char) ((b9 & 63) | ((b2 & 31) << 6));
                i5 = i11;
            }
        }
        cebVar.c = new String(cArr, 0, i5);
        return i4;
    }

    public static int f(int i, byte[] bArr, int i2, int i3, zzir zzirVar, ceb cebVar) throws zzhb {
        if ((i >>> 3) == 0) {
            ah.g("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int iJ = j(bArr, i2, cebVar);
            zzirVar.b(i, Long.valueOf(cebVar.b));
            return iJ;
        }
        if (i4 == 1) {
            zzirVar.b(i, Long.valueOf(n(i2, bArr)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int iG = g(bArr, i2, cebVar);
            int i5 = cebVar.a;
            if (i5 < 0) {
                ah.g("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
                return 0;
            }
            if (i5 > bArr.length - iG) {
                ah.g("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
                return 0;
            }
            if (i5 == 0) {
                zzirVar.b(i, zzfp.zza);
            } else {
                zzirVar.b(i, zzfp.zzk(bArr, iG, i5));
            }
            return iG + i5;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzirVar.b(i, Integer.valueOf(b(i2, bArr)));
                return i2 + 4;
            }
            ah.g("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i6 = (i & (-8)) | 4;
        zzir zzirVarA = zzir.a();
        int i7 = cebVar.e + 1;
        cebVar.e = i7;
        o(i7);
        int i8 = 0;
        while (i2 < i3) {
            int iG2 = g(bArr, i2, cebVar);
            int i9 = cebVar.a;
            if (i9 == i6) {
                i8 = i9;
                i2 = iG2;
                break;
            }
            i2 = f(i9, bArr, iG2, i3, zzirVarA, cebVar);
            i8 = i9;
        }
        cebVar.e--;
        if (i2 > i3 || i8 != i6) {
            ah.g("Failed to parse the message.");
            return 0;
        }
        zzirVar.b(i, zzirVarA);
        return i2;
    }

    public static int g(byte[] bArr, int i, ceb cebVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return h(b, bArr, i2, cebVar);
        }
        cebVar.a = b;
        return i2;
    }

    public static int h(int i, byte[] bArr, int i2, ceb cebVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & Trace.MAX_TRACE_LABEL_LENGTH;
        if (b >= 0) {
            cebVar.a = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & 127) << 7);
        int i6 = i2 + 2;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            cebVar.a = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & 127) << 14);
        int i8 = i2 + 3;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            cebVar.a = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & 127) << 21);
        int i10 = i2 + 4;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            cebVar.a = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & 127) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                cebVar.a = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int i(int i, byte[] bArr, int i2, int i3, zzgu zzguVar, ceb cebVar) {
        gkb gkbVar = (gkb) zzguVar;
        int iG = g(bArr, i2, cebVar);
        gkbVar.zzh(cebVar.a);
        while (iG < i3) {
            int iG2 = g(bArr, iG, cebVar);
            if (i != cebVar.a) {
                break;
            }
            iG = g(bArr, iG2, cebVar);
            gkbVar.zzh(cebVar.a);
        }
        return iG;
    }

    public static int j(byte[] bArr, int i, ceb cebVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            cebVar.b = j;
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
        cebVar.b = j2;
        return i3;
    }

    public static int k(Object obj, kqb kqbVar, byte[] bArr, int i, int i2, int i3, ceb cebVar) throws zzhb {
        int i4 = cebVar.e + 1;
        cebVar.e = i4;
        o(i4);
        int iR = ((p) kqbVar).r(obj, bArr, i, i2, i3, cebVar);
        cebVar.e--;
        cebVar.c = obj;
        return iR;
    }

    public static int l(Object obj, kqb kqbVar, byte[] bArr, int i, int i2, ceb cebVar) throws zzhb {
        int iH = i + 1;
        int i3 = bArr[i];
        if (i3 < 0) {
            iH = h(i3, bArr, iH, cebVar);
            i3 = cebVar.a;
        }
        int i4 = iH;
        if (i3 < 0 || i3 > i2 - i4) {
            ah.g("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            return 0;
        }
        int i5 = cebVar.e + 1;
        cebVar.e = i5;
        o(i5);
        int i6 = i4 + i3;
        kqbVar.d(obj, bArr, i4, i6, cebVar);
        cebVar.e--;
        cebVar.c = obj;
        return i6;
    }

    public static int m(int i, byte[] bArr, int i2, int i3, ceb cebVar) throws zzhb {
        if ((i >>> 3) == 0) {
            ah.g("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return j(bArr, i2, cebVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return g(bArr, i2, cebVar) + cebVar.a;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            ah.g("Protocol message contained an invalid tag (zero).");
            return 0;
        }
        int i5 = (i & (-8)) | 4;
        int i6 = cebVar.e + 1;
        cebVar.e = i6;
        o(i6);
        int i7 = 0;
        while (i2 < i3) {
            i2 = g(bArr, i2, cebVar);
            i7 = cebVar.a;
            if (i7 == i5) {
                break;
            }
            i2 = m(i7, bArr, i2, i3, cebVar);
        }
        cebVar.e--;
        if (i2 <= i3 && i7 == i5) {
            return i2;
        }
        ah.g("Failed to parse the message.");
        return 0;
    }

    public static long n(int i, byte[] bArr) {
        return (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48) | ((((long) bArr[i + 7]) & 255) << 56);
    }

    public static void o(int i) throws zzhb {
        if (i < 100) {
            return;
        }
        ah.g("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }
}
