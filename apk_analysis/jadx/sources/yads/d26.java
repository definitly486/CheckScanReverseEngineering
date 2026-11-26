package yads;

import defpackage.v39;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class d26 {
    public final gs2 a;
    public final ao2 b;
    public final bt0 c;
    public final LinkedHashMap d = new LinkedHashMap();
    public vq0 e;
    public List f;

    public d26(gs2 gs2Var, ao2 ao2Var, bt0 bt0Var) {
        this.a = gs2Var;
        this.b = ao2Var;
        this.c = bt0Var;
    }

    public final void a(List list) {
        if (this.f == list) {
            return;
        }
        this.f = list;
        vq0 vq0Var = this.e;
        LinkedHashMap linkedHashMap = this.d;
        Object arrayList = linkedHashMap.get(list);
        if (arrayList == null) {
            arrayList = new ArrayList();
            linkedHashMap.put(list, arrayList);
        }
        List list2 = (List) arrayList;
        if (vq0Var != null) {
            a(vq0Var);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ae2 ae2Var = (ae2) it.next();
            as2 as2Var = ae2Var.b;
            yr2 yr2Var = as2Var instanceof yr2 ? (yr2) as2Var : null;
            if (yr2Var == null) {
                this.b.a((RuntimeException) new IllegalStateException("Invalid condition: '" + as2Var + "'", new RuntimeException("Condition is not mutable!")));
            } else {
                RuntimeException runtimeException = yr2Var.b(this.a).isEmpty() ? new RuntimeException("No variables defined!") : null;
                if (runtimeException != null) {
                    this.b.a((RuntimeException) new IllegalStateException("Invalid condition: '" + ae2Var.b + "'", runtimeException));
                } else {
                    list2.add(new c26(yr2Var, ae2Var.a, ae2Var.c, this.a, this.b, this.c));
                }
            }
        }
        if (vq0Var != null) {
            b(vq0Var);
        }
    }

    public final void b(vq0 vq0Var) {
        List<c26> list;
        if (defpackage.aa4.e(this.e, vq0Var)) {
            return;
        }
        this.e = vq0Var;
        List list2 = this.f;
        if (list2 == null || (list = (List) this.d.get(list2)) == null) {
            return;
        }
        for (c26 c26Var : list) {
            c26Var.n.add(vq0Var);
            c26Var.a();
        }
    }

    public final void a(vq0 vq0Var) {
        this.e = null;
        Iterator it = this.d.entrySet().iterator();
        while (it.hasNext()) {
            for (c26 c26Var : (List) ((Map.Entry) it.next()).getValue()) {
                v39.a(c26Var.n).remove(vq0Var);
                c26Var.a();
            }
        }
    }
}
