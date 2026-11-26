package yads;

import java.util.AbstractMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class l55 extends oe3 {
    public final /* synthetic */ m55 d;

    public l55(m55 m55Var) {
        this.d = m55Var;
    }

    @Override // yads.ie3
    public final boolean e() {
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        wx4.a(i, this.d.f);
        int i2 = i * 2;
        Object obj = this.d.e[i2];
        Objects.requireNonNull(obj);
        Object obj2 = this.d.e[i2 + 1];
        Objects.requireNonNull(obj2);
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d.f;
    }
}
