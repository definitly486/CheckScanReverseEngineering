package yads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;

/* JADX INFO: loaded from: classes6.dex */
public final class ej6 {
    public final HashMap a = new HashMap();
    public final pp2 b;
    public final ew c;
    public final PriorityBlockingQueue d;

    public ej6(ew ewVar, PriorityBlockingQueue priorityBlockingQueue, pp2 pp2Var) {
        this.b = pp2Var;
        this.c = ewVar;
        this.d = priorityBlockingQueue;
    }

    public final void a(r75 r75Var, z85 z85Var) {
        List list;
        wv wvVar = z85Var.b;
        if (wvVar != null) {
            if (wvVar.e >= System.currentTimeMillis()) {
                String strC = r75Var.c();
                synchronized (this) {
                    list = (List) this.a.remove(strC);
                }
                if (list != null) {
                    if (li6.a) {
                        list.size();
                    }
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        this.b.a((r75) it.next(), z85Var, null);
                    }
                    return;
                }
                return;
            }
        }
        b(r75Var);
    }

    public final synchronized void b(r75 r75Var) {
        PriorityBlockingQueue priorityBlockingQueue;
        try {
            String strC = r75Var.c();
            List list = (List) this.a.remove(strC);
            if (list != null && !list.isEmpty()) {
                if (li6.a) {
                    list.size();
                }
                r75 r75Var2 = (r75) list.remove(0);
                this.a.put(strC, list);
                r75Var2.a(this);
                if (this.c != null && (priorityBlockingQueue = this.d) != null) {
                    try {
                        priorityBlockingQueue.put(r75Var2);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        ew ewVar = this.c;
                        ewVar.f = true;
                        ewVar.interrupt();
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized boolean a(r75 r75Var) {
        try {
            String strC = r75Var.c();
            boolean zContainsKey = this.a.containsKey(strC);
            HashMap map = this.a;
            if (zContainsKey) {
                List arrayList = (List) map.get(strC);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                r75Var.a("waiting-for-response");
                arrayList.add(r75Var);
                this.a.put(strC, arrayList);
                boolean z = li6.a;
                return true;
            }
            map.put(strC, null);
            r75Var.a(this);
            boolean z2 = li6.a;
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }
}
