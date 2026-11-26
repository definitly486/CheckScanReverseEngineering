package androidx.collection;

import defpackage.ly1;
import defpackage.re4;
import defpackage.ye4;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
final class MutableSetWrapper<E> extends SetWrapper<E> implements Set<E>, ye4 {
    private final MutableScatterSet<E> parent;

    /* JADX INFO: renamed from: androidx.collection.MutableSetWrapper$iterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Iterator<E>, re4 {
        private int current = -1;
        private final Iterator<E> iterator;
        final /* synthetic */ MutableSetWrapper<E> this$0;

        public AnonymousClass1(MutableSetWrapper<E> mutableSetWrapper) {
            this.this$0 = mutableSetWrapper;
            this.iterator = ly1.d(new MutableSetWrapper$iterator$1$iterator$1(mutableSetWrapper, this, null));
        }

        public final int getCurrent() {
            return this.current;
        }

        public final Iterator<E> getIterator() {
            return this.iterator;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            return this.iterator.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.current != -1) {
                ((MutableSetWrapper) this.this$0).parent.removeElementAt(this.current);
                this.current = -1;
            }
        }

        public final void setCurrent(int i) {
            this.current = i;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MutableSetWrapper(MutableScatterSet<E> mutableScatterSet) {
        super(mutableScatterSet);
        mutableScatterSet.getClass();
        this.parent = mutableScatterSet;
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public boolean add(E e) {
        return this.parent.add(e);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        collection.getClass();
        return this.parent.addAll(collection);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public void clear() {
        this.parent.clear();
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new AnonymousClass1(this);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public boolean remove(Object obj) {
        return this.parent.remove(obj);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        collection.getClass();
        return this.parent.removeAll(collection);
    }

    @Override // androidx.collection.SetWrapper, java.util.Set, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        collection.getClass();
        return this.parent.retainAll(collection);
    }
}
