package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class pm0 extends gh4 implements nl3<List<? extends q71>, List<? extends cs0>> {
    public static final pm0 f = new pm0(1);

    @Override // defpackage.nl3
    public final List<? extends cs0> invoke(List<? extends q71> list) {
        List<? extends q71> list2 = list;
        list2.getClass();
        List<? extends q71> list3 = list2;
        ArrayList arrayList = new ArrayList(kn1.q(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            arrayList.add(new qq0((q71) it.next()));
        }
        return arrayList;
    }
}
