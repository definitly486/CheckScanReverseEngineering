package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public class qk2<T> extends xe0<T> {
    public final ls5<? super T> b;
    public T c;

    public qk2(ls5<? super T> ls5Var) {
        this.b = ls5Var;
    }

    @Override // defpackage.iz7
    public final void clear() {
        lazySet(32);
        this.c = null;
    }

    @Override // defpackage.dw6
    public final int d(int i) {
        lazySet(8);
        return 2;
    }

    @Override // defpackage.cp2
    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override // defpackage.iz7
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // defpackage.iz7
    public final T poll() {
        if (get() != 16) {
            return null;
        }
        T t = this.c;
        this.c = null;
        lazySet(32);
        return t;
    }
}
