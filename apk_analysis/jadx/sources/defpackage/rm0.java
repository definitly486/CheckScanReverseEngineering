package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class rm0 extends gh4 implements nl3<List<? extends iq6>, List<? extends er6>> {
    public static final rm0 f = new rm0(1);

    @Override // defpackage.nl3
    public final List<? extends er6> invoke(List<? extends iq6> list) {
        List<? extends iq6> list2 = list;
        list2.getClass();
        List<? extends iq6> list3 = list2;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            arrayList.add(((iq6) it.next()).a());
        }
        return arrayList;
    }
}
