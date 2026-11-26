package androidx.collection;

import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bp7;
import defpackage.e02;
import defpackage.f57;
import defpackage.hn1;
import defpackage.j59;
import defpackage.ly1;
import defpackage.r57;
import defpackage.re4;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
class OrderedSetWrapper<E> implements Set<E>, re4 {
    private final OrderedScatterSet<E> parent;

    /* JADX INFO: renamed from: androidx.collection.OrderedSetWrapper$iterator$1, reason: invalid class name */
    @bd2(c = "androidx.collection.OrderedSetWrapper$iterator$1", f = "OrderedScatterSet.kt", l = {1454}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends f57 implements bm3<bp7<? super E>, e02<? super j59>, Object> {
        int I$0;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ OrderedSetWrapper<E> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(OrderedSetWrapper<E> orderedSetWrapper, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = orderedSetWrapper;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, e02Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // defpackage.bm3
        public final Object invoke(bp7<? super E> bp7Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(bp7Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            int i;
            Object[] objArr;
            long[] jArr;
            bp7 bp7Var;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 == 0) {
                r57.b(obj);
                bp7 bp7Var2 = (bp7) this.L$0;
                OrderedScatterSet orderedScatterSet = ((OrderedSetWrapper) this.this$0).parent;
                Object[] objArr2 = orderedScatterSet.elements;
                long[] jArr2 = orderedScatterSet.nodes;
                i = orderedScatterSet.tail;
                objArr = objArr2;
                jArr = jArr2;
                bp7Var = bp7Var2;
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                i = this.I$0;
                jArr = (long[]) this.L$2;
                objArr = (Object[]) this.L$1;
                bp7Var = (bp7) this.L$0;
                r57.b(obj);
            }
            while (i != Integer.MAX_VALUE) {
                int i3 = (int) ((jArr[i] >> 31) & SieveCacheKt.NodeLinkMask);
                Object obj2 = objArr[i];
                this.L$0 = bp7Var;
                this.L$1 = objArr;
                this.L$2 = jArr;
                this.I$0 = i3;
                this.label = 1;
                if (bp7Var.a(this, obj2) == a32Var) {
                    return a32Var;
                }
                i = i3;
            }
            return j59.a;
        }
    }

    public OrderedSetWrapper(OrderedScatterSet<E> orderedScatterSet) {
        orderedScatterSet.getClass();
        this.parent = orderedScatterSet;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean add(E e) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return this.parent.contains(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<? extends Object> collection) {
        collection.getClass();
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!this.parent.contains((E) it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return aa4.e(this.parent, ((OrderedSetWrapper) obj).parent);
    }

    public int getSize() {
        return this.parent._size;
    }

    @Override // java.util.Set, java.util.Collection
    public int hashCode() {
        return this.parent.hashCode();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return this.parent.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return ly1.d(new AnonymousClass1(this, null));
    }

    @Override // java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        tArr.getClass();
        return (T[]) hn1.d(this, tArr);
    }

    public String toString() {
        return this.parent.toString();
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return hn1.c(this);
    }
}
