package com.google.common.collect;

import defpackage.eg9;
import defpackage.y69;

/* JADX INFO: loaded from: classes4.dex */
public final class z<E> extends n<E> {
    public static final Object[] j;
    public static final z<Object> k;
    public final transient Object[] e;
    public final transient int f;
    public final transient Object[] g;
    public final transient int h;
    public final transient int i;

    static {
        Object[] objArr = new Object[0];
        j = objArr;
        k = new z<>(objArr, 0, objArr, 0, 0);
    }

    public z(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.e = objArr;
        this.f = i;
        this.g = objArr2;
        this.h = i2;
        this.i = i3;
    }

    @Override // com.google.common.collect.i
    public final int b(int i, Object[] objArr) {
        Object[] objArr2 = this.e;
        int i2 = this.i;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.g;
            if (objArr.length != 0) {
                int iG = eg9.g(obj);
                while (true) {
                    int i = iG & this.h;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iG = i + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.i
    public final Object[] d() {
        return this.e;
    }

    @Override // com.google.common.collect.i
    public final int f() {
        return this.i;
    }

    @Override // com.google.common.collect.i
    public final int g() {
        return 0;
    }

    @Override // com.google.common.collect.n, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f;
    }

    @Override // com.google.common.collect.i
    public final boolean i() {
        return false;
    }

    @Override // com.google.common.collect.n, com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* JADX INFO: renamed from: j */
    public final y69<E> iterator() {
        return a().listIterator(0);
    }

    @Override // com.google.common.collect.n
    public final j<E> p() {
        return j.k(this.i, this.e);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.i;
    }

    @Override // com.google.common.collect.n, com.google.common.collect.i
    public Object writeReplace() {
        return super.writeReplace();
    }
}
