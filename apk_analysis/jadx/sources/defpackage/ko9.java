package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes4.dex */
public final class ko9 {
    public static int c;
    public final SparseIntArray a = new SparseIntArray();
    public final float b;
    public static final int d = a();
    public static final int e = a();
    public static final int f = a();
    public static final int g = a();
    public static final int h = a();
    public static final int i = a();
    public static final int j = a();
    public static final int k = a();
    public static final int l = a();
    public static final int m = a();
    public static final int n = a();
    public static final int o = a();
    public static final int p = a();
    public static final int q = a();
    public static final int r = a();
    public static final int s = a();
    public static final int t = a();
    public static final int u = a();
    public static final int v = a();
    public static final int w = a();
    public static final int x = a();
    public static final int y = a();
    public static final int z = a();
    public static final int A = a();
    public static final int B = a();
    public static final int C = a();
    public static final int D = a();
    public static final int E = a();
    public static final int F = a();
    public static final int G = a();
    public static final int H = a();
    public static final int I = a();
    public static final int J = a();
    public static final int K = a();
    public static final int L = a();
    public static final int M = a();
    public static final int N = a();
    public static final int O = a();
    public static final int P = a();
    public static final int Q = a();
    public static final int R = a();
    public static final int S = a();
    public static final int T = a();
    public static final int U = a();
    public static final int V = a();
    public static final int W = a();
    public static final int X = a();
    public static final int Y = a();

    public ko9(Context context) {
        int i2;
        l3a l3aVar = new l3a(context);
        DisplayMetrics displayMetricsF = l3a.f(context);
        int i3 = displayMetricsF.heightPixels;
        if (i3 <= 0 || (i2 = displayMetricsF.widthPixels) <= 0) {
            this.b = 1.0f;
            c(l3aVar);
            return;
        }
        float f2 = displayMetricsF.density;
        float fMin = Math.min(i2 / f2, i3 / f2);
        if (fMin >= 720.0f) {
            this.b = 2.0f;
        } else if (fMin >= 600.0f) {
            this.b = 1.2f;
        } else {
            this.b = 1.0f;
        }
        c(l3aVar);
    }

    public static int a() {
        int i2 = c;
        c = i2 + 1;
        return i2;
    }

    public final void b(int i2, int i3) {
        this.a.put(i2, (int) (i3 * this.b));
    }

    public final void c(l3a l3aVar) {
        b(d, l3aVar.b(1.0f));
        b(e, l3aVar.b(2.0f));
        b(f, l3aVar.b(3.0f));
        b(g, l3aVar.b(4.0f));
        b(h, l3aVar.b(5.0f));
        b(i, l3aVar.b(6.0f));
        b(j, l3aVar.b(7.0f));
        b(k, l3aVar.b(8.0f));
        b(l, l3aVar.b(9.0f));
        b(m, l3aVar.b(10.0f));
        b(n, l3aVar.b(12.0f));
        b(o, l3aVar.b(13.0f));
        b(p, l3aVar.b(14.0f));
        b(q, l3aVar.b(15.0f));
        b(r, l3aVar.b(16.0f));
        b(s, l3aVar.b(17.0f));
        b(t, l3aVar.b(18.0f));
        b(u, l3aVar.b(20.0f));
        b(v, l3aVar.b(24.0f));
        b(w, l3aVar.b(28.0f));
        b(x, l3aVar.b(30.0f));
        b(z, l3aVar.b(36.0f));
        b(A, l3aVar.b(37.0f));
        b(B, l3aVar.b(38.0f));
        b(C, l3aVar.b(40.0f));
        b(D, l3aVar.b(44.0f));
        b(E, l3aVar.b(48.0f));
        b(F, l3aVar.b(56.0f));
        b(y, l3aVar.b(32.0f));
        b(G, l3aVar.b(72.0f));
        b(H, l3aVar.b(100.0f));
        b(I, l3aVar.b(105.0f));
        b(J, l3aVar.b(179.0f));
        b(K, l3aVar.b(184.0f));
        b(L, l3aVar.b(200.0f));
        b(M, l3aVar.b(276.0f));
        b(N, 18);
        b(Q, 12);
        b(R, 11);
        b(P, 13);
        b(O, 14);
        b(U, 15);
        int i2 = S;
        b(i2, 16);
        b(T, 17);
        b(i2, 16);
        b(X, 20);
        b(Y, 10);
        b(V, 22);
        b(W, 24);
    }
}
