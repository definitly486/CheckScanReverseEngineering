package com.google.common.collect;

import defpackage.o8;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class w<E> extends j<E> {
    public static final w f = new w(new Object[0], 0);
    public final transient Object[] d;
    public final transient int e;

    public w(Object[] objArr, int i) {
        this.d = objArr;
        this.e = i;
    }

    @Override // com.google.common.collect.j, com.google.common.collect.i
    public final int b(int i, Object[] objArr) {
        Object[] objArr2 = this.d;
        int i2 = this.e;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // com.google.common.collect.i
    public final Object[] d() {
        return this.d;
    }

    @Override // com.google.common.collect.i
    public final int f() {
        return this.e;
    }

    @Override // com.google.common.collect.i
    public final int g() {
        return 0;
    }

    @Override // java.util.List
    public final E get(int i) {
        o8.j(i, this.e);
        E e = (E) this.d[i];
        Objects.requireNonNull(e);
        return e;
    }

    @Override // com.google.common.collect.i
    public final boolean i() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.e;
    }

    @Override // com.google.common.collect.j, com.google.common.collect.i
    public Object writeReplace() {
        return super.writeReplace();
    }
}
