package com.google.common.collect;

import androidx.collection.SieveCacheKt;
import defpackage.cn1;
import defpackage.fa4;
import defpackage.ln;
import defpackage.o8;
import defpackage.qz0;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public abstract class f<E> extends h<E> implements Serializable {
    public transient v<E> d;
    public transient long e;

    public abstract class a<T> implements Iterator<T> {
        public int b;
        public int c;
        public int d;

        public a() {
            v<E> vVar = f.this.d;
            this.b = vVar.c == 0 ? -1 : 0;
            this.c = -1;
            this.d = vVar.d;
        }

        public abstract T a(int i);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (f.this.d.d == this.d) {
                return this.b >= 0;
            }
            ln.e();
            return false;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (!hasNext()) {
                qz0.e();
                return null;
            }
            T tA = a(this.b);
            int i = this.b;
            this.c = i;
            int i2 = i + 1;
            if (i2 >= f.this.d.c) {
                i2 = -1;
            }
            this.b = i2;
            return tA;
        }

        @Override // java.util.Iterator
        public final void remove() {
            f fVar = f.this;
            if (fVar.d.d != this.d) {
                ln.e();
                return;
            }
            cn1.c(this.c != -1);
            fVar.e -= (long) fVar.d.g(this.c);
            v<E> vVar = fVar.d;
            int i = this.b;
            vVar.getClass();
            this.b = i - 1;
            this.c = -1;
            this.d = fVar.d.d;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        this.d = b();
        for (int i2 = 0; i2 < i; i2++) {
            a(objectInputStream.readInt(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(((h.b) entrySet()).size());
        for (t.a<E> aVar : (h.b) entrySet()) {
            objectOutputStream.writeObject(aVar.a());
            objectOutputStream.writeInt(aVar.getCount());
        }
    }

    public final int a(int i, Object obj) {
        if (i == 0) {
            return this.d.b(obj);
        }
        o8.b(i, "occurrences cannot be negative: %s", i > 0);
        int iD = this.d.d(obj);
        v<E> vVar = this.d;
        if (iD == -1) {
            vVar.f(obj, i);
            this.e += (long) i;
            return 0;
        }
        int iC = vVar.c(iD);
        long j = i;
        long j2 = ((long) iC) + j;
        o8.c(j2, j2 <= SieveCacheKt.NodeLinkMask, "too many occurrences: %s");
        v<E> vVar2 = this.d;
        o8.j(iD, vVar2.c);
        vVar2.b[iD] = (int) j2;
        this.e += j;
        return iC;
    }

    public abstract v b();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        v<E> vVar = this.d;
        vVar.d++;
        Arrays.fill(vVar.a, 0, vVar.c, (Object) null);
        Arrays.fill(vVar.b, 0, vVar.c, 0);
        Arrays.fill(vVar.e, -1);
        Arrays.fill(vVar.f, -1L);
        vVar.c = 0;
        this.e = 0L;
    }

    @Override // com.google.common.collect.t
    public final int count(Object obj) {
        return this.d.b(obj);
    }

    public final int d(int i, Object obj) {
        if (i == 0) {
            return this.d.b(obj);
        }
        o8.b(i, "occurrences cannot be negative: %s", i > 0);
        int iD = this.d.d(obj);
        if (iD == -1) {
            return 0;
        }
        int iC = this.d.c(iD);
        v<E> vVar = this.d;
        if (iC > i) {
            o8.j(iD, vVar.c);
            vVar.b[iD] = iC - i;
        } else {
            vVar.g(iD);
            i = iC;
        }
        this.e -= (long) i;
        return iC;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return new u.d(this, ((h.b) entrySet()).iterator());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return fa4.Y(this.e);
    }
}
