package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class z91 implements Iterator, re4 {
    public final int b = 1;
    public final int c;
    public boolean d;
    public int e;

    public z91(char c, char c2) {
        this.c = c2;
        boolean z = aa4.f(c, c2) <= 0;
        this.d = z;
        this.e = z ? c : c2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.d;
    }

    @Override // java.util.Iterator
    public final Object next() {
        char c;
        int i = this.e;
        if (i == this.c) {
            c = 0;
            if (this.d) {
                this.d = false;
            } else {
                qz0.e();
            }
            return Character.valueOf(c);
        }
        this.e = this.b + i;
        c = (char) i;
        return Character.valueOf(c);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
