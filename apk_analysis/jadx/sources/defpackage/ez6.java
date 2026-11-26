package defpackage;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class ez6 {
    public final jy6 a;
    public final ArrayList b;
    public final int c;
    public final n13 d;
    public final b37 e;
    public final int f;
    public final int g;
    public final int h;
    public int i;

    public ez6(jy6 jy6Var, ArrayList arrayList, int i, n13 n13Var, b37 b37Var, int i2, int i3, int i4) {
        b37Var.getClass();
        this.a = jy6Var;
        this.b = arrayList;
        this.c = i;
        this.d = n13Var;
        this.e = b37Var;
        this.f = i2;
        this.g = i3;
        this.h = i4;
    }

    public static ez6 a(ez6 ez6Var, int i, n13 n13Var, b37 b37Var, int i2) {
        if ((i2 & 1) != 0) {
            i = ez6Var.c;
        }
        int i3 = i;
        if ((i2 & 2) != 0) {
            n13Var = ez6Var.d;
        }
        n13 n13Var2 = n13Var;
        if ((i2 & 4) != 0) {
            b37Var = ez6Var.e;
        }
        b37 b37Var2 = b37Var;
        int i4 = ez6Var.f;
        int i5 = ez6Var.g;
        int i6 = ez6Var.h;
        b37Var2.getClass();
        return new ez6(ez6Var.a, ez6Var.b, i3, n13Var2, b37Var2, i4, i5, i6);
    }

    public final z47 b(b37 b37Var) {
        b37Var.getClass();
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = this.c;
        if (i >= size) {
            ah.f("Check failed.");
            return null;
        }
        this.i++;
        n13 n13Var = this.d;
        if (n13Var != null) {
            p13 p13Var = n13Var.c;
            fz3 fz3Var = b37Var.a;
            p13Var.getClass();
            fz3Var.getClass();
            fz3 fz3Var2 = p13Var.b.h;
            if (fz3Var.e != fz3Var2.e || !aa4.e(fz3Var.d, fz3Var2.d)) {
                wg.c(arrayList.get(i - 1), "network interceptor ", " must retain the same host and port");
                return null;
            }
            if (this.i != 1) {
                wg.c(arrayList.get(i - 1), "network interceptor ", " must call proceed() exactly once");
                return null;
            }
        }
        int i2 = i + 1;
        ez6 ez6VarA = a(this, i2, null, b37Var, 58);
        f94 f94Var = (f94) arrayList.get(i);
        z47 z47VarA = f94Var.a(ez6VarA);
        if (z47VarA == null) {
            throw new NullPointerException("interceptor " + f94Var + " returned null");
        }
        if (n13Var != null && i2 < arrayList.size() && ez6VarA.i != 1) {
            wg.c(f94Var, "network interceptor ", " must call proceed() exactly once");
            return null;
        }
        if (z47VarA.h != null) {
            return z47VarA;
        }
        wg.c(f94Var, "interceptor ", " returned a response with no body");
        return null;
    }
}
