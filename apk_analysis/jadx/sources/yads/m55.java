package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class m55 extends te3 {
    public final transient re3 d;
    public final transient Object[] e;
    public final transient int f;

    public m55(re3 re3Var, Object[] objArr, int i) {
        this.d = re3Var;
        this.e = objArr;
        this.f = i;
    }

    @Override // yads.ie3
    public final int a(int i, Object[] objArr) {
        return a().a(i, objArr);
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.d.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // yads.ie3
    public final boolean e() {
        return true;
    }

    @Override // yads.te3
    public final oe3 f() {
        return new l55(this);
    }

    @Override // yads.ie3, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final i46 iterator() {
        return a().listIterator(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f;
    }
}
