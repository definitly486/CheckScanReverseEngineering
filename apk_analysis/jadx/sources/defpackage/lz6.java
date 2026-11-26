package defpackage;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class lz6 implements rf9 {
    public final LinkedHashMap<o95.b, ArrayList<a>> a = new LinkedHashMap<>();
    public int b;

    public static final class a {
        public final WeakReference<x04> a;
        public final Map<String, Object> b;
        public final long c;

        public a(WeakReference<x04> weakReference, Map<String, ? extends Object> map, long j) {
            this.a = weakReference;
            this.b = map;
            this.c = j;
        }
    }

    @Override // defpackage.rf9
    public final o95.c a(o95.b bVar) {
        ArrayList<a> arrayList = this.a.get(bVar);
        o95.c cVar = null;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            a aVar = arrayList.get(i);
            x04 x04Var = aVar.a.get();
            o95.c cVar2 = x04Var != null ? new o95.c(x04Var, aVar.b) : null;
            if (cVar2 != null) {
                cVar = cVar2;
                break;
            }
        }
        b();
        return cVar;
    }

    public final void b() {
        int i = this.b;
        this.b = i + 1;
        if (i >= 10) {
            this.b = 0;
            Iterator<ArrayList<a>> it = this.a.values().iterator();
            while (it.hasNext()) {
                ArrayList<a> next = it.next();
                if (next.size() <= 1) {
                    a aVar = (a) qn1.V(next);
                    if ((aVar != null ? aVar.a.get() : null) == null) {
                        it.remove();
                    }
                } else {
                    int size = next.size();
                    int i2 = 0;
                    for (int i3 = 0; i3 < size; i3++) {
                        int i4 = i3 - i2;
                        if (next.get(i4).a.get() == null) {
                            next.remove(i4);
                            i2++;
                        }
                    }
                    if (next.isEmpty()) {
                        it.remove();
                    }
                }
            }
        }
    }

    @Override // defpackage.rf9
    public final void clear() {
        this.b = 0;
        this.a.clear();
    }

    @Override // defpackage.rf9
    public final void d(o95.b bVar, x04 x04Var, Map<String, ? extends Object> map, long j) {
        LinkedHashMap<o95.b, ArrayList<a>> linkedHashMap = this.a;
        ArrayList<a> arrayList = linkedHashMap.get(bVar);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            linkedHashMap.put(bVar, arrayList);
        }
        ArrayList<a> arrayList2 = arrayList;
        a aVar = new a(new WeakReference(x04Var), map, j);
        if (arrayList2.isEmpty()) {
            arrayList2.add(aVar);
        } else {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                a aVar2 = arrayList2.get(i);
                if (j >= aVar2.c) {
                    if (aVar2.a.get() == x04Var) {
                        arrayList2.set(i, aVar);
                        break;
                    } else {
                        arrayList2.add(i, aVar);
                        break;
                    }
                }
            }
        }
        b();
    }

    @Override // defpackage.rf9
    public final boolean f(o95.b bVar) {
        return this.a.remove(bVar) != null;
    }
}
