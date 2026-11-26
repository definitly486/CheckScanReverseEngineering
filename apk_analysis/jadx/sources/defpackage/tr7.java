package defpackage;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public final class tr7 implements cc9<sr7> {
    public static final tr7 b = new tr7();
    public static final td4.a c = td4.a.a("c", "v", "i", "o");

    @Override // defpackage.cc9
    public final sr7 e(td4 td4Var, float f) {
        if (td4Var.U() == td4.b.BEGIN_ARRAY) {
            td4Var.m();
        }
        td4Var.n();
        ArrayList arrayListC = null;
        ArrayList arrayListC2 = null;
        ArrayList arrayListC3 = null;
        boolean zY = false;
        while (td4Var.v()) {
            int iX = td4Var.X(c);
            if (iX == 0) {
                zY = td4Var.y();
            } else if (iX == 1) {
                arrayListC = ie4.c(td4Var, f);
            } else if (iX == 2) {
                arrayListC2 = ie4.c(td4Var, f);
            } else if (iX != 3) {
                td4Var.Z();
                td4Var.e0();
            } else {
                arrayListC3 = ie4.c(td4Var, f);
            }
        }
        td4Var.p();
        if (td4Var.U() == td4.b.END_ARRAY) {
            td4Var.o();
        }
        if (arrayListC == null || arrayListC2 == null || arrayListC3 == null) {
            fg.c("Shape data was missing information.");
            return null;
        }
        if (arrayListC.isEmpty()) {
            return new sr7(new PointF(), false, Collections.EMPTY_LIST);
        }
        int size = arrayListC.size();
        PointF pointF = (PointF) arrayListC.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i = 1; i < size; i++) {
            PointF pointF2 = (PointF) arrayListC.get(i);
            int i2 = i - 1;
            arrayList.add(new q62(hb5.a((PointF) arrayListC.get(i2), (PointF) arrayListC3.get(i2)), hb5.a(pointF2, (PointF) arrayListC2.get(i)), pointF2));
        }
        if (zY) {
            PointF pointF3 = (PointF) arrayListC.get(0);
            int i3 = size - 1;
            arrayList.add(new q62(hb5.a((PointF) arrayListC.get(i3), (PointF) arrayListC3.get(i3)), hb5.a(pointF3, (PointF) arrayListC2.get(0)), pointF3));
        }
        return new sr7(pointF, zY, arrayList);
    }
}
