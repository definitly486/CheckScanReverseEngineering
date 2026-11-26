package defpackage;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.SparseIntArray;

/* JADX INFO: loaded from: classes4.dex */
public final class on9 {
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

    public on9(Context context) {
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
        b(d, l3aVar.b(200.0f));
        b(e, l3aVar.b(1.0f));
        b(f, l3aVar.b(4.0f));
        b(g, 1);
        b(h, 18);
        b(i, l3aVar.b(16.0f));
        b(j, l3aVar.b(8.0f));
        b(k, l3aVar.b(6.0f));
        b(l, l3aVar.b(2.0f));
        b(m, l3aVar.b(48.0f));
        b(n, l3aVar.b(6.0f));
        b(o, l3aVar.b(6.0f));
        b(p, l3aVar.b(14.0f));
        b(q, l3aVar.b(20.0f));
        b(r, l3aVar.b(27.0f));
        b(s, 22);
        b(t, 2);
        b(u, 16);
        b(v, 3);
        b(w, 16);
        b(x, l3aVar.b(6.0f));
        b(y, l3aVar.b(2.0f));
        b(z, 1);
        b(A, l3aVar.b(3.0f));
        b(C, 16);
        b(X, 14);
        b(B, 1);
        b(D, 2);
        b(E, 2);
        b(F, l3aVar.b(32.0f));
        b(G, l3aVar.b(16.0f));
        b(I, l3aVar.b(2.0f));
        b(J, 16);
        b(L, 16);
        b(M, 2);
        b(N, 14);
        b(K, 22);
        b(Q, 16);
        b(R, 16);
        b(O, l3aVar.b(4.0f));
        b(P, l3aVar.b(8.0f));
        b(S, l3aVar.b(100.0f));
        b(T, l3aVar.b(32.0f));
        b(U, l3aVar.b(136.0f));
        b(V, l3aVar.b(156.0f));
        b(H, l3aVar.b(24.0f));
        b(W, l3aVar.b(10.0f));
        b(Y, l3aVar.b(40.0f));
    }
}
