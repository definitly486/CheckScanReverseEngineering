package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public final class hb5 {
    public static final PointF a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    public static int c(int i) {
        return Math.max(0, Math.min(255, i));
    }

    public static int d(float f, float f2) {
        int i = (int) f;
        int i2 = (int) f2;
        int i3 = i / i2;
        int i4 = i % i2;
        if (!((i ^ i2) >= 0) && i4 != 0) {
            i3--;
        }
        return i - (i2 * i3);
    }

    public static void e(sr7 sr7Var, Path path) {
        Path path2;
        path.reset();
        PointF pointF = sr7Var.b;
        ArrayList arrayList = sr7Var.a;
        path.moveTo(pointF.x, pointF.y);
        float f = pointF.x;
        float f2 = pointF.y;
        PointF pointF2 = a;
        pointF2.set(f, f2);
        int i = 0;
        while (i < arrayList.size()) {
            q62 q62Var = (q62) arrayList.get(i);
            PointF pointF3 = q62Var.a;
            PointF pointF4 = q62Var.b;
            PointF pointF5 = q62Var.c;
            if (pointF3.equals(pointF2) && pointF4.equals(pointF5)) {
                path.lineTo(pointF5.x, pointF5.y);
                path2 = path;
            } else {
                path2 = path;
                path2.cubicTo(pointF3.x, pointF3.y, pointF4.x, pointF4.y, pointF5.x, pointF5.y);
            }
            pointF2.set(pointF5.x, pointF5.y);
            i++;
            path = path2;
        }
        Path path3 = path;
        if (sr7Var.c) {
            path3.close();
        }
    }

    public static float f(float f, float f2, float f3) {
        return i8.b(f2, f, f3, f);
    }

    public static void g(nf4 nf4Var, int i, ArrayList arrayList, nf4 nf4Var2, pf4 pf4Var) {
        if (nf4Var.a(i, pf4Var.getName())) {
            String name = pf4Var.getName();
            nf4 nf4Var3 = new nf4(nf4Var2);
            nf4Var3.a.add(name);
            nf4 nf4Var4 = new nf4(nf4Var3);
            nf4Var4.b = pf4Var;
            arrayList.add(nf4Var4);
        }
    }
}
