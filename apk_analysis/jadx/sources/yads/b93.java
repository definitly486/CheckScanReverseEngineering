package yads;

import androidx.tracing.Trace;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class b93 {
    public final List a;
    public final int b;
    public final float c;
    public final String d;

    public b93(List list, int i, float f, String str) {
        this.a = list;
        this.b = i;
        this.c = f;
        this.d = str;
    }

    public static b93 a(os4 os4Var) {
        b93 b93Var;
        try {
            os4Var.e(os4Var.b + 21);
            int iK = os4Var.k() & 3;
            int iK2 = os4Var.k();
            int i = os4Var.b;
            int i2 = 0;
            int i3 = 0;
            for (int i4 = 0; i4 < iK2; i4++) {
                os4Var.e(os4Var.b + 1);
                int iP = os4Var.p();
                for (int i5 = 0; i5 < iP; i5++) {
                    int iP2 = os4Var.p();
                    i3 += iP2 + 4;
                    os4Var.e(os4Var.b + iP2);
                }
            }
            os4Var.e(i);
            byte[] bArr = new byte[i3];
            float f = 1.0f;
            int i6 = 0;
            int i7 = 0;
            String strA = null;
            while (i6 < iK2) {
                int iK3 = os4Var.k() & Trace.MAX_TRACE_LABEL_LENGTH;
                int iP3 = os4Var.p();
                int i8 = i2;
                while (i8 < iP3) {
                    int iP4 = os4Var.p();
                    b93Var = null;
                    try {
                        System.arraycopy(qd4.a, i2, bArr, i7, 4);
                        int i9 = i7 + 4;
                        System.arraycopy(os4Var.a, os4Var.b, bArr, i9, iP4);
                        if (iK3 == 33 && i8 == 0) {
                            nd4 nd4VarA = qd4.a(bArr, i9, i9 + iP4);
                            f = nd4VarA.g;
                            strA = g20.a(nd4VarA.a, nd4VarA.b, nd4VarA.c, nd4VarA.d, nd4VarA.e, nd4VarA.f);
                        }
                        i7 = i9 + iP4;
                        os4Var.e(os4Var.b + iP4);
                        i8++;
                        iK = iK;
                        i2 = 0;
                    } catch (ArrayIndexOutOfBoundsException e) {
                        e = e;
                        defpackage.e2.h("Error parsing HEVC config", e);
                        return b93Var;
                    }
                }
                i6++;
                i2 = 0;
            }
            b93Var = null;
            return new b93(i3 == 0 ? Collections.EMPTY_LIST : Collections.singletonList(bArr), iK + 1, f, strA);
        } catch (ArrayIndexOutOfBoundsException e2) {
            e = e2;
            b93Var = null;
        }
    }
}
