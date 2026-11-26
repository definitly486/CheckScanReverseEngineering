package yads;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b74 {
    public static final void a(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            d74 d74Var = (d74) it.next();
            int iOrdinal = d74Var.b.ordinal();
            if (iOrdinal == 0) {
                jn3.b(d74Var.a, new Object[0]);
            } else if (iOrdinal == 1) {
                jn3.a(d74Var.a, new Object[0]);
            }
        }
    }
}
