package yads;

import android.content.Context;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class cj4 implements fe4 {
    public final pf4 a;

    public cj4(bf5 bf5Var) {
        this.a = new pf4(bf5Var);
    }

    @Override // yads.fe4
    public final void a(Context context, ee4 ee4Var, b05 b05Var, de4 de4Var, of4 of4Var, we4 we4Var, ye4 ye4Var) {
        pg4 pg4VarA;
        List list = ee4Var.a.a;
        if (list == null || list.isEmpty()) {
            pg4VarA = null;
        } else if (list.size() > 1) {
            pg4VarA = de4Var.a(context, ee4Var, b05Var, of4Var, we4Var);
        } else {
            pg4VarA = this.a.a(context, ee4Var, b05Var, de4Var, of4Var, we4Var, (sd4) list.get(0));
        }
        if (pg4VarA != null) {
            ye4Var.a(pg4VarA);
        } else {
            ye4Var.a(o8.a);
        }
    }
}
