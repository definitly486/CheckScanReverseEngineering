package defpackage;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes2.dex */
public final class ap7<T> extends bp7<T> implements Iterator<T>, e02<j59>, re4 {
    public int b;
    public T c;
    public Iterator<? extends T> d;
    public e02<? super j59> e;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.bp7
    public final a32 a(e02 e02Var, Object obj) {
        this.c = obj;
        this.b = 3;
        this.e = e02Var;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        e02Var.getClass();
        return a32Var;
    }

    @Override // defpackage.bp7
    public final Object b(Iterator<? extends T> it, e02<? super j59> e02Var) {
        if (!it.hasNext()) {
            return j59.a;
        }
        this.d = it;
        this.b = 2;
        this.e = e02Var;
        return a32.COROUTINE_SUSPENDED;
    }

    public final RuntimeException c() {
        int i = this.b;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.b);
    }

    @Override // defpackage.e02
    public final o22 getContext() {
        return gx2.b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i = this.b;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw c();
                }
                Iterator<? extends T> it = this.d;
                it.getClass();
                if (it.hasNext()) {
                    this.b = 2;
                    return true;
                }
                this.d = null;
            }
            this.b = 5;
            e02<? super j59> e02Var = this.e;
            e02Var.getClass();
            this.e = null;
            e02Var.resumeWith(j59.a);
        }
    }

    @Override // java.util.Iterator
    public final T next() {
        int i = this.b;
        if (i == 0 || i == 1) {
            if (hasNext()) {
                return next();
            }
            qz0.e();
            return null;
        }
        if (i == 2) {
            this.b = 1;
            Iterator<? extends T> it = this.d;
            it.getClass();
            return it.next();
        }
        if (i != 3) {
            throw c();
        }
        this.b = 0;
        T t = this.c;
        this.c = null;
        return t;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // defpackage.e02
    public final void resumeWith(Object obj) {
        r57.b(obj);
        this.b = 4;
    }
}
