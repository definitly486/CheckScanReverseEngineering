package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class um0 extends gh4 implements nl3<a57<List<? extends jc0>>, List<? extends hc0.b>> {
    public static final um0 f = new um0(1);

    @Override // defpackage.nl3
    public final List<? extends hc0.b> invoke(a57<List<? extends jc0>> a57Var) {
        a57<List<? extends jc0>> a57Var2 = a57Var;
        a57Var2.getClass();
        boolean zO = a57Var2.a.o();
        List list = kx2.b;
        if (!zO) {
            return list;
        }
        List list2 = a57Var2.b;
        if (list2 != null) {
            list = list2;
        }
        List list3 = list;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        Iterator it = list3.iterator();
        while (it.hasNext()) {
            arrayList.add(((jc0) it.next()).c());
        }
        return arrayList;
    }
}
