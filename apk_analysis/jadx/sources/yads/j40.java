package yads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public abstract class j40 implements Iterator {
    public int b;
    public int c;
    public int d;
    public final /* synthetic */ n40 e;

    public j40(n40 n40Var) {
        this.e = n40Var;
        this.b = n40Var.f;
        this.c = n40Var.isEmpty() ? -1 : 0;
        this.d = -1;
    }

    public abstract Object a(int i);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c >= 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.e.f != this.b) {
            defpackage.ln.e();
            return null;
        }
        if (!hasNext()) {
            defpackage.qz0.e();
            return null;
        }
        int i = this.c;
        this.d = i;
        Object objA = a(i);
        n40 n40Var = this.e;
        int i2 = this.c + 1;
        if (i2 >= n40Var.g) {
            i2 = -1;
        }
        this.c = i2;
        return objA;
    }

    @Override // java.util.Iterator
    public final void remove() {
        n40 n40Var = this.e;
        int i = n40Var.f;
        int i2 = this.b;
        if (i != i2) {
            defpackage.ln.e();
            return;
        }
        int i3 = this.d;
        if (!(i3 >= 0)) {
            defpackage.ah.f("no calls to next() since the last call to remove()");
            return;
        }
        this.b = i2 + 32;
        n40Var.remove(n40Var.a(i3));
        n40 n40Var2 = this.e;
        int i4 = this.c;
        n40Var2.getClass();
        this.c = i4 - 1;
        this.d = -1;
    }
}
