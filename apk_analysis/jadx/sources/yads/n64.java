package yads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class n64 {
    public static boolean a(m64 m64Var) {
        List list = m64Var.d;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!((l64) it.next()).c) {
                return false;
            }
        }
        return true;
    }
}
