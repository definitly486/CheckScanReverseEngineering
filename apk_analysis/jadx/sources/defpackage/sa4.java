package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class sa4 extends zh3<Object> {
    public final /* synthetic */ ArrayList b;
    public final /* synthetic */ int c;

    public sa4(ArrayList arrayList, int i) {
        this.b = arrayList;
        this.c = i;
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        ArrayList arrayList = this.b;
        return arrayList.subList(Math.min(arrayList.size(), this.c), arrayList.size()).iterator();
    }
}
