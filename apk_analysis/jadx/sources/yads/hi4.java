package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class hi4 implements fe4 {
    public final pf4 a;

    public hi4(bf5 bf5Var) {
        this.a = new pf4(bf5Var);
    }

    @Override // yads.fe4
    public final void a(Context context, ee4 ee4Var, b05 b05Var, de4 de4Var, of4 of4Var, we4 we4Var, ye4 ye4Var) {
        List list = ee4Var.a.a;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            be4 be4VarA = this.a.a(context, ee4Var, b05Var, de4Var, of4Var, we4Var, (sd4) it.next());
            if (be4VarA != null) {
                arrayList.add(be4VarA);
            }
        }
        if (arrayList.isEmpty()) {
            ye4Var.a(o8.a);
        } else {
            ye4Var.a(arrayList);
        }
    }
}
