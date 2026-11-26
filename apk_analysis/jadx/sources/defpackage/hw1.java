package defpackage;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class hw1<T> implements af6<T> {
    public final ArrayList a;

    public hw1(ArrayList arrayList) {
        this.a = arrayList;
    }

    @Override // defpackage.af6
    public final boolean test(T t) {
        ArrayList arrayList = this.a;
        if (arrayList.isEmpty()) {
            return true;
        }
        Iterator<T> it = arrayList.iterator();
        while (it.hasNext()) {
            if (!((af6) it.next()).test(t)) {
                return false;
            }
        }
        return true;
    }
}
