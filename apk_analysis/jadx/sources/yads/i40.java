package yads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class i40 extends AbstractSet {
    public final /* synthetic */ n40 b;

    public i40(n40 n40Var) {
        this.b = n40Var;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.b.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        Map mapA = this.b.a();
        if (mapA != null) {
            return mapA.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int iA = this.b.a(entry.getKey());
            if (iA != -1 && ep4.a(this.b.b(iA), entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        n40 n40Var = this.b;
        Map mapA = n40Var.a();
        return mapA != null ? mapA.entrySet().iterator() : new g40(n40Var);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int i;
        int iA;
        Map mapA = this.b.a();
        if (mapA != null) {
            return mapA.entrySet().remove(obj);
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (this.b.b() || (iA = o40.a(entry.getKey(), entry.getValue(), (i = (1 << (this.b.f & 31)) - 1), this.b.e(), this.b.c(), this.b.d(), this.b.f())) == -1) {
            return false;
        }
        this.b.a(iA, i);
        n40 n40Var = this.b;
        n40Var.g--;
        n40Var.f += 32;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.b.size();
    }
}
