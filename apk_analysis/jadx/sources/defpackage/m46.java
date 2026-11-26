package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
public final class m46 extends vf4<PointF> {
    public Path q;
    public final vf4<PointF> r;

    public m46(nw4 nw4Var, vf4<PointF> vf4Var) {
        super(nw4Var, vf4Var.b, vf4Var.c, vf4Var.d, vf4Var.e, vf4Var.f, vf4Var.g, vf4Var.h);
        this.r = vf4Var;
        d();
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0019  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void d() {
        boolean z;
        T t;
        T t2 = this.c;
        T t3 = this.b;
        if (t2 == 0 || t3 == 0) {
            z = false;
        } else {
            PointF pointF = (PointF) t2;
            if (((PointF) t3).equals(pointF.x, pointF.y)) {
                z = true;
            } else {
                z = false;
            }
        }
        if (t3 == 0 || (t = this.c) == 0 || z) {
            return;
        }
        PointF pointF2 = (PointF) t3;
        PointF pointF3 = (PointF) t;
        vf4<PointF> vf4Var = this.r;
        PointF pointF4 = vf4Var.o;
        PointF pointF5 = vf4Var.p;
        Matrix matrix = ib9.a;
        Path path = new Path();
        path.moveTo(pointF2.x, pointF2.y);
        if (pointF4 == null || pointF5 == null || (pointF4.length() == 0.0f && pointF5.length() == 0.0f)) {
            path.lineTo(pointF3.x, pointF3.y);
        } else {
            float f = pointF4.x + pointF2.x;
            float f2 = pointF2.y + pointF4.y;
            float f3 = pointF3.x;
            float f4 = f3 + pointF5.x;
            float f5 = pointF3.y;
            path.cubicTo(f, f2, f4, f5 + pointF5.y, f3, f5);
        }
        this.q = path;
    }
}
