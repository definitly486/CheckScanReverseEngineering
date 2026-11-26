package yads;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes6.dex */
public final class q9 {
    public final lt4 a;
    public final ArrayList b;
    public final HashMap c;
    public final String d;
    public final r9 e;

    public q9(lt4 lt4Var, String str, List list) {
        r9 r9Var = r9.NATIVE;
        ArrayList arrayList = new ArrayList();
        this.b = arrayList;
        this.c = new HashMap();
        this.a = lt4Var;
        this.d = str;
        this.e = r9Var;
        arrayList.addAll(list);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            h96 h96Var = (h96) it.next();
            this.c.put(UUID.randomUUID().toString(), h96Var);
        }
    }
}
