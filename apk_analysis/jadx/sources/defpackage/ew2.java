package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class ew2 implements l46, ld0.a, pf4 {
    public final String b;
    public final ox4 c;
    public final w96 d;
    public final ld0<?, PointF> e;
    public final ck1 f;
    public boolean h;
    public final Path a = new Path();
    public final pu1 g = new pu1();

    public ew2(ox4 ox4Var, nd0 nd0Var, ck1 ck1Var) {
        this.b = ck1Var.a;
        this.c = ox4Var;
        ld0<?, ?> ld0VarA = ck1Var.c.a();
        this.d = (w96) ld0VarA;
        ld0<PointF, PointF> ld0VarA2 = ck1Var.b.a();
        this.e = ld0VarA2;
        this.f = ck1Var;
        nd0Var.c(ld0VarA);
        nd0Var.c(ld0VarA2);
        ld0VarA.a(this);
        ld0VarA2.a(this);
    }

    @Override // defpackage.of4
    public final void a(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2) {
        hb5.g(nf4Var, i, arrayList, nf4Var2, this);
    }

    @Override // ld0.a
    public final void e() {
        this.h = false;
        this.c.invalidateSelf();
    }

    @Override // defpackage.sx1
    public final void f(List<sx1> list, List<sx1> list2) {
        int i = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) list;
            if (i >= arrayList.size()) {
                return;
            }
            sx1 sx1Var = (sx1) arrayList.get(i);
            if (sx1Var instanceof j39) {
                j39 j39Var = (j39) sx1Var;
                if (j39Var.c == fs7.a.SIMULTANEOUSLY) {
                    this.g.a.add(j39Var);
                    j39Var.a(this);
                }
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
        boolean z = this.h;
        Path path = this.a;
        if (z) {
            return path;
        }
        path.reset();
        ck1 ck1Var = this.f;
        if (ck1Var.e) {
            this.h = true;
            return path;
        }
        PointF pointFF = this.d.f();
        float f = pointFF.x / 2.0f;
        float f2 = pointFF.y / 2.0f;
        float f3 = f * 0.55228f;
        float f4 = f2 * 0.55228f;
        path.reset();
        if (ck1Var.d) {
            float f5 = -f2;
            path.moveTo(0.0f, f5);
            float f6 = 0.0f - f3;
            float f7 = -f;
            float f8 = 0.0f - f4;
            path.cubicTo(f6, f5, f7, f8, f7, 0.0f);
            float f9 = f4 + 0.0f;
            path.cubicTo(f7, f9, f6, f2, 0.0f, f2);
            float f10 = f3 + 0.0f;
            path.cubicTo(f10, f2, f, f9, f, 0.0f);
            path.cubicTo(f, f8, f10, f5, 0.0f, f5);
        } else {
            float f11 = -f2;
            path.moveTo(0.0f, f11);
            float f12 = f3 + 0.0f;
            float f13 = 0.0f - f4;
            path.cubicTo(f12, f11, f, f13, f, 0.0f);
            float f14 = f4 + 0.0f;
            path.cubicTo(f, f14, f12, f2, 0.0f, f2);
            float f15 = 0.0f - f3;
            float f16 = -f;
            path.cubicTo(f15, f2, f16, f14, f16, 0.0f);
            path.cubicTo(f16, f13, f15, f11, 0.0f, f11);
        }
        PointF pointFF2 = this.e.f();
        path.offset(pointFF2.x, pointFF2.y);
        path.close();
        this.g.a(path);
        this.h = true;
        return path;
    }

    @Override // defpackage.of4
    public final void i(by4 by4Var, Object obj) {
        if (obj == vx4.f) {
            this.d.k(by4Var);
        } else if (obj == vx4.i) {
            this.e.k(by4Var);
        }
    }
}
