package yads;

import defpackage.nl3;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class n45 {
    public final e42 a;
    public final LinkedHashMap b = new LinkedHashMap();

    public n45(e42 e42Var) {
        this.a = e42Var;
    }

    public final o45 a(List list) throws IOException {
        if (list.isEmpty()) {
            return o45.c;
        }
        Set setX0 = defpackage.qn1.x0(list);
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            k45 k45Var = (k45) this.b.get(str);
            if (k45Var != null) {
                arrayList.add(k45Var);
                setX0.remove(str);
            }
        }
        if (setX0.isEmpty()) {
            return new o45(arrayList, defpackage.kx2.b);
        }
        ArrayList arrayList2 = new ArrayList();
        w32 w32VarB = this.a.b(setX0);
        List<k45> list2 = w32VarB.a;
        ArrayList arrayList3 = w32VarB.b;
        ArrayList arrayList4 = new ArrayList(defpackage.kn1.q(arrayList3, 10));
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(new m45((z32) it2.next()));
        }
        arrayList2.addAll(arrayList4);
        o45 o45Var = new o45(list2, arrayList2);
        for (k45 k45Var2 : list2) {
            this.b.put(k45Var2.a(), k45Var2);
        }
        return new o45(defpackage.qn1.h0(arrayList, o45Var.a), o45Var.b);
    }

    public final o45 a(l45 l45Var) {
        List<k45> list = l45Var.a;
        for (k45 k45Var : list) {
            this.b.put(k45Var.a(), k45Var);
        }
        e42 e42Var = this.a;
        ArrayList arrayList = e42Var.c.a(list, l45Var.b).a;
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList(defpackage.kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList3.add(new m45((z32) it.next()));
        }
        arrayList2.addAll(arrayList3);
        return new o45(list, arrayList2);
    }

    public final void a(nl3 nl3Var) {
        e42 e42Var = this.a;
        LinkedHashSet linkedHashSetA = e42Var.a(nl3Var);
        ArrayList arrayList = e42Var.b.a(mb1.SKIP_ELEMENT, new vq5(linkedHashSetA)).a;
        ArrayList arrayList2 = new ArrayList(defpackage.kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new m45((z32) it.next()));
        }
        Iterator it2 = linkedHashSetA.iterator();
        while (it2.hasNext()) {
            this.b.remove((String) it2.next());
        }
    }
}
