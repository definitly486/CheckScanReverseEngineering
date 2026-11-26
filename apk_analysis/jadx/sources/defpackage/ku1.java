package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.RectF;
import androidx.collection.LongSparseArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ku1 extends nd0 {
    public ld0<Float, Float> D;
    public final ArrayList E;
    public final RectF F;
    public final RectF G;
    public final RectF H;
    public final xu5 I;
    public final xu5.b J;
    public float K;
    public boolean L;
    public final ht2 M;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[xk4.b.values().length];
            a = iArr;
            try {
                iArr[xk4.b.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[xk4.b.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public ku1(ox4 ox4Var, xk4 xk4Var, List<xk4> list, nw4 nw4Var) {
        nd0 nd0Var;
        nd0 zr7Var;
        super(ox4Var, xk4Var);
        this.E = new ArrayList();
        this.F = new RectF();
        this.G = new RectF();
        this.H = new RectF();
        this.I = new xu5();
        this.J = new xu5.b();
        this.L = true;
        dl dlVar = xk4Var.s;
        if (dlVar != null) {
            tc3 tc3VarA = dlVar.a();
            this.D = tc3VarA;
            c(tc3VarA);
            this.D.a(this);
        } else {
            this.D = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(nw4Var.j.size());
        int size = list.size() - 1;
        nd0 nd0Var2 = null;
        while (true) {
            if (size < 0) {
                for (int i = 0; i < longSparseArray.size(); i++) {
                    nd0 nd0Var3 = (nd0) longSparseArray.get(longSparseArray.keyAt(i));
                    if (nd0Var3 != null && (nd0Var = (nd0) longSparseArray.get(nd0Var3.p.f)) != null) {
                        nd0Var3.t = nd0Var;
                    }
                }
                ft2 ft2Var = this.p.x;
                if (ft2Var != null) {
                    this.M = new ht2(this, this, ft2Var);
                    return;
                }
                return;
            }
            xk4 xk4Var2 = list.get(size);
            switch (nd0.a.a[xk4Var2.e.ordinal()]) {
                case 1:
                    zr7Var = new zr7(ox4Var, xk4Var2, this, nw4Var);
                    break;
                case 2:
                    zr7Var = new ku1(ox4Var, xk4Var2, (List) nw4Var.c.get(xk4Var2.g), nw4Var);
                    break;
                case 3:
                    zr7Var = new r48(ox4Var, xk4Var2);
                    break;
                case 4:
                    zr7Var = new o14(ox4Var, xk4Var2);
                    break;
                case 5:
                    zr7Var = new xp5(ox4Var, xk4Var2);
                    break;
                case 6:
                    zr7Var = new qs8(ox4Var, xk4Var2);
                    break;
                default:
                    gv4.b("Unknown layer type " + xk4Var2.e);
                    zr7Var = null;
                    break;
            }
            if (zr7Var != null) {
                longSparseArray.put(zr7Var.p.d, zr7Var);
                if (nd0Var2 != null) {
                    nd0Var2.s = zr7Var;
                    nd0Var2 = null;
                } else {
                    this.E.add(0, zr7Var);
                    int i2 = a.a[xk4Var2.u.ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        nd0Var2 = zr7Var;
                    }
                }
            }
            size--;
        }
    }

    @Override // defpackage.nd0, defpackage.xs2
    public final void b(RectF rectF, Matrix matrix, boolean z) {
        super.b(rectF, matrix, z);
        ArrayList arrayList = this.E;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RectF rectF2 = this.F;
            rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
            ((nd0) arrayList.get(size)).b(rectF2, this.n, true);
            rectF.union(rectF2);
        }
    }

    @Override // defpackage.nd0, defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        super.i(by4Var, obj);
        if (obj == vx4.C) {
            ac9 ac9Var = new ac9(by4Var, null);
            this.D = ac9Var;
            ac9Var.a(this);
            c(this.D);
            return;
        }
        ht2 ht2Var = this.M;
        if (obj == 5 && ht2Var != null) {
            ht2Var.c.k(by4Var);
            return;
        }
        if (obj == vx4.E && ht2Var != null) {
            ht2Var.b(by4Var);
            return;
        }
        if (obj == vx4.F && ht2Var != null) {
            ht2Var.e.k(by4Var);
            return;
        }
        if (obj == vx4.G && ht2Var != null) {
            ht2Var.f.k(by4Var);
        } else {
            if (obj != vx4.H || ht2Var == null) {
                return;
            }
            ht2Var.g.k(by4Var);
        }
    }

    @Override // defpackage.nd0
    public final void l(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        Canvas canvasE;
        dt dtVar = ah4.a;
        boolean z = false;
        ht2 ht2Var = this.M;
        boolean z2 = (et2Var == null && ht2Var == null) ? false : true;
        ox4 ox4Var = this.o;
        boolean z3 = ox4Var.u;
        ArrayList<nd0> arrayList = this.E;
        if ((z3 && arrayList.size() > 1 && i != 255) || (z2 && ox4Var.v)) {
            z = true;
        }
        int i2 = z ? 255 : i;
        if (ht2Var != null) {
            et2Var = ht2Var.a(matrix, i2);
        }
        boolean z4 = this.L;
        xk4 xk4Var = this.p;
        RectF rectF = this.G;
        if (z4 || !"__container".equals(xk4Var.c)) {
            rectF.set(0.0f, 0.0f, xk4Var.o, xk4Var.p);
            matrix.mapRect(rectF);
        } else {
            rectF.setEmpty();
            for (nd0 nd0Var : arrayList) {
                RectF rectF2 = this.H;
                nd0Var.b(rectF2, matrix, true);
                rectF.union(rectF2);
            }
        }
        xu5 xu5Var = this.I;
        if (z) {
            xu5.b bVar = this.J;
            bVar.b = null;
            bVar.a = i;
            if (et2Var != null) {
                if (Color.alpha(et2Var.d) > 0) {
                    bVar.b = et2Var;
                } else {
                    bVar.b = null;
                }
                et2Var = null;
            }
            canvasE = xu5Var.e(canvas, rectF, bVar);
        } else {
            canvasE = canvas;
        }
        canvas.save();
        if (canvas.clipRect(rectF)) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((nd0) arrayList.get(size)).d(canvasE, matrix, i2, et2Var);
            }
        }
        if (z) {
            xu5Var.c();
        }
        canvas.restore();
        dt dtVar2 = ah4.a;
    }

    @Override // defpackage.nd0
    public final void q(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList2 = this.E;
            if (i2 >= arrayList2.size()) {
                return;
            }
            ((nd0) arrayList2.get(i2)).a(nf4Var, i, arrayList, nf4Var2);
            i2++;
        }
    }

    @Override // defpackage.nd0
    public final void r(boolean z) {
        super.r(z);
        Iterator it = this.E.iterator();
        while (it.hasNext()) {
            ((nd0) it.next()).r(z);
        }
    }

    @Override // defpackage.nd0
    public final void s(float f) {
        dt dtVar = ah4.a;
        this.K = f;
        super.s(f);
        ld0<Float, Float> ld0Var = this.D;
        xk4 xk4Var = this.p;
        if (ld0Var != null) {
            nw4 nw4Var = this.o.b;
            f = ((ld0Var.f().floatValue() * xk4Var.b.n) - xk4Var.b.l) / ((nw4Var.m - nw4Var.l) + 0.01f);
        }
        if (this.D == null) {
            float f2 = xk4Var.n;
            nw4 nw4Var2 = xk4Var.b;
            f -= f2 / (nw4Var2.m - nw4Var2.l);
        }
        if (xk4Var.m != 0.0f && !"__container".equals(xk4Var.c)) {
            f /= xk4Var.m;
        }
        ArrayList arrayList = this.E;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((nd0) arrayList.get(size)).s(f);
        }
        dt dtVar2 = ah4.a;
    }
}
