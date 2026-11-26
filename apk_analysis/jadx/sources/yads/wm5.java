package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class wm5 extends ch4 {
    public final mi4 g;
    public final zg5 h;

    public wm5(mi4 mi4Var, ae4 ae4Var, zg5 zg5Var, d9 d9Var) {
        super(ae4Var, d9Var);
        this.g = mi4Var;
        this.h = zg5Var;
    }

    @Override // yads.ch4
    public final i66 a(Context context, int i, boolean z) {
        fe5 fe5VarA = this.h.a(context);
        i66 i66VarA = fe5VarA != null ? fe5VarA.p : true ? super.a(context, i, z) : new g66();
        if (!(i66VarA instanceof g66)) {
            return i66VarA;
        }
        ArrayList arrayList = this.g.a;
        ArrayList<ij4> arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (obj instanceof ij4) {
                arrayList2.add(obj);
            }
        }
        if (!arrayList2.isEmpty()) {
            for (ij4 ij4Var : arrayList2) {
                ch4 ch4Var = ij4Var.d;
                hm4 hm4Var = ij4Var.e;
                fe5 fe5VarA2 = this.h.a(context);
                boolean z2 = fe5VarA2 != null ? fe5VarA2.p : true;
                Iterator it = hm4Var.b.iterator();
                while (it.hasNext()) {
                    int i2 = z2 ? ((ck5) it.next()).c : i;
                    if ((z ? ch4Var.a(context, i2, true) : ch4Var.a(context, i2, false)) instanceof f66) {
                    }
                }
                return i66VarA;
            }
        }
        return new f66(e66.NO_VISIBLE_ADS, null, null);
    }
}
