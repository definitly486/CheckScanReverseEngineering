package yads;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class o6 implements b3 {
    public final long a;

    public o6(List list) {
        Iterator it = list.iterator();
        long j = 0;
        while (it.hasNext()) {
            j += ((u6) it.next()).a;
        }
        this.a = j;
    }

    @Override // yads.b3
    public final long a() {
        return this.a;
    }

    @Override // yads.b3
    public final long a(long j) {
        return this.a;
    }
}
