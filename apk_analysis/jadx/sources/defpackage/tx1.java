package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class tx1 implements xs2, l46, ld0.a, of4 {
    public final xu5.b a;
    public final RectF b;
    public final xu5 c;
    public final Matrix d;
    public final Path e;
    public final RectF f;
    public final String g;
    public final boolean h;
    public final ArrayList i;
    public final ox4 j;
    public ArrayList k;
    public final o19 l;

    public tx1(ox4 ox4Var, nd0 nd0Var, String str, boolean z, ArrayList arrayList, ql qlVar) {
        this.a = new xu5.b();
        this.b = new RectF();
        this.c = new xu5();
        this.d = new Matrix();
        this.e = new Path();
        this.f = new RectF();
        this.g = str;
        this.j = ox4Var;
        this.h = z;
        this.i = arrayList;
        if (qlVar != null) {
            o19 o19Var = new o19(qlVar);
            this.l = o19Var;
            o19Var.a(nd0Var);
            o19Var.b(this);
        }
        ArrayList arrayList2 = new ArrayList();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            sx1 sx1Var = (sx1) arrayList.get(size);
            if (sx1Var instanceof wr3) {
                arrayList2.add((wr3) sx1Var);
            }
        }
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ((wr3) arrayList2.get(size2)).c(arrayList.listIterator(arrayList.size()));
        }
    }

    @Override // defpackage.of4
    public final void a(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
        String str = this.g;
        if (!nf4Var.c(i, str) && !"__container".equals(str)) {
            return;
        }
        if (!"__container".equals(str)) {
            nf4 nf4Var3 = new nf4(nf4Var2);
            nf4Var3.a.add(str);
            if (nf4Var.a(i, str)) {
                nf4 nf4Var4 = new nf4(nf4Var3);
                nf4Var4.b = this;
                arrayList.add(nf4Var4);
            }
            nf4Var2 = nf4Var3;
        }
        if (!nf4Var.d(i, str)) {
            return;
        }
        int iB = nf4Var.b(i, str) + i;
        int i2 = 0;
        while (true) {
            ArrayList arrayList2 = this.i;
            if (i2 >= arrayList2.size()) {
                return;
            }
            sx1 sx1Var = (sx1) arrayList2.get(i2);
            if (sx1Var instanceof of4) {
                ((of4) sx1Var).a(nf4Var, iB, arrayList, nf4Var2);
            }
            i2++;
        }
    }

    @Override // defpackage.xs2
    public final void b(RectF rectF, Matrix matrix, boolean z) {
        Matrix matrix2 = this.d;
        matrix2.set(matrix);
        o19 o19Var = this.l;
        if (o19Var != null) {
            matrix2.preConcat(o19Var.e());
        }
        RectF rectF2 = this.f;
        rectF2.set(0.0f, 0.0f, 0.0f, 0.0f);
        ArrayList arrayList = this.i;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            sx1 sx1Var = (sx1) arrayList.get(size);
            if (sx1Var instanceof xs2) {
                ((xs2) sx1Var).b(rectF2, matrix2, z);
                rectF.union(rectF2);
            }
        }
    }

    public final List<l46> c() {
        if (this.k == null) {
            this.k = new ArrayList();
            int i = 0;
            while (true) {
                ArrayList arrayList = this.i;
                if (i >= arrayList.size()) {
                    break;
                }
                sx1 sx1Var = (sx1) arrayList.get(i);
                if (sx1Var instanceof l46) {
                    this.k.add((l46) sx1Var);
                }
                i++;
            }
        }
        return this.k;
    }

    @Override // defpackage.xs2
    public final void d(Canvas canvas, Matrix matrix, int i, et2 et2Var) {
        if (this.h) {
            return;
        }
        Matrix matrix2 = this.d;
        matrix2.set(matrix);
        o19 o19Var = this.l;
        if (o19Var != null) {
            matrix2.preConcat(o19Var.e());
            ld0<Integer, Integer> ld0Var = o19Var.p;
            i = (int) (((((ld0Var == null ? 100 : ld0Var.f().intValue()) / 100.0f) * i) / 255.0f) * 255.0f);
        }
        ox4 ox4Var = this.j;
        boolean z = (ox4Var.u && j() && i != 255) || (et2Var != null && ox4Var.v && j());
        int i2 = z ? 255 : i;
        xu5 xu5Var = this.c;
        if (z) {
            RectF rectF = this.b;
            rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
            b(rectF, matrix, true);
            xu5.b bVar = this.a;
            bVar.a = i;
            if (et2Var != null) {
                if (Color.alpha(et2Var.d) > 0) {
                    bVar.b = et2Var;
                } else {
                    bVar.b = null;
                }
                et2Var = null;
            } else {
                bVar.b = null;
            }
            canvas = xu5Var.e(canvas, rectF, bVar);
        } else if (et2Var != null) {
            et2 et2Var2 = new et2(et2Var);
            et2Var2.b(i2);
            et2Var = et2Var2;
        }
        ArrayList arrayList = this.i;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Object obj = arrayList.get(size);
            if (obj instanceof xs2) {
                ((xs2) obj).d(canvas, matrix2, i2, et2Var);
            }
        }
        if (z) {
            xu5Var.c();
        }
    }

    @Override // ld0.a
    public final void e() {
        this.j.invalidateSelf();
    }

    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
        int size = list.size();
        ArrayList arrayList = this.i;
        ArrayList arrayList2 = new ArrayList(arrayList.size() + size);
        arrayList2.addAll(list);
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            sx1 sx1Var = (sx1) arrayList.get(size2);
            sx1Var.f(arrayList2, arrayList.subList(0, size2));
            arrayList2.add(sx1Var);
        }
    }

    @Override // defpackage.sx1
    public final String getName() {
        throw null;
    }

    @Override // defpackage.l46
    public final Path getPath() {
        Matrix matrix = this.d;
        matrix.reset();
        o19 o19Var = this.l;
        if (o19Var != null) {
            matrix.set(o19Var.e());
        }
        Path path = this.e;
        path.reset();
        if (!this.h) {
            ArrayList arrayList = this.i;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                sx1 sx1Var = (sx1) arrayList.get(size);
                if (sx1Var instanceof l46) {
                    path.addPath(((l46) sx1Var).getPath(), matrix);
                }
            }
        }
        return path;
    }

    @Override // defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        o19 o19Var = this.l;
        if (o19Var != null) {
            o19Var.c(by4Var, obj);
        }
    }

    public final boolean j() {
        int i = 0;
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.i;
            if (i >= arrayList.size()) {
                return false;
            }
            if ((arrayList.get(i) instanceof xs2) && (i2 = i2 + 1) >= 2) {
                return true;
            }
            i++;
        }
    }

    public tx1(ox4 ox4Var, nd0 nd0Var, wr7 wr7Var, nw4 nw4Var) {
        ql qlVar;
        String str = wr7Var.a;
        boolean z = wr7Var.c;
        List<dy1> list = wr7Var.b;
        ArrayList arrayList = new ArrayList(list.size());
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            sx1 sx1VarA = list.get(i2).a(ox4Var, nw4Var, nd0Var);
            if (sx1VarA != null) {
                arrayList.add(sx1VarA);
            }
        }
        while (true) {
            if (i >= list.size()) {
                qlVar = null;
                break;
            }
            dy1 dy1Var = list.get(i);
            if (dy1Var instanceof ql) {
                qlVar = (ql) dy1Var;
                break;
            }
            i++;
        }
        this(ox4Var, nd0Var, str, z, arrayList, qlVar);
    }
}
