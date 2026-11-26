package defpackage;

import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class ya4 {

    public static final class a<T> extends o0<T> {
        public static final a e = new a(new Object[0]);
        public final T[] d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Object[] objArr) {
            super(objArr.length, 0);
            this.d = objArr;
        }

        @Override // defpackage.o0
        public final T a(int i) {
            return this.d[i];
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static final class b<T> implements Iterator<T> {
        public Iterator<? extends T> b;
        public Iterator<? extends T> c;
        public Iterator<? extends Iterator<? extends T>> d;
        public ArrayDeque e;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            Iterator<? extends Iterator<? extends T>> it;
            while (true) {
                Iterator<? extends T> it2 = this.c;
                it2.getClass();
                if (it2.hasNext()) {
                    return true;
                }
                while (true) {
                    Iterator<? extends Iterator<? extends T>> it3 = this.d;
                    if (it3 != null && it3.hasNext()) {
                        it = this.d;
                        break;
                    }
                    ArrayDeque arrayDeque = this.e;
                    if (arrayDeque == null || arrayDeque.isEmpty()) {
                        it = null;
                        break;
                    }
                    this.d = (Iterator) this.e.removeFirst();
                }
                this.d = it;
                if (it == null) {
                    return false;
                }
                Iterator<? extends T> next = it.next();
                this.c = next;
                if (next instanceof b) {
                    b bVar = (b) next;
                    this.c = bVar.c;
                    ArrayDeque arrayDeque2 = this.e;
                    if (arrayDeque2 == null) {
                        arrayDeque2 = new ArrayDeque();
                        this.e = arrayDeque2;
                    }
                    arrayDeque2.addFirst(this.d);
                    if (bVar.e != null) {
                        while (!bVar.e.isEmpty()) {
                            this.e.addFirst((Iterator) bVar.e.removeLast());
                        }
                    }
                    this.d = bVar.d;
                }
            }
        }

        @Override // java.util.Iterator
        public final T next() {
            if (!hasNext()) {
                qz0.e();
                return null;
            }
            Iterator<? extends T> it = this.c;
            this.b = it;
            return it.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            Iterator<? extends T> it = this.b;
            if (it == null) {
                ah.f("no calls to next() since the last call to remove()");
            } else {
                it.remove();
                this.b = null;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class c implements Iterator<Object> {
        private static final /* synthetic */ c[] $VALUES;
        public static final c INSTANCE;

        static {
            c cVar = new c("INSTANCE", 0);
            INSTANCE = cVar;
            $VALUES = new c[]{cVar};
        }

        public c() {
            throw null;
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) $VALUES.clone();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            cn1.c(false);
        }
    }

    public static final class d<T> extends y69<T> {
        public final T b;
        public boolean c;

        public d(T t) {
            this.b = t;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.c;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.c) {
                qz0.e();
                return null;
            }
            this.c = true;
            return this.b;
        }
    }

    public static <T> boolean a(Collection<T> collection, Iterator<? extends T> it) {
        collection.getClass();
        it.getClass();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }

    public static void b(Iterator<?> it) {
        it.getClass();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    public static boolean c(y19 y19Var, Object obj) {
        Iterator it = y19Var.c;
        if (obj == null) {
            while (it.hasNext()) {
                if (y19Var.next() == null) {
                    return true;
                }
            }
            return false;
        }
        while (it.hasNext()) {
            if (obj.equals(y19Var.next())) {
                return true;
            }
        }
        return false;
    }

    public static Object d(Iterator it, String str) {
        return it.hasNext() ? it.next() : str;
    }
}
