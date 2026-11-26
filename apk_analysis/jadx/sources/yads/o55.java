package yads;

import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class o55 extends oe3 {
    public final transient Object[] d;
    public final transient int e;
    public final transient int f;

    public o55(int i, int i2, Object[] objArr) {
        this.d = objArr;
        this.e = i;
        this.f = i2;
    }

    @Override // yads.ie3
    public final boolean e() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        wx4.a(i, this.f);
        Object obj = this.d[(i * 2) + this.e];
        Objects.requireNonNull(obj);
        return obj;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f;
    }
}
