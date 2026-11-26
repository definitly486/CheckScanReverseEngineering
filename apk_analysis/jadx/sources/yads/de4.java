package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class de4 {
    public final s06 a;
    public final ej4 b;
    public final sm5 c;

    public de4(bf5 bf5Var) {
        s06 s06Var = new s06();
        ej4 ej4Var = new ej4(bf5Var);
        sm5 sm5Var = new sm5(bf5Var);
        this.a = s06Var;
        this.b = ej4Var;
        this.c = sm5Var;
    }

    public final ni4 a(Context context, ee4 ee4Var, b05 b05Var, of4 of4Var, we4 we4Var) {
        yh4 yh4Var;
        Context context2 = context;
        ee4 ee4Var2 = ee4Var;
        sz2 sz2Var = new sz2();
        ej4 ej4Var = this.b;
        ej4Var.getClass();
        ArrayList arrayList = new ArrayList();
        List<sd4> list = ee4Var2.a.a;
        gm4 gm4Var = of4Var.c;
        for (sd4 sd4Var : list) {
            fm4 fm4VarA = gm4Var.a(sd4Var);
            lg4 lg4Var = new lg4(context2, sd4Var, b05Var, fm4VarA);
            s06 s06Var = ej4Var.b.a;
            rt rtVarA = ej4Var.c.a(context2, ee4Var, new hm4(sd4Var.b, s06.a(sd4Var.i, null), s06.a(sd4Var.h, null), sd4Var.c, sd4Var.g, sd4Var.j), fm4VarA, of4Var, sz2Var, sd4Var, ba.BLOCK_INNER_CREATIVE);
            sz2 sz2Var2 = sz2Var;
            dj4 dj4Var = ej4Var.a;
            f95 f95Var = sd4Var.a;
            dj4Var.getClass();
            int iOrdinal = f95Var.ordinal();
            if (iOrdinal != 0 && iOrdinal != 1 && iOrdinal != 2 && iOrdinal != 3) {
                defpackage.me0.e();
                return null;
            }
            context2 = context;
            arrayList.add(new be4(context2, sd4Var, lg4Var, b05Var, rtVarA, we4Var));
            ee4Var2 = ee4Var;
            sz2Var = sz2Var2;
        }
        ee4 ee4Var3 = ee4Var2;
        sz2 sz2Var3 = sz2Var;
        Context context3 = context2;
        mi4 mi4Var = new mi4(arrayList);
        sm5 sm5Var = this.c;
        sm5Var.b.getClass();
        vg4 vg4Var = ee4Var3.a;
        List list2 = vg4Var.b;
        hm4 hm4Var = new hm4(list2, s06.a(null, vg4Var.g), s06.a(null, vg4Var.c), "ad_unit", vg4Var.d, null);
        yh4 yh4Var2 = yh4.b;
        if (yh4Var2 == null) {
            synchronized (yh4.a) {
                yh4Var = yh4.b;
                if (yh4Var == null) {
                    yh4Var = new yh4();
                    yh4.b = yh4Var;
                }
            }
            yh4Var2 = yh4Var;
        }
        ae4 ae4Var = new ae4(list2, yh4Var2);
        return new ni4(context3, mi4Var, b05Var, new rt(ee4Var3, new wm5(mi4Var, ae4Var, yg5.a(), ee4Var3.b), hm4Var, new xm5(list2), of4Var, new qa(sz2Var3), new lh4(context3, ae4Var, yh4Var2), sm5Var.a, null, ba.BLOCK), we4Var);
    }
}
