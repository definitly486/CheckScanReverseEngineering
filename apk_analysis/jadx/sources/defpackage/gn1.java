package defpackage;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class gn1<E, C extends Collection<? extends E>, B> extends fn1<E, C, B> {
    @Override // defpackage.w
    public final Iterator d(Object obj) {
        Collection collection = (Collection) obj;
        collection.getClass();
        return collection.iterator();
    }

    @Override // defpackage.w
    public final int e(Object obj) {
        Collection collection = (Collection) obj;
        collection.getClass();
        return collection.size();
    }
}
