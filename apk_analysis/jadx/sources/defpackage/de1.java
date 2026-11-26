package defpackage;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public final class de1 extends gh4 implements nl3<Map<Integer, ? extends p71>, c18<? extends Map<c81, ? extends List<? extends vg6>>>> {
    public final /* synthetic */ List<vg6> f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public de1(List<vg6> list) {
        super(1);
        this.f = list;
    }

    @Override // defpackage.nl3
    public final c18<? extends Map<c81, ? extends List<? extends vg6>>> invoke(Map<Integer, ? extends p71> map) {
        TreeMap treeMap;
        Map<Integer, ? extends p71> map2 = map;
        map2.getClass();
        List<vg6> list = this.f;
        if (list != null) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                Integer numValueOf = Integer.valueOf(((vg6) obj).a());
                Object arrayList = linkedHashMap.get(numValueOf);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(numValueOf, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(m05.b(linkedHashMap.size()));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                p71 p71Var = map2.get(entry.getKey());
                if (p71Var == null) {
                    p71Var = new p71(((Number) entry.getKey()).intValue(), String.valueOf(((Number) entry.getKey()).intValue()));
                }
                Iterator it = ((Iterable) entry.getValue()).iterator();
                int iH = 0;
                while (it.hasNext()) {
                    iH += ((vg6) it.next()).h();
                }
                linkedHashMap2.put(new c81(p71Var, iH), entry.getValue());
            }
            final ce1 ce1Var = ce1.f;
            treeMap = new TreeMap(new Comparator() { // from class: be1
                @Override // java.util.Comparator
                public final int compare(Object obj2, Object obj3) {
                    return ((Number) ce1Var.invoke(obj2, obj3)).intValue();
                }
            });
            treeMap.putAll(linkedHashMap2);
        } else {
            treeMap = null;
        }
        return mz7.e(treeMap);
    }
}
