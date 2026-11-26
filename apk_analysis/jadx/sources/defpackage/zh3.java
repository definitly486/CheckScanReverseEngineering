package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zh3<E> implements Iterable<E> {
    public final String toString() {
        Iterator<E> it = iterator();
        StringBuilder sb = new StringBuilder("[");
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(it.next());
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }
}
