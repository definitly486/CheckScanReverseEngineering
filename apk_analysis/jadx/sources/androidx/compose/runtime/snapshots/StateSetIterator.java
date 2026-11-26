package androidx.compose.runtime.snapshots;

import defpackage.j59;
import defpackage.ll3;
import defpackage.ln;
import defpackage.re4;
import defpackage.ud;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class StateSetIterator<T> implements Iterator<T>, re4 {
    public static final int $stable = 8;
    private T current;
    private final Iterator<T> iterator;
    private int modification;
    private T next;
    private final SnapshotStateSet<T> set;

    /* JADX WARN: Multi-variable type inference failed */
    public StateSetIterator(SnapshotStateSet<T> snapshotStateSet, Iterator<? extends T> it) {
        this.set = snapshotStateSet;
        this.iterator = it;
        this.modification = SnapshotStateSetKt.getModification(snapshotStateSet);
        advance();
    }

    private final void advance() {
        this.current = this.next;
        this.next = this.iterator.hasNext() ? this.iterator.next() : null;
    }

    private final <T> T modify(ll3<? extends T> ll3Var) {
        validateModification();
        T tInvoke = ll3Var.invoke();
        this.modification = SnapshotStateSetKt.getModification(this.set);
        return tInvoke;
    }

    private final void validateModification() {
        if (SnapshotStateSetKt.getModification(this.set) == this.modification) {
            return;
        }
        ln.e();
    }

    public final T getCurrent() {
        return this.current;
    }

    public final Iterator<T> getIterator() {
        return this.iterator;
    }

    public final int getModification() {
        return this.modification;
    }

    public final T getNext() {
        return this.next;
    }

    public final SnapshotStateSet<T> getSet() {
        return this.set;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.next != null;
    }

    @Override // java.util.Iterator
    public T next() {
        validateModification();
        advance();
        T t = this.current;
        if (t != null) {
            return t;
        }
        ud.g();
        return null;
    }

    @Override // java.util.Iterator
    public void remove() {
        validateModification();
        T t = this.current;
        if (t == null) {
            ud.g();
            return;
        }
        this.set.remove(t);
        this.current = null;
        j59 j59Var = j59.a;
        this.modification = SnapshotStateSetKt.getModification(this.set);
    }

    public final void setCurrent(T t) {
        this.current = t;
    }

    public final void setModification(int i) {
        this.modification = i;
    }

    public final void setNext(T t) {
        this.next = t;
    }
}
