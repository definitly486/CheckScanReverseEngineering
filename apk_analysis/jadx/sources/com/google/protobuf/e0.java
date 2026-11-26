package com.google.protobuf;

import defpackage.bj;
import defpackage.mi2;
import defpackage.n7;
import defpackage.pg;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes4.dex */
public final class e0<E> extends c<E> implements RandomAccess {
    public static final e0<Object> e = new e0<>(new Object[0], 0, false);
    public E[] c;
    public int d;

    public e0(E[] eArr, int i, boolean z) {
        super(z);
        this.c = eArr;
        this.d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, E e2) {
        int i2;
        a();
        if (i < 0 || i > (i2 = this.d)) {
            bj.d(this.d, n7.c(i, "Index:", ", Size:"));
            return;
        }
        E[] eArr = this.c;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[pg.b(i2, 3, 2, 1)];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.c, i, eArr2, i + 1, this.d - i);
            this.c = eArr2;
        }
        this.c[i] = e2;
        this.d++;
        ((AbstractList) this).modCount++;
    }

    public final void b(int i) {
        if (i < 0 || i >= this.d) {
            bj.d(this.d, n7.c(i, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        b(i);
        return this.c[i];
    }

    @Override // com.google.protobuf.q.j
    public final q.j mutableCopyWithCapacity(int i) {
        if (i >= this.d) {
            return new e0(Arrays.copyOf(this.c, i), this.d, true);
        }
        mi2.b();
        return null;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        a();
        b(i);
        E[] eArr = this.c;
        E e2 = eArr[i];
        int i2 = this.d;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.d--;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int i, E e2) {
        a();
        b(i);
        E[] eArr = this.c;
        E e3 = eArr[i];
        eArr[i] = e2;
        ((AbstractList) this).modCount++;
        return e3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.d;
    }

    @Override // com.google.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e2) {
        a();
        int i = this.d;
        E[] eArr = this.c;
        if (i == eArr.length) {
            eArr = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
            this.c = eArr;
        }
        int i2 = this.d;
        this.d = i2 + 1;
        eArr[i2] = e2;
        ((AbstractList) this).modCount++;
        return true;
    }
}
