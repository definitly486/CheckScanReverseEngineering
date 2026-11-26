package defpackage;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class fe1 extends gh4 implements nl3<List<? extends p71>, Map<Integer, ? extends p71>> {
    public static final fe1 f = new fe1(1);

    @Override // defpackage.nl3
    public final Map<Integer, ? extends p71> invoke(List<? extends p71> list) {
        List<? extends p71> list2 = list;
        list2.getClass();
        List<? extends p71> list3 = list2;
        int iB = m05.b(kn1.q(list3, 10));
        if (iB < 16) {
            iB = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
        for (Object obj : list3) {
            linkedHashMap.put(Integer.valueOf(((p71) obj).a()), obj);
        }
        return linkedHashMap;
    }
}
