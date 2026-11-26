package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class fp7 implements Iterator<Object>, re4 {
    public boolean b = true;
    public final /* synthetic */ dk8.a c;

    public fp7(dk8.a aVar) {
        this.c = aVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.b) {
            this.b = false;
            return this.c;
        }
        qz0.e();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
