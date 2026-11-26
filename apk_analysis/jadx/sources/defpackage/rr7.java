package defpackage;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class rr7 implements l46, ld0.a, pf4 {
    public final String b;
    public final boolean c;
    public final ox4 d;
    public final yr7 e;
    public boolean f;
    public final Path a = new Path();
    public final pu1 g = new pu1();

    public rr7(ox4 ox4Var, nd0 nd0Var, bs7 bs7Var) {
        this.b = bs7Var.a;
        this.c = bs7Var.d;
        this.d = ox4Var;
        yr7 yr7Var = new yr7((List) bs7Var.c.b);
        this.e = yr7Var;
        nd0Var.c(yr7Var);
        yr7Var.a(this);
    }

    @Override // defpackage.of4
    public final void a(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
        hb5.g(nf4Var, i, arrayList, nf4Var2, this);
    }

    @Override // ld0.a
    public final void e() {
        this.f = false;
        this.d.invalidateSelf();
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0029  */
    /* JADX WARN: Code duplicated, block: B:12:0x002d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:13:0x002f  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c A[SYNTHETIC] */
    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
        ArrayList arrayList = null;
        int i = 0;
        while (true) {
            ArrayList arrayList2 = (ArrayList) list;
            if (i >= arrayList2.size()) {
                this.e.m = arrayList;
                return;
            }
            sx1 sx1Var = (sx1) arrayList2.get(i);
            if (sx1Var instanceof j39) {
                j39 j39Var = (j39) sx1Var;
                if (j39Var.c == fs7.a.SIMULTANEOUSLY) {
                    this.g.a.add(j39Var);
                    j39Var.a(this);
                } else if (!(sx1Var instanceof as7)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    as7 as7Var = (as7) sx1Var;
                    as7Var.h(this);
                    arrayList.add(as7Var);
                }
            } else if (!(sx1Var instanceof as7)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                as7 as7Var2 = (as7) sx1Var;
                as7Var2.h(this);
                arrayList.add(as7Var2);
            }
            i++;
        }
    }

    @Override // defpackage.sx1
    public final String getName() {
        return this.b;
    }

    @Override // defpackage.l46
    public final Path getPath() {
        boolean z = this.f;
        yr7 yr7Var = this.e;
        Path path = this.a;
        if (z && yr7Var.e == null) {
            return path;
        }
        path.reset();
        if (this.c) {
            this.f = true;
            return path;
        }
        Path pathF = yr7Var.f();
        if (pathF == null) {
            return path;
        }
        path.set(pathF);
        path.setFillType(Path.FillType.EVEN_ODD);
        this.g.a(path);
        this.f = true;
        return path;
    }

    @Override // defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        if (obj == vx4.N) {
            this.e.k(by4Var);
        }
    }
}
