package com.google.common.collect;

import defpackage.lr7;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class c0 extends d0.d<Object> {
    public final /* synthetic */ Set b;
    public final /* synthetic */ Set c;

    public c0(Set set, Set set2) {
        this.b = set;
        this.c = set2;
    }

    @Override // com.google.common.collect.d0.d
    /* JADX INFO: renamed from: a */
    public final lr7 iterator() {
        return new lr7(this.b, this.c);
    }

    @Override // com.google.common.collect.d0.d
    public final int b() {
        Set set = this.b;
        int iB = set instanceof d0.d ? ((d0.d) set).b() : set.size();
        Set set2 = this.c;
        return Math.min(iB, set2 instanceof d0.d ? ((d0.d) set2).b() : set2.size());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.b.contains(obj) && this.c.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        return this.b.containsAll(collection) && this.c.containsAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return Collections.disjoint(this.c, this.b);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        Iterator it = this.b.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.c.contains(it.next())) {
                i++;
            }
        }
        return i;
    }
}
