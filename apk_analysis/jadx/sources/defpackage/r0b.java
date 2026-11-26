package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzax;

/* JADX INFO: loaded from: classes4.dex */
public final class r0b {
    public static int a(Object obj, Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int iB = nu6.b(obj);
        int i2 = iB & i;
        int iB2 = b(i2, obj3);
        if (iB2 != 0) {
            int i3 = ~i;
            int i4 = iB & i3;
            int i5 = -1;
            while (true) {
                int i6 = iB2 - 1;
                int i7 = iArr[i6];
                int i8 = i7 & i;
                if ((i7 & i3) != i4 || !zzax.zza(obj, objArr[i6]) || (objArr2 != null && !zzax.zza(obj2, objArr2[i6]))) {
                    if (i8 == 0) {
                        break;
                    }
                    i5 = i6;
                    iB2 = i8;
                } else {
                    if (i5 == -1) {
                        d(i2, i8, obj3);
                        return i6;
                    }
                    iArr[i5] = (iArr[i5] & i3) | (i8 & i);
                    return i6;
                }
            }
        }
        return -1;
    }

    public static int b(int i, Object obj) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i] & 255;
        }
        return obj instanceof short[] ? (char) ((short[]) obj)[i] : ((int[]) obj)[i];
    }

    public static Object c(int i) {
        if (i < 2 || i > 1073741824 || Integer.highestOneBit(i) != i) {
            fg.c(jh.b(i, "must be power of 2 between 2^1 and 2^30: "));
            return null;
        }
        if (i <= 256) {
            return new byte[i];
        }
        return i <= 65536 ? new short[i] : new int[i];
    }

    public static void d(int i, int i2, Object obj) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }
}
