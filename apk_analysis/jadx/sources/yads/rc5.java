package yads;

import android.animation.ArgbEvaluator;
import android.graphics.RectF;
import android.util.SparseArray;

/* JADX INFO: loaded from: classes6.dex */
public final class rc5 implements pf3 {
    public final cg3 a;
    public final ArgbEvaluator b = new ArgbEvaluator();
    public final SparseArray c = new SparseArray();
    public int d;

    public rc5(cg3 cg3Var) {
        this.a = cg3Var;
    }

    @Override // yads.pf3
    public final yf3 a(int i) {
        cg3 cg3Var = this.a;
        bg3 bg3Var = cg3Var.b;
        if (bg3Var instanceof zf3) {
            bg3 bg3Var2 = cg3Var.c;
            bg3Var2.getClass();
            float f = ((zf3) bg3Var2).b.a;
            return new wf3(defpackage.i8.b(((zf3) bg3Var).b.a, f, f(i), f));
        }
        if (!(bg3Var instanceof ag3)) {
            defpackage.me0.e();
            return null;
        }
        bg3 bg3Var3 = cg3Var.c;
        bg3Var3.getClass();
        ag3 ag3Var = (ag3) bg3Var3;
        float f2 = ag3Var.b.a + ag3Var.c;
        ag3 ag3Var2 = (ag3) bg3Var;
        float fB = defpackage.i8.b(ag3Var2.b.a + ag3Var2.c, f2, f(i), f2);
        float f3 = ag3Var.b.b + ag3Var.c;
        float fB2 = defpackage.i8.b(ag3Var2.b.b + ag3Var2.c, f3, f(i), f3);
        float f4 = ag3Var.b.c;
        return new xf3(fB, fB2, defpackage.i8.b(ag3Var2.b.c, f4, f(i), f4));
    }

    @Override // yads.pf3
    public final int b(int i) {
        Object objEvaluate = this.b.evaluate(f(i), Integer.valueOf(this.a.c.a()), Integer.valueOf(this.a.b.a()));
        objEvaluate.getClass();
        return ((Integer) objEvaluate).intValue();
    }

    @Override // yads.pf3
    public final int c(int i) {
        cg3 cg3Var = this.a;
        bg3 bg3Var = cg3Var.b;
        if (!(bg3Var instanceof ag3)) {
            return 0;
        }
        bg3 bg3Var2 = cg3Var.c;
        bg3Var2.getClass();
        Object objEvaluate = this.b.evaluate(f(i), Integer.valueOf(((ag3) bg3Var2).d), Integer.valueOf(((ag3) bg3Var).d));
        objEvaluate.getClass();
        return ((Integer) objEvaluate).intValue();
    }

    @Override // yads.pf3
    public final void d(int i) {
        this.d = i;
    }

    @Override // yads.pf3
    public final float e(int i) {
        cg3 cg3Var = this.a;
        bg3 bg3Var = cg3Var.b;
        if (!(bg3Var instanceof ag3)) {
            return 0.0f;
        }
        bg3 bg3Var2 = cg3Var.c;
        bg3Var2.getClass();
        float f = ((ag3) bg3Var2).c;
        return (f(i) * (((ag3) bg3Var).c - f)) + f;
    }

    public final float f(int i) {
        return ((Number) this.c.get(i, Float.valueOf(0.0f))).floatValue();
    }

    @Override // yads.pf3
    public final void onPageSelected(int i) {
        this.c.clear();
        this.c.put(i, Float.valueOf(1.0f));
    }

    @Override // yads.pf3
    public final RectF a(float f, float f2, float f3, boolean z) {
        return null;
    }

    @Override // yads.pf3
    public final void a(int i, float f) {
        float f2 = 1.0f - f;
        SparseArray sparseArray = this.c;
        if (f2 == 0.0f) {
            sparseArray.remove(i);
        } else {
            sparseArray.put(i, Float.valueOf(Math.abs(f2)));
        }
        int i2 = this.d;
        if (i < i2 - 1) {
            int i3 = i + 1;
            SparseArray sparseArray2 = this.c;
            if (f == 0.0f) {
                sparseArray2.remove(i3);
                return;
            } else {
                sparseArray2.put(i3, Float.valueOf(Math.abs(f)));
                return;
            }
        }
        if (i2 > 1) {
            SparseArray sparseArray3 = this.c;
            if (f == 0.0f) {
                sparseArray3.remove(0);
            } else {
                sparseArray3.put(0, Float.valueOf(Math.abs(f)));
            }
        }
    }
}
