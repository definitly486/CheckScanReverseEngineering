package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class n55 extends te3 {
    public final transient re3 d;
    public final transient o55 e;

    public n55(re3 re3Var, o55 o55Var) {
        this.d = re3Var;
        this.e = o55Var;
    }

    @Override // yads.ie3
    public final int a(int i, Object[] objArr) {
        return this.e.a(i, objArr);
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.d.get(obj) != null;
    }

    @Override // yads.ie3
    public final boolean e() {
        return true;
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final i46 iterator() {
        return this.e.listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return ((p55) this.d).g;
    }

    @Override // yads.te3, yads.ie3
    public final oe3 a() {
        return this.e;
    }
}
