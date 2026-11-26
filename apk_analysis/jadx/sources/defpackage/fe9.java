package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class fe9 implements AutoCloseable {
    public final String b;
    public final hg4 c;

    public fe9(String str, hg4 hg4Var) {
        this.b = str;
        this.c = hg4Var;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        hg4 hg4Var = this.c;
        String str = this.b;
        bf7 bf7Var = hg4Var.c;
        bf7Var.getClass();
        ConcurrentHashMap concurrentHashMap = bf7Var.c;
        ze7 ze7Var = (ze7) concurrentHashMap.get(str);
        if (ze7Var != null) {
            f64 f64Var = bf7Var.a.d;
            f64Var.getClass();
            d64[] d64VarArr = (d64[]) f64Var.b.values().toArray(new d64[0]);
            ArrayList arrayList = new ArrayList();
            for (d64 d64Var : d64VarArr) {
                if (d64Var instanceof cf7) {
                    arrayList.add(d64Var);
                }
            }
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                synchronized (((cf7) it.next())) {
                    throw null;
                }
            }
            concurrentHashMap.remove(ze7Var.b);
        }
    }
}
