package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class qf1 extends gh4 implements nl3<w42, List<? extends ao1>> {
    public static final qf1 f = new qf1(1);

    @Override // defpackage.nl3
    public final List<? extends ao1> invoke(w42 w42Var) {
        w42 w42Var2 = w42Var;
        w42Var2.getClass();
        List<a42> listA = w42Var2.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((a42) it.next()).a());
        }
        return arrayList;
    }
}
