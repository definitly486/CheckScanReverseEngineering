package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public final class v36 {
    public final ArrayList a;
    public final ArrayList b;
    public final n54 c;
    public final ArrayList d;

    public static class a {
        public final ArrayList a = new ArrayList();
        public final ArrayList b = new ArrayList();
        public final ArrayList c = new ArrayList();
        public final LinkedHashSet d = dq2.p;
        public z05.c e;
    }

    public v36(a aVar) {
        ArrayList arrayList = aVar.a;
        LinkedHashSet linkedHashSet = aVar.d;
        LinkedHashSet linkedHashSet2 = dq2.p;
        ArrayList arrayList2 = new ArrayList();
        arrayList2.addAll(arrayList);
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            arrayList2.add(dq2.q.get((Class) it.next()));
        }
        this.a = arrayList2;
        n54 r36Var = aVar.e;
        r36Var = r36Var == null ? new r36() : r36Var;
        this.c = r36Var;
        this.d = aVar.c;
        ArrayList arrayList3 = aVar.b;
        this.b = arrayList3;
        r36Var.a(new m54(arrayList3, Collections.EMPTY_MAP));
    }
}
