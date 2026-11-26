package yads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class m70 {
    public static n70 a(String str) {
        Object next;
        Iterator<E> it = n70.n.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (defpackage.aa4.e(((n70) next).b, str)) {
                return (n70) next;
            }
        }
        next = null;
        return (n70) next;
    }
}
