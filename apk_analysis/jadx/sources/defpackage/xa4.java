package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class xa4 implements Iterator<Object> {
    public int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ Iterator d;

    public xa4(Iterator it, int i) {
        this.c = i;
        this.d = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.c && this.d.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.b++;
            return this.d.next();
        }
        qz0.e();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.d.remove();
    }
}
