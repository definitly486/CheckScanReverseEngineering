package yads;

import defpackage.j59;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ol5 {
    public final uq5 a;

    public ol5(uq5 uq5Var) {
        this.a = uq5Var;
    }

    public final mp2 a(List list, mb1 mb1Var) {
        ArrayList arrayList = new ArrayList();
        a(this, list, arrayList);
        uq5 uq5Var = this.a;
        tq5[] tq5VarArr = (tq5[]) arrayList.toArray(new tq5[0]);
        return uq5Var.a(mb1Var, (tq5[]) Arrays.copyOf(tq5VarArr, tq5VarArr.length));
    }

    public static final j59 a(ol5 ol5Var, List list, List list2) {
        ol5Var.getClass();
        list2.add(zq5.a(list));
        return j59.a;
    }
}
