package defpackage;

import d05.i;
import d05.m;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes4.dex */
public final class d05<K, V, E extends i<K, V, E>, S extends m<K, V, E, S>> extends AbstractMap<K, V> implements ConcurrentMap<K, V>, Serializable {
    public static final a k = new a();
    public final transient int b;
    public final transient int c;
    public final transient m<K, V, E, S>[] d;
    public final int e;
    public final n03<Object> f;
    public final transient j<K, V, E, S> g;
    public transient l h;
    public transient u i;
    public transient g j;

    public class a implements a0<Object, Object, e> {
        @Override // d05.a0
        public final i a() {
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // d05.a0
        public final a0 b(ReferenceQueue referenceQueue, z zVar) {
            return this;
        }

        @Override // d05.a0
        public final void clear() {
        }

        @Override // d05.a0
        public final Object get() {
            return null;
        }
    }

    public interface a0<K, V, E extends i<K, V, E>> {
        E a();

        a0 b(ReferenceQueue referenceQueue, z zVar);

        void clear();

        V get();
    }

    public static final class b0<K, V, E extends i<K, V, E>> extends WeakReference<V> implements a0<K, V, E> {
        public final E a;

        public b0(ReferenceQueue<V> referenceQueue, V v, E e) {
            super(v, referenceQueue);
            this.a = e;
        }

        @Override // d05.a0
        public final E a() {
            return this.a;
        }

        @Override // d05.a0
        public final a0 b(ReferenceQueue referenceQueue, z zVar) {
            return new b0(referenceQueue, get(), zVar);
        }
    }

    public static abstract class c<K, V, E extends i<K, V, E>> implements i<K, V, E> {
        public final K a;
        public final int b;

        public c(K k, int i) {
            this.a = k;
            this.b = i;
        }

        @Override // d05.i
        public final int b() {
            return this.b;
        }

        @Override // d05.i
        public final K getKey() {
            return this.a;
        }

        @Override // d05.i
        public E getNext() {
            return null;
        }
    }

    public final class c0 extends AbstractMap.SimpleEntry<K, V> {
        public c0(K k, V v) {
            super(k, v);
        }

        @Override // java.util.AbstractMap.SimpleEntry, java.util.Map.Entry
        public final V setValue(V v) {
            d05.this.put(getKey(), v);
            return (V) super.setValue(v);
        }
    }

    public static abstract class d<K, V, E extends i<K, V, E>> extends WeakReference<K> implements i<K, V, E> {
        public final int a;

        public d(ReferenceQueue<K> referenceQueue, K k, int i) {
            super(k, referenceQueue);
            this.a = i;
        }

        @Override // d05.i
        public final int b() {
            return this.a;
        }

        @Override // d05.i
        public final K getKey() {
            return get();
        }

        @Override // d05.i
        public E getNext() {
            return null;
        }
    }

    public static final class e implements i<Object, Object, e> {
        public e() {
            throw new AssertionError();
        }

        @Override // d05.i
        public final int b() {
            throw new AssertionError();
        }

        @Override // d05.i
        public final Object getKey() {
            throw new AssertionError();
        }

        @Override // d05.i
        public final i getNext() {
            throw new AssertionError();
        }

        @Override // d05.i
        public final Object getValue() {
            throw new AssertionError();
        }
    }

    public final class f extends d05<K, V, E, S>.h<Map.Entry<K, V>> {
    }

    public final class g extends AbstractSet<Map.Entry<K, V>> {
        public g() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            d05.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry;
            Object key;
            d05 d05Var;
            Object obj2;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && (obj2 = (d05Var = d05.this).get(key)) != null && d05Var.g.c().a().d(entry.getValue(), obj2);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return d05.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry;
            Object key;
            return (obj instanceof Map.Entry) && (key = (entry = (Map.Entry) obj).getKey()) != null && d05.this.remove(key, entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return d05.this.size();
        }
    }

    public abstract class h<T> implements Iterator<T> {
        public int b;
        public int c = -1;
        public m<K, V, E, S> d;
        public AtomicReferenceArray<E> e;
        public E f;
        public d05<K, V, E, S>.c0 g;
        public d05<K, V, E, S>.c0 h;

        public h() {
            this.b = d05.this.d.length - 1;
            a();
        }

        public final void a() {
            this.g = null;
            if (d() || e()) {
                return;
            }
            while (true) {
                int i = this.b;
                if (i < 0) {
                    return;
                }
                m<K, V, E, S>[] mVarArr = d05.this.d;
                this.b = i - 1;
                m<K, V, E, S> mVar = mVarArr[i];
                this.d = mVar;
                if (mVar.c != 0) {
                    AtomicReferenceArray<E> atomicReferenceArray = this.d.f;
                    this.e = atomicReferenceArray;
                    this.c = atomicReferenceArray.length() - 1;
                    if (e()) {
                        return;
                    }
                }
            }
        }

        public final boolean b(E e) {
            m<K, V, E, S> mVar;
            d05 d05Var = d05.this;
            try {
                Object key = e.getKey();
                Object value = e.getKey() == null ? null : e.getValue();
                if (value == null) {
                    return false;
                }
                this.g = new c0(key, value);
                return true;
            } finally {
                this.d.i();
            }
        }

        public final d05<K, V, E, S>.c0 c() {
            d05<K, V, E, S>.c0 c0Var = this.g;
            if (c0Var == null) {
                qz0.e();
                return null;
            }
            this.h = c0Var;
            a();
            return this.h;
        }

        public final boolean d() {
            E e = this.f;
            if (e == null) {
                return false;
            }
            while (true) {
                this.f = (E) e.getNext();
                E e2 = this.f;
                if (e2 == null) {
                    return false;
                }
                if (b(e2)) {
                    return true;
                }
                e = this.f;
            }
        }

        public final boolean e() {
            while (true) {
                int i = this.c;
                if (i < 0) {
                    return false;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.e;
                this.c = i - 1;
                E e = atomicReferenceArray.get(i);
                this.f = e;
                if (e != null && (b(e) || d())) {
                    return true;
                }
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.g != null;
        }

        @Override // java.util.Iterator
        public Object next() {
            return c();
        }

        @Override // java.util.Iterator
        public final void remove() {
            cn1.c(this.h != null);
            d05.this.remove(this.h.getKey());
            this.h = null;
        }
    }

    public interface i<K, V, E extends i<K, V, E>> {
        int b();

        K getKey();

        E getNext();

        V getValue();
    }

    public interface j<K, V, E extends i<K, V, E>, S extends m<K, V, E, S>> {
        void a(S s, E e, V v);

        o b();

        o c();

        E d(S s, K k, int i, E e);

        S e(d05<K, V, E, S> d05Var, int i);

        E f(S s, E e, E e2);
    }

    public final class k extends d05<K, V, E, S>.h<K> {
        @Override // d05.h, java.util.Iterator
        public final K next() {
            return c().getKey();
        }
    }

    public final class l extends AbstractSet<K> {
        public l() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            d05.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return d05.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean isEmpty() {
            return d05.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new k();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return d05.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return d05.this.size();
        }
    }

    public static abstract class m<K, V, E extends i<K, V, E>, S extends m<K, V, E, S>> extends ReentrantLock {
        public static final /* synthetic */ int h = 0;
        public final d05<K, V, E, S> b;
        public volatile int c;
        public int d;
        public int e;
        public volatile AtomicReferenceArray<E> f;
        public final AtomicInteger g = new AtomicInteger();

        public m(d05<K, V, E, S> d05Var, int i) {
            this.b = d05Var;
            AtomicReferenceArray<E> atomicReferenceArray = new AtomicReferenceArray<>(i);
            this.e = (atomicReferenceArray.length() * 3) / 4;
            this.f = atomicReferenceArray;
        }

        public final void a(ReferenceQueue<K> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends K> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                i iVar = (i) referencePoll;
                d05<K, V, E, S> d05Var = this.b;
                int iB = iVar.b();
                m<K, V, E, S> mVarB = d05Var.b(iB);
                mVarB.lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = mVarB.f;
                    int length = iB & (atomicReferenceArray.length() - 1);
                    E e = atomicReferenceArray.get(length);
                    for (i next = e; next != null; next = next.getNext()) {
                        if (next == iVar) {
                            mVarB.d++;
                            i iVarK = mVarB.k(e, next);
                            int i2 = mVarB.c - 1;
                            atomicReferenceArray.set(length, (E) iVarK);
                            mVarB.c = i2;
                            break;
                        }
                    }
                    mVarB.unlock();
                    i++;
                } catch (Throwable th) {
                    mVarB.unlock();
                    throw th;
                }
            } while (i != 16);
        }

        public final void b(ReferenceQueue<V> referenceQueue) {
            int i = 0;
            do {
                Reference<? extends V> referencePoll = referenceQueue.poll();
                if (referencePoll == null) {
                    return;
                }
                a0<K, V, E> a0Var = (a0) referencePoll;
                d05<K, V, E, S> d05Var = this.b;
                i iVarA = a0Var.a();
                int iB = iVarA.b();
                m<K, V, E, S> mVarB = d05Var.b(iB);
                Object key = iVarA.getKey();
                mVarB.lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = mVarB.f;
                    int length = (atomicReferenceArray.length() - 1) & iB;
                    E e = atomicReferenceArray.get(length);
                    for (i next = e; next != null; next = next.getNext()) {
                        Object key2 = next.getKey();
                        if (next.b() == iB && key2 != null && mVarB.b.f.d(key, key2)) {
                            if (((z) next).a() != a0Var) {
                                break;
                            }
                            mVarB.d++;
                            i iVarK = mVarB.k(e, next);
                            int i2 = mVarB.c - 1;
                            atomicReferenceArray.set(length, (E) iVarK);
                            mVarB.c = i2;
                            break;
                        }
                    }
                    mVarB.unlock();
                    i++;
                } catch (Throwable th) {
                    mVarB.unlock();
                    throw th;
                }
            } while (i != 16);
        }

        public final void d() {
            AtomicReferenceArray<E> atomicReferenceArray = this.f;
            int length = atomicReferenceArray.length();
            if (length >= 1073741824) {
                return;
            }
            int i = this.c;
            m68 m68Var = (AtomicReferenceArray<E>) new AtomicReferenceArray(length << 1);
            this.e = (m68Var.length() * 3) / 4;
            int length2 = m68Var.length() - 1;
            for (int i2 = 0; i2 < length; i2++) {
                E next = atomicReferenceArray.get(i2);
                if (next != null) {
                    i next2 = next.getNext();
                    int iB = next.b() & length2;
                    if (next2 == null) {
                        m68Var.set(iB, next);
                    } else {
                        i iVar = next;
                        while (next2 != null) {
                            int iB2 = next2.b() & length2;
                            if (iB2 != iB) {
                                iVar = next2;
                                iB = iB2;
                            }
                            next2 = next2.getNext();
                        }
                        m68Var.set(iB, iVar);
                        while (next != iVar) {
                            int iB3 = next.b() & length2;
                            i iVarF = this.b.g.f(n(), next, (i) m68Var.get(iB3));
                            if (iVarF != null) {
                                m68Var.set(iB3, iVarF);
                            } else {
                                i--;
                            }
                            next = next.getNext();
                        }
                    }
                }
            }
            this.f = m68Var;
            this.c = i;
        }

        public final i e(int i, Object obj) {
            if (this.c == 0) {
                return null;
            }
            AtomicReferenceArray<E> atomicReferenceArray = this.f;
            for (E next = atomicReferenceArray.get((atomicReferenceArray.length() - 1) & i); next != null; next = next.getNext()) {
                if (next.b() == i) {
                    Object key = next.getKey();
                    if (key == null) {
                        p();
                    } else if (this.b.f.d(obj, key)) {
                        return next;
                    }
                }
            }
            return null;
        }

        public void f() {
        }

        public void g() {
        }

        public final void i() {
            if ((this.g.incrementAndGet() & 63) == 0) {
                m();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object j(int i, Object obj, boolean z, Object obj2) {
            lock();
            try {
                m();
                int i2 = this.c + 1;
                if (i2 > this.e) {
                    d();
                    i2 = this.c + 1;
                }
                AtomicReferenceArray<E> atomicReferenceArray = this.f;
                int length = (atomicReferenceArray.length() - 1) & i;
                E e = atomicReferenceArray.get(length);
                for (i next = e; next != null; next = next.getNext()) {
                    Object key = next.getKey();
                    if (next.b() == i && key != null && this.b.f.d(obj, key)) {
                        Object value = next.getValue();
                        if (value == null) {
                            this.d++;
                            o(next, obj2);
                            this.c = this.c;
                            return null;
                        }
                        if (z) {
                            return value;
                        }
                        this.d++;
                        o(next, obj2);
                        return value;
                    }
                }
                this.d++;
                i iVarD = this.b.g.d(n(), obj, i, e);
                o(iVarD, obj2);
                atomicReferenceArray.set(length, (E) iVarD);
                this.c = i2;
                return null;
            } finally {
                unlock();
            }
        }

        public final E k(E e, E e2) {
            int i = this.c;
            E e3 = (E) e2.getNext();
            while (e != e2) {
                i iVarF = this.b.g.f(n(), e, e3);
                if (iVarF != null) {
                    e3 = (E) iVarF;
                } else {
                    i--;
                }
                e = (E) e.getNext();
            }
            this.c = i;
            return e3;
        }

        public final void m() {
            if (tryLock()) {
                try {
                    g();
                    this.g.set(0);
                } finally {
                    unlock();
                }
            }
        }

        public abstract S n();

        public final void o(E e, V v) {
            this.b.g.a(n(), e, v);
        }

        public final void p() {
            if (tryLock()) {
                try {
                    g();
                } finally {
                    unlock();
                }
            }
        }
    }

    public static final class n<K, V> extends b<K, V> {
        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            int i = objectInputStream.readInt();
            c05 c05Var = new c05();
            o8.e(i >= 0);
            c05Var.b = i;
            o oVar = c05Var.d;
            o8.q("Key strength was already set to %s", oVar == null, oVar);
            o oVar2 = this.b;
            oVar2.getClass();
            c05Var.d = oVar2;
            o oVar3 = o.STRONG;
            if (oVar2 != oVar3) {
                c05Var.a = true;
            }
            o oVar4 = c05Var.e;
            o8.q("Value strength was already set to %s", oVar4 == null, oVar4);
            o oVar5 = this.c;
            oVar5.getClass();
            c05Var.e = oVar5;
            if (oVar5 != oVar3) {
                c05Var.a = true;
            }
            n03<Object> n03Var = c05Var.f;
            o8.q("key equivalence was already set to %s", n03Var == null, n03Var);
            n03<Object> n03Var2 = this.d;
            n03Var2.getClass();
            c05Var.f = n03Var2;
            c05Var.a = true;
            int i2 = c05Var.c;
            o8.p(i2, "concurrency level was already set to %s", i2 == -1);
            int i3 = this.e;
            o8.e(i3 > 0);
            c05Var.c = i3;
            this.f = c05Var.a();
            while (true) {
                Object object = objectInputStream.readObject();
                if (object == null) {
                    return;
                } else {
                    this.f.put((K) object, (V) objectInputStream.readObject());
                }
            }
        }

        private Object readResolve() {
            return this.f;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeInt(this.f.size());
            for (Map.Entry<K, V> entry : this.f.entrySet()) {
                objectOutputStream.writeObject(entry.getKey());
                objectOutputStream.writeObject(entry.getValue());
            }
            objectOutputStream.writeObject(null);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class o {
        private static final /* synthetic */ o[] $VALUES;
        public static final o STRONG;
        public static final o WEAK;

        public final enum a extends o {
            public a() {
                super("STRONG", 0);
            }

            @Override // d05.o
            public final n03<Object> a() {
                return n03.a.b;
            }
        }

        public final enum b extends o {
            public b() {
                super("WEAK", 1);
            }

            @Override // d05.o
            public final n03<Object> a() {
                return n03.b.b;
            }
        }

        static {
            a aVar = new a();
            STRONG = aVar;
            b bVar = new b();
            WEAK = bVar;
            $VALUES = new o[]{aVar, bVar};
        }

        public o() {
            throw null;
        }

        public static o valueOf(String str) {
            return (o) Enum.valueOf(o.class, str);
        }

        public static o[] values() {
            return (o[]) $VALUES.clone();
        }

        public abstract n03<Object> a();
    }

    public static class p<K, V> extends c<K, V, p<K, V>> {
        public volatile V c;

        public static final class a<K, V> implements j<K, V, p<K, V>, q<K, V>> {
            public static final a<?, ?> a = new a<>();

            /* JADX WARN: Multi-variable type inference failed */
            @Override // d05.j
            public final void a(m mVar, i iVar, Object obj) {
                ((p) iVar).c = obj;
            }

            @Override // d05.j
            public final o b() {
                return o.STRONG;
            }

            @Override // d05.j
            public final o c() {
                return o.STRONG;
            }

            @Override // d05.j
            public final i d(m mVar, Object obj, int i, i iVar) {
                p pVar = (p) iVar;
                return pVar == null ? new p(obj, i) : new b(obj, i, pVar);
            }

            @Override // d05.j
            public final m e(d05 d05Var, int i) {
                return new q(d05Var, i);
            }

            @Override // d05.j
            public final i f(m mVar, i iVar, i iVar2) {
                p pVar = (p) iVar;
                p pVar2 = (p) iVar2;
                K k = pVar.a;
                int i = pVar.b;
                p pVar3 = pVar2 == null ? new p(k, i) : new b(k, i, pVar2);
                pVar3.c = pVar.c;
                return pVar3;
            }
        }

        public static final class b<K, V> extends p<K, V> {
            public final p<K, V> d;

            public b(K k, int i, p<K, V> pVar) {
                super(k, i);
                this.d = pVar;
            }

            @Override // d05.c, d05.i
            public final i getNext() {
                return this.d;
            }
        }

        public p(K k, int i) {
            super(k, i);
            this.c = null;
        }

        @Override // d05.i
        public final V getValue() {
            return this.c;
        }
    }

    public static final class q<K, V> extends m<K, V, p<K, V>, q<K, V>> {
        @Override // d05.m
        public final m n() {
            return this;
        }
    }

    public static class r<K, V> extends c<K, V, r<K, V>> implements z<K, V, r<K, V>> {
        public volatile a0<K, V, r<K, V>> c;

        public static final class a<K, V> implements j<K, V, r<K, V>, s<K, V>> {
            public static final a<?, ?> a = new a<>();

            @Override // d05.j
            public final void a(m mVar, i iVar, Object obj) {
                r rVar = (r) iVar;
                a0<K, V, r<K, V>> a0Var = rVar.c;
                rVar.c = new b0(((s) mVar).i, obj, rVar);
                a0Var.clear();
            }

            @Override // d05.j
            public final o b() {
                return o.STRONG;
            }

            @Override // d05.j
            public final o c() {
                return o.WEAK;
            }

            @Override // d05.j
            public final i d(m mVar, Object obj, int i, i iVar) {
                r rVar = (r) iVar;
                return rVar == null ? new r(obj, i) : new b(obj, i, rVar);
            }

            @Override // d05.j
            public final m e(d05 d05Var, int i) {
                return new s(d05Var, i);
            }

            @Override // d05.j
            public final i f(m mVar, i iVar, i iVar2) {
                s sVar = (s) mVar;
                r rVar = (r) iVar;
                r rVar2 = (r) iVar2;
                int i = m.h;
                if (rVar.getValue() == null) {
                    return null;
                }
                K k = rVar.a;
                int i2 = rVar.b;
                r rVar3 = rVar2 == null ? new r(k, i2) : new b(k, i2, rVar2);
                rVar3.c = rVar.c.b(sVar.i, rVar3);
                return rVar3;
            }
        }

        public static final class b<K, V> extends r<K, V> {
            public final r<K, V> d;

            public b(K k, int i, r<K, V> rVar) {
                super(k, i);
                this.d = rVar;
            }

            @Override // d05.c, d05.i
            public final i getNext() {
                return this.d;
            }
        }

        public r(K k, int i) {
            super(k, i);
            this.c = d05.k;
        }

        @Override // d05.z
        public final a0<K, V, r<K, V>> a() {
            return this.c;
        }

        @Override // d05.i
        public final V getValue() {
            return this.c.get();
        }
    }

    public static final class s<K, V> extends m<K, V, r<K, V>, s<K, V>> {
        public final ReferenceQueue<V> i;

        public s(d05<K, V, r<K, V>, s<K, V>> d05Var, int i) {
            super(d05Var, i);
            this.i = new ReferenceQueue<>();
        }

        @Override // d05.m
        public final void f() {
            while (this.i.poll() != null) {
            }
        }

        @Override // d05.m
        public final void g() {
            b(this.i);
        }

        @Override // d05.m
        public final m n() {
            return this;
        }
    }

    public final class t extends d05<K, V, E, S>.h<V> {
        @Override // d05.h, java.util.Iterator
        public final V next() {
            return c().getValue();
        }
    }

    public final class u extends AbstractCollection<V> {
        public u() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            d05.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            return d05.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean isEmpty() {
            return d05.this.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            return new t();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return d05.this.size();
        }
    }

    public static class v<K, V> extends d<K, V, v<K, V>> {
        public volatile V b;

        public static final class a<K, V> implements j<K, V, v<K, V>, w<K, V>> {
            public static final a<?, ?> a = new a<>();

            /* JADX WARN: Multi-variable type inference failed */
            @Override // d05.j
            public final void a(m mVar, i iVar, Object obj) {
                ((v) iVar).b = obj;
            }

            @Override // d05.j
            public final o b() {
                return o.WEAK;
            }

            @Override // d05.j
            public final o c() {
                return o.STRONG;
            }

            @Override // d05.j
            public final i d(m mVar, Object obj, int i, i iVar) {
                w wVar = (w) mVar;
                v vVar = (v) iVar;
                return vVar == null ? new v(wVar.i, obj, i) : new b(wVar.i, obj, i, vVar);
            }

            @Override // d05.j
            public final m e(d05 d05Var, int i) {
                return new w(d05Var, i);
            }

            @Override // d05.j
            public final i f(m mVar, i iVar, i iVar2) {
                w wVar = (w) mVar;
                v vVar = (v) iVar;
                v vVar2 = (v) iVar2;
                K k = vVar.get();
                if (k == null) {
                    return null;
                }
                int i = vVar.a;
                v vVar3 = vVar2 == null ? new v(wVar.i, k, i) : new b(wVar.i, k, i, vVar2);
                vVar3.b = vVar.b;
                return vVar3;
            }
        }

        public static final class b<K, V> extends v<K, V> {
            public final v<K, V> c;

            public b(ReferenceQueue<K> referenceQueue, K k, int i, v<K, V> vVar) {
                super(referenceQueue, k, i);
                this.c = vVar;
            }

            @Override // d05.d, d05.i
            public final i getNext() {
                return this.c;
            }
        }

        public v(ReferenceQueue<K> referenceQueue, K k, int i) {
            super(referenceQueue, k, i);
            this.b = null;
        }

        @Override // d05.i
        public final V getValue() {
            return this.b;
        }
    }

    public static final class w<K, V> extends m<K, V, v<K, V>, w<K, V>> {
        public final ReferenceQueue<K> i;

        public w(d05<K, V, v<K, V>, w<K, V>> d05Var, int i) {
            super(d05Var, i);
            this.i = new ReferenceQueue<>();
        }

        @Override // d05.m
        public final void f() {
            while (this.i.poll() != null) {
            }
        }

        @Override // d05.m
        public final void g() {
            a(this.i);
        }

        @Override // d05.m
        public final m n() {
            return this;
        }
    }

    public static class x<K, V> extends d<K, V, x<K, V>> implements z<K, V, x<K, V>> {
        public volatile a0<K, V, x<K, V>> b;

        public static final class a<K, V> implements j<K, V, x<K, V>, y<K, V>> {
            public static final a<?, ?> a = new a<>();

            @Override // d05.j
            public final void a(m mVar, i iVar, Object obj) {
                x xVar = (x) iVar;
                a0<K, V, x<K, V>> a0Var = xVar.b;
                xVar.b = new b0(((y) mVar).j, obj, xVar);
                a0Var.clear();
            }

            @Override // d05.j
            public final o b() {
                return o.WEAK;
            }

            @Override // d05.j
            public final o c() {
                return o.WEAK;
            }

            @Override // d05.j
            public final i d(m mVar, Object obj, int i, i iVar) {
                y yVar = (y) mVar;
                x xVar = (x) iVar;
                return xVar == null ? new x(yVar.i, obj, i) : new b(yVar.i, obj, i, xVar);
            }

            @Override // d05.j
            public final m e(d05 d05Var, int i) {
                return new y(d05Var, i);
            }

            @Override // d05.j
            public final i f(m mVar, i iVar, i iVar2) {
                y yVar = (y) mVar;
                x xVar = (x) iVar;
                x xVar2 = (x) iVar2;
                K k = xVar.get();
                if (k == null) {
                    return null;
                }
                int i = m.h;
                if (xVar.b.get() == null) {
                    return null;
                }
                int i2 = xVar.a;
                x xVar3 = xVar2 == null ? new x(yVar.i, k, i2) : new b(yVar.i, k, i2, xVar2);
                xVar3.b = xVar.b.b(yVar.j, xVar3);
                return xVar3;
            }
        }

        public static final class b<K, V> extends x<K, V> {
            public final x<K, V> c;

            public b(ReferenceQueue<K> referenceQueue, K k, int i, x<K, V> xVar) {
                super(referenceQueue, k, i);
                this.c = xVar;
            }

            @Override // d05.d, d05.i
            public final i getNext() {
                return this.c;
            }
        }

        public x(ReferenceQueue<K> referenceQueue, K k, int i) {
            super(referenceQueue, k, i);
            this.b = d05.k;
        }

        @Override // d05.z
        public final a0<K, V, x<K, V>> a() {
            return this.b;
        }

        @Override // d05.i
        public final V getValue() {
            return this.b.get();
        }
    }

    public static final class y<K, V> extends m<K, V, x<K, V>, y<K, V>> {
        public final ReferenceQueue<K> i;
        public final ReferenceQueue<V> j;

        public y(d05<K, V, x<K, V>, y<K, V>> d05Var, int i) {
            super(d05Var, i);
            this.i = new ReferenceQueue<>();
            this.j = new ReferenceQueue<>();
        }

        @Override // d05.m
        public final void f() {
            while (this.i.poll() != null) {
            }
        }

        @Override // d05.m
        public final void g() {
            a(this.i);
            b(this.j);
        }

        @Override // d05.m
        public final m n() {
            return this;
        }
    }

    public interface z<K, V, E extends i<K, V, E>> extends i<K, V, E> {
        a0<K, V, E> a();
    }

    public d05(c05 c05Var, j<K, V, E, S> jVar) {
        int i2 = c05Var.c;
        this.e = Math.min(i2 == -1 ? 4 : i2, 65536);
        this.f = (n03) od5.a(c05Var.f, ((o) od5.a(c05Var.d, o.STRONG)).a());
        this.g = jVar;
        int i3 = c05Var.b;
        int iMin = Math.min(i3 == -1 ? 16 : i3, 1073741824);
        int i4 = 0;
        int i5 = 1;
        int i6 = 0;
        int i7 = 1;
        while (i7 < this.e) {
            i6++;
            i7 <<= 1;
        }
        this.c = 32 - i6;
        this.b = i7 - 1;
        this.d = new m[i7];
        int i8 = iMin / i7;
        while (i5 < (i7 * i8 < iMin ? i8 + 1 : i8)) {
            i5 <<= 1;
        }
        while (true) {
            m<K, V, E, S>[] mVarArr = this.d;
            if (i4 >= mVarArr.length) {
                return;
            }
            mVarArr[i4] = this.g.e(this, i5);
            i4++;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializationProxy");
    }

    public final int a(Object obj) {
        int iB = this.f.b(obj);
        int i2 = iB + ((iB << 15) ^ (-12931));
        int i3 = i2 ^ (i2 >>> 10);
        int i4 = i3 + (i3 << 3);
        int i5 = i4 ^ (i4 >>> 6);
        int i6 = (i5 << 2) + (i5 << 14) + i5;
        return (i6 >>> 16) ^ i6;
    }

    public final m<K, V, E, S> b(int i2) {
        return this.d[(i2 >>> this.c) & this.b];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        for (m<K, V, E, S> mVar : this.d) {
            if (mVar.c != 0) {
                mVar.lock();
                try {
                    AtomicReferenceArray<E> atomicReferenceArray = mVar.f;
                    for (int i2 = 0; i2 < atomicReferenceArray.length(); i2++) {
                        atomicReferenceArray.set(i2, null);
                    }
                    mVar.f();
                    mVar.g.set(0);
                    mVar.d++;
                    mVar.c = 0;
                    mVar.unlock();
                } catch (Throwable th) {
                    mVar.unlock();
                    throw th;
                }
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        boolean z2 = false;
        if (obj == null) {
            return false;
        }
        int iA = a(obj);
        m<K, V, E, S> mVarB = b(iA);
        mVarB.getClass();
        try {
            if (mVarB.c == 0) {
                return false;
            }
            i iVarE = mVarB.e(iA, obj);
            if (iVarE != null && iVarE.getValue() != null) {
                z2 = true;
            }
            return z2;
        } finally {
            mVarB.i();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Object value;
        if (obj != null) {
            m<K, V, E, S>[] mVarArr = this.d;
            long j2 = -1;
            int i2 = 0;
            while (i2 < 3) {
                int length = mVarArr.length;
                long j3 = 0;
                for (int i3 = 0; i3 < length; i3++) {
                    m<K, V, E, S> mVar = mVarArr[i3];
                    int i4 = mVar.c;
                    AtomicReferenceArray<E> atomicReferenceArray = mVar.f;
                    for (int i5 = 0; i5 < atomicReferenceArray.length(); i5++) {
                        for (E next = atomicReferenceArray.get(i5); next != null; next = next.getNext()) {
                            if (next.getKey() == null || (value = next.getValue()) == null) {
                                mVar.p();
                                value = null;
                            }
                            if (value != null && this.g.c().a().d(obj, value)) {
                                return true;
                            }
                        }
                    }
                    j3 += (long) mVar.d;
                }
                if (j3 == j2) {
                    return false;
                }
                i2++;
                j2 = j3;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        g gVar = this.j;
        if (gVar != null) {
            return gVar;
        }
        g gVar2 = new g();
        this.j = gVar2;
        return gVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        if (obj == null) {
            return null;
        }
        int iA = a(obj);
        m<K, V, E, S> mVarB = b(iA);
        mVarB.getClass();
        try {
            i iVarE = mVarB.e(iA, obj);
            if (iVarE == null) {
                return null;
            }
            V v2 = (V) iVarE.getValue();
            if (v2 == null) {
                mVarB.p();
            }
            return v2;
        } finally {
            mVarB.i();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        m<K, V, E, S>[] mVarArr = this.d;
        long j2 = 0;
        for (int i2 = 0; i2 < mVarArr.length; i2++) {
            if (mVarArr[i2].c != 0) {
                return false;
            }
            j2 += (long) mVarArr[i2].d;
        }
        if (j2 == 0) {
            return true;
        }
        for (int i3 = 0; i3 < mVarArr.length; i3++) {
            if (mVarArr[i3].c != 0) {
                return false;
            }
            j2 -= (long) mVarArr[i3].d;
        }
        return j2 == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        l lVar = this.h;
        if (lVar != null) {
            return lVar;
        }
        l lVar2 = new l();
        this.h = lVar2;
        return lVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k2, V v2) {
        k2.getClass();
        v2.getClass();
        int iA = a(k2);
        return (V) b(iA).j(iA, k2, false, v2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final V putIfAbsent(K k2, V v2) {
        k2.getClass();
        v2.getClass();
        int iA = a(k2);
        return (V) b(iA).j(iA, k2, true, v2);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean remove(Object obj, Object obj2) {
        boolean z2 = false;
        if (obj == null || obj2 == null) {
            return false;
        }
        int iA = a(obj);
        m<K, V, E, S> mVarB = b(iA);
        mVarB.lock();
        try {
            mVarB.m();
            AtomicReferenceArray<E> atomicReferenceArray = mVarB.f;
            int length = (atomicReferenceArray.length() - 1) & iA;
            E e2 = atomicReferenceArray.get(length);
            for (i next = e2; next != null; next = next.getNext()) {
                Object key = next.getKey();
                if (next.b() == iA && key != null && mVarB.b.f.d(obj, key)) {
                    if (mVarB.b.g.c().a().d(obj2, next.getValue())) {
                        z2 = true;
                    } else if (next.getValue() != null) {
                        return false;
                    }
                    mVarB.d++;
                    i iVarK = mVarB.k(e2, next);
                    int i2 = mVarB.c - 1;
                    atomicReferenceArray.set(length, (E) iVarK);
                    mVarB.c = i2;
                    return z2;
                }
            }
            return false;
        } finally {
            mVarB.unlock();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(K k2, V v2, V v3) {
        k2.getClass();
        v3.getClass();
        if (v2 == null) {
            return false;
        }
        int iA = a(k2);
        m<K, V, E, S> mVarB = b(iA);
        mVarB.lock();
        try {
            mVarB.m();
            AtomicReferenceArray<E> atomicReferenceArray = mVarB.f;
            int length = (atomicReferenceArray.length() - 1) & iA;
            E e2 = atomicReferenceArray.get(length);
            for (i next = e2; next != null; next = next.getNext()) {
                Object key = next.getKey();
                if (next.b() == iA && key != null && mVarB.b.f.d(k2, key)) {
                    Object value = next.getValue();
                    if (value != null) {
                        if (!mVarB.b.g.c().a().d(v2, value)) {
                            return false;
                        }
                        mVarB.d++;
                        mVarB.o(next, v3);
                        return true;
                    }
                    if (next.getValue() == null) {
                        mVarB.d++;
                        i iVarK = mVarB.k(e2, next);
                        int i2 = mVarB.c - 1;
                        atomicReferenceArray.set(length, (E) iVarK);
                        mVarB.c = i2;
                    }
                    return false;
                }
            }
            return false;
        } finally {
            mVarB.unlock();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        long j2 = 0;
        for (m<K, V, E, S> mVar : this.d) {
            j2 += (long) mVar.c;
        }
        return fa4.Y(j2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        u uVar = this.i;
        if (uVar != null) {
            return uVar;
        }
        u uVar2 = new u();
        this.i = uVar2;
        return uVar2;
    }

    public Object writeReplace() {
        j<K, V, E, S> jVar = this.g;
        o oVarB = jVar.b();
        o oVarC = jVar.c();
        jVar.c().a();
        return new n(oVarB, oVarC, this.f, this.e, this);
    }

    public static abstract class b<K, V> extends cj3<K, V> implements Serializable {
        public final o b;
        public final o c;
        public final n03<Object> d;
        public final int e;
        public transient ConcurrentMap<K, V> f;

        public b(o oVar, o oVar2, n03 n03Var, int i, d05 d05Var) {
            this.b = oVar;
            this.c = oVar2;
            this.d = n03Var;
            this.e = i;
            this.f = d05Var;
        }

        @Override // defpackage.mj3, defpackage.oj3
        public final Object delegate() {
            return this.f;
        }

        @Override // defpackage.mj3, defpackage.oj3
        public final Map delegate() {
            return this.f;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        int iA = a(obj);
        m<K, V, E, S> mVarB = b(iA);
        mVarB.lock();
        try {
            mVarB.m();
            AtomicReferenceArray<E> atomicReferenceArray = mVarB.f;
            int length = (atomicReferenceArray.length() - 1) & iA;
            E e2 = atomicReferenceArray.get(length);
            for (i next = e2; next != null; next = next.getNext()) {
                Object key = next.getKey();
                if (next.b() == iA && key != null && mVarB.b.f.d(obj, key)) {
                    V v2 = (V) next.getValue();
                    if (v2 == null && next.getValue() != null) {
                        return null;
                    }
                    mVarB.d++;
                    i iVarK = mVarB.k(e2, next);
                    int i2 = mVarB.c - 1;
                    atomicReferenceArray.set(length, (E) iVarK);
                    mVarB.c = i2;
                    return v2;
                }
            }
            return null;
        } finally {
            mVarB.unlock();
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final V replace(K k2, V v2) {
        k2.getClass();
        v2.getClass();
        int iA = a(k2);
        m<K, V, E, S> mVarB = b(iA);
        mVarB.lock();
        try {
            mVarB.m();
            AtomicReferenceArray<E> atomicReferenceArray = mVarB.f;
            int length = (atomicReferenceArray.length() - 1) & iA;
            E e2 = atomicReferenceArray.get(length);
            for (i next = e2; next != null; next = next.getNext()) {
                Object key = next.getKey();
                if (next.b() == iA && key != null && mVarB.b.f.d(k2, key)) {
                    V v3 = (V) next.getValue();
                    if (v3 == null) {
                        if (next.getValue() == null) {
                            mVarB.d++;
                            i iVarK = mVarB.k(e2, next);
                            int i2 = mVarB.c - 1;
                            atomicReferenceArray.set(length, (E) iVarK);
                            mVarB.c = i2;
                        }
                        return null;
                    }
                    mVarB.d++;
                    mVarB.o(next, v2);
                    return v3;
                }
            }
            return null;
        } finally {
            mVarB.unlock();
        }
    }
}
