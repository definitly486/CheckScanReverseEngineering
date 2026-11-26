package com.google.common.collect;

import defpackage.eg9;
import defpackage.jh;
import defpackage.o2;
import defpackage.o8;
import defpackage.r18;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
public abstract class n<E> extends i<E> implements Set<E> {
    public static final /* synthetic */ int d = 0;
    public transient j<E> c;

    public static class a<E> extends i.a<E> {
        @Override // com.google.common.collect.i.b
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public a<E> a(E e) {
            e.getClass();
            c(e);
            return this;
        }

        public n<E> h() {
            int i = this.b;
            if (i == 0) {
                int i2 = n.d;
                return z.k;
            }
            Object[] objArr = this.a;
            if (i != 1) {
                n<E> nVarM = n.m(i, objArr);
                this.b = nVarM.size();
                this.c = true;
                return nVarM;
            }
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            int i3 = n.d;
            return new r18(obj);
        }
    }

    public static final class b implements Serializable {
        public final Object[] b;

        public b(Object[] objArr) {
            this.b = objArr;
        }

        public Object readResolve() {
            return n.o(this.b);
        }
    }

    public static int k(int i) {
        int iMax = Math.max(i, 2);
        if (iMax >= 751619276) {
            o8.f(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (((double) iHighestOneBit) * 0.7d < iMax) {
            iHighestOneBit <<= 1;
        }
        return iHighestOneBit;
    }

    public static <E> n<E> m(int i, Object... objArr) {
        if (i == 0) {
            return z.k;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new r18(obj);
        }
        int iK = k(i);
        Object[] objArr2 = new Object[iK];
        int i2 = iK - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            if (obj2 == null) {
                o2.d(jh.b(i5, "at index "));
                return null;
            }
            int iHashCode = obj2.hashCode();
            int iF = eg9.f(iHashCode);
            while (true) {
                int i6 = iF & i2;
                Object obj3 = objArr2[i6];
                if (obj3 == null) {
                    objArr[i4] = obj2;
                    objArr2[i6] = obj2;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj3.equals(obj2)) {
                    break;
                }
                iF++;
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new r18(obj4);
        }
        if (k(i4) < iK / 2) {
            return m(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new z(objArr, i3, objArr2, i2, i4);
    }

    public static <E> n<E> n(Collection<? extends E> collection) {
        if ((collection instanceof n) && !(collection instanceof SortedSet)) {
            n<E> nVar = (n) collection;
            if (!nVar.i()) {
                return nVar;
            }
        }
        Object[] array = collection.toArray();
        return m(array.length, array);
    }

    public static <E> n<E> o(E[] eArr) {
        int length = eArr.length;
        if (length != 0) {
            return length != 1 ? m(eArr.length, (Object[]) eArr.clone()) : new r18(eArr[0]);
        }
        return z.k;
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.i
    public j<E> a() {
        j<E> jVar = this.c;
        if (jVar != null) {
            return jVar;
        }
        j<E> jVarP = p();
        this.c = jVarP;
        return jVarP;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof n) && (this instanceof z) && (((n) obj) instanceof z) && ((z) this).f != obj.hashCode()) {
            return false;
        }
        return d0.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return d0.c(this);
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    public /* bridge */ /* synthetic */ Iterator iterator() {
        return iterator();
    }

    public j<E> p() {
        Object[] array = toArray(i.b);
        j.b bVar = j.c;
        return j.k(array.length, array);
    }

    @Override // com.google.common.collect.i
    public Object writeReplace() {
        return new b(toArray(i.b));
    }
}
