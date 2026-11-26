package yads;

import android.content.Context;
import android.graphics.Point;
import android.util.SparseArray;
import android.util.SparseBooleanArray;

/* JADX INFO: loaded from: classes6.dex */
public final class lm0 extends n06 {
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public boolean M;
    public final SparseArray N;
    public final SparseBooleanArray O;

    public lm0(Context context) {
        super.a(context);
        Point pointB = u56.b(context);
        int i = pointB.x;
        int i2 = pointB.y;
        this.i = i;
        this.j = i2;
        this.k = true;
        this.N = new SparseArray();
        this.O = new SparseBooleanArray();
        a();
    }

    public final void a() {
        this.A = true;
        this.B = false;
        this.C = true;
        this.D = false;
        this.E = true;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = false;
        this.J = true;
        this.K = true;
        this.L = false;
        this.M = true;
    }

    public lm0() {
        this.N = new SparseArray();
        this.O = new SparseBooleanArray();
        a();
    }
}
