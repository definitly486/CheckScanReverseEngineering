package yads;

import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes6.dex */
public final class ob6 implements nb6, pb6 {
    public final LinkedHashSet a = new LinkedHashSet();
    public final LinkedHashSet b = new LinkedHashSet();

    @Override // yads.nb6
    public final void a(long j, long j2) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((nb6) it.next()).a(j, j2);
        }
    }

    @Override // yads.pb6
    public final void b() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((pb6) it.next()).b();
        }
    }

    @Override // yads.pb6
    public final void a() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((pb6) it.next()).a();
        }
    }
}
