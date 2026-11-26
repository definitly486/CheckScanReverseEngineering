package com.google.protobuf;

import defpackage.fx0;
import defpackage.mi2;
import defpackage.oo4;
import defpackage.z69;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class t extends c<String> implements oo4, RandomAccess {
    public final List<Object> c;

    static {
        new t();
    }

    public t() {
        super(false);
        this.c = Collections.EMPTY_LIST;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        a();
        this.c.add(i, (String) obj);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        a();
        if (collection instanceof oo4) {
            collection = ((oo4) collection).getUnderlyingElements();
        }
        boolean zAddAll = this.c.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return zAddAll;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        a();
        this.c.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // defpackage.oo4
    public final void e(fx0 fx0Var) {
        a();
        this.c.add(fx0Var);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        List<Object> list = this.c;
        Object obj = list.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof fx0) {
            fx0 fx0Var = (fx0) obj;
            String strP = fx0Var.p();
            if (fx0Var.j()) {
                list.set(i, strP);
            }
            return strP;
        }
        byte[] bArr = (byte[]) obj;
        String str = new String(bArr, q.a);
        if (m0.a.e(bArr, 0, bArr.length)) {
            list.set(i, str);
        }
        return str;
    }

    @Override // defpackage.oo4
    public final Object getRaw(int i) {
        return this.c.get(i);
    }

    @Override // defpackage.oo4
    public final List<?> getUnderlyingElements() {
        return Collections.unmodifiableList(this.c);
    }

    @Override // defpackage.oo4
    public final oo4 getUnmodifiableView() {
        return this.b ? new z69(this) : this;
    }

    @Override // com.google.protobuf.q.j
    public final q.j mutableCopyWithCapacity(int i) {
        List<Object> list = this.c;
        if (i < list.size()) {
            mi2.b();
            return null;
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(list);
        return new t((ArrayList<Object>) arrayList);
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        a();
        Object objRemove = this.c.remove(i);
        ((AbstractList) this).modCount++;
        if (objRemove instanceof String) {
            return (String) objRemove;
        }
        return objRemove instanceof fx0 ? ((fx0) objRemove).p() : new String((byte[]) objRemove, q.a);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        a();
        Object obj2 = this.c.set(i, (String) obj);
        if (obj2 instanceof String) {
            return (String) obj2;
        }
        return obj2 instanceof fx0 ? ((fx0) obj2).p() : new String((byte[]) obj2, q.a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.c.size();
    }

    public t(ArrayList<Object> arrayList) {
        super(true);
        this.c = arrayList;
    }

    public t(int i) {
        this((ArrayList<Object>) new ArrayList(i));
    }

    @Override // com.google.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(this.c.size(), collection);
    }
}
