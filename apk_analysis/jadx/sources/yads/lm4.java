package yads;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class lm4 implements mq4, ja4 {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    @Override // yads.mq4
    public final void a(boolean z) {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((mm4) it.next()).a(z);
        }
    }

    @Override // yads.mq4
    public final void c() {
    }

    @Override // yads.ja4
    public final void a() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((mm4) it.next()).a();
        }
    }
}
