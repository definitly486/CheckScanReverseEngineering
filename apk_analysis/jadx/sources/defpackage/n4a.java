package defpackage;

import com.tapjoy.TJAdUnitConstants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class n4a {
    public final pp9 a;
    public final HashSet b = new HashSet();
    public final HashSet c = new HashSet();
    public final HashSet d = new HashSet();
    public final HashSet e = new HashSet();
    public final ArrayList f = new ArrayList();
    public final ArrayList g = new ArrayList();
    public final m4a h = new m4a();
    public boolean i = false;

    public n4a(pp9 pp9Var) {
        this.a = pp9Var;
    }

    public static boolean i(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((m2a) it.next()).d) {
                return true;
            }
        }
        return false;
    }

    public final s5a a(int i) {
        ArrayList arrayList = new ArrayList();
        for (sna snaVar : this.g) {
            if (snaVar.g == i) {
                arrayList.add(snaVar);
            }
        }
        return new s5a(arrayList, this.a, null);
    }

    public final void b(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c((m2a) it.next());
        }
    }

    public final void c(m2a m2aVar) {
        if (m2aVar.d) {
            this.i = true;
        }
        if (m2aVar instanceof hq9) {
            String str = ((hq9) m2aVar).f;
            if (TJAdUnitConstants.String.LANDSCAPE.equals(str)) {
                this.e.add(m2aVar);
                return;
            } else {
                if (TJAdUnitConstants.String.PORTRAIT.equals(str)) {
                    this.d.add(m2aVar);
                    return;
                }
                return;
            }
        }
        if (m2aVar instanceof k8a) {
            this.c.add((k8a) m2aVar);
            return;
        }
        if (!(m2aVar instanceof ht9)) {
            if (m2aVar instanceof sna) {
                this.g.add((sna) m2aVar);
                return;
            } else {
                this.b.add(m2aVar);
                return;
            }
        }
        ht9 ht9Var = (ht9) m2aVar;
        m4a m4aVar = this.h;
        ArrayList arrayList = this.f;
        int iBinarySearch = Collections.binarySearch(arrayList, ht9Var, m4aVar);
        if (iBinarySearch < 0) {
            iBinarySearch = (-iBinarySearch) - 1;
        }
        arrayList.add(iBinarySearch, ht9Var);
    }

    public final void d(n4a n4aVar, float f) {
        HashSet hashSet = n4aVar.b;
        ArrayList<ht9> arrayList = n4aVar.f;
        HashSet<k8a> hashSet2 = n4aVar.c;
        this.b.addAll(hashSet);
        this.g.addAll(n4aVar.g);
        this.d.addAll(n4aVar.d);
        this.e.addAll(n4aVar.e);
        if (f <= 0.0f) {
            this.c.addAll(hashSet2);
            this.f.addAll(arrayList);
            return;
        }
        for (k8a k8aVar : hashSet2) {
            float f2 = k8aVar.g;
            if (f2 >= 0.0f) {
                k8aVar.f = (f2 * f) / 100.0f;
                k8aVar.g = -1.0f;
            }
            c(k8aVar);
        }
        for (ht9 ht9Var : arrayList) {
            float f3 = ht9Var.j;
            if (f3 >= 0.0f) {
                ht9Var.i = (f3 * f) / 100.0f;
                ht9Var.j = -1.0f;
            }
            c(ht9Var);
        }
    }

    public final s5a e(int i) {
        ArrayList arrayList = new ArrayList();
        for (ht9 ht9Var : this.f) {
            if (ht9Var.g == i) {
                arrayList.add(ht9Var);
            }
        }
        return new s5a(arrayList, this.a, null);
    }

    public final s5a f(String str) {
        ArrayList arrayList = new ArrayList();
        for (m2a m2aVar : this.b) {
            if (str.equals(m2aVar.a)) {
                arrayList.add(m2aVar);
            }
        }
        return new s5a(arrayList, this.a, null);
    }

    public final void g(n4a n4aVar, float f) {
        ArrayList arrayListH = n4aVar.h("playbackStarted");
        HashSet<k8a> hashSet = n4aVar.c;
        HashSet hashSet2 = this.b;
        hashSet2.addAll(arrayListH);
        hashSet2.addAll(n4aVar.h("playbackResumed"));
        hashSet2.addAll(n4aVar.h("playbackPaused"));
        hashSet2.addAll(n4aVar.h("playbackStopped"));
        hashSet2.addAll(n4aVar.h("playbackCompleted"));
        hashSet2.addAll(n4aVar.h("playbackError"));
        hashSet2.addAll(n4aVar.h("volumeOn"));
        hashSet2.addAll(n4aVar.h("volumeOff"));
        hashSet2.addAll(n4aVar.h("fullscreenOn"));
        hashSet2.addAll(n4aVar.h("fullscreenOff"));
        hashSet2.addAll(n4aVar.h("error"));
        hashSet2.addAll(n4aVar.h("playbackTimeout"));
        this.g.addAll(n4aVar.a(2).b);
        if (f <= 0.0f) {
            this.c.addAll(hashSet);
            this.f.addAll(n4aVar.e(2).b);
            return;
        }
        for (k8a k8aVar : hashSet) {
            float f2 = k8aVar.g;
            if (f2 >= 0.0f) {
                k8aVar.f = (f2 * f) / 100.0f;
                k8aVar.g = -1.0f;
            }
            c(k8aVar);
        }
        for (ht9 ht9Var : n4aVar.e(2).b) {
            float f3 = ht9Var.j;
            if (f3 >= 0.0f) {
                ht9Var.i = (f3 * f) / 100.0f;
                ht9Var.j = -1.0f;
            }
            c(ht9Var);
        }
    }

    public final ArrayList h(String str) {
        ArrayList arrayList = new ArrayList();
        for (m2a m2aVar : this.b) {
            if (str.equals(m2aVar.a)) {
                arrayList.add(m2aVar);
            }
        }
        return arrayList;
    }

    public final boolean j(String str) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            if (str.equals(((m2a) it.next()).a)) {
                return true;
            }
        }
        return false;
    }
}
