package com.google.common.collect;

import defpackage.fa4;
import defpackage.i44;
import defpackage.o8;
import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public final class y<E> extends m<E> {
    public static final y<Object> i;
    public final transient v<E> f;
    public final transient int g;
    public transient a h;

    public final class a extends i44<E> {
        public a() {
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return y.this.contains(obj);
        }

        @Override // defpackage.i44
        public final E get(int i) {
            v<E> vVar = y.this.f;
            o8.j(i, vVar.c);
            return (E) vVar.a[i];
        }

        @Override // com.google.common.collect.i
        public final boolean i() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return y.this.f.c;
        }

        @Override // defpackage.i44, com.google.common.collect.n, com.google.common.collect.i
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static class b implements Serializable {
        public final Object[] b;
        public final int[] c;

        public b(y yVar) {
            int size = yVar.entrySet().size();
            this.b = new Object[size];
            this.c = new int[size];
            int i = 0;
            for (t.a<E> aVar : yVar.entrySet()) {
                this.b[i] = aVar.a();
                this.c[i] = aVar.getCount();
                i++;
            }
        }

        public Object readResolve() {
            Object[] objArr = this.b;
            m.b bVar = new m.b(objArr.length);
            for (int i = 0; i < objArr.length; i++) {
                bVar.c(this.c[i], objArr[i]);
            }
            return bVar.d();
        }
    }

    static {
        v vVar = new v();
        vVar.e(3);
        i = new y<>(vVar);
    }

    public y(v<E> vVar) {
        this.f = vVar;
        long jC = 0;
        for (int i2 = 0; i2 < vVar.c; i2++) {
            jC += (long) vVar.c(i2);
        }
        this.g = fa4.Y(jC);
    }

    @Override // com.google.common.collect.t
    public final int count(Object obj) {
        return this.f.b(obj);
    }

    @Override // com.google.common.collect.i
    public final boolean i() {
        return false;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.t
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final n<E> elementSet() {
        a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        this.h = aVar2;
        return aVar2;
    }

    @Override // com.google.common.collect.m
    public final v.a n(int i2) {
        v<E> vVar = this.f;
        o8.j(i2, vVar.c);
        return new v.a(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.g;
    }

    @Override // com.google.common.collect.m, com.google.common.collect.i
    public Object writeReplace() {
        return new b(this);
    }
}
