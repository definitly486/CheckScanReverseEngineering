package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes3.dex */
public final class j27 implements xs2, l46, wr3, ld0.a, pf4 {
    public final Matrix a = new Matrix();
    public final Path b = new Path();
    public final ox4 c;
    public final nd0 d;
    public final String e;
    public final boolean f;
    public final tc3 g;
    public final tc3 h;
    public final o19 i;
    public tx1 j;

    public j27(ox4 ox4Var, nd0 nd0Var, i27 i27Var) {
        this.c = ox4Var;
        this.d = nd0Var;
        this.e = i27Var.a;
        this.f = i27Var.e;
        tc3 tc3VarA = i27Var.b.a();
        this.g = tc3VarA;
        nd0Var.c(tc3VarA);
        tc3VarA.a(this);
        tc3 tc3VarA2 = i27Var.c.a();
        this.h = tc3VarA2;
        nd0Var.c(tc3VarA2);
        tc3VarA2.a(this);
        ql qlVar = i27Var.d;
        qlVar.getClass();
        o19 o19Var = new o19(qlVar);
        this.i = o19Var;
        o19Var.a(nd0Var);
        o19Var.b(this);
    }

    @Override // defpackage.of4
    public final void a(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
        hb5.g(nf4Var, i, arrayList, nf4Var2, this);
        for (int i2 = 0; i2 < this.j.i.size(); i2++) {
            sx1 sx1Var = (sx1) this.j.i.get(i2);
            if (sx1Var instanceof pf4) {
                hb5.g(nf4Var, i, arrayList, nf4Var2, (pf4) sx1Var);
            }
        }
    }

    @Override // defpackage.xs2
    public final void b(RectF rectF, Matrix matrix, boolean z) {
        this.j.b(rectF, matrix, z);
    }

    @Override // defpackage.wr3
    public final void c(ListIterator<sx1> listIterator) {
        if (this.j != null) {
            return;
        }
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (listIterator.hasPrevious()) {
            arrayList.add(listIterator.previous());
            listIterator.remove();
        }
        Collections.reverse(arrayList);
        this.j = new tx1(this.c, this.d, "Repeater", this.f, arrayList, null);
    }

    @Override // defpackage.xs2
    public final void d(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        float fFloatValue = this.g.f().floatValue();
        float fFloatValue2 = this.h.f().floatValue();
        o19 o19Var = this.i;
        float fFloatValue3 = o19Var.v.f().floatValue() / 100.0f;
        float fFloatValue4 = o19Var.w.f().floatValue() / 100.0f;
        for (int i2 = ((int) fFloatValue) - 1; i2 >= 0; i2--) {
            Matrix matrix2 = this.a;
            matrix2.set(matrix);
            float f = i2;
            matrix2.preConcat(o19Var.f(f + fFloatValue2));
            this.j.d(canvas, matrix2, (int) (hb5.f(fFloatValue3, fFloatValue4, f / fFloatValue) * i), et2Var);
        }
    }

    @Override // ld0.a
    public final void e() {
        this.c.invalidateSelf();
    }

    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
        this.j.f(list, list2);
    }

    @Override // defpackage.sx1
    public final String getName() {
        return this.e;
    }

    @Override // defpackage.l46
    public final Path getPath() {
        Path path = this.j.getPath();
        Path path2 = this.b;
        path2.reset();
        float fFloatValue = this.g.f().floatValue();
        float fFloatValue2 = this.h.f().floatValue();
        for (int i = ((int) fFloatValue) - 1; i >= 0; i--) {
            Matrix matrixF = this.i.f(i + fFloatValue2);
            Matrix matrix = this.a;
            matrix.set(matrixF);
            path2.addPath(path, matrix);
        }
        return path2;
    }

    @Override // defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        if (this.i.c(by4Var, obj)) {
            return;
        }
        if (obj == vx4.s) {
            this.g.k(by4Var);
        } else if (obj == vx4.t) {
            this.h.k(by4Var);
        }
    }
}
