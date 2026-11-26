package defpackage;

import com.google.zxing.WriterException;

/* JADX INFO: loaded from: classes4.dex */
public final class tx2 {
    public static final int[] a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ic5.values().length];
            a = iArr;
            try {
                iArr[ic5.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ic5.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ic5.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[ic5.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static uc9 a(int i, r03 r03Var) throws WriterException {
        for (int i2 = 1; i2 <= 40; i2++) {
            uc9 uc9VarC = uc9.c(i2);
            int i3 = uc9VarC.d;
            uc9.b bVar = uc9VarC.c[r03Var.ordinal()];
            int i4 = bVar.a;
            int i5 = 0;
            for (uc9.a aVar : bVar.b) {
                i5 += aVar.a;
            }
            if (i3 - (i5 * i4) >= (i + 7) / 8) {
                return uc9VarC;
            }
        }
        throw new WriterException("Data too big");
    }
}
