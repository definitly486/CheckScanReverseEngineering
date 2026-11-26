package yads;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class el4 implements nl4 {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    @Override // yads.nl4
    public final void a() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((nl4) it.next()).a();
        }
    }

    @Override // yads.nl4
    public final void b() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((nl4) it.next()).b();
        }
    }

    @Override // yads.nl4
    public final void a(long j, long j2) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((nl4) it.next()).a(j, j2);
        }
    }
}
