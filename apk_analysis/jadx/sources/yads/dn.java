package yads;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class dn {
    public final ArrayList a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;
    public final String f;

    public dn(ArrayList arrayList, int i, int i2, int i3, float f, String str) {
        this.a = arrayList;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f;
        this.f = str;
    }

    public static dn a(os4 os4Var) {
        float f;
        int i;
        int i2;
        String str;
        try {
            os4Var.e(os4Var.b + 4);
            int iK = (os4Var.k() & 3) + 1;
            if (iK == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iK2 = os4Var.k() & 31;
            for (int i3 = 0; i3 < iK2; i3++) {
                int iP = os4Var.p();
                int i4 = os4Var.b;
                os4Var.e(i4 + iP);
                byte[] bArr = os4Var.a;
                byte[] bArr2 = new byte[iP + 4];
                System.arraycopy(g20.a, 0, bArr2, 0, 4);
                System.arraycopy(bArr, i4, bArr2, 4, iP);
                arrayList.add(bArr2);
            }
            int iK3 = os4Var.k();
            for (int i5 = 0; i5 < iK3; i5++) {
                int iP2 = os4Var.p();
                int i6 = os4Var.b;
                os4Var.e(i6 + iP2);
                byte[] bArr3 = os4Var.a;
                byte[] bArr4 = new byte[iP2 + 4];
                System.arraycopy(g20.a, 0, bArr4, 0, 4);
                System.arraycopy(bArr3, i6, bArr4, 4, iP2);
                arrayList.add(bArr4);
            }
            if (iK2 > 0) {
                pd4 pd4VarB = qd4.b((byte[]) arrayList.get(0), iK, ((byte[]) arrayList.get(0)).length);
                int i7 = pd4VarB.e;
                int i8 = pd4VarB.f;
                f = pd4VarB.g;
                str = String.format("avc1.%02X%02X%02X", Integer.valueOf(pd4VarB.a), Integer.valueOf(pd4VarB.b), Integer.valueOf(pd4VarB.c));
                i = i7;
                i2 = i8;
            } else {
                f = 1.0f;
                i = -1;
                i2 = -1;
                str = null;
            }
            return new dn(arrayList, iK, i, i2, f, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            defpackage.e2.h("Error parsing AVC config", e);
            return null;
        }
    }
}
