package defpackage;

import java.util.Arrays;
import java.util.Iterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
public final class t77<T> extends u0<T> implements RandomAccess {
    public final Object[] c;
    public final int d;
    public int e;
    public int f;

    public static final class a extends r0<T> {
        public int d;
        public int e;
        public final /* synthetic */ t77<T> f;

        public a(t77<T> t77Var) {
            this.f = t77Var;
            this.d = t77Var.size();
            this.e = t77Var.e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.r0
        public final void computeNext() {
            if (this.d == 0) {
                done();
                return;
            }
            t77<T> t77Var = this.f;
            setNext(t77Var.c[this.e]);
            this.e = (this.e + 1) % t77Var.d;
            this.d--;
        }
    }

    public t77(Object[] objArr, int i) {
        this.c = objArr;
        if (i < 0) {
            c9.f(jh.b(i, "ring buffer filled size should not be negative but it is "));
            throw null;
        }
        if (i <= objArr.length) {
            this.d = objArr.length;
            this.f = i;
        } else {
            d.d(objArr.length, n7.c(i, "ring buffer filled size: ", " cannot be larger than the buffer size: "));
            throw null;
        }
    }

    public final void b(int i) {
        if (i < 0) {
            c9.f(jh.b(i, "n shouldn't be negative but it is "));
            return;
        }
        if (i > size()) {
            d.d(size(), n7.c(i, "n shouldn't be greater than the buffer size: n = ", ", size = "));
            return;
        }
        if (i > 0) {
            int i2 = this.e;
            int i3 = this.d;
            int i4 = (i2 + i) % i3;
            Object[] objArr = this.c;
            if (i2 > i4) {
                aq5.t(null, objArr, i2, i3);
                Arrays.fill(objArr, 0, i4, (Object) null);
            } else {
                aq5.t(null, objArr, i2, i4);
            }
            this.e = i4;
            this.f = size() - i;
        }
    }

    @Override // defpackage.u0, java.util.List
    public final T get(int i) {
        u0.a aVar = u0.Companion;
        int size = size();
        aVar.getClass();
        u0.a.b(i, size);
        return (T) this.c[(this.e + i) % this.d];
    }

    @Override // defpackage.u0, defpackage.v
    public final int getSize() {
        return this.f;
    }

    @Override // defpackage.u0, defpackage.v, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<T> iterator() {
        return new a(this);
    }

    @Override // defpackage.v, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        Object[] objArr;
        tArr.getClass();
        if (tArr.length < size()) {
            tArr = (T[]) Arrays.copyOf(tArr, size());
        }
        int size = size();
        int i = this.e;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            objArr = this.c;
            if (i3 >= size || i >= this.d) {
                break;
            }
            tArr[i3] = objArr[i];
            i3++;
            i++;
        }
        while (i3 < size) {
            tArr[i3] = objArr[i2];
            i3++;
            i2++;
        }
        if (size < tArr.length) {
            tArr[size] = null;
        }
        return tArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.v, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
