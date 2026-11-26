package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class opa implements Iterator {
    public int b = 0;
    public final /* synthetic */ ppa c;

    public opa(ppa ppaVar) {
        this.c = ppaVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i = this.b;
        ppa ppaVar = this.c;
        return i < ppaVar.b() - ppaVar.a();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.b;
        ppa ppaVar = this.c;
        if (i >= ppaVar.b() - ppaVar.a()) {
            qz0.e();
            return null;
        }
        qpa qpaVar = ppaVar.c;
        Object obj = qpaVar.b[ppaVar.a() + i];
        this.b = i + 1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
