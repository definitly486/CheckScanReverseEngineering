package yads;

import defpackage.u96;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class cl5 implements io4 {
    public static final List c = u96.i(dk5.AD, dk5.DSP);
    public final Map a;
    public boolean b;

    public cl5(c16 c16Var, c16 c16Var2) {
        this.a = defpackage.n05.e(new defpackage.b36(dk5.AD, c16Var), new defpackage.b36(dk5.DSP, c16Var2));
    }

    @Override // yads.io4
    public final void a(List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            dk5 dk5Var = ((lo4) obj).a.d;
            Object arrayList = linkedHashMap.get(dk5Var);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(dk5Var, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        for (Map.Entry entry : defpackage.l05.a(linkedHashMap, new defpackage.gf0(2)).entrySet()) {
            dk5 dk5Var2 = (dk5) entry.getKey();
            List list2 = (List) entry.getValue();
            io4 io4Var = (io4) this.a.get(dk5Var2);
            if (io4Var != null) {
                io4Var.a(list2);
            }
        }
    }

    @Override // yads.io4
    public final void invalidate() {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((io4) it.next()).invalidate();
        }
    }

    @Override // yads.io4
    public final void a(dk5 dk5Var, g66 g66Var) {
        io4 io4Var = (io4) this.a.get(dk5Var);
        if (io4Var != null) {
            io4Var.a(dk5Var, g66Var);
        }
    }

    @Override // yads.io4
    public final void a(dk5 dk5Var, f66 f66Var) {
        io4 io4Var = (io4) this.a.get(dk5Var);
        if (io4Var != null) {
            io4Var.a(dk5Var, f66Var);
        }
    }

    public static final List a(dk5 dk5Var) {
        return defpackage.kx2.b;
    }

    @Override // yads.io4
    public final void a(dk5 dk5Var, List list, g66 g66Var) {
        if (!this.b) {
            this.b = true;
            ArrayList arrayListI0 = defpackage.qn1.i0(dk5Var, list);
            for (dk5 dk5Var2 : defpackage.qn1.g0(defpackage.qn1.y0(arrayListI0), c)) {
                a(dk5Var2, g66Var);
                a(dk5Var2, arrayListI0, g66Var);
            }
        }
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((dk5) it.next()) == dk5Var) {
                    return;
                }
            }
        }
        io4 io4Var = (io4) this.a.get(dk5Var);
        if (io4Var != null) {
            io4Var.a(dk5Var, list, g66Var);
        }
    }

    @Override // yads.io4
    public final void a(d9 d9Var) {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((io4) it.next()).a(d9Var);
        }
    }
}
