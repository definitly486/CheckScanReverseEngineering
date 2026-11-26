package yads;

import defpackage.fh8;
import defpackage.lb9;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class jx4 {
    public static final defpackage.cl4 a = new fh8(new lb9(1));

    public static final ix4 a() {
        Object next;
        Iterator<E> it = ix4.d.iterator();
        while (it.hasNext()) {
            next = it.next();
            List list = ((ix4) next).b;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    try {
                        Class.forName((String) it2.next());
                        return (ix4) next;
                    } catch (Throwable unused) {
                    }
                }
            }
        }
        next = null;
        return (ix4) next;
    }
}
