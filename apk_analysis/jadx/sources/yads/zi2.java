package yads;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class zi2 implements Runnable {
    public final /* synthetic */ bj2 b;
    public final /* synthetic */ View c;
    public final /* synthetic */ vq0 d;
    public final /* synthetic */ String e;
    public final /* synthetic */ fs2 f;
    public final /* synthetic */ Map g;
    public final /* synthetic */ ArrayList h;

    public zi2(bj2 bj2Var, View view, vq0 vq0Var, String str, fs2 fs2Var, Map map, ArrayList arrayList) {
        this.b = bj2Var;
        this.c = view;
        this.d = vq0Var;
        this.e = str;
        this.f = fs2Var;
        this.g = map;
        this.h = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = cr3.a;
        vj5[] vj5VarArr = vj5.b;
        cr3.a();
        Set set = (Set) this.b.k.get(this.c);
        if (set != null) {
            ArrayList arrayList = this.h;
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (obj instanceof gc1) {
                    arrayList2.add(obj);
                }
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                set.remove((gc1) it.next());
            }
            if (set.isEmpty()) {
                this.b.k.remove(this.c);
                this.b.j.remove(this.c);
            }
        }
        if (defpackage.aa4.e(this.d.s(), this.e)) {
            this.b.b.a(this.d, this.f, this.c, (r02[]) this.g.values().toArray(new r02[0]));
        }
    }
}
