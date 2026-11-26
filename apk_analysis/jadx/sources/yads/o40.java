package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class o40 {
    public static int a(Object obj, Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, Object[] objArr2) {
        int iA = p83.a(obj == null ? 0 : obj.hashCode());
        int i2 = iA & i;
        int iA2 = a(i2, obj3);
        if (iA2 == 0) {
            return -1;
        }
        int i3 = ~i;
        int i4 = iA & i3;
        int i5 = -1;
        while (true) {
            int i6 = iA2 - 1;
            int i7 = iArr[i6];
            if ((i7 & i3) == i4 && ep4.a(obj, objArr[i6]) && (objArr2 == null || ep4.a(obj2, objArr2[i6]))) {
                int i8 = i7 & i;
                if (i5 == -1) {
                    a(i2, i8, obj3);
                    return i6;
                }
                iArr[i5] = (i8 & i) | (iArr[i5] & i3);
                return i6;
            }
            int i9 = i7 & i;
            if (i9 == 0) {
                return -1;
            }
            i5 = i6;
            iA2 = i9;
        }
    }

    public static int a(int i, Object obj) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i] & 255;
        }
        if (obj instanceof short[]) {
            return ((short[]) obj)[i] & 65535;
        }
        return ((int[]) obj)[i];
    }

    public static void a(int i, int i2, Object obj) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }
}
