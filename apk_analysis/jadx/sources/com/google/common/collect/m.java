package com.google.common.collect;

import defpackage.i44;
import defpackage.y69;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class m<E> extends i<E> implements t<E> {
    public static final /* synthetic */ int e = 0;
    public transient w c;
    public transient n<t.a<E>> d;

    public class a extends y69<E> {
        public int b;
        public E c;
        public final /* synthetic */ Iterator d;

        public a(y69 y69Var) {
            this.d = y69Var;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b > 0 || this.d.hasNext();
        }

        @Override // java.util.Iterator
        public final E next() {
            int count = this.b;
            if (count <= 0) {
                t.a aVar = (t.a) this.d.next();
                this.c = (E) aVar.a();
                count = aVar.getCount();
                this.b = count;
            }
            this.b = count - 1;
            E e = this.c;
            Objects.requireNonNull(e);
            return e;
        }
    }

    public static class b<E> extends i.b<E> {
        public v<E> a;
        public boolean b = false;

        public b(int i) {
            v<E> vVar = new v<>();
            vVar.e(i);
            this.a = vVar;
        }

        @Override // com.google.common.collect.i.b
        public final i.b a(Object obj) {
            c(1, obj);
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0023  */
        /* JADX WARN: Code duplicated, block: B:18:0x003a A[SYNTHETIC] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0037 -> B:9:0x001e). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:7:0x000d
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        public final void c(int r8, java.lang.Object r9) {
            /*
                r7 = this;
                com.google.common.collect.v<E> r0 = r7.a
                java.util.Objects.requireNonNull(r0)
                if (r8 != 0) goto L8
                return
            L8:
                boolean r0 = r7.b
                r1 = 0
                if (r0 == 0) goto L3c
                com.google.common.collect.v r0 = new com.google.common.collect.v
                com.google.common.collect.v<E> r2 = r7.a
                r0.<init>()
                int r3 = r2.c
                r0.e(r3)
                int r3 = r2.c
                r4 = -1
                if (r3 != 0) goto L20
            L1e:
                r3 = r4
                goto L21
            L20:
                r3 = r1
            L21:
                if (r3 == r4) goto L3a
                int r5 = r2.c
                defpackage.o8.j(r3, r5)
                java.lang.Object[] r5 = r2.a
                r5 = r5[r3]
                int r6 = r2.c(r3)
                r0.f(r5, r6)
                int r3 = r3 + 1
                int r5 = r2.c
                if (r3 >= r5) goto L1e
                goto L21
            L3a:
                r7.a = r0
            L3c:
                r7.b = r1
                r9.getClass()
                com.google.common.collect.v<E> r7 = r7.a
                int r0 = r7.b(r9)
                int r0 = r0 + r8
                r7.f(r9, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.m.b.c(int, java.lang.Object):void");
        }

        public final y d() {
            Objects.requireNonNull(this.a);
            if (this.a.c == 0) {
                int i = m.e;
                return y.i;
            }
            this.b = true;
            return new y(this.a);
        }
    }

    public final class c extends i44<t.a<E>> {
        public c() {
        }

        private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
            throw new InvalidObjectException("Use EntrySetSerializedForm");
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof t.a)) {
                return false;
            }
            t.a aVar = (t.a) obj;
            if (aVar.getCount() <= 0) {
                return false;
            }
            return ((y) m.this).f.b(aVar.a()) == aVar.getCount();
        }

        @Override // defpackage.i44
        public final Object get(int i) {
            return m.this.n(i);
        }

        @Override // com.google.common.collect.n, java.util.Collection, java.util.Set
        public final int hashCode() {
            return m.this.hashCode();
        }

        @Override // com.google.common.collect.i
        public final boolean i() {
            return m.this.i();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return m.this.elementSet().size();
        }

        @Override // defpackage.i44, com.google.common.collect.n, com.google.common.collect.i
        public Object writeReplace() {
            return new d(m.this);
        }
    }

    public static final class d<E> implements Serializable {
        public final m<E> b;

        public d(m<E> mVar) {
            this.b = mVar;
        }

        public Object readResolve() {
            return this.b.entrySet();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.i
    public final j<E> a() {
        w wVar = this.c;
        if (wVar != null) {
            return wVar;
        }
        j<E> jVarA = super.a();
        this.c = (w) jVarA;
        return jVarA;
    }

    @Override // com.google.common.collect.i
    public final int b(int i, Object[] objArr) {
        y69<t.a<E>> it = entrySet().iterator();
        while (it.hasNext()) {
            t.a<E> next = it.next();
            Arrays.fill(objArr, i, next.getCount() + i, next.a());
            i += next.getCount();
        }
        return i;
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return ((y) this).f.b(obj) > 0;
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        return u.a(this, obj);
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return d0.c(entrySet());
    }

    @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
    /* JADX INFO: renamed from: j */
    public final y69<E> iterator() {
        return new a(entrySet().iterator());
    }

    @Override // com.google.common.collect.t
    /* JADX INFO: renamed from: k */
    public abstract n<E> elementSet();

    @Override // com.google.common.collect.t
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final n<t.a<E>> entrySet() {
        n<t.a<E>> cVar = this.d;
        if (cVar == null) {
            cVar = isEmpty() ? z.k : new c();
            this.d = cVar;
        }
        return cVar;
    }

    public abstract v.a n(int i);

    @Override // java.util.AbstractCollection
    public final String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.i
    public abstract Object writeReplace();
}
