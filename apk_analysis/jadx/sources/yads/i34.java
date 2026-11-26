package yads;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class i34 {
    public final r44 a;

    public i34(r44 r44Var) {
        this.a = r44Var;
    }

    public final ArrayList a(ArrayList arrayList) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : arrayList) {
            String strB = this.a.b((x54) obj);
            Object arrayList2 = linkedHashMap.get(strB);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(strB, arrayList2);
            }
            ((List) arrayList2).add(obj);
        }
        ArrayList arrayList3 = new ArrayList();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            x54 x54Var = ((String) entry.getKey()) != null ? (x54) defpackage.qn1.T((List) entry.getValue()) : null;
            if (x54Var != null) {
                arrayList3.add(x54Var);
            }
        }
        return arrayList3;
    }
}
