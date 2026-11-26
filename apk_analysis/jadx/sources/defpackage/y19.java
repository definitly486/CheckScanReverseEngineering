package defpackage;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class y19 implements Iterator {
    public final /* synthetic */ int b;
    public final Iterator c;

    public y19(Iterator it, int i) {
        this.b = i;
        switch (i) {
            case 1:
                it.getClass();
                this.c = it;
                break;
            default:
                it.getClass();
                this.c = it;
                break;
        }
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.b) {
            case 0:
                break;
        }
        return this.c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.b) {
            case 0:
                return a(this.c.next());
            default:
                return ((Map.Entry) this.c.next()).getValue();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.b) {
            case 0:
                this.c.remove();
                break;
            default:
                this.c.remove();
                break;
        }
    }
}
