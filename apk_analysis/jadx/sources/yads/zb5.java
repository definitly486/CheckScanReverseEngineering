package yads;

import defpackage.nl3;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class zb5 {
    public final LinkedHashMap a = new LinkedHashMap();
    public final LinkedHashMap b = new LinkedHashMap();

    public static void a(nl3 nl3Var, yb5 yb5Var) {
        nl3Var.invoke(yb5Var);
        Iterator it = yb5Var.c.iterator();
        while (it.hasNext()) {
            a(nl3Var, (yb5) it.next());
        }
    }
}
