package defpackage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class lma {
    public final HashMap a = new HashMap();

    public interface a {
        void a();

        void a(Object obj);
    }

    public final void a(String str, Object obj) {
        synchronized (this.a) {
            try {
                List list = (List) this.a.get(str);
                if (list == null) {
                    return;
                }
                if (obj == null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((a) it.next()).a();
                    }
                } else {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        ((a) it2.next()).a(obj);
                    }
                }
                this.a.remove(str);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean b(String str, a aVar) {
        boolean z;
        synchronized (this.a) {
            try {
                if (this.a.containsKey(str)) {
                    List list = (List) this.a.get(str);
                    if (list != null) {
                        list.add(aVar);
                    }
                    z = true;
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(aVar);
                    this.a.put(str, arrayList);
                    z = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }
}
