package yads;

import java.util.Iterator;
import java.util.ListIterator;

/* JADX INFO: loaded from: classes6.dex */
public final class ne3 extends oe3 {
    public final transient int d;
    public final transient int e;
    public final /* synthetic */ oe3 f;

    public ne3(oe3 oe3Var, int i, int i2) {
        this.f = oe3Var;
        this.d = i;
        this.e = i2;
    }

    @Override // yads.oe3, java.util.List
    /* JADX INFO: renamed from: a */
    public final oe3 subList(int i, int i2) {
        wx4.a(i, i2, this.e);
        oe3 oe3Var = this.f;
        int i3 = this.d;
        return oe3Var.subList(i + i3, i2 + i3);
    }

    @Override // yads.ie3
    public final Object[] b() {
        return this.f.b();
    }

    @Override // yads.ie3
    public final int c() {
        return this.f.d() + this.d + this.e;
    }

    @Override // yads.ie3
    public final int d() {
        return this.f.d() + this.d;
    }

    @Override // yads.ie3
    public final boolean e() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        wx4.a(i, this.e);
        return this.f.get(i + this.d);
    }

    @Override // yads.oe3, yads.ie3, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // yads.oe3, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    @Override // yads.oe3, java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
        return listIterator(i);
    }
}
