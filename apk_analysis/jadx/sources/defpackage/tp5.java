package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class tp5 implements rp5 {
    public final dp5 a;

    public tp5(dp5 dp5Var) {
        this.a = dp5Var;
    }

    @Override // defpackage.rp5
    public final p08 a(int i) {
        mz7<j26<to5>> mz7VarB = this.a.b(i, 15);
        sp0 sp0Var = new sp0(sp5.f, 1);
        mz7VarB.getClass();
        return new p08(mz7VarB, sp0Var);
    }

    @Override // defpackage.rp5
    public final p08 b() {
        mz7<Integer> mz7VarC = this.a.c();
        mz7VarC.getClass();
        return new p08(new u08(mz7VarC, null, 0), new vv(od3.h, 2));
    }

    @Override // defpackage.rp5
    public final jq1 c(List list) {
        List list2 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(this.a.a(((Number) it.next()).intValue()));
        }
        qp1[] qp1VarArr = (qp1[]) arrayList.toArray(new qp1[0]);
        return new jq1((qq1[]) Arrays.copyOf(qp1VarArr, qp1VarArr.length));
    }
}
