package yads;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class mk {
    public final LinkedHashMap a;

    public mk(List list) {
        int iB = defpackage.m05.b(defpackage.kn1.q(list, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB < 16 ? 16 : iB);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ak akVar = (ak) it.next();
            linkedHashMap.put(akVar.a, akVar.c);
        }
        this.a = linkedHashMap;
    }
}
