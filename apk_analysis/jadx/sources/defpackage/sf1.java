package defpackage;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class sf1 extends gh4 implements nl3<List<? extends n81>, List<? extends p71>> {
    public static final sf1 f = new sf1(1);

    @Override // defpackage.nl3
    public final List<? extends p71> invoke(List<? extends n81> list) {
        List<? extends n81> list2 = list;
        list2.getClass();
        List<? extends n81> list3 = list2;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        for (n81 n81Var : list3) {
            arrayList.add(new p71(n81Var.a, n81Var.b));
        }
        return arrayList;
    }
}
