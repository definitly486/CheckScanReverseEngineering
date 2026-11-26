package defpackage;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class pp7 implements Iterator<String>, re4 {
    public int b;
    public final /* synthetic */ f03 c;

    public pp7(f03 f03Var) {
        this.c = f03Var;
        this.b = f03Var.c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.b > 0;
    }

    @Override // java.util.Iterator
    public final String next() {
        f03 f03Var = this.c;
        int i = f03Var.c;
        int i2 = this.b;
        this.b = i2 - 1;
        return f03Var.e[i - i2];
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
