package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class q55 extends te3 {
    public static final Object[] i;
    public static final q55 j;
    public final transient Object[] d;
    public final transient int e;
    public final transient Object[] f;
    public final transient int g;
    public final transient int h;

    static {
        Object[] objArr = new Object[0];
        i = objArr;
        j = new q55(objArr, 0, objArr, 0, 0);
    }

    public q55(Object[] objArr, int i2, Object[] objArr2, int i3, int i4) {
        this.d = objArr;
        this.e = i2;
        this.f = objArr2;
        this.g = i3;
        this.h = i4;
    }

    @Override // yads.ie3
    public final int a(int i2, Object[] objArr) {
        System.arraycopy(this.d, 0, objArr, i2, this.h);
        return i2 + this.h;
    }

    @Override // yads.ie3
    public final Object[] b() {
        return this.d;
    }

    @Override // yads.ie3
    public final int c() {
        return this.h;
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        Object[] objArr = this.f;
        if (obj == null || objArr.length == 0) {
            return false;
        }
        int iA = p83.a(obj.hashCode());
        while (true) {
            int i2 = iA & this.g;
            Object obj2 = objArr[i2];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            iA = i2 + 1;
        }
    }

    @Override // yads.ie3
    public final int d() {
        return 0;
    }

    @Override // yads.ie3
    public final boolean e() {
        return false;
    }

    @Override // yads.te3
    public final oe3 f() {
        return oe3.b(this.h, this.d);
    }

    @Override // yads.te3, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.e;
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final i46 iterator() {
        return a().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.h;
    }
}
