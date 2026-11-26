package yads;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class kb4 implements ia4, ja4, mq4 {
    public final ArrayList a = new ArrayList();
    public final ArrayList b = new ArrayList();
    public final ArrayList c = new ArrayList();

    @Override // yads.ja4
    public final void a() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((ja4) it.next()).a();
        }
    }

    @Override // yads.ia4
    public final void b() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ia4) it.next()).b();
        }
    }

    @Override // yads.mq4
    public final void c() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((mq4) it.next()).c();
        }
    }

    @Override // yads.ia4
    public final void e() {
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            ((ia4) it.next()).e();
        }
    }

    @Override // yads.mq4
    public final void a(boolean z) {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            ((mq4) it.next()).a(z);
        }
    }
}
