package defpackage;

import com.google.common.collect.i;

/* JADX INFO: loaded from: classes4.dex */
public final class y24 extends y69<Object> {
    public final y69 b;
    public y69 c = ya4.a.e;

    public y24(z24 z24Var) {
        this.b = z24Var.f.values().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c.hasNext() || this.b.hasNext();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Iterator
    public final Object next() {
        if (!this.c.hasNext()) {
            this.c = ((i) this.b.next()).iterator();
        }
        return this.c.next();
    }
}
