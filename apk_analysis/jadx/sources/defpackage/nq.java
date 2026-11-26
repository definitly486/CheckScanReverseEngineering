package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class nq<T> {
    public final ArrayList a = new ArrayList();

    public final void a(ti3<? super T> ti3Var) {
        boolean z = ti3Var instanceof fo5;
        ArrayList arrayList = this.a;
        if (z) {
            arrayList.add(ti3Var);
        } else if (ti3Var instanceof wu1) {
            Iterator<T> it = ((wu1) ti3Var).a.iterator();
            while (it.hasNext()) {
                arrayList.add((fo5) it.next());
            }
        }
    }
}
