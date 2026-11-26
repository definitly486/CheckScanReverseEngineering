package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class dq0 extends gh4 implements nl3<j26<o81>, List<? extends q71>> {
    public static final dq0 f = new dq0(1);

    @Override // defpackage.nl3
    public final List<? extends q71> invoke(j26<o81> j26Var) {
        j26<o81> j26Var2 = j26Var;
        j26Var2.getClass();
        List<o81> listA = j26Var2.a();
        ArrayList arrayList = new ArrayList(kn1.q(listA, 10));
        Iterator<T> it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((o81) it.next()).a());
        }
        return arrayList;
    }
}
