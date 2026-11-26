package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class wic implements Iterator {
    public int b = 0;
    public final /* synthetic */ xic c;

    public wic(xic xicVar) {
        this.c = xicVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b < this.c.b.e;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        int i = this.b;
        this.b = i + 1;
        zic zicVar = this.c.b;
        return zicVar.a(zicVar.d[i] & 31);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
