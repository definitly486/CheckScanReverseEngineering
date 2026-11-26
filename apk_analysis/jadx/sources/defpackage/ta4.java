package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class ta4 extends zh3<Object> {
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ int c;

    public ta4(ArrayList arrayList, int i) {
        this.b = arrayList;
        this.c = i;
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        Iterator it = this.b.iterator();
        it.getClass();
        int i = this.c;
        o8.f(i >= 0, "limit is negative");
        return new xa4(it, i);
    }
}
