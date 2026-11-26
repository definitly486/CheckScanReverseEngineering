package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class pf4 {
    public final dj4 a;
    public final ce4 b;

    public pf4(bf5 bf5Var) {
        dj4 dj4Var = new dj4();
        ce4 ce4Var = new ce4(bf5Var);
        this.a = dj4Var;
        this.b = ce4Var;
    }

    public final be4 a(Context context, ee4 ee4Var, b05 b05Var, de4 de4Var, of4 of4Var, we4 we4Var, sd4 sd4Var) {
        if (sd4Var == null) {
            return null;
        }
        dj4 dj4Var = this.a;
        f95 f95Var = sd4Var.a;
        dj4Var.getClass();
        int iOrdinal = f95Var.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1 && iOrdinal != 2 && iOrdinal != 3) {
            defpackage.me0.e();
            return null;
        }
        fm4 fm4VarA = of4Var.c.a(sd4Var);
        sz2 sz2Var = new sz2();
        s06 s06Var = de4Var.a;
        List list = sd4Var.i;
        List list2 = ee4Var.a.g;
        s06Var.getClass();
        ArrayList arrayListA = s06.a(list, list2);
        s06 s06Var2 = de4Var.a;
        List list3 = sd4Var.h;
        List list4 = ee4Var.a.c;
        s06Var2.getClass();
        return new be4(context, sd4Var, new lg4(context, sd4Var, b05Var, fm4VarA), b05Var, this.b.a(context, ee4Var, new hm4(sd4Var.b, arrayListA, s06.a(list3, list4), sd4Var.c, sd4Var.g, sd4Var.j), fm4VarA, of4Var, sz2Var, sd4Var, ba.SINGLE), we4Var);
    }
}
