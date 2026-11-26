package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class pl5 extends te3 {
    public final transient Object d;

    public pl5(Object obj) {
        obj.getClass();
        this.d = obj;
    }

    @Override // yads.te3, yads.ie3
    public final oe3 a() {
        return oe3.a(this.d);
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.d.equals(obj);
    }

    @Override // yads.ie3
    public final boolean e() {
        return false;
    }

    @Override // yads.te3, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.d.hashCode();
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final i46 iterator() {
        return new fq3(this.d);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.d.toString() + ']';
    }

    @Override // yads.ie3
    public final int a(int i, Object[] objArr) {
        objArr[i] = this.d;
        return i + 1;
    }
}
