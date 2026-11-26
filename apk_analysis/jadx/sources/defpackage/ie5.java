package defpackage;

import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public final class ie5<E> extends u0<E> implements RandomAccess {
    public final List<E> c;
    public int d;
    public int e;

    /* JADX WARN: Multi-variable type inference failed */
    public ie5(List<? extends E> list) {
        this.c = list;
    }

    @Override // defpackage.u0, java.util.List
    public final E get(int i) {
        u0.a aVar = u0.Companion;
        int i2 = this.e;
        aVar.getClass();
        u0.a.b(i, i2);
        return this.c.get(this.d + i);
    }

    @Override // defpackage.u0, defpackage.v
    public final int getSize() {
        return this.e;
    }
}
