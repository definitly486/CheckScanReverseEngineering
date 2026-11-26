package yads;

import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class k55 extends oe3 {
    public static final k55 f = new k55(0, new Object[0]);
    public final transient Object[] d;
    public final transient int e;

    public k55(int i, Object[] objArr) {
        this.d = objArr;
        this.e = i;
    }

    @Override // yads.oe3, yads.ie3
    public final int a(int i, Object[] objArr) {
        System.arraycopy(this.d, 0, objArr, i, this.e);
        return i + this.e;
    }

    @Override // yads.ie3
    public final Object[] b() {
        return this.d;
    }

    @Override // yads.ie3
    public final int c() {
        return this.e;
    }

    @Override // yads.ie3
    public final int d() {
        return 0;
    }

    @Override // yads.ie3
    public final boolean e() {
        return false;
    }

    @Override // java.util.List
    public final Object get(int i) {
        wx4.a(i, this.e);
        Object obj = this.d[i];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }
}
